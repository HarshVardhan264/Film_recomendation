```markdown
# Film Recommendation System

This project is a content-based movie recommender system built using Python, Streamlit, and machine learning techniques. It processes movie metadata and credits to offer recommendations based on movie tags and similarities.

## Project Structure

- **app.py**  
  The Streamlit application which loads the processed data and similarity matrix to display movie recommendations.

- **movie.csv**  
  CSV file containing movie details such as budget, genres, overview, keywords, production companies, and more.

- **credit.csv**  
  CSV file containing credit information including the cast and crew for each movie.

- **film.ipynb**  
  Jupyter Notebook used for data preprocessing, merging, text vectorization, and computing the cosine similarity matrix.

- **movies_dict.pkl** and **movies.pkl**  
  Pickled files storing the processed movie data as a dictionary and DataFrame respectively.

- **similarity.pkl**  
  Pickled cosine similarity matrix computed from movie tags.

## Setup and Installation

1. **Create a virtual environment (optional but recommended):**
   ```sh
   python -m venv .venv
   ```
   Activate the virtual environment:
   - On Windows:
     ```sh
     .venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```sh
     source .venv/bin/activate
     ```

2. **Install dependencies:**
   ```sh
   pip install streamlit pandas scikit-learn nltk
   ```
   Then, download the necessary NLTK data:
   ```python
   import nltk
   nltk.download('punkt')
   ```

## Running the Application

To run the movie recommender app, use the following command in your terminal:
```sh
streamlit run app.py
```

## Data Processing Overview

The project workflow in [film.ipynb](http://_vscodecontentref_/0) includes:
- Merging movie and credit data.
- Cleaning and converting JSON-like strings to lists.
- Extracting and processing features such as genres, keywords, cast, and director (from crew).
- Combining features into a single `tags` column.
- Vectorizing the text data using scikit-learn's `CountVectorizer`.
- Computing the cosine similarity matrix.
- Serializing the processed data and similarity matrix using [pickle](http://_vscodecontentref_/1).


```