from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
from .models import SiteUser

class CreateUserForm(UserCreationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={'placeholder': '_',
                                                             'class': 'form-control form-control-user'}), max_length=255)
    password1 = forms.CharField(widget=forms.TextInput(attrs={'placeholder': '_',
                                                              'class': 'form-control form-control-user'}), max_length=255)
    password2 = forms.CharField(widget=forms.TextInput(attrs={'placeholder': '_',
                                                              'class': 'form-control form-control-user'}), max_length=255)
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']

class SiteUserForm(ModelForm):
    name = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': '_',
                                                                         'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}), max_length=255)
    surname = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': '_',
                                                                            'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}), max_length=255)
    last_name = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': '_',
                                                                              'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}), max_length=255)
    phone = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': '_',
                                                                          'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}), max_length=255)
    address = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': '_',
                                                                            'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}), max_length=255)
    date_of_birth = forms.DateField(required=False, widget=forms.DateInput(format='%d/%m/%Y',
                                                                           attrs={'class': 'form-control icon-calendar',
                                                                                  'type': 'date',
                                                                         'style' : 'background-color: transparent'}))
    ROLE_IN_SYSTEM_CHOICES = [
        ('SP', 'Спортсмен'),
        ('RE', 'Представитель региональной федерации'),
        ('AD', 'Администратор ФСП'),
        ('PA', 'Партнер федерации')
    ]
    inn = forms.FileField(required=False, widget=forms.FileInput(attrs={'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}))
    snils = forms.FileField(required=False, widget=forms.FileInput(attrs={'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}))
    passport = forms.FileField(required=False, widget=forms.FileInput(attrs={'class': 'form-control',
                                                                         'style' : 'background-color: transparent'}))

    class Meta:
        model = SiteUser
        fields = ['name', 'surname', 'last_name', 'phone', 'address', 'date_of_birth', 'inn', 'snils', 'passport']