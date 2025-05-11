getwd()
setwd()

## install.packages("tm","tidytext","dplyr","ggplot2","textdata","stringr","wordcloud")
install.packages("tm")
install.packages("tidytext")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("textdata")
install.packages("stringr")
install.packages("wordcloud")
install.packages("textstem") 

library(tm) #text mining package
library(tidytext) #text processing
library(dplyr) #data manipulation
library(ggplot2) #data visualization
library(textdata) #access sentiment datasets
library(stringr) #string manipulation
library(wordcloud) #word cloud visualization
library(textstem) # stemming and lemmatization

text_data<-read.csv("E:/UNIT 5 ANALYTICS/ClusterText.csv.csv", stringsAsFactors = FALSE) #importing text data from csv
str(text_data) #viewing the structure of data
head(text_data) #checking first 6 rows of the data set

Corpus<-Corpus(VectorSource(text_data$text)) #generate corpus
inspect(Corpus) #view corpus


Corpus<-tm_map(Corpus,content_transformer(tolower)) #convert entire text to lowercase
inspect(Corpus)
Corpus<-tm_map(Corpus,removePunctuation)
inspect(Corpus)
Corpus<-tm_map(Corpus,removeNumbers)
inspect(Corpus)
Corpus<-tm_map(Corpus,removeWords,stopwords("en"))
inspect(Corpus)
Corpus<-tm_map(Corpus,stripWhitespace)
inspect(Corpus)

#small example:stemming a vector of words
words.1<-c("happier","ran","well","fairly","better","dogs","children","hypotheses","gracefully")

install.packages("SnowballC")
library(SnowballC)

wordStem(words.1) #for stemming

install.packages("textstem")
library(textstem)

lemmatize_words(words.1) #for lemmatize

#running stemming and lemmatize on corpus data set (either run stemming or lemmatization
#we are running both for understanding only

library(tm)
library(SnowballC)
Corpus_stemmed<-tm_map(Corpus,stemDocument)
print(Corpus_stemmed)
inspect(Corpus_stemmed)

library(textstem)
corpus_stem_lemmat<-tm_map(Corpus_stemmed,lemmatize_words)
inspect(corpus_stem_lemmat)

#final for further processing- lemmatization
corpus_lemmat<-tm_map(Corpus,lemmatize_words)
inspect(corpus_lemmat)


#modelling of text data

#modelling 1:creating a Document-Term matrix (DTM)
dtm<-DocumentTermMatrix(corpus_lemmat)

#displaying number of documents in DTM
nDocs(dtm)
#displaying words (or terms) in DTM
Terms(dtm)
#displaying number of terms in DTM
nTerms(dtm)
#inspecting the DTM
inspect(dtm)

#modelling 2: Term frequency (calculating the frequency of each term in the text)\n
#to be the base for a visual display at a later stage
term_freq<-colSums(as.matrix(dtm)) #determining frequency \n
#it can be rowSums as well instead of colSums
term_freq<-sort(term_freq,decreasing = TRUE) #sorting the frequency in decreasing order
head(term_freq) # checking out first 6 most occurring terms
print(term_freq)
#creating a data frame of names and their frequency
tf_name<-names(term_freq) #creating names for the core terms
term_freq_df<-data.frame(word=tf_name,frequency=term_freq)
print(term_freq_df)

#modelling 4: word cloud- basic text visualization 
install.packages("wordcloud")
library(wordcloud)
wordcloud(term_freq_df$word,term_freq_df$frequency, min.freq = 2,max.words = 33)

#modelling 5: bar plot of term frequencies
install.packages("ggplot2")
library(ggplot2)
#Box Plot: basic
ggplot(subset(term_freq_df, frequency >= 2), 
       aes(x = word, y = frequency)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(title = "Box Plot: TDA",
       x = "Word",
       y = "Frequency")
#OR
#Bar chart: an appropriate type of visualization for TDA
ggplot(subset(term_freq_df, frequency>= 2), 
       aes(x = reorder(word, frequency), y = frequency)) + #Reorders the "word" variable based on its frequency (so that bars are sorted by value, not alphabetically)
  geom_col(fill = "skyblue") +
  coord_flip() +    #Makes a horizontal bar chart by flipping axes for easier reading
  labs(title = "Bar Chart for Word Frequencies (≥ 2)",
       x = "Word",
       y = "Frequency")

#modelling 6: sentiment analysis- detecting positive, negative or neutral sentiment
library(tidytext)
library(dplyr)
text_data %>%
  unnest_tokens(word, text) %>%       # ✅ Use just the column name (e.g., text)
  inner_join(get_sentiments("bing")) %>%
  count(sentiment)
#to know the words
text_data %>%
  unnest_tokens(word, text) %>%       
  inner_join(get_sentiments("bing")) %>%
  count(word,sentiment,sort=TRUE)

