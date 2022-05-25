from django import forms
from django.contrib import messages
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from .forms import CustomerForm, HomeDeliveryForm, InvoiceForm,ProductForm,OrderForm,OrderListForm, UpdateProductForm
from .models import Customer, Discount, HomeDelivery, Invoice, Order,Product,OrderList,Bill, Supplier
from datetime import date
from django.db.models import Count,Sum
from django.views.generic import TemplateView


@login_required(login_url='login')
def add_customer(request,customer_id):
    forms = CustomerForm()
    customer = Customer.objects.get(id=customer_id)
    if request.method == 'POST':
        forms = CustomerForm(request.POST)
        if forms.is_valid():
            c_fname = forms.cleaned_data['c_fname']
            c_lname = forms.cleaned_data['c_lname']
            c_address = forms.cleaned_data['c_address']

            #INSERT INTO bakerystore_customer (id,c_phone,c_fname,c_lname,c_address) 
            Customer.objects.filter(id=customer_id).update(c_fname=c_fname, c_lname=c_lname,c_address=c_address)
            customer = Customer.objects.get(id=customer_id)

            #INSERT INTO bakerystore_order (id,customer.id,order_amount=0)
            Order.objects.create(customer=customer,order_amount=0)

            #SELECT * from bakerystore_order o,bakerystore_customer c WHERE o.customer_id=c.id and o.order_amount=0
            o=Order.objects.get(customer=customer,order_amount=0)
            return redirect('take-order',o.id)

    context = {
        'form':forms,
        'customer':customer
    }
    return render(request,'add_customer.html',context)

@login_required(login_url='login')
def add_product(request):
    form1 = ProductForm()
    if request.method == 'POST':
        form1 = ProductForm(request.POST)
        if form1.is_valid():
            p_name = form1.cleaned_data['p_name']
            p_price = form1.cleaned_data['p_price']
            p_descp = form1.cleaned_data['p_descp']

            #INSERT INTO bakerystore_product(id,p_name,p_price,p_descp)
            Product.objects.create(p_name=p_name,p_price=p_price,p_descp=p_descp)
            messages.success(request, 'Product details addedd.')
            return redirect('homepage')
        else:
            messages.error(request, 'Invalid Details Entered.')
            return redirect(request.META['HTTP_REFERER'])
            

    context = {
        'form1':form1
    }
    return render(request,'add_product.html',context)

@login_required(login_url='login')
def update_product(request):
    p = Product.objects.all()
    forms = UpdateProductForm()
    if request.method == 'POST':
        forms = ProductForm(request.POST)
        if forms.is_valid():
            #product = forms.cleaned_data['product']
            product = request.POST.get('product_id')
            req_product = Product.objects.get(id=product)
            price = request.POST.get('price')
            Product.objects.filter(req_product.id).update(p_price=price)
            return redirect('homepage')
    context = {
        'forms':forms,
        'p':p,
    }
    return render(request,'update_product.html',context)
        

@login_required(login_url='login')
def find_customer(request):
    if request.method=='POST':
        number = request.POST.get('number')
        if Customer.objects.filter(c_phone=number).exists():
            c = Customer.objects.get(c_phone=number)
            Order.objects.create(customer=c,order_amount=0)
            o=Order.objects.get(customer=c,order_amount=0)
            return redirect('take-order',o.id)
        else:
            new_customer=Customer.objects.create(c_phone=number,c_fname="",c_lname="",c_address="")
            return redirect('add-customer',new_customer.id)

    context = {}
    return render(request,'find_customer.html',context)

