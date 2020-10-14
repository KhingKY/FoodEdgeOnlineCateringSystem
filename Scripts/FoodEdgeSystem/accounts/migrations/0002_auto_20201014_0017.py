# Generated by Django 3.1.2 on 2020-10-13 16:17

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ActiveMenuItem',
            fields=[
                ('activeItemID', models.IntegerField(primary_key=True, serialize=False)),
                ('menuItemID', models.IntegerField()),
                ('rating', models.IntegerField()),
            ],
            options={
                'db_table': 'activemenuitems',
            },
        ),
        migrations.CreateModel(
            name='InsertOrder',
            fields=[
                ('orderID', models.IntegerField(primary_key=True, serialize=False)),
                ('teamID', models.IntegerField()),
                ('customerID', models.IntegerField()),
                ('cateringDatetime', models.DateTimeField(blank=True, default=datetime.datetime.now)),
                ('CustFirstName', models.CharField(max_length=255)),
                ('custLastName', models.CharField(max_length=255)),
                ('custEmail', models.CharField(max_length=50)),
                ('custContact', models.CharField(max_length=20)),
                ('custOrder', models.CharField(max_length=255)),
                ('custRequest', models.CharField(max_length=255)),
                ('location', models.CharField(max_length=255)),
                ('amountDue', models.IntegerField(default='50')),
            ],
            options={
                'db_table': 'cateringorder',
            },
        ),
        migrations.CreateModel(
            name='InsertStock',
            fields=[
                ('stockID', models.IntegerField(primary_key=True, serialize=False)),
                ('stockName', models.CharField(max_length=100)),
                ('amountLeft', models.IntegerField()),
                ('deficit', models.IntegerField()),
            ],
            options={
                'db_table': 'Stock',
            },
        ),
        migrations.CreateModel(
            name='MenuItem',
            fields=[
                ('menuItemID', models.IntegerField(primary_key=True, serialize=False)),
                ('stockID', models.IntegerField()),
                ('itemName', models.CharField(max_length=100)),
                ('itemPrice', models.IntegerField()),
            ],
            options={
                'db_table': 'menuitem',
            },
        ),
        migrations.RemoveField(
            model_name='profile',
            name='image',
        ),
        migrations.RemoveField(
            model_name='profile',
            name='user',
        ),
    ]
