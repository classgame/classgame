# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Criatores
valter_address = Address.create(
  address: "Rua A",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)

henrich_address = Address.create(
  address: "Rua B",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)

paulo_address = Address.create(
  address: "Rua C",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)

rick_address = Address.create(
  address: "Rua D",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)


valter_performance = Performance.create!(
  total_experience: 0,
  amount_courses: 0,
  amount_exercises: 0
)

henrich_performance = Performance.create!(
  total_experience: 0,
  amount_courses: 0,
  amount_exercises: 0
)

paulo_performance = Performance.create!(
  total_experience: 0,
  amount_courses: 0,
  amount_exercises: 0
)

rick_performance = Performance.create!(
  total_experience: 0,
  amount_courses: 0,
  amount_exercises: 0
)

valter = User.create!(
  name:"Valter Barros",
  image: "https://scontent.ffor2-1.fna.fbcdn.net/v/t1.0-9/13232963_867235543399591_3714952430996557228_n.jpg?oh=6b81f021303b6d088eb0e725ce188fcd&oe=58A13888", 
  email:"valter@gmail.com", 
  password:"123456",

  performance:valter_performance,
  address:valter_address
)

henrich = User.create!(
  name:"Henrich Jones",
  image:"http://rogalabs.com/assets/img/team/team-06_jones.jpg",
  email:"henrich@gmail.com",
  password:"123456",

  performance:henrich_performance,
  address:henrich_address
)

paulo = User.create!(
  name:"João Paulo",
  image:"https://scontent.ffor2-1.fna.fbcdn.net/v/t1.0-9/13900192_808402369296146_4162341773477618642_n.jpg?oh=a841a90c3d64c55fa9bc4666eaebcb08&oe=589C4E9E",
  email:"paulo@gmail.com",
  password:"123456",

  performance:paulo_performance,
  address:paulo_address
)

#TWD
rick = User.create!(
  name:"Rick Grimes",
  image:"http://vignette2.wikia.nocookie.net/walkingdead/images/d/d5/TWD_-_Rick_Grimes._LDOE.png/revision/latest?cb=20160505153116",
  email:"rick@gmail.com",
  password:"123456",

  performance:rick_performance,
  address:rick_address
);

tech = Category.create!(
  title:"Tecnologia",
  description:"Tecnologia (do grego é um termo que envolve o conhecimento técnico e científico e a aplicação deste conhecimento através de sua transformação no uso de ferramentas",
  image:"http://images.hngn.com/data/images/full/134342/mr-robot.jpg"
)

buss = Category.create!(
  title:"Bussiness",
  description:"Em economia, negócio, é referido como um comércio ou empresa, que é administrado por pessoa(s) para captar recursos financeiros para gerar bens e serviços, e por consequência proporciona a circulação de capital de giro", 
  image:"http://1.bp.blogspot.com/-fm6wll52rbs/VYyL03-LdII/AAAAAAAAM2I/62z80RPLkdE/s1600/Pense-Fora-da-Caixa-Canal-Gera%25C3%25A7%25C3%25A3o-de-Valor-600.jpg"
)

sobre = Category.create!(
  title:"Sobrevivência",
  description:"As Técnicas de sobrevivência compõem um conjunto de práticas emergenciais que, compreendidas, treinadas e aplicadas em situações extremas, permitem ao indivíduo prolongar sua vida", 
  image:"https://s-media-cache-ak0.pinimg.com/236x/62/6c/a2/626ca29c1070775209885584f484e33a.jpg"
)

redes = Course.create!(
  title:"Redes",
  image:"http://www.linkcomp.com.br/wp-content/uploads/2014/12/Redes-e-Internet1.jpg",
  trailer:"https://www.youtube.com/embed/Ww9gJDzaf8g",
  description:"Uma rede de computadores é formada por um conjunto de máquinas eletrônicas com processadores capazes de trocar informações e partilhar recursos, interligados por um sub-sistema de comunicação, ou seja, é quando há pelo menos dois ou mais computadores" ,
    active:true,
    completed_edition:false,
    #categories: tech
)

rails = Course.create!(
  title:"Ruby on Rails",
  image:"https://pbs.twimg.com/profile_images/691206086955790336/CDMbA57p.png",
  trailer:"https://www.youtube.com/embed/US_P3mGdIu8",
    description:"Ruby on Rails é um framework livre que promete aumentar velocidade e facilidade no desenvolvimento de sites orientados a banco de dados (database-driven web sites), uma vez que é possível criar aplicações com base em estruturas pré-definidas." ,
    active:true,
  completed_edition:false,
    #categories:tech
)

empreen = Course.create!(
  title:"Abrir uma empressa", 
  image:"https://s-media-cache-ak0.pinimg.com/564x/9a/98/61/9a986184bf2d68d2f5045c9a85fcb629.jpg" ,
  trailer:"https://www.youtube.com/embed/HYQJTIkMMAg" , 
  description:"é o processo de iniciativa de implementar novos negócios ou mudanças em empresas já existentes. É um termo muito usado no âmbito empresarial e muitas vezes está relacionado",
    active:true, 
    completed_edition:false, 
    #categories:buss
)

