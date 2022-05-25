# BAKERY MANAGEMENT SYSTEM
This application basically deals with the sales and product management of a bakery based on the Django framework.
---------------------------
## PRE-REQUISITES
1. Python 2.7
2. Django
3. virtual env

## HOW TO USE APPLICATION?


1. Open the link and enter username and password
### Web Login
	Username : aparna.d	Password : welcome@1
### Django Admin
	Username : admin1 password : admin1

2. The navigation bar at the top has all the functionalities required
	
### Take New Order
This application allows user to take order of the customer visiting.Follow the following steps to take New Order

1. Enter a 10 digit phone number of the customer to search if the customer with this phone number exists.
2. If customer does not exist, enter customer details:
- First Name	
- Last Name	
- Residential Address
3. Select the product using the drop-down menu, add quantity and click on 'Add' to add the product.
4. To delete the wrong item, just click on 'Delete'.
5. Select if the order is 'Home Delivery' or 'Store Pick-Up'.
6. Enter Home Delivery details:
		- Delivery address
		- Select Delivery Date and Time
		- Additional Delivery instructions('leave at doorstep',etc)
7. Confirm the Order details by adding
		- any extra charges
		- select delivery mode
		- select payment mode
		- Any order instructions like 'Write happy birthday alice' etc
8. Click on Confirm to generate receipt
9. Click on 'Print' to print the receipt
10.Click 'Back' to return to the Home page.

#### CASES OF ERROR :
	If the order is not taken successfully, check if the order is visible in 'View Orders'.
	If not, get back and start from the beginning by searching for customers.
	If yes, delete the order in 'View Order' and take a new order


### View Orders
It views all the orders taken till date and bills of each order.


### View Home Delivery Orders
To view all the orders for home-delivery

### View Sales Report
The dashboard shows number of orders taken TODAY and number of customers added TODAY.
The Pie-Chart gives information about the total units sold of the top 5 most sold Product.
### Add Product
To add an item into the menu, user can add the product into the already existing menu
1. Enter the product name and it's price.
2. Click on add product to add this product in Menu
### Add Supplier
To add details about the new Supplier from whom the user gets ingredients for her shop from.
	1. Enter Supplier's details
		- Company Name
		- Contact Number
		- Office Address
	2. Click on Add Supplier to successfully add  supplier.
### Add Supply Order details
To enter details of the new supply order given to the company. The user can enter the invoice number of the receipt that they got from the supplier after placing order, the total amount that was given to the supplier and the date at which the order is given.The details will be added into pending order by default.

### View Supply Orders
The user can keep track of the orders that they have placed to the suppliers. All the order details added comes in the 'Pending Order' table. To change its status to 'Received', Click on 'Update'. The user will be redirected to a page to add a date of receiving. Submit form to change the status.

*In case of any issue, the user can view the database in 'admin' login in the database.
