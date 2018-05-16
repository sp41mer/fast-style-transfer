from django.contrib.admin import ModelAdmin, register
from core.models import *


@register(Style)
class StyleAdmin(ModelAdmin):
    pass


@register(Picture)
class PictureAdmin(ModelAdmin):
    pass