@login_required(login_url='login')
def take_order(request,order_id):

    #SELECT * from bakerystore_order WHERE id=order_id;
    o = Order.objects.get(id=order_id)

    forms = OrderListForm()
    if request.method == 'POST':
        forms = OrderListForm(request.POST)
        if forms.is_valid():
            product= forms.cleaned_data['product']
            unit = request.POST['ol_unit']
            exp_date = request.POST['ol_exp_date']

            #SELECT * from bakerystore_product WHERE id=product.id;
            p = Product.objects.get(id=product.id)

            #INSERT INTO bakerystore_orderlist (product_id,ol_unit,ol_cost,ol_exp_date) values (product_id,ol_unit,ol_cost,ol_exp_date);
            OrderList.objects.create(product=product,ol_unit=unit,order=o,ol_cost=0,ol_exp_date=exp_date)

            #SELECT * from bakerystore_orderlist ol, bakerystore_product p, bakerystore_order o WHERE product_id=p.id and order_id=o.id;
            ol = OrderList.objects.get(product=product,order=o)

            #SELECT  * from bakerystore_orderlist ol
            OrderList.objects.filter(ol_cost=0).update(ol_cost=product.p_price*ol.ol_unit)

            ol = OrderList.objects.get(product=product,order=o)
            Order.objects.filter(id=o.id).update(order_amount=o.order_amount+ol.ol_cost)
            return redirect(request.META['HTTP_REFERER'])
    o = Order.objects.get(id=order_id)
    ol=OrderList.objects.filter(order=o)
    context = {
        'forms':forms,
        'o':o,
        'ol':ol,
    }
    return render(request,'take_order.html',context)

@login_required(login_url='login')
def delete_item(request,orderlist):
    ol=OrderList.objects.get(id=orderlist)
    o = Order.objects.get(id=ol.order_id)
    Order.objects.filter(id=ol.order_id).update(order_amount=o.order_amount-ol.ol_cost)
    OrderList.objects.filter(id=orderlist).delete()
    return redirect(request.META['HTTP_REFERER'])

@login_required(login_url='login')
def view_order(request):
    today = date.today()
    o=Order.objects.all().order_by('-order_date')
    #forms = findDate()
    if request.method == 'POST':
        orderdate=request.POST['orderdate']
        o=Order.objects.filter(order_date=orderdate)
        context = {
            'o':o
        }
        return redirect(request.META['HTTP_REFERER'],context)
        #forms = findDate(request.POST)
        #if forms.is_valid():
            #orderdate=request.POST['orderdate']
            #o = Order.objects.filter(order_date=orderdate)
            #return redirect(request.META['HTTP_REFERER'])
    context = {
            'o':o
        }
    return render(request,'view_order.html',context)

@login_required(login_url='login')
def view_order_specific(request,orderid):
    ol = OrderList.objects.filter(order_id=orderid)
    bill = Bill.objects.get(order_id=orderid)
    o = Order.objects.get(id=orderid)
    context = {
        'ol':ol,
        'bill':bill,
        'o':o
    }
    return render(request,'view_order_specific.html',context)

@login_required(login_url='login')
def take_home_delivery(request,order_id):
    o = Order.objects.get(id=order_id)
    forms = HomeDeliveryForm()
    if request.method == 'POST':
        forms = HomeDeliveryForm(request.POST)
        if forms.is_valid():
            address= forms.cleaned_data['hd_address']
            date = request.POST['hd_date']
            time = request.POST['hd_time']
            instruction= forms.cleaned_data['hd_instruction']
            HomeDelivery.objects.create(order=o,hd_address= address,hd_date=date,hd_time=time,hd_instruction=instruction)
            return redirect('confirm_order',o.id)
    context = {
        'forms':forms,
        'o':o,
    }
    return render(request,'take_homedelivery.html',context)

@login_required(login_url='login')
def view_home_delivery(request):
    h = HomeDelivery.objects.all().order_by('-hd_date')
    if request.method == 'POST':
        date_given = request.POST.get('date')
        if HomeDelivery.objects.filter(hd_date=date_given).exists():
            h = HomeDelivery.objects.filter(hd_date=date_given)
            context= {
                'h':h
            }
            return redirect(request,'view_homedelivery.html',context)
    context = {
        'h':h
    }
    return render(request,'view_homedelivery.html',context)

