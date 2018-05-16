from core.tasks import generate_image


def process_image(sender, instance, created, **kwargs):
    if created:
        generate_image.apply_async([instance.pk])
