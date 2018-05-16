from django.db import models
from django.db.models.signals import post_save, pre_save

from core.signals import process_image


class Style(models.Model):
    path = models.TextField()
    name = models.CharField(max_length=36)


class Picture(models.Model):
    image = models.ImageField(null=True, blank=True)
    processed_image = models.ImageField(null=True, blank=True)
    style = models.ForeignKey(Style, on_delete=models.PROTECT)
    desc = models.TextField(default='default', blank=True)


post_save.connect(process_image, sender=Picture)
