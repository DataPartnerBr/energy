# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Posts API' do

  path '/api/v1/posts' do

    post 'Creates a post' do
      tags 'Posts'
      consumes 'application/json'
      #:title, :sub_title, :body, :active, :user_id
      parameter name: :post, in: :body, schema: {
          type: :object,
          properties: {
              title: { type: :string },
              sub_title: { type: :string },
              body: { type: :string },
              active: { type: :boolean },
              user_id: { type: :integer }
          },
          required: [ 'title', 'sub_title', 'body', 'active', 'user_id' ]
      }

      response '201', 'Post created' do
        let(:post) do {title: 'Dodo', sub_title: 'availableavailable', body: 'availableavailableavailableavailableavailableavailable',  active: true, user_id: 1}
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:post) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/posts/{id}' do

    get 'Retrieves a post' do
      tags 'Posts'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'Post found' do
        schema type: :object,
               properties: {
                   title: { type: :string },
                   sub_title: { type: :string },
                   body: { type: :string },
                   active: { type: :boolean },
                   user_id: { type: :integer }
               },
               required: [ 'title', 'sub_title', 'body', 'active', 'user_id' ]

        let(:id) { Post.create(name: 'foo', status: 'bar', photo_url: 'http://example.com/avatar.jpg').id }
        run_test!
      end

      response '404', 'Post not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end