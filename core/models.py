from django.db import models
from django.conf import settings
from django.contrib.postgres.fields import ArrayField
import datetime


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
    skills = ArrayField(base_field=ArrayField(models.CharField(blank=True), max_length=100),
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


class Event(models.Model):
    eventStartDate = models.DateTimeField(auto_now=False, verbose_name="Дата начала")
    eventEndDate = models.DateTimeField(auto_now=False, verbose_name="Дата окончания")
    name = models.CharField(max_length=63, blank=True, verbose_name='Название')
    description = models.CharField(max_length=63, blank=True, verbose_name='Описание')
    organizatorId = models.ForeignKey(
        "SiteUser",
        on_delete=models.deletion.PROTECT,
        verbose_name='Организатор'
    )
    TYPE_CHOICES = [
        ("FSP", "Событие от ФСП"),
        ("PARTNER", "Событие, прошедшее аккредитацию ФСП"),
    ]
    tags = ArrayField(base_field=ArrayField(models.CharField(blank=True), max_length=100),
                      blank=True,
                      null=True,
                      verbose_name='Теги')
    type = models.CharField(max_length=10,
                            choices=TYPE_CHOICES,
                            default='FSP',
                            blank=True,
                            verbose_name='Тип события')
    STATUSES = [
        ("NEW", "Новое событие"),
        ("APPROVED", "Подтвержденное событие"),
    ]
    status = models.CharField(max_length=10,
                              choices=STATUSES,
                              default='NEW',
                              verbose_name='Статус события')

    @property
    def is_actual(self):
        return self.status == "APPROVED" and self.eventEndDate >= datetime.datetime.today()

    class Meta:
        verbose_name = 'Cобытие'
        verbose_name_plural = 'События'


class EventParticipant(models.Model):
    eventId = models.ForeignKey(
        "Event",
        on_delete=models.deletion.PROTECT,
        verbose_name='Событие'
    )
    userId = models.ForeignKey(
        "SiteUser",
        on_delete=models.deletion.PROTECT,
        verbose_name='Участник'
    )
    TYPE_CHOICES = [
        ("FSP", "Событие от ФСП"),
        ("PARTNER", "Событие, прошедшее аккредитацию ФСП"),
    ]
    type = models.CharField(max_length=10,
                            choices=TYPE_CHOICES,
                            default='FSP',
                            blank=True,
                            verbose_name='Тип события')
    personalScore = models.IntegerField(blank=True, null=True, verbose_name='Результат')

    class Meta:
        verbose_name = 'Участник события'
        verbose_name_plural = 'Участники события'
