# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'To DO API' do

  path '/api/v1/todos' do

    post 'Creates a to do' do
      tags 'Todos'
      consumes 'application/json'
      # title, :body, :completed, :order, :user_id
      parameter name: :todo, in: :body, schema: {
          type: :object,
          properties: {
              title: { type: :string },
              body: { type: :string },
              completed: { type: :boolean },
              order: { type: :integer },
              user_id: { type: :integer }
          },
          required: [ 'title', 'body', 'completed', 'order', 'user_id' ]
      }

      response '201', 'To Do created' do
        let(:todo) do {title: 'Dodo', sub_title: 'availableavailable', body: 'availableavailableavailableavailableavailableavailable',  active: true, user_id: 1}
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:todo) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/todos/{id}' do

    get 'Retrieves a To Do' do
      tags 'Todos'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'To Do found' do
        schema type: :object,
               properties: {
                   title: { type: :string },
                   body: { type: :string },
                   completed: { type: :boolean },
                   order: { type: :integer },
                   user_id: { type: :integer }
               },
               required: [ 'title', 'body', 'completed', 'order', 'user_id' ]

        let(:id) { Todos.create(name: 'foo', status: 'bar', photo_url: 'http://example.com/avatar.jpg').id }
        run_test!
      end

      response '404', 'To Do not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end