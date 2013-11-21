##Todo

Payment system

- Create booking 
  - belongs to customer
  - start date 
  - end date 
  - pickup location
  - drop off location
  - total price
  - paid amount 

- Create customer model
  - First name 
  - Last name 
  - email
  - BT credit card id number
  - BT customer number
  - has many bookings
  
  Ember model needs
    - name on the card
    - credit card number
    - ccv
    - experation month
    - experation year



Create service object PaymentProcessor
Create service object BrainTreeCustomerProcess
Create Emailer 

###The flow 

user searches for a van 
user book a van 
user adds their info 
user adds credit card info 
if valid 
  save the user
  save the creditcard id & transaction id

  sends Email

else 
  return to form for so the user can update their info. 


