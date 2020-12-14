class Player
  attr_reader :name, :position
  def initialize(args)
    args.each do |k,v|
      instance_variable_set("@#{k}",v) unless v.nil?
    end
  end
end




# attr_reader :name, :position
# def initialize(hash)
#   @name = hash[:name]
#   @position = hash[:position]
# end
