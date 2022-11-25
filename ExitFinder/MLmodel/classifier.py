import turicreate as turi

url = 'ExitFinder/ExitFinder/MLmodel/data'
data = turi.image_analysis.load_images(url, with_path=True)
data['signType'] = data['path'].apply(lambda path: 'Exit' if '/fire_exit' in path else 'Not Exit')
data.save('dataset.sframe')
data.explore()

# load the dataset
databuffer = turi.SFrame('dataset.sframe')
# split the dataset randomly into 90% training and 10% testing
trainingBuffer, testingBuffer = databuffer.random_split(0.9)
model = turi.image_classifier.create(trainingBuffer, target='signType', model='resnet-50')

model.save('exit.model')
model.export_coreml('ExitFinder.mlmodel')
