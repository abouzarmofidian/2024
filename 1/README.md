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

Task Pod

1.pod: 'jekyll' has an initContainer, name: 'copy-jekyll-site', image: 'kodekloud/jekyll'

2.initContainer: 'copy-jekyll-site', command: [ "jekyll", "new", "/site" ] (command to run: jekyll new /site)

3.pod: 'jekyll', initContainer: 'copy-jekyll-site', mountPath = '/site'

4.pod: 'jekyll', initContainer: 'copy-jekyll-site', volume name = 'site'

5.pod: 'jekyll', container: 'jekyll', volume name = 'site'

6.pod: 'jekyll', container: 'jekyll', mountPath = '/site'

7.pod: 'jekyll', container: 'jekyll', image = 'kodekloud/jekyll-serve'

8.pod: 'jekyll', uses volume called 'site' with pvc = 'jekyll-site'

9.pod: 'jekyll' uses label 'run=jekyll'

Task Service

1.Service 'jekyll' uses targetPort: '4000', namespace: 'development'

2.Service 'jekyll' uses Port: '8080', namespace: 'development'

3.Service 'jekyll' uses NodePort: '30097', namespace: 'development'

Task Config

1.set context 'developer' with user = 'martin' and cluster = 'kubernetes' as the current context.

2.Build user information for martin in the default kubeconfig file: User = martin , client-key = /root/martin.key and client-certificate = /root/martin.crt (Ensure don't embed within the kubeconfig file)

3.Create a new context called 'developer' in the default kubeconfig file with 'user = martin' and 'cluster = kubernetes'
