from django.urls import path
from django.conf.urls.static import static
from django.conf import settings
from django.contrib.auth import views as auth_views


from . import views

urlpatterns = [
    path('home/', views.home, name='accounts-home'),
    path('about/', views.aboutUs, name='AboutUs'),
    path('staffHome/', views.StaffHome, name='staff-home'),
    path('managementHome/', views.ManagementHome, name='management-home'),
    path('insertcustomer',views.createCustomer,name='CreateCustomer'),
    path('products/', views.products),
    path('customer/', views.customer),
    path('Transactions/',views.ShowTransactions, name='Transactions'),
    path('register/',views.register,name='register'),
    path('feedback/', views.feedback,name='feedback'),
    path('stockManagement/',views.showStockPage, name="stock"),
    path('AddStocks/',views.Insertrecord, name="AddStocks"),
    path('viewStocks/', views.ViewStocks, name="ViewStocks"),
    path('menu/', views.InsertMenu,name='addMenuItems'), 
    path('sets/',views.ShowSets,name='sets'),
    path('order/',views.InsertCustomerOrder,name='order'),
    path('StaffLogin/',views.StaffLogin,name='StaffLogin'),
    path('Payment/<str:args>/',views.Payment, name='Payment'),
    path('charge/',views.charge, name="charge"),
    path('success/<str:args>/',views.successMsg,name="PaymentSuccess"),
    path('CheckAssignedOrders/',views.ShowGivenOrders,name='ShowGivenOrders'),
    path('AssignOrdersToStaff/',views.ShowAssignOrdersToStaff,name='AssignOrdersToStaff'),
    path('delete/<int:stockID>', views.DeleteRecord), 
    path('edit/<int:stockID>', views.EditRecords),
    path('customerAccounts/', views.customerAccounts, name='CustomerAccounts'),
    path('delete/<str:username>', views.deleteCustomerAccount),
    path('deleteCustomer/<str:username>', views.deleteCustomerAccountCustomer),
    
    path('reset_password/',auth_views.PasswordResetView.as_view(template_name="accounts/password_reset.html"), name="reset_password"),
    path('reset_password_sent/',auth_views.PasswordResetDoneView.as_view(template_name="accounts/password_reset_sent.html"),  name="password_reset_done"),
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(template_name="accounts/password_reset_form.html"),  name="password_reset_confirm"),
    path('reset_password_complete/',auth_views.PasswordResetCompleteView.as_view(template_name="accounts/password_reset_done.html"),  name="password_reset_complete"),
    path('change_password/', views.changePassword, name='ChangePassword'),

    path('balance/', views.dashboard_with_pivot, name='dashboard_with_pivot'),
    path('data', views.pivot_data, name='pivot_data'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)