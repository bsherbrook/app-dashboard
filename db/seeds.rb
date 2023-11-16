Appitem.create(name:'Google', description:'Search Engine', color:'Red', default_status: 'Yes', link:'http://www.google.com', position:1)
Appitem.create(name:'Wisc', description:'UW Homepage', color:'Blue', default_status: 'No', link:'http://www.wisc.edu', position:2)
Appitem.create(name:'GLBRC', description:'Great Lakes Bioenergy Research Center', color:'Yellow', default_status: 'Yes', link:'http://www.glbrc.org', position:3)
Appitem.create(name:'WEI', description:'Wisconsin Energy Institute', color:'Green', default_status: 'No', link:'https://energy.wisc.edu/', position:4)
Appitem.create(name:'Twitter', description:'Twitter', color:'Purple', default_status: 'No', link:'https://twitter.com/', position:5)
Appitem.create(name:'Facebook', description:'Facebook', color:'cornflowerblue', default_status: 'Yes', link:'https://facebook.com/', position:6)
Appitem.create(name:'Weather', description:'The Weather Channel', color:'Cyan', default_status: 'No', link:'https://weather.com/', position:7)
Appitem.create(name:'Gmail', description:'Your Email Account', color:'goldenrod', default_status: 'Yes', link:'https://gmail.com/', position:8)
Appitem.create(name:'Google Maps', description:'Google Maps', color:'aquamarine', default_status: 'Yes', link:'https://maps.google.com/', position:9)

NewApp.create(name:'Google', description:'Search Engine', color:'Red', link:'http://www.google.com', position:1)
NewApp.create(name:'Wisc', description:'UW Homepage', color:'Blue', link:'http://www.wisc.edu', position:2)
NewApp.create(name:'GLBRC', description:'Great Lakes Bioenergy Research Center', color:'Yellow', link:'http://www.glbrc.org', position:3)
NewApp.create(name:'WEI', description:'Wisconsin Energy Institute', color:'Green', link:'https://energy.wisc.edu/', position:4)
NewApp.create(name:'Twitter', description:'Twitter', color:'Purple', link:'https://twitter.com/', position:5)
NewApp.create(name:'Facebook', description:'Facebook', color:'cornflowerblue', link:'https://facebook.com/', position:6)
NewApp.create(name:'Weather', description:'The Weather Channel', color:'Cyan', link:'https://weather.com/', position:7)
NewApp.create(name:'Gmail', description:'Your Email Account', color:'goldenrod', link:'https://gmail.com/', position:8)
NewApp.create(name:'Google Maps', description:'Google Maps', color:'aquamarine', link:'https://maps.google.com/', position:9)
NewApp.create(name:'Zoom', description:'Video Chat App', color:'yellow', link:'https://zoom.us/', position:10)
NewApp.create(name:'Google Docs', description:'Word Processing', color:'yellow', link:'https://docs.google.com/', position:11)
NewApp.create(name:'Youtube', description:'Youtube', color:'yellow', link:'https://youtube.com/', position:12)



User.create(email:'user1@glbrc.com', password: 'glbrcpass');
User.create(email:'user2@glbrc.com', password: 'glbrcpass');
User.create(email:'user3@glbrc.com', password: 'glbrcpass');
