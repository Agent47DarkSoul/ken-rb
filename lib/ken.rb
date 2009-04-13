require 'pathname'
require 'rubygems'
require 'net/http'
require 'json'
require 'extlib'
require 'extlib/assertions'
require 'addressable/uri'

dir = Pathname(__FILE__).dirname.expand_path + 'ken'

require dir + 'version'
require dir + 'util'
require dir + 'resource'
require dir + 'type'
require dir + 'view'
require dir + 'property'
require dir + 'attribute'
require dir + 'collection'
require dir + 'session'
require dir + 'logger'

# init logger as soon as the library is required
Ken::Logger.new(STDOUT, :error)

# init default session
Ken::Session.new('http://www.freebase.com', 'ma', 'xxxxx')

module Ken
  
  extend Extlib::Assertions
  
  
  # store query as a constant here.
  # if the hash gets updated using
  # #merge! or #update, this will mean
  # that it actually stores the last
  # query used. there are 2 sides to this.
  # on the one hand, it isn't really a 
  # constant anymore (ruby doesn't complain)?
  # on the other hand, there is no need to
  # create a new object everytime a query is
  # executed. maybe this is fine, maybe not,
  # this needs to be discussed.
  
  QUERY = query = {
    # :id => id, # needs to be updated in instance mehtod
    :name => nil,
    :"ken:type" => [{
      :id => nil,
      :name => nil,
      :properties => [{
        :id => nil,
        :name => nil,
        :expected_type => nil,
        :unique => nil,
        :reverse_property => nil,
        :master_property => nil,
      }]
    }]
  }
  
  # Executes an Mql Query against the Freebase API and returns the result as
  # a <tt>Collection</tt> of <tt>Resources</tt>.
  #
  # == Examples
  #
  # Ken.all(:name => "Apple", :type => "/music/album")
  #
  # Ken.all(
  #  :directed_by => "George Lucas",
  #  :starring => [{
  #    :actor => "Harrison Ford"
  #  }],
  #  :type => "/film/film"
  # )
  # @api public
  def self.all(options = {})
    assert_kind_of 'options', options, Hash
    query = { :name => nil }.merge!(options).merge!(:id => nil) # collection queries MUST have :id => nil, no?
    result = Ken.session.mqlread([ query ])    
    Ken::Collection.new(result.map { |r| Ken::Resource.new(r) })
  end
  
  
  # Executes an Mql Query against the Freebase API and returns the result wrapped
  # in a <tt>Resource</tt> Object.
  #
  # == Examples
  #
  #  Ken.get('/en/the_police') => #<Resource id="/en/the_police" name="The Police">
  # @api public
  def self.get(id)
    assert_kind_of 'id', id, String
    raise ArgumentError, "id must be in /type/object/id format" unless valid_id_attribute?(id)
    result = Ken.session.mqlread(QUERY.merge!(:id => id))
    Ken::Resource.new(result)
  end
  
  def self.valid_id_attribute?(id)
    id =~ /\/\w+/
  end
  
end # module Ken
