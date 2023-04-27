from django.db import models
from django.conf import settings

# Create your models here.

class SiteUser:
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.deletion.CASCADE, null=True)
