# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_address = Address.create(
  address: "Rua A",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)

User.create(
  name: "Administrador",
  email: "admin@gmail.com",
  password: "123123",

  address: admin_address
)

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  valter = User.create(name:"Valter", email:"valter@gmail.com", password:"123456")
  rick = User.create(name:"Rick Grimes", email:"rick@gmail.com",password:"123456")
  
  tech   = Category.create(title:"Tecnologia",description:"Tecnologia (do grego é um termo que envolve o conhecimento técnico e científico e a aplicação deste conhecimento através de sua transformação no uso de ferramentas",image:"http://previews.123rf.com/images/butenkow/butenkow1303/butenkow130300310/18648878-Technology-logo-Stock-Photo.jpg")
  buss   = Category.create(title:"Bussiness",description:"Em economia, negócio, é referido como um comércio ou empresa, que é administrado por pessoa(s) para captar recursos financeiros para gerar bens e serviços, e por consequência proporciona a circulação de capital de giro",image:"http://www.teachurself.com/wp-content/uploads/2013/12/bussiness.jpg")
  sobre  = Category.create(title:"Sobrevivência",description:"As Técnicas de sobrevivência compõem um conjunto de práticas emergenciais que, compreendidas, treinadas e aplicadas em situações extremas, permitem ao indivíduo prolongar sua vida", 
                           image:"http://cdn.wallpapersafari.com/38/64/HQe4W0.jpg")

  redes  = Course.create(title:"Redes",image:"http://www.linkcomp.com.br/wp-content/uploads/2014/12/Redes-e-Internet1.jpg",
                         trailer:"https://www.youtube.com/embed/Ww9gJDzaf8g",
                         description:"Uma rede de computadores é formada por um conjunto de máquinas eletrônicas com processadores capazes de trocar informações e partilhar recursos, interligados por um sub-sistema de comunicação, ou seja, é quando há pelo menos dois ou mais computadores" ,
                         nivel:"Hard",workload:6,active:true,completed_edition:false, category: tech)
 
  rails  = Course.create(title:"Ruby on Rails",image:"https://pbs.twimg.com/profile_images/691206086955790336/CDMbA57p.png",
                         trailer:"https://www.youtube.com/embed/US_P3mGdIu8" ,description:"Ruby on Rails é um framework livre que promete aumentar velocidade e facilidade no desenvolvimento de sites orientados a banco de dados (database-driven web sites), uma vez que é possível criar aplicações com base em estruturas pré-definidas." ,
                         nivel:"Medium",workload:7,active:true,
                         completed_edition:false, category:tech)
  
  empreen = Course.create(title:"Abrir uma empressa", image:"https://s-media-cache-ak0.pinimg.com/564x/9a/98/61/9a986184bf2d68d2f5045c9a85fcb629.jpg" ,
                          trailer:"https://www.youtube.com/embed/HYQJTIkMMAg" , 
                          description:"é o processo de iniciativa de implementar novos negócios ou mudanças em empresas já existentes. É um termo muito usado no âmbito empresarial e muitas vezes está relacionado",
                          nivel:"Hard", workload:6, active:true, completed_edition:false, category:buss)
  
  zombie = Course.create(title:"Como fazer um machado caseiro", image:"http://cdn.filtromag.com.br/imagens/filtro/ferramenta-sobrevivencia-survco.jpg ", 
                         trailer:"https://www.youtube.com/embed/BN-34JfUrHY", 
                         description:"A capacidade humana de construir coisas modernas é impressionante. Mas ver este cara criar um machado de pedra primitivo usando apenas tocos de pau, pedras e fogo é impressionante e estranhamente satisfatório", 
                         nivel:"Hard",workload:10,active:true, completed_edition:false,category:sobre)
  
  registries = Registry.create(active: true, finished_course:false, limit_date:"30/09/2016",user:valter, course:rails)
  registries = Registry.create(active: true, finished_course:false, limit_date:"01/10/2016",user:valter, course:redes)

  registries = Registry.create(active:true, finished_course:false, limit_date:"02/10/2016 ",user:rick, course:empreen)
  registries = Registry.create(active:true, finished_course:false, limit_date:"10/11/2016 ",user:rick, course:rails)
  registries = Registry.create(active:true,finished_course:false, limit_date:"01/01/2017 ",user:rick, course:zombie)
