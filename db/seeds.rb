puts "Creating seeds"
sleep 1
puts "Setting everything ready"
sleep 1
puts "Destroying all data"
User.destroy_all
Post.destroy_all
sleep 1
puts "All records destroyed"

puts "Creating new records"
sleep 1
titles = [
  'O Futuro das Construções Sustentáveis: Como Adotar Práticas Ecológicas no Seu Projeto',
  'Gerenciamento de Projetos na Construção Civil: Dicas para Aumentar a Eficiência e Reduzir Custos',
  'Segurança no Canteiro de Obras: Como Garantir a Proteção dos Trabalhadores',
  'A Importância da Manutenção Preventiva em Estruturas de Engenharia Civil',
  'Tecnologia e Inovação na Construção de Infraestruturas Urbanas',
  'Automação na Construção Civil: Benefícios e Desafios',
  'Materiais Avançados na Engenharia: Revolucionando a Construção Moderna',
  'Gestão de Resíduos na Construção: Práticas Sustentáveis e Eficientes',
  'Planejamento Urbano: Integrando Sustentabilidade e Crescimento Econômico',
  'A Era Digital na Engenharia Civil: Ferramentas e Tendências Futuras'
]

contents = [
  'Com as mudanças climáticas se tornando uma preocupação global crescente, a construção sustentável é mais importante do que nunca. Neste post, vamos discutir diversas práticas ecológicas que podem ser incorporadas em projetos de construção civil para reduzir o impacto ambiental e promover a sustentabilidade. Desde o uso de materiais reciclados até a implementação de sistemas de energia renovável, há muitas maneiras de tornar seu projeto mais ecológico. Você já adotou alguma dessas práticas? Compartilhe suas experiências!',
  'O gerenciamento eficiente de projetos é essencial para o sucesso na construção civil. Neste post, vamos explorar algumas estratégias e ferramentas que podem ajudar a melhorar a organização, comunicação e execução de projetos de construção. Desde a utilização de softwares de gerenciamento de projetos até a implementação de metodologias ágeis, essas dicas são projetadas para aumentar a eficiência e reduzir custos. Você utiliza alguma dessas estratégias no seu dia a dia? Deixe suas dicas nos comentários!',
  'A segurança dos trabalhadores é uma prioridade fundamental em qualquer projeto de construção. Neste post, vamos abordar as melhores práticas para garantir um ambiente de trabalho seguro no canteiro de obras. Discutiremos a importância do treinamento adequado, o uso de equipamentos de proteção individual (EPIs), e a implementação de protocolos de segurança rigorosos. Quais medidas de segurança você implementa no seu local de trabalho? Compartilhe suas práticas conosco!',
  'Manter estruturas de engenharia civil em bom estado é crucial para garantir sua longevidade e segurança. Neste post, vamos discutir a importância da manutenção preventiva e como ela pode ajudar a evitar problemas graves no futuro. Exploraremos técnicas de inspeção, métodos de reparo e as melhores práticas para manter estruturas como pontes, edifícios e estradas em perfeito estado. Você realiza manutenções preventivas regularmente? Conte-nos sobre sua abordagem!',
  'As cidades estão crescendo rapidamente, e com isso vem a necessidade de infraestruturas urbanas mais eficientes e resilientes. Neste post, vamos explorar como a tecnologia e a inovação estão transformando a construção de infraestruturas urbanas. Discutiremos o uso de sensores inteligentes para monitoramento de tráfego, sistemas de gestão de água avançados, e métodos de construção que minimizam o impacto ambiental. Qual tecnologia você acha que terá o maior impacto nas cidades do futuro? Participe da discussão nos comentários!',
  'A automação está transformando a construção civil, trazendo benefícios como maior precisão, redução de erros e eficiência no uso de recursos. Neste post, vamos explorar os principais desafios e vantagens da automação na construção, incluindo exemplos de tecnologias como robôs de construção e impressoras 3D para concreto. Como você vê o futuro da automação em sua área de trabalho?',
  'Os materiais avançados estão revolucionando a engenharia civil, oferecendo maior durabilidade e sustentabilidade. Neste post, vamos discutir alguns desses materiais, como concreto autorreparável, compósitos de fibra e materiais à base de nanotecnologia. Como esses materiais estão sendo incorporados em projetos modernos?',
  'A gestão de resíduos é uma parte crucial da construção sustentável. Neste post, vamos explorar práticas eficientes para reduzir, reutilizar e reciclar resíduos de construção. Discutiremos exemplos de projetos que implementaram com sucesso a gestão de resíduos e como essas práticas podem ser aplicadas em diferentes escalas.',
  'O planejamento urbano sustentável é essencial para integrar o crescimento econômico com a preservação ambiental. Neste post, vamos discutir estratégias de planejamento urbano que promovem a sustentabilidade, como a criação de espaços verdes, transporte público eficiente e gestão de recursos hídricos. Como essas estratégias podem ser implementadas em sua cidade?',
  'A era digital está trazendo inúmeras inovações para a engenharia civil, desde o uso de drones para inspeção até a implementação de BIM (Modelagem da Informação da Construção). Neste post, vamos explorar essas ferramentas e tendências futuras que estão moldando a indústria. Quais tecnologias digitais você acha que terão o maior impacto na engenharia civil?'
]

