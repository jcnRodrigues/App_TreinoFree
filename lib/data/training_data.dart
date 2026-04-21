import '../models/exercise.dart';

const String appTitle = 'TreinoFree';
const String appSubtitle =
    'Mapa progressivo de exercícios: base técnica, progressão e segurança.';
const String mapObservation =
    'O texto-base menciona 30 exercícios, mas o detalhamento soma 31 movimentos.';

const List<GroupBlock> groupBlocks = [
  GroupBlock(
    name: 'Pernas - Glúteos e Coxas (Fundamentos)',
    focus: 'Base de força, mobilidade e estabilidade.',
    exercises: [
      Exercise(
        name: 'Agachamento Livre',
        group: 'Pernas',
        description: 'Movimento multiarticular para glúteos e quadríceps.',
        steps: [
          'Pés na largura dos ombros e peito alto.',
          'Desça como se fosse sentar, mantendo joelhos alinhados.',
          'Suba empurrando o chão com quadríceps e glúteos.',
        ],
        muscles: ['Glúteo máximo', 'Quadríceps', 'Adutores', 'Sóleo'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Agachamento Sumô',
        group: 'Pernas',
        description: 'Ênfase em adutores e glúteos.',
        steps: [
          'Base mais aberta e pés levemente para fora.',
          'Desça com tronco estável e joelhos abrindo.',
          'Retorne contraindo glúteos no topo.',
        ],
        muscles: ['Glúteo máximo', 'Adutor magno', 'Quadríceps'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Levantamento Terra',
        group: 'Pernas',
        description: 'Força global da cadeia posterior com coluna neutra.',
        steps: [
          'Pés na largura do quadril e barra próxima às canelas.',
          'Eleve o peso estendendo quadril e joelhos.',
          'Desça controlando sem arredondar a coluna.',
        ],
        muscles: [
          'Eretores da espinha',
          'Glúteos',
          'Isquiotibiais',
          'Quadríceps',
        ],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Subida na Caixa',
        group: 'Pernas',
        description: 'Potência unilateral e controle de joelho.',
        steps: [
          'Apoie o pé inteiro na caixa.',
          'Suba estendendo joelho e quadril da perna de apoio.',
          'Desça freando o movimento de forma ativa.',
        ],
        muscles: ['Glúteos', 'Quadríceps', 'Panturrilhas'],
        level: Level.iniciante,
      ),
    ],
  ),
  GroupBlock(
    name: 'Bíceps',
    focus: 'Isolamento, forma e variação de pegada.',
    exercises: [
      Exercise(
        name: 'Rosca Direta',
        group: 'Bíceps',
        description: 'Clássico para construção de força no bíceps.',
        steps: [
          'Cotovelos fixos ao lado do corpo.',
          'Eleve até próximo dos ombros.',
          'Desça controladamente sem balançar.',
        ],
        muscles: ['Bíceps braquial', 'Braquial', 'Braquiorradial'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Rosca Martelo',
        group: 'Bíceps',
        description: 'Pegada neutra para espessura do braço.',
        steps: [
          'Palmas voltadas uma para a outra.',
          'Flexione sem mover o ombro.',
          'Controle toda a fase de descida.',
        ],
        muscles: ['Braquial', 'Braquiorradial', 'Bíceps'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Rosca Concentrada',
        group: 'Bíceps',
        description: 'Alta conexão mente-músculo e isolamento.',
        steps: [
          'Sente e apoie o cotovelo na coxa.',
          'Suba o halter sem perder o apoio.',
          'Retorne de forma lenta.',
        ],
        muscles: ['Bíceps (cabeça longa e curta)', 'Braquial'],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Rosca Alternada',
        group: 'Bíceps',
        description: 'Trabalho unilateral com foco em controle.',
        steps: [
          'Suba um braço por vez mantendo postura.',
          'Opcional: supinar na fase final da subida.',
          'Desça com controle e sem roubo de tronco.',
        ],
        muscles: ['Bíceps', 'Braquial', 'Braquiorradial'],
        level: Level.iniciante,
      ),
    ],
  ),
  GroupBlock(
    name: 'Tríceps',
    focus: 'Volume e força nas três cabeças.',
    exercises: [
      Exercise(
        name: 'Tríceps Pulley',
        group: 'Tríceps',
        description: 'Movimento base para todas as cabeças do tríceps.',
        steps: [
          'Cotovelos fixos junto ao corpo.',
          'Estenda até o final do movimento.',
          'Retorne sentindo alongamento.',
        ],
        muscles: ['Tríceps', 'Ancôneo', 'Estabilizadores do ombro'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Mergulho no Banco',
        group: 'Tríceps',
        description: 'Peso corporal para força funcional do braço.',
        steps: [
          'Mãos no banco e pés no solo.',
          'Desça até ~90° de cotovelo.',
          'Suba sem elevar os ombros.',
        ],
        muscles: ['Tríceps', 'Deltoide anterior', 'Peitoral maior'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Tríceps Coice',
        group: 'Tríceps',
        description: 'Isolamento com ênfase na cabeça longa.',
        steps: [
          'Tronco estável e braço paralelo ao corpo.',
          'Estenda o cotovelo completamente.',
          'Retorne sem perder o alinhamento.',
        ],
        muscles: ['Tríceps (cabeça longa, lateral e medial)'],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Tríceps Francês',
        group: 'Tríceps',
        description: 'Amplitude com alongamento elevado.',
        steps: [
          'Halter acima da cabeça com braços próximos às orelhas.',
          'Flexione os cotovelos para trás da cabeça.',
          'Estenda de volta mantendo controle.',
        ],
        muscles: ['Tríceps', 'Deltoides'],
        level: Level.intermediario,
      ),
    ],
  ),
  GroupBlock(
    name: 'Ombros',
    focus: 'Força e amplitude dos deltoides.',
    exercises: [
      Exercise(
        name: 'Elevação Frontal',
        group: 'Ombros',
        description: 'Ênfase no deltoide anterior.',
        steps: [
          'Eleve até a linha dos ombros.',
          'Evite balanço do tronco.',
          'Desça lentamente.',
        ],
        muscles: ['Deltoide anterior', 'Deltoide lateral'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Elevação Lateral',
        group: 'Ombros',
        description: 'Principal para largura do ombro.',
        steps: [
          'Cotovelos levemente flexionados.',
          'Suba lateralmente até ombros.',
          'Retorne controlando a descida.',
        ],
        muscles: ['Deltoide médio', 'Trapézio', 'Supraespinhal'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Desenvolvimento com Halter',
        group: 'Ombros',
        description: 'Força global do complexo do ombro.',
        steps: [
          'Inicie com halteres na altura dos ombros.',
          'Empurre acima da cabeça com core ativo.',
          'Retorne sem perder estabilidade.',
        ],
        muscles: ['Deltoides', 'Tríceps', 'Trapézio superior'],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Remada Alta',
        group: 'Ombros',
        description: 'Integra trapézio e deltoide lateral.',
        steps: [
          'Puxe a barra próxima ao corpo.',
          'Cotovelos sobem acima da linha da barra.',
          'Desça sem soltura brusca.',
        ],
        muscles: ['Trapézio', 'Deltoide lateral', 'Infraespinhal'],
        level: Level.intermediario,
      ),
    ],
  ),
  GroupBlock(
    name: 'Costas',
    focus: 'Largura dorsal e espessura central.',
    exercises: [
      Exercise(
        name: 'Pulley Costas (Puxada Frontal)',
        group: 'Costas',
        description: 'Pilar para ganho de largura.',
        steps: [
          'Pegada pronada pouco além dos ombros.',
          'Puxe até a linha do peito.',
          'Retorne alongando com controle.',
        ],
        muscles: ['Latíssimo do dorso', 'Trapézio', 'Bíceps'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Remada Baixa',
        group: 'Costas',
        description: 'Densidade dorsal com retração escapular.',
        steps: [
          'Tronco estável e peito aberto.',
          'Puxe em direção ao abdômen.',
          'Volte sem perder postura.',
        ],
        muscles: ['Grande dorsal', 'Romboides', 'Trapézio médio'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Remada Unilateral',
        group: 'Costas',
        description: 'Corrige assimetrias entre lados.',
        steps: [
          'Apoie mão e joelho no banco.',
          'Puxe o halter em direção ao quadril.',
          'Desça com alongamento completo.',
        ],
        muscles: ['Latíssimo do dorso', 'Deltoide posterior', 'Trapézio'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Barra Fixa (Supinada)',
        group: 'Costas',
        description: 'Força funcional com alta exigência.',
        steps: [
          'Pendure-se com braços estendidos.',
          'Suba até o queixo ultrapassar a barra.',
          'Desça mantendo controle total.',
        ],
        muscles: ['Latíssimo do dorso', 'Bíceps', 'Braquial'],
        level: Level.avancado,
      ),
    ],
  ),
  GroupBlock(
    name: 'Core e Abdômen',
    focus: 'Estabilidade e transferência de força.',
    exercises: [
      Exercise(
        name: 'Prancha Isométrica',
        group: 'Core',
        description: 'Resistência estática para tronco.',
        steps: [
          'Corpo alinhado de ombros a calcanhares.',
          'Contraia abdômen e glúteos.',
          'Sustente sem compensações lombares.',
        ],
        muscles: ['Reto abdominal', 'Oblíquos', 'Lombar'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Abdominal Remador',
        group: 'Core',
        description: 'Dinâmico para controle do centro do corpo.',
        steps: [
          'Parta deitado com membros elevados.',
          'Aproxime joelhos e tronco simultaneamente.',
          'Retorne sem perder tensão.',
        ],
        muscles: ['Reto abdominal', 'Oblíquos'],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Abdominal Oblíquo',
        group: 'Core',
        description: 'Fortalece lateral do abdômen.',
        steps: [
          'Posição lateral estável.',
          'Eleve o tronco em amplitude curta.',
          'Desça controlando a fase excêntrica.',
        ],
        muscles: ['Oblíquo interno', 'Oblíquo externo'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Abdominal Infra (Invertido)',
        group: 'Core',
        description: 'Ênfase na porção inferior do abdômen.',
        steps: [
          'Eleve pernas com joelhos flexionados.',
          'Projete quadril levemente para cima.',
          'Desça devagar sem perder o controle.',
        ],
        muscles: ['Reto abdominal', 'Oblíquos', 'Iliopsoas'],
        level: Level.intermediario,
      ),
    ],
  ),
  GroupBlock(
    name: 'Peito',
    focus: 'Força e definição com variação de ângulos.',
    exercises: [
      Exercise(
        name: 'Supino Reto',
        group: 'Peito',
        description: 'Base de força para peitoral.',
        steps: [
          'Pés firmes no solo e escápulas estáveis.',
          'Desça a barra com controle até a linha do peito.',
          'Empurre sem perder alinhamento.',
        ],
        muscles: ['Peitoral maior', 'Deltoide anterior', 'Tríceps'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Crucifixo Reto',
        group: 'Peito',
        description: 'Alongamento e isolamento do peitoral.',
        steps: [
          'Braços em arco com cotovelos semiflexionados.',
          'Abra com controle sem perder estabilidade.',
          'Feche em movimento de abraço.',
        ],
        muscles: ['Peitoral maior', 'Deltoide anterior'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Supino Inclinado',
        group: 'Peito',
        description: 'Foco na porção superior do peitoral.',
        steps: [
          'Banco entre 30 e 45 graus.',
          'Desça até ~90° de cotovelo.',
          'Suba mantendo trajetória consistente.',
        ],
        muscles: ['Peitoral clavicular', 'Deltoide', 'Tríceps'],
        level: Level.intermediario,
      ),
      Exercise(
        name: 'Cross Over',
        group: 'Peito',
        description: 'Alta contração ao final da fase concêntrica.',
        steps: [
          'Posição entre polias com base estável.',
          'Feche os braços à frente do tronco.',
          'Retorne sentindo alongamento.',
        ],
        muscles: ['Peitoral maior', 'Deltoide anterior'],
        level: Level.intermediario,
      ),
    ],
  ),
  GroupBlock(
    name: 'Pernas - Isolamento e Definição',
    focus: 'Refino de quadríceps e posteriores.',
    exercises: [
      Exercise(
        name: 'Cadeira Extensora',
        group: 'Pernas',
        description: 'Isolamento direto de quadríceps.',
        steps: [
          'Ajuste eixo da máquina ao joelho.',
          'Estenda os joelhos com controle.',
          'Retorne lentamente.',
        ],
        muscles: ['Reto femoral', 'Vasto medial', 'Vasto lateral'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Cadeira Flexora',
        group: 'Pernas',
        description: 'Ênfase em isquiotibiais.',
        steps: [
          'Ajuste apoio no tendão de Aquiles.',
          'Flexione joelhos aproximando calcanhares.',
          'Retorne em ritmo controlado.',
        ],
        muscles: ['Bíceps femoral', 'Semitendinoso', 'Semimembranoso'],
        level: Level.iniciante,
      ),
      Exercise(
        name: 'Stiff',
        group: 'Pernas',
        description: 'Cadeia posterior com foco em alongamento sob carga.',
        steps: [
          'Joelhos semiflexionados e coluna neutra.',
          'Empurre quadril para trás durante a descida.',
          'Suba contraindo glúteos e posteriores.',
        ],
        muscles: ['Isquiotibiais', 'Glúteo máximo', 'Adutor magno'],
        level: Level.intermediario,
      ),
    ],
  ),
];

const List<String> executionPrinciples = [
  'Maximizar resultados com técnica consistente.',
  'Prevenir lesões com amplitude e postura corretas.',
  'Construir consciência corporal e ativação muscular.',
  'Permitir progressão segura de cargas.',
];

const List<String> breathingRules = [
  'Fase concêntrica (subida): expire.',
  'Fase excêntrica (descida): inspire.',
  'Nunca prenda a respiração.',
  'Mantenha ritmo constante e respiração diafragmática.',
];

const List<TrainingGuideline> guidelines = [
  TrainingGuideline(
    level: 'Iniciantes',
    sets: '3',
    reps: '12-15',
    rest: '60-90 s',
    focus: 'Carga leve e técnica.',
  ),
  TrainingGuideline(
    level: 'Intermediários',
    sets: '3-4',
    reps: '8-12',
    rest: '45-60 s',
    focus: 'Progressão de carga e variação.',
  ),
  TrainingGuideline(
    level: 'Avançados',
    sets: '4-5',
    reps: '6-12',
    rest: '30-60 s',
    focus: 'Cargas desafiadoras e técnicas avançadas.',
  ),
];

const List<MapEntry<String, String>> benefitRows = [
  MapEntry(
    'Problemas de saúde',
    'Apoio ao controle glicêmico, pressão arterial e sintomas de ansiedade/depressão.',
  ),
  MapEntry(
    'Objetivos estéticos',
    'Aceleração do metabolismo, hipertrofia e melhora da postura.',
  ),
  MapEntry(
    'Idosos',
    'Aumento de densidade óssea e melhora de equilíbrio/coordenação.',
  ),
  MapEntry(
    'Sedentários',
    'Melhora do condicionamento cardiovascular e da disposição geral.',
  ),
  MapEntry(
    'Sono',
    'Ajuda na qualidade do sono e regulação do ritmo circadiano.',
  ),
];

const List<String> gymEtiquette = [
  'Limpe os equipamentos após o uso.',
  'Recolha os pesos e mantenha organização.',
  'Respeite o espaço das outras pessoas.',
  'Evite ocupar aparelhos em conversas longas.',
  'Use roupa adequada, tênis de treino e toalha pessoal.',
];
