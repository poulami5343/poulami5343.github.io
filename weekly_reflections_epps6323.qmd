
---
title: "Weekly Reflections"
format: html
---

# EPPS6323 Knowledge Mining — Weekly Reflections

---

## Weekly Reflection – Class 3

### a. AI and Originality

The question of whether AI can be "original" cuts to the heart of what creativity means. AI systems like large language models generate outputs by identifying and recombining statistical patterns learned from vast human-produced datasets. In that sense, AI does not originate ideas from lived experience, intention, or curiosity — it interpolates within a learned distribution of human expression.

However, originality has never been purely about creation from nothing. Human artists and researchers also build on prior work, remixing influences and synthesizing existing knowledge into something new. By that standard, AI outputs can appear original — producing novel combinations, unexpected phrasings, or creative solutions that no single training document contained verbatim. The tension is whether recombination without understanding, intent, or subjective experience constitutes genuine originality or sophisticated mimicry. For research, this matters because if AI-generated text is statistically derivative of existing scholarship, it may produce outputs that look novel but subtly reproduce or blur existing ideas without attribution.

### b. What is AGI? How does AGI affect scientific research?

Artificial General Intelligence (AGI) refers to a hypothetical AI system capable of performing any intellectual task that a human can — not just narrow, specialized tasks like image classification or text generation, but reasoning flexibly across entirely new domains without task-specific training. Unlike today's LLMs, which excel in specific contexts but fail unpredictably outside them, AGI would generalize the way humans do.

For scientific research, AGI would be transformative — and destabilizing in equal measure. On the positive side, an AGI could autonomously form hypotheses, design experiments, synthesize literature across disciplines, and iterate on findings at a scale and speed no human team could match. Breakthroughs in medicine, climate science, or social systems could accelerate dramatically. However, AGI also raises serious concerns for the research enterprise: questions of credit and authorship become murky, peer review may become unmanageable if AGI floods journals with plausible-seeming papers, and the interpretability problem deepens — if we cannot understand *why* an AGI reached a conclusion, the scientific norm of reproducible, explainable findings is undermined. For social science specifically, an AGI that can model and predict human behavior at scale poses profound ethical questions about surveillance, manipulation, and the autonomy of research subjects.

---

## Weekly Reflection – Class 4

### a. How to start using AI for your project?

The most practical entry point for using AI in a research project is to begin with the tasks where AI provides the most immediate leverage with the least risk of error going unnoticed — namely, literature discovery, summarization, and exploratory text analysis. Concretely, this means using tools like semantic search engines (e.g., Semantic Scholar, Elicit) to surface relevant papers beyond what a keyword search would find, then using an LLM to help synthesize and compare findings across sources.

For a knowledge mining project specifically, I would start by clearly defining the corpus — what documents, texts, or datasets are being mined — and then use AI to assist with preprocessing steps like cleaning text, extracting entities, or categorizing documents. The key principle is to treat AI as a research assistant that accelerates labor-intensive tasks, not as an autonomous reasoner whose outputs are taken at face value. Every AI-generated output should be spot-checked against the source material, especially for factual claims or statistical results.

### b. Which two AI models are you using? How can you leverage them to help your research?

The two AI models I am using are **Claude (Anthropic)** and **ChatGPT (OpenAI)**.

**Claude** excels at handling long documents and nuanced reasoning tasks. For this project, I leverage it to read and synthesize lengthy academic papers, draft structured summaries of assigned readings, and help refine research questions. Its strength in careful, source-grounded responses makes it particularly useful when I need to avoid hallucination in literature reviews.

**ChatGPT** is useful for brainstorming, generating outlines, and iterating quickly on ideas. I use it for exploratory conversations about research design — for instance, thinking through what variables matter in a political text analysis or what knowledge mining method fits a given dataset. It is also helpful for code generation in Python or R when building analytical pipelines.

Together, the two models complement each other: Claude for depth and document-grounded work, ChatGPT for breadth and rapid ideation. The key to leveraging both effectively is treating their outputs as drafts to be critically evaluated, not final answers — especially in an academic context where attribution and accuracy matter.

---

## Weekly Reflection – Class 5

### a. How do humans find knowledge? How is knowledge different from information?

Information is raw — it is data that has been organized or structured enough to be communicated. A list of poll numbers, a collection of tweets, or a database of publication dates are all information. Knowledge, by contrast, is what emerges when a human mind interprets, contextualizes, and connects information to existing understanding. Knowledge requires a knower: it involves judgment about what the information *means*, why it matters, and how it relates to other things already understood.

