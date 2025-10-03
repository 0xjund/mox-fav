# pragma version 0.4.1
# @license MIT

import favorites 

initializes: favorites
# Export all functions using an interface
exports: (
    favorites.__interface__,
)

# exports: (
#     favorites.retrieve,
#     favorites.store
# )

@deploy
def __init__():
    favorites.__init__()
    print(favorites.my_favorite_number)

@external
def store(new_number: uint256):
    favorites.my_favorite_number = new_number + 5
    
# my_favorite_number: uint256
# @external
# def store(new_number: uint256):
#     self.my_favorite_number = new_number
