import Foundation

struct Artwork {
    
    var name:String
    var desc:String
    var imageName:String
    
    init(name: String, desc: String, imageName:String) {
        self.name = name
        self.desc = desc
        self.imageName = imageName
    }
}

struct Artworks {
    
    static let monalisa = Artwork(name: "Monalisa", desc: "Mona Lisa (\"Senhora Lisa\" ) também conhecida como A Gioconda[3] (em italiano: La Gioconda, \"a sorridente\" ; em francês, La Joconde) ou ainda Mona Lisa del Giocondo (\"Senhora Lisa [esposa] de Giocondo\") é a mais notável e conhecida obra de Leonardo da Vinci, um dos mais eminentes homens do Renascimento italiano.\n\nSua pintura foi iniciada em 1503 e é nesta obra que o artista melhor concebeu a técnica do sfumato. O quadro representa uma mulher com uma expressão introspectiva e um pouco tímida. O seu sorriso restrito é muito sedutor, mesmo que um pouco conservador. O seu corpo representa o padrão de beleza da mulher na época de Leonardo. Este quadro é provavelmente o retrato mais famoso na história da arte, senão, o quadro mais famoso e valioso de todo o mundo. Poucos outros trabalhos de arte são tão controversos, questionados, valiosos, elogiados, comemorados ou reproduzidos.\n\nMuitos historiadores da arte desconfiavam de que a reverência de Da Vinci pela Mona Lisa nada tinha a ver com sua maestria artística. Segundo muitos afirmavam devia-se a algo muito bem mais profundo: uma mensagem oculta nas camadas de pintura. Se observarem com calma verá que a linha do horizonte que Da Vinci pintou se encontra num nível visivelmente mais baixo que a da direita, ele fez com que a Mona Lisa parecer muito maior vista da esquerda que da direita. Historicamente, os conceitos de masculino e feminino estão ligados aos lados - o esquerdo é feminino, o direito é o masculino.\n\nA pintura a óleo sobre madeira de álamo encontra-se exposta no Museu do Louvre, em Paris, e é uma das suas maiores atrações.", imageName: "Monalisa")
    
    static let virgemmenino = Artwork(name: "A Virgem e o Menino", desc: "Madona (do italiano Madonna) é o name dado à representação artística da Virgem Maria, mãe de Jesus, em pinturas e esculturas. Também chamada de Virgem com o Menino Jesus é um tema tradicional na arte sacra cristã; as obras representam quase sempre Maria com seu filho Jesus nos braços, frequentemente cercados por outros personagens, como São José (neste caso fala-se da Sagrada Família), São João Batista (retratado também como criança, já que tem quase a mesma idade de Jesus), outros parentes de Maria (como Santa Isabel ou Santa Ana), ou determinados santos escolhidos por motivos variados, como por exemplo o santo padroeiro de quem encomendou a obra, ou da cidade que a hospeda.\n\nDepois de certa resistência e controvérsia inicial, a fórmula \"Mãe de Deus\" (Theotokos) foi adotada oficialmente pela Igreja Cristã no Concílio de Éfeso, em 431. A primeira representação da Virgem com o Menino ainda existente pode ser vista no mural da Catacumba de Priscila, em Roma, na qual Maria aparece sentada amamentando Jesus, que por sua vez inclina sua cabeça como que para olhar para o observador.", imageName: "VirgemMenino")
    
    static let venusmilo = Artwork(name: "Vênus de Milo", desc: "A Vênus de Milo (português brasileiro) ou Vénus de Milo (português europeu) é uma estátua da Grécia Antiga pertencente ao acervo do Museu do Louvre, situado em Paris, França.\n\nA história de sua descoberta em 1820 na ilha de Milo, então parte do Império Otomano, e a forma como perdeu os braços foram narradas pelas fontes primitivas em versões contraditórias que nunca puderam ser de todo esclarecidas, mas depois de sua aquisição pela França foi imediatamente exposta no Louvre, oficialmente como uma obra-prima da prestigiosa geração clássica e atribuída ao círculo de Praxíteles, tornando-se uma celebridade instantânea e um motivo de orgulho nacionalista. Mas logo se criou uma polêmica, pois segundo alguns eruditos havia evidências para se acreditar que de fato fora produzida no período helenístico, na época desprezado como uma fase decadente na tradição artística grega, e esta possibilidade não interessava politicamente ao governo francês. O debate se estendeu por muito tempo, mas mesmo assim seu valor estético não foi posto em séria dúvida, sendo elogiada em altos termos por muitos artistas e intelectuais e mesmo pelo público leigo. Foi copiada muitas vezes e divulgada em gravuras e outros meios de larga circulação ao longo de todo o século XIX.", imageName: "VenusMilo")
    
    
    static let balsaMedusa = Artwork(name: "Balsa de Medusa", desc: "A Balsa da Medusa (em francês: Le Radeau de la Méduse) é uma pintura a óleo de 1818–1819 pelo pintor da época do romantismo e litógrafo Théodore Géricault (1791–1824). Está exposta no Museu do Louvre, Paris.", imageName: "BalsaMedusa")
    
    
    
    static let bodasCana = Artwork(name: "Bodas de Caná", desc: "Bodas de Caná é o name de uma perícopa bíblica narrada exclusivamente no Evangelho de João (João 2:1-11). A transformação da água em vinho durante estas bodas é considerado como o primeiro dos milagres de Jesus.\n\nNo relato bíblico, Jesus e seus discípulos são convidados para um casamento e, quando o vinho acaba, Jesus transforma água em vinho milagrosamente. A localização exata de Caná tem sido tema de debate entre acadêmicos e arqueólogos bíblicos, com diversas vilas na região da Galileia aparecendo como candidatas.\n\nO milagre em Caná é contado como um dos Mistérios Luminosos do Santo Rosário.", imageName: "BodasCana")
}
