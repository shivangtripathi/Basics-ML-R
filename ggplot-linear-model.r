library(GGally)
data("women")
head(women)

ggpairs(data=women, columns=1:2, title="Death rate")
fit_ex <- lm(height ~ weight,data=women)
ggplot(data=women, aes(fit_ex$residuals))+geom_histogram(binwidth = 1, color = "green", fill = "yellow")+theme(axis.line.x=element_line(),
axis.line.y=element_line()) + ggtitle("Histogram for women height")

ggplot(data = women, aes(x = height, y = weight)) +
  geom_point() +
  stat_smooth(method = "lm", col = "red") +
  theme(panel.background = element_rect(fill = "grey"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("Linear Model fitted to above data")

predict(fit_ex, data.frame(weight = 70.2))

#ggpairs -> creates a scatter plot with diagonals as the variable distribution and left side shows the scatter plot and right side the correlation matrix
#lm -> linear model
#ggplot -> creating a plot
#aes -> aesthetic plot
#geom_histogram -> histogram plot
#geom_point() -> create scatter plot
