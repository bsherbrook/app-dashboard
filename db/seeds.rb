Appitem.create(name:'Google', description:'Search Engine', color:'Red', default_status: 'Yes', link:'http://www.google.com', position:1)
Appitem.create(name:'Wisc', description:'UW Homepage', color:'Blue', default_status: 'No', link:'http://www.wisc.edu', position:2)
Appitem.create(name:'GLBRC', description:'Great Lakes Bioenergy Research Center', color:'Yellow', default_status: 'Yes', link:'http://www.glbrc.org', position:3)
Appitem.create(name:'WEI', description:'Wisconsin Energy Institute', color:'Green', default_status: 'No', link:'https://energy.wisc.edu/', position:4)
Appitem.create(name:'Twitter', description:'Twitter', color:'Purple', default_status: 'No', link:'https://twitter.com/', position:5)
Appitem.create(name:'Facebook', description:'Facebook', color:'cornflowerblue', default_status: 'Yes', link:'https://facebook.com/', position:6)
Appitem.create(name:'Weather', description:'The Weather Channel', color:'Cyan', default_status: 'No', link:'https://weather.com/', position:5)
Appitem.create(name:'Gmail', description:'Your Email Account', color:'goldenrod', default_status: 'Yes', link:'https://gmail.com/', position:5)
Appitem.create(name:'Google Maps', description:'Google Maps', color:'aquamarine', default_status: 'Yes', link:'https://maps.google.com/', position:5)

User.create(email:'user1@glbrc.com', password: 'glbrcpass');
User.create(email:'user2@glbrc.com', password: 'glbrcpass');
User.create(email:'user3@glbrc.com', password: 'glbrcpass');
