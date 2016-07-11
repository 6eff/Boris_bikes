require_relative '/Users/julia/RUBY/test/Boris_bikes/spec/support/shared_examples_for_bike_container.rb'
require_relative '/Users/julia/RUBY/test/Boris_bikes/spec/support/BikeContainerTest_class.rb'
# The purpose of this class is to give us an instance of
# # something that includes `BikeContainer`, to initially run tests against
# class BikeContainerTest
#   include BikeContainer
# end

# `it_behaves_like BikeContainer` imports all the tests in the shared example
describe BikeContainerTest do
  it_behaves_like BikeContainer
end
