from django.urls import path
from django_distill import distill_path
from .views import HomePageView

urlpatterns = [
    distill_path("", HomePageView.as_view(), name="home"),
]