Humans find knowledge through a layered process. We begin with perception and attention — filtering the flood of available information down to what seems relevant. We then interpret that information through existing mental models, compare it against prior experience, and integrate it through reasoning and reflection. Crucially, knowledge is also social: we build it through conversation, peer review, debate, and institutional structures like universities and journals that validate and accumulate understanding over time. This is why simply having access to information — as anyone with a smartphone does — does not automatically produce knowledge. The interpretive and evaluative work is irreducible.

This distinction matters enormously for knowledge mining. When we mine text data, we extract information. Turning that extracted information into knowledge still requires human judgment about whether patterns are meaningful, whether correlations reflect real phenomena, and whether findings generalize beyond the corpus.

### b. A list of AI discrepancies/failures — any pattern?

1. **Hallucinated legal citations** — Lawyers submitted AI-generated briefs citing cases that did not exist; the court sanctioned them.
2. **Biased hiring algorithms** — Amazon's AI recruiting tool systematically downgraded résumés from women because it was trained on historically male-dominated hiring data.
3. **Facial recognition misidentification** — Multiple Black men were wrongfully arrested in the US due to facial recognition systems with significantly higher error rates on darker skin tones.
4. **Medical AI overconfidence** — Diagnostic models trained on hospital data from one population performed poorly when deployed in hospitals serving different demographics.
5. **Chatbot radicalization** — Early recommendation and conversational AI systems were found to escalate users toward increasingly extreme content through engagement optimization.
6. **GPT fabricating research** — LLMs have repeatedly generated plausible-sounding but entirely fictional academic references, statistics, and quotes.
7. **Autonomous vehicle edge cases** — Self-driving systems failed in scenarios underrepresented in training data, such as unusual weather, faded lane markings, or unfamiliar road layouts.
8. **Sentiment analysis cultural blindness** — NLP models trained predominantly on English Western text misclassified sentiment in other languages or cultural contexts.

**The pattern:** Nearly every failure traces back to one of three root causes — training data that doesn't represent the deployment context, optimization for a proxy metric that diverges from the true goal, or overconfident outputs with no reliable uncertainty signaling. AI systems fail most predictably at the edges of what their training data covered, and they fail silently — producing confident wrong answers rather than flagging uncertainty.

---

## Weekly Reflection – Class 6

### a. Start your first ML pipeline

Building a first machine learning pipeline is less about achieving perfect accuracy and more about understanding how each stage connects to the next. A basic supervised ML pipeline follows this sequence:

1. **Data Collection & Loading** — Identify your dataset. Load it into R or Python using `read_csv()` or `pandas`.
2. **Preprocessing & Cleaning** — Handle missing values, remove duplicates, standardize text (lowercase, remove punctuation, tokenize). For text data this also means removing stop words and potentially stemming or lemmatizing.
3. **Feature Engineering** — Convert raw data into numeric features the model can use. For text, this might mean a TF-IDF matrix or word embeddings.
4. **Train/Test Split** — Divide the data (commonly 80/20) so you have held-out data to evaluate performance honestly.
5. **Model Training** — Fit a model (start simple: logistic regression, decision tree, or Naive Bayes). In R: `caret` or `tidymodels`; in Python: `scikit-learn`.
6. **Evaluation** — Compute accuracy, precision, recall, F1, and the confusion matrix on the test set.
7. **Iteration** — Adjust preprocessing, try different models, tune hyperparameters.

### b. What did the error analysis reveal that the accuracy score alone did not? How does overfitting relate to knowledge vs. noise?

Accuracy is a single aggregate number that hides where and how a model fails. Error analysis — examining which specific cases the model got wrong — reveals far more actionable information. A model might achieve 90% overall accuracy but completely fail on a minority class that accuracy alone masks. Error analysis surfaces systematic blind spots: does the model consistently fail on longer texts? On sarcasm? On out-of-vocabulary terms?

Overfitting connects deeply to the knowledge vs. noise distinction. A model that overfits has essentially memorized the noise in its training data — the random, idiosyncratic quirks of that particular sample — rather than learning the generalizable signal, i.e., genuine knowledge about the underlying phenomenon. It performs excellently on training data precisely because it has encoded the noise as if it were meaningful pattern. When deployed on new data, performance collapses. True knowledge generalizes; noise does not. Regularization, cross-validation, and simpler models are all techniques for forcing the model to learn signal over noise.

