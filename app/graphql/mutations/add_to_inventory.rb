# frozen_string_literal: true

class Mutations::AddToInventory < GraphQL::Function
    # arguments passed as "args"
    argument :title, !types.String, description: "Title of the product being added"
    argument :description, !types.String, description: "Description of product being added"
    argument :price, !types.Float, description: "Price of the product being added"
    argument :shipping, !types.Float, description: "Shipping cost of the product being added"
    argument :quantity, !types.Int, description: "Quantity of the product being added"
    
    
  
    # return type from the mutation
    type Types::ProductType
  
    # the mutation method
    # _obj - is parent object, which in this case is nil
    # args - are the arguments passed
    # _ctx - is the GraphQL context 
    def call(_obj, args, _ctx)
      existing = Product.find_by(title: args[:title])
      if existing.nil?
        product = Product.create(:title => args[:title],:description => args[:description], :price => args[:price],:shipping => args[:shipping],:inventory_count => args[:quantity])
        product.save
        puts product
        product
      else
        existing.inventory_count += args[:quantity]
        existing.save
        existing
      end

    end
  end
  