@login_required(login_url='login')
def comfirm_order(request,order_id):
    o = Order.objects.get(id=order_id)
    d = Discount.objects.get(id=1)
    if request.method == 'POST':
        bill=Bill.objects.create(order=o,bill_amt=o.order_amount,discount=d)
        extracharge=request.POST['extra_charge']
        paymode=request.POST['paymode']
        delivery_mode = request.POST['delivery_mode']
        feedback =request.POST['feedback']
        Order.objects.filter(id=o.id).update(delivery_mode=delivery_mode,feedback=feedback)
        Bill.objects.filter(id=bill.id).update(extra_charge=extracharge,bill_amt=bill.bill_amt,pay_mode=paymode,balance=0)
        createdbill=Bill.objects.get(id=bill.id)
        Bill.objects.filter(id=createdbill.id).update(bill_amt=createdbill.bill_amt+createdbill.extra_charge)
        return redirect('printbill',bill.id)
    context = {
        'o':o
    }
    return render(request,'confirm_order.html',context)

@login_required(login_url='login')
def printbill(request,bill_id):
    bill=Bill.objects.get(id=bill_id)
    ol=OrderList.objects.filter(order_id=bill.order_id)
    context = {
        'bill':bill,
        'ol':ol
    }
    return render(request,'printbillview.html',context)

@login_required(login_url='login')
def add_supplier(request):
    if request.method == 'POST':
        s_name = request.POST['s_name']
        s_phone =request.POST['s_phone']
        s_address = request.POST['s_address']
        Supplier.objects.create(s_name=s_name,s_phone=s_phone,s_address=s_address)
        return redirect('add-supply-order')
        
    return render(request,'add_supplier.html')

@login_required(login_url='login')
def add_supply_order(request):
    today = date.today()
    forms = InvoiceForm()
    if request.method == 'POST':
        forms = InvoiceForm(request.POST)
        if forms.is_valid():
            supplier= forms.cleaned_data['supplier']
            order_date=request.POST['order_date']
            #receive_date=request.POST['receive_date']
            invoice_amount=request.POST['invoice_amount']
            invoice_num=request.POST['invoice_num']
            Invoice.objects.create(supplier=supplier,order_date=order_date,receive_date=today,invoice_amount=invoice_amount,invoice_num=invoice_num)
            return redirect('view-supply-order')
        
    context = {
        'forms':forms
    }
    return render(request,'add_supplyorder.html',context)


@login_required(login_url='login')
def view_supply_order(request):
    ip = Invoice.objects.filter(invoice_status='pending').order_by('-order_date')
    ir= Invoice.objects.all().order_by('-order_date')

    context = {
        'ir':ir,
        'ip':ip
    }
    return render(request,'view_supplyorders.html',context)

@login_required(login_url='login')
def update_status(request,invoice_id):
    i = Invoice.objects.get(id=invoice_id)
    if request.method == 'POST':
        r_date = request.POST.get('r_date')
        Invoice.objects.filter(id=invoice_id).update(receive_date=r_date,invoice_status='received')
        return redirect('view-supply-order')

    context = {
        'i':i
    }

    return render(request,'update_supply.html',context)


def dashboard_view(request):
    today = date.today()
    o=Order.objects.filter(order_date=today)
    p = Product.objects.all()
    pol = OrderList.objects.all().order_by('-ol_cost')[:5]
    total_orders=Order.objects.filter(order_date=today).count()
    customer = Customer.objects.filter(created=today).count()
    total_products=OrderList.objects.filter(order=Order.objects.filter(order_date=today))
    ps = OrderList.objects.annotate(number_of_units=Sum('ol_unit'))
    olp=(OrderList.objects.values('product_id')).annotate(total=Sum('ol_unit'))[:5]
    context = {
        'order':total_orders,
        'products':total_products,
        'olp':olp,
        'o':o,
        'p':p,
        'customer':customer,
        'pol':pol,
        'ps':ps,
    }
    return render(request,'dashboard.html',context)

