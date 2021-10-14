from django.shortcuts import render

from django.shortcuts import render

def indice(request):
    return render(request, 'indice.html')
def sala(request, room_name):
    return render(request, 'sala.html', {
        'room_name': room_name
    })
