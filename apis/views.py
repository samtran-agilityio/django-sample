# import viewsets
from rest_framework import viewsets
 
# import local data
from .serializers import ExamplesSerializer
from .models import ExampleModel
 
# create a viewset
 
 
class ExamplesViewSet(viewsets.ModelViewSet):
    # define queryset
    queryset = ExampleModel.objects.all()
 
    # specify serializer to be used
    serializer_class = ExamplesSerializer