comments = [
  [
    "Adorei as dicas sobre práticas ecológicas! Já estamos utilizando materiais reciclados em nossos projetos e a diferença é notável.",
    "Implementar sistemas de energia renovável foi uma das melhores decisões que tomamos no nosso projeto.",
    "Gostei muito do artigo! Estamos pensando em começar a usar técnicas de construção sustentável na nossa próxima obra.",
    "As práticas ecológicas mencionadas são excelentes! Acho que a construção civil precisa realmente focar mais nisso.",
    "Compartilhar experiências sobre sustentabilidade é fundamental para melhorar as práticas no setor. Obrigado pelo post!"
  ],
  [
    "O uso de softwares de gerenciamento de projetos realmente ajuda a manter tudo organizado.",
    "Implementamos metodologias ágeis recentemente e a eficiência do nosso time melhorou bastante.",
    "Artigo muito útil! Vou tentar algumas dessas estratégias no nosso próximo projeto.",
    "A comunicação clara é essencial para o sucesso de qualquer projeto. Ótimas dicas!",
    "Acho que a chave para um bom gerenciamento de projetos é a adaptação das ferramentas às necessidades específicas de cada obra."
  ],
  [
    "O treinamento adequado é fundamental para garantir a segurança no canteiro de obras.",
    "Os EPIs são essenciais e não podemos negligenciá-los em hipótese alguma.",
    "Implementamos protocolos de segurança rigorosos recentemente e os resultados são visíveis.",
    "A segurança dos trabalhadores deve sempre ser a prioridade número um. Excelente post!",
    "Compartilhar melhores práticas de segurança é muito importante. Obrigado por essas dicas valiosas!"
  ],
  [
    "A manutenção preventiva tem salvado nossas estruturas de problemas maiores no futuro.",
    "Realizamos inspeções regulares e isso realmente faz a diferença na longevidade das construções.",
    "As técnicas de reparo mencionadas no post são muito úteis. Vou incorporá-las no nosso próximo projeto.",
    "Manter as estruturas em bom estado é crucial. A manutenção preventiva deve ser uma prática padrão.",
    "As práticas de manutenção preventiva descritas são excelentes. Precisamos adotar mais dessas técnicas."
  ],
  [
    "Os sensores inteligentes para monitoramento de tráfego são uma grande inovação para as cidades.",
    "Sistemas de gestão de água avançados são essenciais para a sustentabilidade urbana.",
    "As tecnologias discutidas no artigo são realmente promissoras. Estou animado para ver essas inovações em ação.",
    "A tecnologia está transformando as infraestruturas urbanas de maneiras incríveis.",
    "O impacto ambiental das construções é uma preocupação crescente e essas novas tecnologias são um passo na direção certa."
  ],
  [
    "A automação na construção civil tem potencial para revolucionar a indústria.",
    "Os robôs de construção podem aumentar a precisão e reduzir os erros humanos.",
    "Impressoras 3D para concreto são uma inovação fascinante!",
    "Enfrentar os desafios da automação será crucial para o futuro da construção.",
    "Espero ver mais dessas tecnologias sendo implementadas nos próximos anos."
  ],
  [
    "Concreto autorreparável parece uma tecnologia incrível para aumentar a durabilidade das estruturas.",
    "Compósitos de fibra são extremamente versáteis e fortes.",
    "Os materiais à base de nanotecnologia são o futuro da construção.",
    "Incorporar esses materiais avançados em projetos pode realmente fazer a diferença.",
    "Gostei muito de aprender sobre esses novos materiais. Obrigado pelo post!"
  ],
  [
    "A gestão de resíduos é crucial para a sustentabilidade na construção.",
    "Reduzir, reutilizar e reciclar deve ser um mantra na construção civil.",
    "Projetos que implementam gestão de resíduos de maneira eficiente são exemplares.",
    "Precisamos adotar essas práticas em todas as escalas de construção.",
    "Ótimas dicas para uma gestão de resíduos mais eficiente e sustentável."
  ],
  [
    "Espaços verdes são essenciais para o planejamento urbano sustentável.",
    "O transporte público eficiente é crucial para reduzir o impacto ambiental.",
    "Gestão de recursos hídricos é uma área que precisa de mais atenção.",
    "A integração de sustentabilidade e crescimento econômico é um desafio importante.",
    "Adotar essas estratégias pode transformar nossas cidades para melhor."
  ],
  [
    "Drones para inspeção são uma ferramenta fantástica para a engenharia civil.",
    "O uso de BIM está realmente mudando a maneira como gerenciamos projetos.",
    "Essas novas ferramentas digitais estão facilitando muito o trabalho na construção civil.",
    "Estou animado para ver como essas tecnologias vão evoluir nos próximos anos.",
    "As tendências futuras na engenharia civil são muito promissoras. Ótimo artigo!"
  ]
]

users = [
  ['Mariana', 'Silva'],
  ['Pedro', 'Almeida'],
  ['Ana', 'Costa'],
  ['Carlos', 'Santos'],
  ['Fernanda', 'Oliveira']
]

# Create admin
User.create!(
  first_name: 'Admin',
  last_name: 'Novconts',
  email: 'admin@novconts.com',
  password: '123456',
  admin: true
)

users.each do |user|
  User.create!(
    first_name: user[0],
    last_name: user[1],
    email: "#{user[0]}@gmail.com",
    password: '123456'
  )
end

10.times do |i|
  Post.create!(
    title: titles[i],
    content: contents[i],
    user: User.where(admin: nil).sample
  )
end

non_admin_users = User.where(admin: nil).to_a

Post.all.each_with_index do |post, i|
  5.times do |a|
    non_admin_users.shuffle!
    user = non_admin_users.first
    Comment.create!(
      content: comments[i][a],
      user: user,
      post: post
    )
  end
end
