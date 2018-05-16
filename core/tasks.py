# Create your tasks here
from __future__ import absolute_import, unicode_literals
from celery import shared_task


@shared_task
def generate_image(pk):
    from core.models import Picture
    picture = Picture.objects.get(pk=pk)
    picture.desc = 'processed image'
    picture.save()
