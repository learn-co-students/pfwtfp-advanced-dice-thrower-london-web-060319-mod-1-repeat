require 'spec_helper'

describe 'throw_variable_dice' do
  it 'has a throw_variable_dice method' do
    expect { throw_variable_dice }.not_to raise_error
  end
end

describe 'generate_hash_set' do
  it 'has a generate_hash_set method' do
    expect { generate_set(10) }.not_to raise_error
  end
end