---

## Weekly Reflection – Class 7

### a. Prediction vs. explanation: when does it matter why something happens, and when is it enough to know what will happen?

Prediction and explanation serve fundamentally different goals. **Prediction** asks: given what we observe now, what will happen next? The model doesn't need to tell us *why* — it just needs to be accurate. A well-calibrated predictive model can be a black box and still be enormously useful. For example, a model that predicts which neighborhoods will have elevated crime rates next month can help a police department allocate patrol resources efficiently without understanding the causal mechanism.

**Explanation** asks: why does this happen? What is the causal mechanism? This is where prediction falls short. If a city wants to *reduce* crime rather than just anticipate it, knowing that a variable predicts crime is not enough — you need to know whether intervening on that variable would actually change the outcome. A purely predictive model might find that the number of pawn shops predicts crime, but that doesn't mean closing pawn shops causes crime to drop. The association could be driven by poverty, which causes both.

**The policy stakes are highest when you want to intervene.** Prediction is sufficient for resource allocation and forecasting. Explanation is necessary for policy design, because policies are interventions — and only causal knowledge tells you what happens when you pull a lever.

### b. Draw a simple causal diagram for a relationship in your research area. What confounders exist? How would you distinguish a causal claim from a predictive association?

**Research domain: Political media and immigration framing**

**Core claim:** Negative media framing of immigration increases public support for restrictive policy.

**Key confounders:**
- **Political polarization** — People with stronger partisan identities both consume more extreme media *and* hold stronger policy views, creating a spurious association.
- **Economic anxiety** — Regions with higher unemployment may attract more negative media coverage *and* have residents more receptive to restrictive messaging.
- **Prior attitudes** — People selectively expose themselves to media that confirms existing beliefs, meaning the causal arrow may run in reverse.

