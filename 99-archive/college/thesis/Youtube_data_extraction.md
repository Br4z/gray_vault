---
reviewed_on: "2025-10-09"
---

# YouTube data extraction

Develop a comprehensive web application that automates the extraction, processing, and analysis of YouTube video and comment data to understand public opinion and sentiment around specific topics or events.

## Primary engagement metrics

- View count: the total number of times videos have been watched.

- Like count: the number of positive reactions to videos.

- Comment count: the quantity of comments left on videos.

- Like-to-view ratio: the proportion of viewers who liked the video.

- Comment-to-view ratio: the proportion of viewers who commented.

## Features

### Data acquisition

- API integration and raw data collection: implementation of YouTube Data API v3 connections to systematically collect videos and their associated comments based on search queries. Includes handling of API keys, request formatting, and response parsing.

- Parameters and search criteria handling: creation of configurable search filters including keyword/topic specification, date range constraints, view count thresholds, comment count minimums, and channel-specific filtering options. Allows for precise targeting of relevant content.

### Data processing module

- Cleaning and normalization: text preprocessing pipeline for comment data including removal of special characters, URL filtering, emoji handling, text case normalization, and language standardization to ensure analysis consistency.

- Structuring and formatting: organization of raw API responses into structured dataframes with proper typing, hierarchical relationship mapping (video -> comments -> replies), and timestamp standardization.

- Quality assurance: implementation of data validation procedures to detect missing fields, malformed entries and duplicate content.

### Descriptive analytics module

- Statistical summaries: generation of distribution statistics for video metrics (views, likes, comments), engagement ratios and comment length distributions.

- Baseline metrics.

### Insight generation module

- Sentiment analysis.

- Content classification: categorization of videos based on transcribed content, comment sentiment and metadata.

### Presentation module

- Visualization: creation of interactive charts, and dashboards to represent analytical findings in an accessible format.

## Feedback

### El cumplimiento de los objetivos específicos asegura el logro del objetivo general

"Falta que en los objetivos específicos se definan mejor las tareas y ser más puntuales en cuento a las tareas de PLN,. Especialmente en el uso de los LLMs. Por la complejidad del manejo de los datos que son multimodales, hay que definir un objetivo de entrenamiento con LLMs multimodales como mistral, QWen, Llama4), porque no hay interfaces basadas en LLMs propias".

Regarding the feedback on the use of multimodal LLMs and model training, I believe there is a misunderstanding of the defined scope. As stated in the Exclusions section (5.2), this project is limited to processing textual metadata and explicitly excludes the training or fine-tuning of models.

The NLP implementation is confined to the Data Collection Module (Specific Objective 2), where a pre-trained model (via API) will act solely as a query translator (Natural Language -> YouTube API params). It will not analyze video or audio content, rendering multimodal models unnecessary for this specific architecture.

> I included the definition of "Multimodal Data" in the theoretical framework (6.3.1) to provide a complete characterization of the YouTube ecosystem as part of the broader research context. However, the scope of this specific software development thesis is strictly defined as the Data Collection and User Interface Layer, leaving multimodal content analysis for future phases of the research group's work.

#### Proposed fix (el cumplimiento de los objetivos específicos asegura el logro del objetivo general)

I will refine Specific Objective 2 to explicitly detail the query translation tasks, clarifying that the LLM's role is strictly for interface command processing rather than multimodal content analysis.

## Se reportan antecedentes claves relacionados con el objeto de estudio y con la estrategia propuesta

"No veo antecedentes directos que sustenten la propuesta. Importante que se hable con más profundidad del tema del uso de los LLMs mutimodales para establecer un mejor alcance".

I interpret this observation as referring specifically to the technical strategy of using LLMs for query generation, rather than the general validity of a YouTube social listening tool (which is supported by the comparison with commercial tools like Talkwalker in Section 6.2).

Regarding the mention of "multimodal LLMs," I reiterate the clarification made in the previous point: the scope is strictly limited to text-based processing. However, I acknowledge that the current document lacks direct academic precedents supporting the specific architecture of "LLM as a Natural Language Interface (NLI) for APIs."

#### Proposed fix (se reportan antecedentes claves relacionados con el objeto de estudio y con la estrategia propuesta)

I will expand the State of the Art (Section 6.2) to include a subsection on "LLM-based Query Generation." This section will cite precedents in Text-to-SQL and Text-to-API research (e.g., studies where LLMs translate user intent into structured queries). This will provide the "direct precedents" required to sustain the proposed technical architecture, validating the decision to use a text-only LLM as a translation layer.


"To implement a data collection module featuring a Natural Language Interface (NLI) that utilizes a pre-trained Large Language Model (LLM) to validate and translate user requests into structured YouTube Data API query parameters".


> It processes informal natural language user queries, extracts search parameters (keywords, date ranges, content filters), validates extracted parameters against YouTube API constraints, and generates well-formed YouTube Data API queries.