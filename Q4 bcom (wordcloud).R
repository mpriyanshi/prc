#loading library 
library(tm)

text_data <- c(
  "This phone has a great camera and long-lasting battery.",
  "Amazing performance and sleek design.",
  "Battery life is good but the screen could be brighter.",
  "Camera quality is top-notch for the price.",
  "Performance is fast and user interface is smooth.",
  "Good value for the money and great features overall."
)

corpus <- Corpus(VectorSource(text_data))

#data preprocessing
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)

#document term matrix creation
dtm <- DocumentTermMatrix(corpus)
inspect(dtm)

#analyze word freq
freq <- colSums(as.matrix(dtm))
freq <- sort(freq, decreasing = TRUE)
print(freq)

#generate wordcloud
library(wordcloud)

set.seed(123)
wordcloud(names(freq), freq, min.freq = 1, colors = brewer.pal(8, "Dark2"))
