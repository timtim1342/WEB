# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('OK')
