require 'spec_helper'
require 'representable'
require 'representable/json'
require 'representable/render/nil'

describe Representable::Definition do

  it "should render nil by default" do
    @Brand = Class.new(Object) do
      include Representable::JSON
      attr_accessor :id
      property :id
    end

    brand = @Brand.new
    hash = brand.to_hash
    hash["id"].should be_nil
    hash.should be_has_key("id")
  end

end
