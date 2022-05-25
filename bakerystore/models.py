from django.db import models
from django.db.models.deletion import CASCADE


class Customer(models.Model):
    c_phone=models.CharField(max_length=20)
    c_fname = models.CharField(max_length=128)
    c_lname = models.CharField(max_length=128)
    c_address = models.CharField(max_length=256)
    created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.c_phone

class Item(models.Model):
    i_name=models.CharField(max_length=128)

    def __str__(self):
        return self.i_name

class Product(models.Model):
    p_name = models.CharField(max_length=128)
    p_price = models.FloatField(default=0)
    p_descp = models.CharField(max_length=128,default='NULL')

    def __str__(self):
        return self.p_name

class ProductItem(models.Model):
    UNITCHOICE = (
        ('g','g'),
        ('l','litres'),
        ('#','#'),
    )
    product = models.ForeignKey(Product,on_delete=CASCADE)
    item = models.ForeignKey(Item,on_delete=CASCADE)
    unit =models.CharField(max_length=128,choices=UNITCHOICE)
    quantity = models.FloatField(default=0)

    def __str__(self):
        return self.item.i_name
    
class Order(models.Model):
    DELIVERY_CHOICE = (
        ('pick-up','Pick Up'),
        ('home-delivery','Home Delivery'),
    )
    customer = models.ForeignKey(Customer,on_delete=CASCADE)
    order_amount=models.FloatField(default=0)
    order_date=models.DateField(auto_now_add=True)
    delivery_mode=models.CharField(max_length=128, choices= DELIVERY_CHOICE)
    feedback=models.CharField(max_length=128,default='NULL')

    def __str__(self):
        return self.customer.c_phone


class HomeDelivery(models.Model):
    hd_address = models.CharField(max_length=128)
    hd_date = models.DateField(auto_now=False, auto_now_add=False)
    hd_time = models.TimeField(auto_now=False, auto_now_add=False)
    hd_instruction = models.CharField(max_length=128)
    order = models.ForeignKey(Order,on_delete=CASCADE)

class OrderList(models.Model):
    order = models.ForeignKey(Order,on_delete=CASCADE)
    product = models.ForeignKey(Product,on_delete=CASCADE)
    ol_unit = models.IntegerField(default=1)
    ol_cost = models.FloatField(default=0)
    ol_exp_date=models.DateField()
    created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.product.p_name

class Discount(models.Model):
    d_name = models.CharField(max_length=128)
    d_percent = models.FloatField(default=0)

    def __str__(self):
        return self.d_name

class Bill(models.Model):
    bill_date=models.DateField(auto_now_add=True)
    order = models.ForeignKey(Order,on_delete=CASCADE)
    extra_charge=models.FloatField(default=0)
    bill_amt=models.FloatField(default=0)
    discount = models.ForeignKey(Discount,on_delete=CASCADE)
    bill_discount_amount=models.FloatField(default=0)
    balance=models.FloatField(default=0)
    pay_mode=models.CharField(max_length=128)

class Supplier(models.Model):
    s_name=models.CharField(max_length=128)
    s_phone=models.CharField(max_length=10)
    s_address=models.CharField(max_length=128)

    def __str__(self):
        return self.s_name

class Invoice(models.Model):
    supplier =models.ForeignKey(Supplier,on_delete=CASCADE)
    order_date=models.DateField()
    receive_date=models.DateField()
    invoice_amount=models.FloatField()
    invoice_num=models.CharField(max_length=128)
    invoice_status = models.CharField(max_length=128,default='pending')

    def __str__(self):
        return self.supplier.s_name