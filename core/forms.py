from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User

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