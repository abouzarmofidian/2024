Task Role:

1.developer-role', should have all(\*) permissions for services in development namespace

2.'developer-role', should have all permissions(\*) for persistentvolumeclaims in development namespace

3.'developer-role', should have all(\*) permissions for pods in development namespace

Task Rolebinding:
1.create rolebinding = developer-rolebinding, role= 'developer-role', namespace = development

2.rolebinding = developer-rolebinding associated with user = 'martin'

Task Persistentvolumeclaim:

1.Storage Request: 1Gi

2.Access modes: ReadWriteMany

3.pvc name = jekyll-site, namespace = development

4.'jekyll-site' PVC should be bound to the PersistentVolume called 'jekyll-site'.
