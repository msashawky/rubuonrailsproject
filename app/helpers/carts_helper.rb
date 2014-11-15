module CartsHelper
def search_for_cart #take a user id as a parameter and give his cart id
   @carts.each do |cart| 
   if cart.registered_user_id == current_user.id 
    current_user_cart=cart.id
    break
  end
end
end	
end
