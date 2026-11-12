#import "@preview/diatypst:0.9.3": *

#let na = table.cell(fill: luma(225))[]

#let note(body) = block(fill: luma(210), inset: 10pt, radius: 4pt, width: 100%, body)

#let tag(body) = text(size: 0.8em, style: "italic", fill: luma(90), body)

#show: slides.with(
  title: "Language Learning as Ontogenetic Adaptation",
  subtitle: "JGL5000",
  date: "12/11/2026",
  authors: ("2026HCS7003 . 2026HCS7009 . 2026HCS7023",),

  ratio: 16/10,
  layout: "medium",
  title-color: eastern.darken(66%),
  toc: true,
  theme: "full",
  count: "number",
)

= Overview

== Main Arguments : Summated

Bohn and Casillas (2026) posit that language learning has two properties.

- It is multi-threaded. One utterance in a conversation answers a request, keeps a social role in place, and gives evidence about a word, all at once.
- It is multi-modal. Several overlapping processes work on the same input, and the child combines them.

Two premises can be inferred from this. Children utilise several information sources to comprehend what an utterance means, and over development, they essentially assign weights to each source depending on the utility of the source in that specific environment.

== The Kitchen Example

A parent says "Where did you hide that ladle?" The 2-year-old knows neither "hide" nor "ladle". Bohn and Casillas (2026) claim that a child uses the following sources to zero in on what "hide" and "ladle" could mean.

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Source*], [*What it gives the child in this scene*],
  "Context", "A kitchen predicts utensils and food-related actions",
  "Common ground", "What parent and child were doing together a moment ago",
  "Nonverbal cues", "The parent's gaze and gesture toward the pile of utensils",
  "Syntactic bootstrapping", "'You' comes before a verb, 'that' before a noun",
  "Whole-object assumption", "A new noun probably names the whole utensil",
  "Cross-situational statistics", "Earlier scenes that paired 'ladle' with ladle-shaped objects",
  "Mutual exclusivity", "A child who knows 'spoon' can rule the spoon out",
)

== Formal Model

Each source gives a skewed probability distribution over candidate referents.

- Sources tied to the utterance, such as word choice and syntax, feed the likelihood.
- Sources tied to the context, comrpising of the setting and common ground, determine the prior.
- The posterior is prior times likelihood, renormalised.
- The inferrence of noun and verb occur concurrently, putting constraints on each other.


== Claims of Adaptation

The second premise says the weights change with the environment. The integration step itself is assumed to stay the same across development.

- The argument hinges around noun bias and mutual exclusivity.
- However, weight assignment is not formally factored in as a developmental process
- Phonological acquisition, sound symbolism and conversational repair are not explained well by this model nonetheless. 


= Syntactic Bootstrapping

== Swatchscollop, Hopscotchy, and  Churgled

In the kitchen scene, 'you' usually comes before a verb and 'that' usually comes before a noun. So 'hide' probably names an action and 'ladle' probably names an object.

- The cue works solely because the child already knows some English syntax.
- Current work looks at where the ability comes from and how it combines with other mechanisms.
- "The yinkish gasper borked the murny snibs."
- Most of us can figure out the POS of all the unfamiliar words in the aforementioned sentences.

#note[
  The sentence used here was taken from a syntax book whose title I cannot recall. But, syntactic bootstrapping can be easily understood first hand by picking up a Roald Dahl book and figuring out the POS of the nelogisms he has used.

"A few gulps of frobscottle always make him feel hopscotchy." (From The BFG)

]


== Verbs Without Vision: Landau and Gleitman (1985)

Congenitally blind children were pitted against a control group to learn the verbs 'look' and 'see'.

- The usual route, watching what the speaker looks at, is closed to them.
- They still acquire both verbs with distinct meanings, on par with sighted individuals.
- Landau and Gleitman credit the sentence frames each verb appears in, such as 'look at X' against 'see X'.

#note[
  When one source is absent, another one overcompensates for it. Essentially the claim is that learning is multi-modal, and if you lack one sensory input, weights will be adjusted amongst the modalities one successfully receives to make up for what is not received. 

  Example 

  Firecrackers overcompensating for shut-down industries during holidyas. 
]


