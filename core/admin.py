from django.contrib import admin
from .models import *


class SiteUserAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'role')
    search_fields = ('id',)


admin.site.register(SiteUser, SiteUserAdmin)