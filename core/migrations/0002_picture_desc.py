# Generated by Django 2.0.1 on 2018-05-16 06:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='picture',
            name='desc',
            field=models.TextField(blank=True, default='default'),
        ),
    ]