= Whole-Object Assumption

== The Assumption

In the kitchen, 'ladle' could name the handle, the metal, or the category 'utensils'.

- Markman (1991): without contradicting evidence, children expect a noun to name a whole object at the basic category level.
- This removes most competing candidate referents, especially when the child has little other linguistic information.
- This assumption also sorts out W.V.O Quine's Gavagai problem.

#note[
  So, this assumption really works well in an *Optimality Theory* framework, something I am very interested in. Essentially, in OT, we claim that no rule is hard and fast. If P&P were a private college, OT is a central university. So, in OT, it'd be easier to keep a constraint called WO (for whole object), and in OT, lower ranked constraints can be violated without the candidate being unlicensed. So, ladle can be assumed as a whole object, and maybe a part of something, but the WO violation by the latter would make the first candidate *OPTIMAL*.
]

== Quine's Gavagai

Quine (1960) imagined a field linguist who sees a rabbit run past and hears "gavagai".

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Reading of gavagai*], [*What it picks out*],
  "Rabbit", "The whole animal",
  "Undetached rabbit part", "A part of the animal",
  "Rabbit stage", "A temporal slice of the animal's existence",
  "Whiteness", "A property of the animal",
)

Observation alone does not choose among the four candidates.

== How a Child Gets Out

Children do not settle this by logic from one scene.

- The whole-object assumption works as a prior. The distribution over referents is already skewed toward bounded objects before other sources apply.
- Syntax, gaze and the words the child knows then reweight that prior.
- The assumption holds in the absence of contradictory evidence. It can however be overridden by modalities that present opposing evidence.

= Cross-Linguistic Noun-Bias Variation

== Gentner's Natural Partitioning (1982)

Early vocabularies lean toward concrete, often animate, objects.

- Gentner's account: referents like ladles are perceptually stable and easy to individuate, so they form clear categories for every learner.
- Verbs like 'hide' depend more on how a language packages events.
- Prediction: nouns come first in every language.

== The Bias Is Not Fixed

Bohn and Casillas collect evidence that the bias varies.

- Across typologically diverse languages, its size ranges from nonexistent to very strong.
- Some communities show a verb bias instead. The paper cites Mandarin (Tardif 1996), Tseltal (Casillas et al. 2024) and Tzotzil (de León 1999).
- Gopnik and Choi (1990) compared English and Korean.
- Within one community, the size depends on the activity context and on how it is measured.

== A Sampling Problem

More than 85% of the participants in noun-bias studies come from eight urban linguistic populations (the systematic review by Zhang et al., a preprint, as cited in the paper).

- Claims about universality and claims about adaptation both rest on this narrow base.
- Casillas et al. (2024) analysed spontaneous Tseltal speech and found little evidence for a noun bias.
- Checklists and spontaneous speech can disagree about the same population.

== Talmy's Typology and Korean

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Type*], [*Path of motion is carried by*], [*Example*],
  "Verb-framed", "The verb", "Korean tul-da, 'enter'",
  "Satellite-framed", "A particle", "English 'go in'",
)

Korean also drops arguments freely and puts the verb last, so verbs are prominent in the input. Choi and Bowerman (1991) found that English and Korean learners follow their language's lexicalisation patterns for motion early on. Slobin (1996) proposes that such habits shape what speakers attend to while speaking.

#tag[Talmy, Choi & Bowerman and Slobin are background reading, not in the uploaded set.]

== What Might Drive the Adaptation

The paper lists candidate features of the input: noun ellipsis, verb position, imperatives and pedagogical practices. It says which factors matter is not yet known.

- Setoh et al. (2021): English-Mandarin bilingual mothers spoke in a verb-biased way, yet their toddlers had noun-biased vocabularies.
- So a bias in the input does not map straight onto a bias in the child.
- Heavy argument omission in Korean child-directed speech (Fisher et al.) is one candidate feature.

== What the Evidence Supports

