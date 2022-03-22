require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) do
    User.create(
      id: 1,
      name: "Robert Pattinson",
      email: "gabrielogomes@live.com",
      password: "123456",
    )
  end

  subject do
    described_class.new(
      title: "The Batman",
      author: "Robert Pattinson",
      user_id: user.id
    )
  end

  it "is valid with valid attributes" do
    user.save!
    expect(subject).to be_valid
  end

  it "is invalid with invalid attributes" do
    expect(Post.new).to be_invalid
  end

  it "is not valid without a title" do
    post = Post.new(title: nil)
    expect(post).to_not be_valid
  end

  it "is not valid without a author" do
    post = Post.new(author: nil)
    expect(post).to_not be_valid
  end

  
end
