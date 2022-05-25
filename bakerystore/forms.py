from typing import Text
from django import forms
from django.forms import fields, models, widgets
from .models import Bill, Customer, HomeDelivery, Invoice,Item, OrderList,Product,Order, ProductItem

class CustomerForm(forms.ModelForm):
    class Meta:
        model = Customer
        fields = ['c_fname','c_lname','c_address']
        widgets = {
            'c_fname':forms.TextInput(attrs={'class': 'form-control','id': 'c_fname','data-val': 'true','data-val-required': 'Please enter First Name','placeholder':'Enter First Name','pattern':'[A-Za-z]{1,}'}),
            'c_lname':forms.TextInput(attrs={'class': 'form-control','id': 'c_lname','data-val': 'true','data-val-required': 'Please enter Last Name','placeholder':'Enter Last Name','pattern':'[A-Za-z]{1,}'}),
            'c_address':forms.TextInput(attrs={'class': 'form-control','id': 'c_address','placeholder':'Enter Address'})
        }

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ['p_name','p_price','p_descp']
        widgets = {
            'p_name':forms.TextInput(attrs={'class': 'form-control','id': 'p_name','data-val': 'true','data-val-required': 'Please enter product Name','placeholder':'Enter Product Name'}),
            'p_price':forms.TextInput(attrs={'class': 'form-control','id': 'p_price','data-val': 'true','data-val-required': 'Please enter price','placeholder':'Enter Price'}),
            'p_descp':forms.TextInput(attrs={'class': 'form-control','id': 'p_descp','placeholder':'Enter Descripton'}),
        }

class UpdateProductForm(forms.ModelForm):
    price = forms.FloatField(widget=widgets.TextInput(attrs={'class': 'form-control','id': 'price','data-val': 'true','data-val-required': 'Please enter price','placeholder':'Enter Price'}))
    class Meta:
        model = OrderList
        fields = ['product']
        widgets = {
             'product':forms.Select(attrs={'class': 'form-control', 'id': 'product'}),
        }


class OrderForm(forms.ModelForm):
    class Meta:
        model = Bill
        fields = ['extra_charge','discount','pay_mode']
        widgets = {
            'discount':forms.Select(attrs={'class': 'form-control', 'id': 'discount'}),
            'extra_charge':forms.TextInput(attrs={'class': 'form-control','id': 'extra_chage','placeholder':'Enter Any Extra Charge'}),
        }

class OrderListForm(forms.ModelForm):
    class Meta:
        model = OrderList
        fields =['product','ol_exp_date']
        widgets = {
            'product':forms.Select(attrs={'class': 'form-control', 'id': 'product','placeholder':'Select Product'}),
            'ol_exp_date':forms.DateInput(attrs={'class': 'form-control','id': 'ol_exp_date'}),
        }
class HomeDeliveryForm(forms.ModelForm):
    class Meta:
        model = HomeDelivery
        fields = ['hd_address','hd_instruction']
        widgets = {
            'hd_address':forms.TextInput(attrs={'class': 'form-control','id': 'hd_address','placeholder':'Enter Address of delivery'}),
            'hd_instruction':forms.TextInput(attrs={'class': 'form-control','id': 'hd_instruction','placeholder':'Enter Delivery Instructions'}),

        }

#class FindNumForm(forms.ModelForm):
#    class Meta:
#        model = Order
#        fields = ['customer']
#        widgets = {
#            'customer':forms.Select(attrs={'class': 'form-control', 'id': 'customer'})
#        }

class FindNumForm(forms.ModelForm):
     class Meta:
        model = Order
        fields = ['customer']
        #widgets = {
        #    'customer':forms.TextInput(attrs={'class': 'form-control','id': 'customer','placeholder':'Enter Number'})
        #}


class findDate(forms.Form):
        order_date = forms.DateField(widget=forms.DateInput(attrs={'class': 'form-control','id': 'order_date'}))

class InvoiceForm(models.ModelForm):
    class Meta:
        model = Invoice
        fields = ['supplier']
        widgets = {
            'supplier':forms.Select(attrs={'class': 'form-control', 'id': 'supplier','placeholder':'Select Supplier'}),
        }