#table(
  columns: (1fr, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Claim*], [*Status*],
  "The noun bias varies across communities", "Supported, on uneven samples",
  "Korean and Mandarin children show a weaker noun bias than English children", "Reported in several studies, with sizes that depend on method",
  "Korean children are better verb learners", "Not shown. The studies compare vocabulary composition, not learning speed (my reading)",
  "The cause is input statistics", "Open. Frequency, salience and caregiver style come bundled",
)

= Mutual Exclusivity

== One object, One label
#align(center, image("me.png", height: 3.5cm))

- Children assume each object has only one name; different words pick out different, non-overlapping categories.
- A word-learning bias (heuristic), not a rule; also called constraint, assumption or bias.
- Classic test: a child who knows "ball" sees a ball and an unfamiliar object. Asked "Can you give me the whisk?", the child hands over the whisk
- *Result*: fast mapping, learning a word from minimal exposure.

== Mechanism

- Uses existing knowledge to infer new meaning; an early form of logical reasoning (two words, two things); reduces ambiguity and cognitive load
- Whole-object assumption (a new word labels the whole thing, not a part) and taxonomic assumption (it extends to the same kind, e.g. "dog" = all dogs). Fast mapping uses these
- Real words overlap, e.g. "dog" and "pet" can name the same animal
- *Fallible* nonetheless , "dog" and "perro" name the same animal, so input contradicts the bias; *bilinguals* may apply it differently.
- A tractable default that is recalibrated by learner environment. 

#note[
      *Note* :Byers-Heinlein and Werker (2009), Houston-Price et al. (2010) and Kalashnikova et al. (2018) claim that mutual exclusivity is weaker in bilingual children. Mutual Exclusivity also fails when the same referent is indexed by different lemmas. 
]
= Common Ground and Gricean Pragmatics

== Grice and the Cooperative Principle

#align(center, image("cg.png", height: 3.5cm))
- *Pragmatics*: how we enrich conventional meaning into fuller intended meaning
- *Levinson's analogy*: a few sketchy lines let us instantly see a crowd listening to a speaker; utterances are just as sketchy, and we fill them in using shared knowledge
- *Grice (1975), "Logic and Conversation"*: apparent gaps between logical words and natural language ("and", "or", "some") come from conditions on conversation, not from different meanings
- *Cooperative principle*: make your contribution as required, when required, by the conversation you are engaged in

== Grice in Brief

Grice (1975): conversation is cooperative, and speakers follow maxims.

- Be as informative as required (Quantity).
- Be truthful (Quality).
- Be relevant (Relation).
- Be clear (Manner).

Maxims are not scientific laws; they are like contractual obligations

#note[
  *In-house Linguist's note*: Pragmatics goes head on against the inviolable P&P model. Chomsky was heavily skeptical of pragmatics as a cognitive science, but I am more skeptical of his P&P model, and so were others, owing to which there are now fully fledged works on formalising Pragmatics by placing it in the framework of Optimality theory, a theory that I am heavily biased towards.
]


== Common ground and context

#align(center, image("cg2.png", height: 3cm))

- *Common ground* - what speaker and listener both know or assume; the basis for filling in the sketch
- *Even a simple sentence needs context:* which students (domain), who is "me", what is "yesterday", what is "many"
- *The principles of rational communication are universal;* backgrounds and context differ, so enrichments can differ
- *Back to word learning:* mutual exclusivity can be seen as a pragmatic inference about why a speaker chose a particular word
- *Take-away:* children adapt both word-learning biases and pragmatic expectations to their input

= Cross-Sitational Learning & Statistical Learning 

== Saffran, Aslin and Newport (1996)

- 24 eight-month-olds heard 2 minutes of a continuous stream from a speech synthesizer in a monotone voice.
- The stream held four three-syllable nonsense words in random order, 180 words in all, at 270 syllables per minute.
- No pauses, stress differences or other cues marked word boundaries.
- Transitional probability was the only cue: 1.0 inside words (for example bida) and 0.33 across a boundary (for example kupa).
- Testing used a familiarization-preference procedure with looking time to a blinking light.
- Syllables belonging to the same “word” had high transitional probability; syllables at word boundaries had lower transitional probability.
- Precursor to word2vec, GloVe, embedding spaces