**Distinguishing causal from predictive:** A predictive model would find that negative framing co-occurs with restrictive policy preferences. A causal claim requires more: ideally a natural experiment (e.g., a sudden shift in one outlet's framing due to ownership change), an instrumental variable, or a randomized experiment exposing subjects to different frames. Without such identification strategies, the association cannot support a causal interpretation.

---

## Weekly Reflection – Class 8

### a. How can text mining reveal patterns that close reading alone cannot? What are its blind spots?

Close reading is deep but narrow — a skilled reader can extract rich meaning from a single text but cannot hold thousands of documents in mind simultaneously. Text mining inverts this: it is wide but shallow. By applying computational methods across large corpora, text mining can detect distributional patterns, temporal trends, cross-document structure, and scale effects that are simply invisible to any individual reader.

However, text mining has real blind spots. It struggles with irony, sarcasm, and rhetorical complexity. It misses context dependency — the word "sanctions" means something very different in a UN resolution versus a church bulletin, and bag-of-words models collapse that distinction. It is also blind to what is absent — what a document strategically omits is often as analytically important as what it includes. Finally, text mining reflects the biases of the corpus: if certain voices or time periods are underrepresented, the patterns it surfaces will reflect that skew as if it were reality.

### b. How can NLP and LLM assist in your research project? Give specific examples.

- **Corpus construction:** NLP tools can scrape, clean, and deduplicate thousands of news articles automatically.
- **Topic modeling:** LDA or BERTopic can identify major themes across a large article corpus without manual coding of every document.
- **Sentiment and stance classification:** A fine-tuned LLM can classify whether an article's framing of immigration is positive, negative, or neutral at scale.
- **Named entity recognition (NER):** NLP can extract which politicians, countries, and organizations appear in coverage and how frequently.
- **Summarization for close reading prioritization:** An LLM can summarize hundreds of articles, allowing identification of the most analytically interesting ones for deep qualitative reading.

### c. Name limitations and suggest solutions

| Limitation | Solution |
|---|---|
| LLMs hallucinate facts and citations | Use RAG; always verify outputs against source documents |
| Models trained on English/Western data perform poorly on multilingual or non-Western corpora | Fine-tune on domain-specific multilingual data; use models like mBERT or XLM-R |
| Black-box outputs lack interpretability | Use attention visualization, SHAP values, or simpler interpretable models alongside LLMs |
| Computational cost of large models | Use efficient alternatives (DistilBERT, smaller fine-tuned models) for classification tasks |
| Training data cutoffs miss recent events | Combine with web search / RAG pipelines for recency |

### d. AI for Research Guide — Ethical, Technical, and Academic Concerns

**Technical Concerns**
- AI outputs are probabilistic, not authoritative — treat them as drafts, not conclusions
- Models can confidently produce wrong answers with no uncertainty signal
- Performance degrades outside the distribution of training data; always validate on your specific domain
- Reproducibility is undermined when model versions change and outputs shift

**Ethical Concerns**
- Training data encodes historical biases — race, gender, and class disparities in source material become disparities in model output
- Use of AI on human subjects data raises privacy concerns even when data is "public"
- AI-generated research at scale could flood peer review with plausible-but-flawed work, degrading the epistemic commons
- Researchers in the Global South may face unequal access to cutting-edge models, exacerbating knowledge inequality

**Academic Concerns**
- Attribution and authorship norms do not map cleanly onto LLM-assisted writing
- Citation integrity: LLMs fabricate references; every AI-suggested citation must be verified before inclusion
- Over-reliance risk: using AI to generate interpretations can short-circuit the researcher's own analytical development
- As Geoffrey Hinton and others have warned, we are deploying systems whose internal representations we do not understand into high-stakes research contexts — epistemic humility is not optional

**Bottom line:** AI is a powerful research accelerator, but it is not a substitute for domain expertise, critical judgment, or ethical responsibility.

---

## Weekly Reflection – Class 9

### a. What can LLMs do well, and where do they fail? Evaluate one specific failure mode you have encountered.

LLMs excel at generating fluent, coherent text; summarizing long documents; translating between languages; writing and explaining code; answering factual questions within their training distribution; and performing zero-shot classification when given clear instructions.

**Specific failure mode — Hallucination:** The most consequential failure I have encountered is confident fabrication of academic citations. When asked to suggest relevant literature on a topic, LLMs produce perfectly formatted citations — correct author name styles, plausible journal names, realistic publication years — for papers that do not exist. The model is not lying intentionally; it is generating the most statistically likely sequence of tokens given the prompt, and a plausible-looking citation is exactly what that distribution produces. The danger is that the output is indistinguishable from a real citation without manually verifying it in Google Scholar or Web of Science. For academic research, this is a serious integrity risk, and the model gives no signal that anything is wrong.

### b. How might generative AI reshape your discipline in the next five years? What research tasks will change most, and what should remain human-driven?

**Tasks that will change most:**
- **Literature review and synthesis** — AI will compress the front-end of research projects dramatically
- **Corpus construction and annotation** — Tasks requiring research assistants to code hundreds of documents will be largely automatable
- **Exploratory data analysis on text** — Initial pattern detection in large corpora will become a routine starting point
- **Writing assistance** — First drafts and research memos will increasingly be AI-assisted

**What should remain human-driven:**
- **Research question formulation** — Deciding what is worth knowing requires disciplinary judgment and normative commitment that AI cannot supply
- **Causal inference and theory-building** — Identifying mechanisms and making causal claims requires reasoning about counterfactuals that goes beyond pattern recognition
- **Ethical oversight** — Decisions about data collection, representation, and social implications must remain with accountable human researchers
- **Interpretation and significance** — Deciding whether a pattern is substantively meaningful is an irreducibly human judgment

---

## Weekly Reflection – Class 10

### a. What is Retrieval-Augmented Generation (RAG) and why does it matter for research? How does grounding generation in retrieved documents change the trustworthiness of AI output?

Retrieval-Augmented Generation (RAG) is a hybrid AI architecture that combines a retrieval system with a generative language model. Instead of relying solely on knowledge baked into model weights during training, RAG first searches a document corpus for relevant passages and then feeds those passages as context into the language model before generating a response.

This matters enormously for research because academic and policy work demands verifiability. A standard LLM can hallucinate — producing confident but fabricated citations, statistics, or conclusions. RAG addresses this by anchoring responses to real, retrievable documents. When the generation is grounded in retrieved text, the output can be traced back to a specific source, making it auditable. A researcher can check whether the model's claim actually appears in the cited document, which fundamentally shifts AI output from "plausible-sounding" to "source-backed."

### b. What are the recent criticisms about RAG? Any suggestions for improving generation?

**Criticisms:**
1. **Retrieval quality bottleneck** — RAG is only as good as what it retrieves. If the retrieval step surfaces irrelevant documents, the generator compounds the error.
2. **Context window limitations** — Retrieved documents must fit within the model's context window; long documents get truncated, potentially cutting off the most relevant information.
3. **Lack of reasoning across documents** — RAG struggles when an answer requires synthesizing information spread across multiple retrieved chunks.
4. **Staleness and corpus curation** — If the retrieval corpus isn't kept current or well-curated, the model may ground its answers in outdated or biased sources.

**Suggestions for improvement:**
- **Reranking** retrieved results with a cross-encoder before passing them to the generator can significantly improve relevance
- **Iterative/multi-hop RAG** — where the model retrieves, reasons, then retrieves again — helps with complex, multi-step questions
- **Fine-tuning the retriever** on domain-specific data improves alignment between queries and relevant documents
- **Hybrid retrieval** combining dense vector search with sparse keyword search (BM25) often outperforms either method alone
- **Faithfulness evaluation** layers checking whether the generated answer is supported by the retrieved context can be added as a post-generation filter

---

## Weekly Reflection – Class 11

### a. What is a knowledge graph and how does it differ from a traditional database or a vector store? Why are relationships between entities valuable for knowledge mining?

A knowledge graph is a structured representation of information in which real-world entities — people, places, concepts, organizations, events — are stored as nodes, and the relationships between them are stored as labeled, directed edges. The graph structure makes the relationships themselves first-class objects, not just implicit links inferred from table joins.

This differs fundamentally from a **traditional relational database**, which stores data in flat tables. Relationships in a relational database exist implicitly through foreign keys and must be reconstructed at query time. A knowledge graph is schema-flexible — new entity types and relationship types can be added without restructuring the entire database.

A **vector store** is different again. It stores high-dimensional numerical embeddings of text chunks and retrieves them by semantic similarity. It is excellent for fuzzy, meaning-based retrieval but stores no explicit relational structure — it cannot tell you *how* two entities are connected, only that their embeddings are close in semantic space.

**Why relationships matter for knowledge mining:** Most interesting research questions are relational. Who influences whom? Which concepts co-occur across which contexts? A flat dataset can tell you that two variables correlate; a knowledge graph can show you the path through which they are connected, enabling richer causal and structural reasoning.

### b. Identify three entities and three relationships from your research domain that could form a small knowledge graph.

**Research domain: Political media and immigration framing**

**Entities:** News Outlet, Politician, Immigration Policy

**Relationships:**
1. *News Outlet* → **frames** → *Immigration Policy*
2. *Politician* → **sponsors / opposes** → *Immigration Policy*
3. *News Outlet* → **quotes / covers** → *Politician*

**What this answers that a flat dataset cannot:** A knowledge graph can answer structurally richer questions: Which outlets disproportionately quote politicians who sponsor restrictive policies? Which policies sit at the center of the discourse, connected to the most outlets and politicians? Are there politicians covered extensively by outlets that frame immigration negatively but who themselves sponsor moderate policies — suggesting a framing-reality gap? These multi-hop, path-dependent questions require traversing relationships across entity types, which graph query languages like SPARQL or Cypher enable and a flat CSV cannot.

---

## Weekly Reflection – Class 12

### a. What does "AI for Science" mean? How do agentic AI systems change the research workflow compared to single-prompt interactions?

"AI for Science" refers to the use of AI systems not merely as writing assistants or search tools, but as active participants in the scientific process — systems that can formulate hypotheses, design data collection strategies, run analyses, interpret results, and iterate based on findings.

The critical shift is from **single-prompt interaction** to **agentic AI**. In a standard single-prompt interaction, a researcher asks a question, the model answers, and the researcher manually decides what to do next. The human is the planning layer — they hold the research goal in mind, sequence the tasks, and route information between steps.

An **agentic AI system** changes this architecture entirely. Instead of responding to one prompt, the agent is given a goal and autonomously plans the sequence of steps needed to reach it, selects and calls tools (web search, code execution, database queries, API calls), evaluates intermediate outputs, and adjusts its plan based on what it finds. For research, this means an agent could be instructed to find all recent papers on immigration framing, extract their methods sections, identify the most common analytical approaches, write a comparative summary, and flag methodological gaps — all without the researcher manually orchestrating each step.

**What changes in the research workflow:** A single-prompt workflow is essentially a faster version of a library visit. An agentic workflow is closer to having a research assistant who can be given a task and trusted to complete a multi-day project independently. Literature reviews that take weeks compress to hours. Exploratory analyses that require iterative code-fix-rerun cycles can be automated. However, errors made early in an agentic pipeline propagate and compound across subsequent steps, making **human oversight checkpoints** a critical design requirement. The goal is not to remove the researcher from the loop, but to move them from managing every step to supervising the overall trajectory.