zombie = Course.create!(
  title:"Como fazer um machado caseiro", 
  image:"http://cdn.filtromag.com.br/imagens/filtro/ferramenta-sobrevivencia-survco.jpg ", 
  trailer:"https://www.youtube.com/embed/BN-34JfUrHY", 
  description:"A capacidade humana de construir coisas modernas é impressionante. Mas ver este cara criar um machado de pedra primitivo usando apenas tocos de pau, pedras e fogo é impressionante e estranhamente satisfatório", 
    active:true,
    completed_edition:false,
    #categories:sobre
)

registries = Registry.create!(
  active: true,
  finished_course:false,
  limit_date:"30/12/2016",
  user:valter,
  course:rails
)

registries = Registry.create!(
  active: true,
  finished_course:false, 
  limit_date:"01/12/2016",
  user:valter, course:redes
)

registries = Registry.create!(
  active:true, 
  finished_course:false, 
  limit_date:"02/11/2016 ",
  user:rick, 
  course:empreen
)

registries = Registry.create!(
  active:true, 
  finished_course:false, 
  limit_date:"10/11/2016 ",
  user:rick,
  course:rails
)

registries = Registry.create!(
  active:true,
  finished_course:false,
  limit_date:"01/01/2017 ",
  user:rick,
  course:zombie
)

registries = Registry.create!(
  active: true, 
  finished_course:false,
  limit_date:"30/11/2016",user:paulo,
  course:rails
)

registries = Registry.create!(
  active: true,
  finished_course:false,
  limit_date:"30/11/2016",
  user:paulo, 
  course:redes
)

# chapter, content, video, text, question, alternative

chapter1 = Chapter.create(
  title: "Best Practices with ruby on rails",
  description: "what do you know about routes?",
  course:rails
)

video1 = Video.create(
  description: "First steps with ruby",
  experience: 30,
  position: 1,
  title: "Objects and Classes",
  link: "https://www.youtube.com/watch?v=tduWe7LNQVs",
  chapter: chapter1
)

text1 = Text.create(
  experience: 30,
  position: 4,
  title: "Introduction in Ruby on Rails",
  text: "Learning to build a modern web application is daunting. Ruby on Rails makes it much easier and more fun. It includes everything you need to build fantastic applications, and you can learn it with the support of our large, friendly community.",
  chapter: chapter1
)

text2 = Text.create(
  experience: 30,
  position: 3,
  title: "Motivation to learn ruby on rails",
  text: "<h2>1. What is Rails?</h2><p>Rails is a&nbsp;<a target=\"_blank\" href=\"http://skillcrush.com/2013/04/05/frameworks/\">web application framework</a>&nbsp;designed to work with the&nbsp;<a target=\"_blank\" href=\"http://skillcrush.com/2014/06/23/developers-love-ruby/\">Ruby programming language</a>. Sound like mumbo jumbo?! I know!</p><p>Here’s the BIG idea: there is a programming language called Ruby. It’s super fun to write. In fact, the guy who first created it said that his major motivation when writing the language was to design a programming language that would make programmers happy. Nice, right?</p><p>Let me give you an example.</p><p>If I want to print something to the screen in PHP I need to write:</p><p><code>echo “Hello World”;</code></p><p>Notice the semi-colon? And what does echo even mean?!!</p><p>On the other hand if I wanted to do the same thing in Ruby alls I would write is:</p><p><code>puts “Hello World”</code></p><p>No semi-colon, and puts may be a little… juvenile, but it makes more intuitive sense to me than echo.</p><p>Seriously, when you spend hours and hours a day writing code, it’s the little things that make a HUGE difference.</p><p>So, anyways, the only problem with Ruby was that it’s not designed for use on the Web. Like…you couldn’t really use it to make websites, per se. That is until… Rails!</p><p>I am not sure if Rails was the first web framework for Ruby but it’s DEFINITELY the most popular.</p><p>What Rails does is provide all this fancy scaffolding and stuff to make it possible to write a Ruby application and have it be a website. This sounds really abstract when you say it here, but it’s basically like this: if I were to write</p><p><code>puts “Hello World”</code></p><p>in an HTML document, you would just see the whole thing (just like you do there!). What I actually want is for you to ONLY see</p><p><code>Hello World</code></p><p>To put it in the simplest way imaginable, Rails makes that possible. But it also does SO SO SO SO much more.</p>",
  chapter: chapter1
)

