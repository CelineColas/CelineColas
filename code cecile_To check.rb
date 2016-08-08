# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.
class Record
  def initialize(attributes = {})
    # { title: 'Le Wagon', url: 'www.lewagon.com', votes: 23 }
    attributes.each do |name, value|
      # name => :title
      # value => 'Le Wagon'
      # => we build: @title = 'Le Wagon'

      # name => :url
      # value => 'www.lewagon.com'
      # => we build: @url = 'www.lewagon.com'

      # name => :votes
      # value => 23
      # => we build: @votes = 23
      instance_variable_set("@#{name}", value)

      # Post and call on it attr_accessor :title
      # Post and call on it attr_accessor :url
      # Post and call on it attr_accessor :votes
      self.class.send :attr_accessor, name
    end
  end

  def self.table_name # will be also provided by Rails
    # ie. Post.to_s.downcase AND s
    "#{to_s.downcase}s"
  end

  def self.all
    DB.results_as_hash = true
    rows = DB.execute("SELECT * FROM #{table_name}")

    return rows.map do |row|
      # could be nice to refactor (same as lines 53-55) in a `build_row` class method ...
      # BUT private methods do not exist in Ruby and we don't want to expose build_row as part of public interface
      # so... to bad!
      attributes = row.reject { |attribute_name, _value| attribute_name.is_a?(Fixnum) }
      new(attributes)
    end
  end

  def self.find(id)
    DB.results_as_hash = true
    row = DB.execute("SELECT * FROM #{table_name} WHERE id = ?", id).first
    return unless row

    # {
    #   'title' => 'Le Wagon', 'url' => 'www.lewagon.com',
    #   0 => 'Le Wagon', 1 => 'www.lewagon.com'
    # }

    # is turned into:
    # { 'title' => 'Le Wagon', 'url' => 'www.lewagon.com' }
    attributes = row.reject { |column, _value| column.is_a?(Fixnum) }

    # ie. Post.new(attributes)
    return new(attributes)
  end

  def save
    if @id
      update
    else
      create
    end
  end

  def destroy
    # self       => <Post:0x0987 @id=4, @title='Le Wagon', ...>
    # self.class => Post
    DB.execute("DELETE FROM #{self.class.table_name} WHERE id = ?", @id)
  end

  private

  def attribute_names
    # returns ["title", "url", "votes"]

    # memoization: computation done only at the first call
    unless @attribute_names
      # better than calling the DB ;)
      @attribute_names = instance_variables.map { |name| name.to_s.delete('@') }
      @attribute_names.delete('id')
    end

    @attribute_names
  end

  def attribute_values
    # returns ["Le Wagon", "www.lewagon.com", "23"]

    # memoization: computation done only at the first call
    @attribute_values ||= attribute_names.map do |name|
      instance_variable_get("@#{name}")
    end
  end

  def create
    # ["?", "?", "?""]
    # joined => "?, ?, ?""
    attribute_values_set = Array.new(attribute_names.size) { '?' }.join(', ')
    query = "INSERT INTO #{self.class.table_name} (#{attribute_names.join(', ')}) VALUES (#{attribute_values_set})"

    DB.execute(query, *attribute_values)
    @id = DB.last_insert_row_id
  end

  def update
    # ["title = 'Le Wagon'", " url = 'www.lewagon.com'", "votes = '23'"]
    # joined => "title = ?, url = ?,votes = ?"
    attribute_values_set = attribute_names.map { |name| "#{name} = ?" }.join(', ')

    DB.execute("UPDATE #{self.class.table_name} SET #{attribute_values_set} WHERE id = ?", *attribute_values, @id)
  end
end
