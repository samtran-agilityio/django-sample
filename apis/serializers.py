# import serializer from rest_framework
from rest_framework import serializers

# import model from models.py
from .models import ExampleModel

# Create a model serializer
class ExamplesSerializer(serializers.HyperlinkedModelSerializer):
	# specify model and fields
	class Meta:
		model = ExampleModel
		fields = ('title', 'description')