text3 = Text.create(
  experience: 30,
  position: 5,
  title: "Bootstrap on Rails",
  text: "<h2>Installing the Gem</h2><h2></h2>The&nbsp;<a target=\"_blank\" href=\"http://rubygems.org/gems/twitter-bootstrap-rails\">Twitter Bootstrap Rails gem</a>&nbsp;can provide the Bootstrap stylesheets in two ways.<br>The plain CSS way is how Bootstrap is provided on&nbsp;<a target=\"_blank\" href=\"http://twbs.github.io/bootstrap/\">the official website</a>.<br>The&nbsp;<a target=\"_blank\" href=\"http://lesscss.org/\">Less</a>&nbsp;way provides more customization options, like changing theme colors, and provides useful Less mixins for your code, but requires the Less gem and the Ruby Racer Javascript runtime (not available on Microsoft Windows).<br><h2>Installing the Less stylesheets</h2>To use Less stylesheets, you'll need the&nbsp;<a target=\"_blank\" href=\"http://rubygems.org/gems/less-rails\">less-rails gem</a>, and one of&nbsp;<a target=\"_blank\" href=\"https://github.com/cowboyd/commonjs.rb#supported-runtimes\">JavaScript runtimes supported by CommonJS</a>.<br>Include these lines in the Gemfile to install the gems from&nbsp;<a target=\"_blank\" href=\"http://rubygems.org/\">RubyGems.org</a>:<br><br>gem <span>\"therubyracer\"<br></span>gem \"less-rails\" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS<br>gem <span>\"twitter-bootstrap-rails\"<br><br></span>or you can install from latest build;<br>gem 'twitter-bootstrap-rails', :git =&gt; <span>'git://github.com/seyhunak/twitter-bootstrap-rails.git'<br></span>Then run&nbsp;<code>bundle install</code>&nbsp;from the command line:<br><br><code>bundle install<br><br></code>Then run the bootstrap generator to add Bootstrap includes into your assets:<br><br><code>rails generate bootstrap:install less<br><br></code>If you need to skip coffeescript replacement into app generators, use:<br><br><code>rails generate bootstrap:install --no-coffeescript</code><h3><a target=\"_blank\" href=\"https://github.com/seyhunak/twitter-bootstrap-rails#installing-the-less-stylesheets\"></a></h3>",
  chapter: chapter1
)

ex1 = Exercise.create(
  experience: 50,
  position: 2,
  title: "Basic about Ruby on Rails",
  chapter: chapter1
)

q1 = Question.create(
  description: "Basic concepts for rails",
  experience: 50,
  title: "What is your course? ADS?",
  exercise: ex1
)

Alternative.create(
  title: "Yes,i'm the best",
  correct: true,
  question: q1
)

Alternative.create(
  title: "No, i'm a shit",
  correct: false,
  question: q1
)

q2 = Question.create(
  experience: 60,
  title: "What is command to print information on ruby?",
  exercise: ex1
)

Alternative.create(
  title: "print, puts",
  correct: true,
  question: q2 
)

Alternative.create(
  title: "each",
  correct: false,
  question: q2 
)

chapter2 = Chapter.create(
  title: "Models Taste Like Chicken",
  description: "We'll learn about ActiveRecord models, validations, and relationships.",
  course:rails
)

video1 = Video.create(
  description: "Models in ruby on rails?",
  experience: 70,
  position: 1,
  title: "Understanding Model in Ruby on Rails",
  link: "https://www.youtube.com/watch?v=EzDDOW_DuAc",
  chapter: chapter2
)

video1 = Video.create(
  description: "Ruby on Rails para iniciantes - Aula 28 - Validações e Criando Métodos no Model",
  experience: 53,
  position: 6,
  title: "Ruby on Rails para iniciantes - Aula 28 - Validações e Criando Métodos no Model",
  link: "https://www.youtube.com/watch?v=jV_T16y99aU",
  chapter: chapter2
)

text1 = Text.create(
  experience: 35,
  position: 3,
  title: "Object Relational Mapping",
  text: "Object Relational Mapping, commonly referred to as its abbreviation ORM, is a technique that connects the rich objects of an application to tables in a relational database management system. Using ORM",
  chapter: chapter2
)

text2 = Text.create(
  experience: 30,
  position: 4,
  title: "What is Active Record?",
  text: "Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database.",
  chapter: chapter2
)

ex2 = Exercise.create(
  experience: 50,
  position: 2,
  title: "Models",
  chapter: chapter2
)

q1 = Question.create(
  title: "What is Active Record?",
  experience: 50,
  exercise: ex2
)

Alternative.create(
  title: "Active Record is the M in MVC",
  correct: true,
  question: q1
)

Alternative.create(
  title: "Active Record is the controller of application",
  correct: false,
  question: q1
)

q2 = Question.create(
  title: "How can validate data in rails models",
  experience: 50,
  exercise: ex2
)

Alternative.create(
  title: "validates :name, presence: true",
  correct: true,
  question: q2 
)

Alternative.create(
  title: "validates if name, presence: true",
  correct: false,
  question: q2 
)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')