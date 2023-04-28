from django.db import models
from django.conf import settings
from django.contrib.postgres.fields import ArrayField


class SiteUser(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.deletion.CASCADE, null=True)
    name = models.CharField(max_length=63, blank=True, verbose_name='Имя')
    surname = models.CharField(max_length=63, blank=True, verbose_name='Фамилия')
    last_name = models.CharField(max_length=63, blank=True, verbose_name='Отчество')
    COMP_CHOICES = [
        ('BACK', 'Backend'),
        ('FRON', 'Frontend'),
    ]
    competence = models.CharField(max_length=4,
                            choices=COMP_CHOICES,
                            default='BACK',
                            verbose_name='Компетенция',
                            blank=True)
    rating = models.IntegerField(blank=True, null=True, verbose_name='Рейтинг')
    awards = models.TextField(blank=True, null=True, verbose_name='Достижения')
    skills = ArrayField(base_field = ArrayField(models.CharField(blank=True, max_length=255),),
                        blank=True,
                        null=True,
                        verbose_name='Навыки')
    ROLE_IN_SYSTEM_CHOICES = [
        ('SP', 'Спортсмен'),
        ('RE', 'Представитель региональной федерации'),
        ('AD', 'Администратор ФСП'),
        ('PA', 'Партнер федерации')
    ]
    role = models.CharField(max_length=2,
                            choices=ROLE_IN_SYSTEM_CHOICES,
                            default='SP',
                            verbose_name='Роль',
                            blank=True)

    class Meta:
        verbose_name = 'Пользователь'
        verbose_name_plural = 'Пользователи'