== Saffran et al.: Results

#table(
  columns: (auto, auto, auto, auto, auto),
  stroke: 0.5pt,
  inset: 6pt,
  [*Experiment*], [*Contrast*], [*Familiar (s)*], [*Novel (s)*], [*Test*],
  "1", "Words against nonwords", "7.97", "8.85", "t(23) = 2.3, p < .04",
  "2", "Words against part-words", "6.77", "7.60", "t(23) = 2.4, p < .03",
)

#note[
  Transitional probability of Y after X is the frequency of XY divided by the frequency of X.
]

Infants listened longer to the novel items in both experiments. Part-words had occurred in the stream, so Experiment 2 shows sensitivity to differences in transitional probability and not only to novelty.

== Cross-Situational Learning

In the kitchen, the child has probably heard "ladle" before (Bohn and Casillas 2026). One hearing is ambiguous. Subsequent hearings would see said ambiguity going down.

#table(
  columns: (auto, 1fr, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Scene*], [*What is said*], [*Objects in view*],
  "1", "Hand me the ladle", "ladle, whisk, bowl",
  "2", "Where is the ladle?", "ladle, spatula, pot",
  "3", "Wash the ladle", "ladle, plate, whisk",
)

Only the ladle is in view every time. No scene solely settles the mapping, but the summation across scenes does.


== Significance of Statistical Learning

#table(
  columns: (1fr, 2fr),
  stroke: 0.5pt,
  inset: 6pt,
  [*Claim in the paper*], [*What statistical learning adds*],
  "Several sources at once", "Co-occurrence counts are one source. Like the others, they give a skewed distribution over candidate referents, and the child combines them.",
  "Sources overlap", "Counts build up across scenes. Gaze, syntax and contrast work inside one scene. The child can lean on whichever source is informative in a given environment.",
  "Weights adapt to the environment", "How useful counts are depends on the input.", 
)





= *Subsidiary Matters*
== Summary


- Language, the paper in focus, claims is multi-modal, with weights constantly being reassigned to the modalities.
- Syntactic bootstrapping: Zeroing in on the POS via synactic cues and thereby reducing the decision space.
- Whole-object assumption: A rule of thumb, wherein the de facto assumption is that given an unfamiliar noun, it is highly likely to be a whole object as opposed to a part.
- Noun bias: varies across communities, on uneven samples, and is not shown to track verb-learning ability.
- Mutual exclusivity: Another heuristic that can be overridden. Claims that in a lexicon, two lexemes cannot refer to the same referrent.
- Common ground: shared knowledge and social cues, and in Kuhl et al. a live partner changed what infants learned.
- Statistical learning: powerful from two minutes of input, and a learner can sharpen noisy statistics into regular forms.

== References



- Bohn, M. & Casillas, M. (2026). Language learning as ontogenetic adaptation. _Trends in Cognitive Sciences_, 30(8), 712-724. https://doi.org/10.1016/j.tics.2025.12.005
- Fisher, C., Jin, K., & Scott, R. M. (2020). The developmental origins of syntactic bootstrapping. _Topics in Cognitive Science_, 12(1), 48-77. https://doi.org/10.1111/tops.12447
- Kuhl, P. K., Tsao, F.-M., & Liu, H.-M. (2003). Foreign-language experience in infancy: effects of short-term exposure and social interaction on phonetic learning. _PNAS_, 100(15), 9096-9101. https://doi.org/10.1073/pnas.1532872100
- Landau, B. & Gleitman, L. (1985). Language and Experience: Evidence from the Blind Child. Harvard University Press.
- Saffran, J. R., Aslin, R. N., & Newport, E. L. (1996). Statistical learning by 8-month-old infants. Science, 274, 1926–1928.
- Quine, W. V. O. (1960). Word and Object. MIT Press.


#align(center, ("*******"))
