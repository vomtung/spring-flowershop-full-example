
In eclipse
Choose File->New->Other->Maven->Maven Project
Choose maven-archetype-webapp
Fill GroupId and ArtifactId
Choose Finish

Right click on the project 
Choose New->Package
src: vomtung/src/main
Package name : java

Right click on the project 
Choose New->Package
src: vomtung/src/
Package name : test

Right click on the project 
Choose New->Package
src: vomtung/src/test
Package name : java

Add source folder
Project > Properties > Java Build Path > Source > Add Folder
Choose correspondent package
click Ok

Must declare page isELIgnored="false" to enable Expression Language

Converting from String to custom Object 
In add product, we need convert Category_id (String) to Object. we can solve this problem in two types:
1. create a conversionService
2. Or using <form:select path="category.id"> replace <form:select path="category">
