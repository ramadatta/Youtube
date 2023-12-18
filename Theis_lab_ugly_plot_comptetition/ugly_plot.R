library(tidyverse)
library(ggplot2)
library(stringr)
library(tibble)

library(data.table)
movies <- fread(input = "christmas-movies-2000s.tsv", sep = "\t", header = TRUE)
head(movies)

# Create the deliberately ugly scatter plot with facets
ggplot(movies, aes(x = Year, y = Score)) +
  #geom_point(aes(color = RatingGroup), alpha = 0.5, size = 5, position = "jitter", show.legend = FALSE) +
  geom_text(aes(label = RatingGroup, color = RatingGroup,),  size = 4, position = position_jitter(width = 0.2, height = 0.2), show.legend = FALSE) +
  facet_wrap(RatingGroup ~ Famous, nrow = 3) +
  theme_minimal() +
  labs(title = "ᗰ𝕆𝕆ᐯIᗴᔕ", x = "Year", y = "Score", subtitle = "𝕯ø𝐧'т јµdֆё 𝕒 м🎥𝐯𝓲ё вч 𝖎т'𝚜 𝓼ϲ𝖆𝓽𝔢𝐫 ρ𝓵🅾т!")+
  theme(
    text = element_text(size = 20, face = "bold", color = "purple"),
    axis.title = element_text(size = 30, face = "italic", color = "orange"),
    axis.text = element_text(size = 30, face = "plain", color = "pink"),
    plot.title = element_text(size = 55, face = "bold.italic", color = "green", angle=0),
    plot.background= element_rect(fill="red"),
    panel.background = element_rect(fill = "orange"),
    panel.grid = element_line(color = "blue", linetype = "dotted"),
    legend.background = element_rect(fill = "lightgray"),
    legend.title = element_text(size = 32, face = "bold", color = "red"),
    legend.text = element_text(size = 20, face = "plain", color = "darkblue")
  )
