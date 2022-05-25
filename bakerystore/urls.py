from django.urls import path
from .views import (add_customer, add_product, add_supplier,
 add_supply_order, comfirm_order, dashboard_view, find_customer, printbill, take_home_delivery, take_order, update_product, update_status,
  view_order,view_home_delivery, view_order_specific, view_supply_order,delete_item)

urlpatterns = [
    path('add-customer/<int:customer_id>/',add_customer,name='add-customer'),
    path('dashboard/',dashboard_view,name='dashboard'),
    path('view-order/',view_order,name='view-order'),
    path('add-product/',add_product,name='add-product'),
    path('update-product',update_product,name='update-product'),
    path('find-customer/',find_customer,name='find-customer'),
    path('take-order/<int:order_id>',take_order,name='take-order'),
    path('take-order/delete/<int:orderlist>/',delete_item,name='delete-item'),
    path('take-order/confirm-order/<int:order_id>',comfirm_order,name='confirm_order'),
    path('take-order/take-home-delivery/<int:order_id>',take_home_delivery, name='take-home-delivery'),
    path('view-home-delivery/',view_home_delivery,name='view-home-delivery'),
    path('add-supplier/',add_supplier,name='add-supplier'),
    path('add-supply-order/',add_supply_order,name='add-supply-order'),
    path('view-supply-order/',view_supply_order,name='view-supply-order'),
    path('view-supply-order/update-invoice/<int:invoice_id>',update_status,name='update-status'),
    path('printbill/<int:bill_id>/',printbill,name='printbill'),
    path('view-order/view-order-specific/<int:orderid>',view_order_specific,name='view-order-specific')
]