---
title: "How to Build RAG Pipelines for LLM Projects?"
source: "https://www.geeksforgeeks.org/how-to-build-rag-pipelines-for-llm-projects/"
author:
  - "[[GeeksforGeeks]]"
published: 2025-02-14
created: 2026-10-20
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
tags:
  - "clippings"
---
[LLMs](https://www.geeksforgeeks.org/artificial-intelligence/large-language-model-llm/) can generate useful responses, but their built-in knowledge may not contain the latest, private or domain-specific information. [Retrieval-Augmented Generation (RAG)](https://www.geeksforgeeks.org/nlp/what-is-retrieval-augmented-generation-rag/) solves this problem by retrieving relevant information from an external knowledge source and providing it to the LLM as context.

- A RAG pipeline combines document processing, embeddings, vector storage, retrieval and text generation.
- These components are used to build applications such as question-answering systems, document assistants and knowledge-base chatbots.

## Architecture

A RAG pipeline consists of two main phases:

### 1\. Indexing Phase

The indexing phase prepares external data and stores it in a form that can be efficiently searched.

***Flow:***

> Data Collection -> Preprocessing -> Chunking -> Embeddings -> Vector Database

- ****Data Collection****: Collect data from sources such as PDFs, web pages, databases, text files, or internal documents.
- ****Data Preprocessing****: Clean the collected data and extract useful text from the source documents.
- ****Document Chunking****: Split large documents into smaller chunks so that relevant sections can be retrieved efficiently.
- ****Embedding Generation****: Convert each chunk into a numerical vector called an embedding. The embedding represents the semantic meaning of the text.
- ****Vector Storage****: Store the embeddings and their corresponding text/metadata in a vector database such as Chroma.

### 2\. Query and Generation Phase

When a user asks a question, the RAG system retrieves relevant information and provides it to the LLM.

****Flow:****

> User Query -> Query Embedding -> Retrieval -> Augmentation -> Generation -> Response

- ****Query Embedding****: The user's query is converted into an embedding using the same or a compatible embedding model.
- ****Retrieval****: The query embedding is compared with the stored embeddings to find the most relevant document chunks.
- ****Augmentation****: The retrieved chunks are added to the user's query as context.
- ****Generation****: The LLM uses the question and retrieved context to generate the final response.

## Implementation

In this example, we build a simple RAG pipeline that retrieves information from two GeeksforGeeks articles and uses the retrieved content to answer a user query. The implementation uses [LangChain](https://www.geeksforgeeks.org/artificial-intelligence/introduction-to-langchain/), [Chroma](https://www.geeksforgeeks.org/nlp/introduction-to-chromadb/) and a [Hugging Face](https://www.geeksforgeeks.org/artificial-intelligence/introduction-to-hugging-face-transformers/) model.

### Step 1: Install Required Libraries

First, install the libraries required to build the RAG pipeline.

### Step 2: Import Required Libraries

Import the required classes and functions from LangChain and Transformers.

### Step 3: Load Data from Websites

Add the website URLs and load their content using WebBaseLoader.

The webpages are loaded as documents, which are then used as the knowledge source for the RAG pipeline.

### Step 4: Split Documents into Chunks

Split the loaded documents into smaller chunks using RecursiveCharacterTextSplitter.

### Step 5: Create Embeddings

Create embeddings for the document chunks using the BAAI/bge-base-en-v1.5 model.

### Step 6: Create the Vector Store

Store the document chunks and their embeddings in a Chroma vector store.

### Step 7: Create a Retriever

Create a retriever from the Chroma vector store and retrieve relevant documents for the query.

Here, MMR is used as the retrieval strategy, with k=3 to retrieve three relevant document chunks.

### Step 8: Define the Prompt

Create a prompt that instructs the assistant to provide direct answers and respond with "I don't know" when the information is not available in the context.

### Step 9: Load the Language Model and Create the RAG Chain

Load the google/flan-t5-base model using the Transformers pipeline and create the RAG chain using RetrievalQA.

****Output:****

> neural networks designed to process sequential data by maintaining hidden states that store information from previous steps

You can download the complete source code from [here.](https://media.geeksforgeeks.org/wp-content/uploads/20260919102834884244/How_to_Build_RAG_Pipelines_for_LLM_Projects_.ipynb)

<iframe src="https://accounts.google.com/gsi/iframe/select?client_id=388036620207-3uolk1hv6ta7p3r9l6s3bobifh086qe1.apps.googleusercontent.com&amp;ux_mode=popup&amp;ui_mode=card&amp;as=LCFCyDUF6OuROz-ZbJVvmRhHrYn0LdLy8nDTdFHsNbY&amp;bs=UFIchh6PGR8Uj4LaS%2BZUmf5WVJbVVZ%2FnHdGf6QiwrSU&amp;is_itp=true&amp;channel_id=a1122554366679875d6c477fe21a54a4b2ceca9feecd81dad00527e7f4bed3e0&amp;origin=https%3A%2F%2Fwww.geeksforgeeks.org&amp;oauth2_auth_url=https%3A%2F%2Faccounts.google.com%2Fo%2Foauth2%2Fv2%2Fauth" title="Sign in with Google Dialogue"></iframe>