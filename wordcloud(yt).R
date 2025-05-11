#Installing the required packages
install.packages("tm", "NLP", "RColorBrewer", "wordcloud", "SnowballC")
#TM - TEXT MINING
#NLP- NATURAL LANGUAGE PROCESSING
#RCOLORBREWER- DIFFERENT COLOR PALETTES
#WORDCLOUD- WORDCLOUD VISUALIZATION
#SNOWBALLC- WORD STEMMING

#LOADING THE RELEVANT PACKAGES
library(tm)
library(NLP)
library(RColorBrewer)
library(wordcloud)
library(SnowballC)

#LOADING TEH INBUIT CRUDE DATASET
data(crude)
summary(crude)

#CLEANING & PREPROCESSING THE TEXT
corpus<- tm_map(crude, content_transformer(tolower))
corpus<- tm_map(corpus, removePunctuation)
corpus<- tm_map(corpus, removeNumbers)
corpus<- tm_map(corpus, removeWords, stopwords("english"))
corpus<- tm_map(corpus, stripWhitespace)
corpus<- tm_map(corpus, stemDocument)

#CREATE A DOCUMENT TERM MATRIX
dtm<- DocumentTermMatrix(corpus)
inspect(dtm[1:5, 1:10])

#calculating word frequencies
freq<- colSums(as.matrix(dtm))
freq_sorted<- sort(freq, decreasing = TRUE)
head(freq_sorted, 10)

#generating a word cloud
set.seed(1234)
wordcloud(words = names(freq), freq= freq, max.words = 100, random.order = FALSE, colors = brewer.pal(8, "Dark2"))

