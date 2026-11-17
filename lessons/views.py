from django.shortcuts import render


def home(request):
    context = {
        "name": "Сергій Коваленко",
        "price": 300,
        "telegram": "GTFate95",
        "expirience": 5
    }
    return render(request, "lessons/home.html", context=context)