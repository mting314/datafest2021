library(tidyverse)
library(ggpol)

options(scipen = 999)

#Data input and transformation
#US <- read_csv("US-Pyramid.csv")

aut_df <- read_csv('aut_df.csv')

# Age -> DAST_SUM
# Gender -> MENT_AUT

aut_pop <- aut_df %>% 
  na.omit %>% 
  mutate(Severity = factor(DAST_SUM, levels = 0:10),
         Autism = factor(MENT_AUT,levels = c(0,1), labels = c('Not Autistic','Autistic')),
         Relative_Frequency = ifelse(Autism == 'Not Autistic', 100*(MENT_AUT_REL_FREQ * -1), 100*(MENT_AUT_REL_FREQ)))

#Static Plot


PopPyramid <- aut_pop %>%
  ggplot(aes(x = Severity, y = Relative_Frequency, fill = Autism)) +
  geom_bar(stat = 'identity') +
  scale_fill_manual(values = c('#FBA7A7', '#90C6F9')) +
  scale_y_continuous(
    breaks = c(-20, -40, -60, 0, 20, 40, 60),
    label = c("20%", "40%", "60%", "0%", "20%", "40%", "60%")
  ) +
  coord_flip() + 
  theme(
    legend.position = "bottom",
    plot.background = element_rect(fill = "#242422") ,
    #axis.ticks = element_blank(),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    panel.background = element_blank(),
    panel.border = element_blank(),
    strip.background = element_blank(),
    #strip.text.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(), 
    axis.text = element_text(size = 10),
    legend.key.size = unit(0.75, 'cm'),
    legend.background = element_blank(),
    legend.text = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.title = element_text(
      size = 14,
      hjust = 0.5,
      face = 'bold',
      color = 'white'
    ),
    plot.subtitle = element_text(
      size = 8,
      hjust = 0,
      face = 'bold',
      color = 'white'
    ),
    axis.title.x = element_text(
      size = 10,
      face = 'bold',
      color = '#242422'
    ),
    axis.text.x = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    axis.text.y = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.caption = element_text(
      size = 8,
      hjust = 1,
      face = 'bold',
      color = '#f5a11d'
    ),
    plot.margin = margin(10,10,10,10)
  )

PopPyramid <- PopPyramid + 
  labs(
    title = 'Autism and DAST-10 Score',
    subtitle = '',
    y = '',
    caption = ''
  )

# -------------------------------

adhd_df <- read_csv('ment_adhd_df.csv')

# Age -> DAST_SUM
# Gender -> MENT_AUT

adhd_pop <- adhd_df %>% 
  na.omit %>% 
  mutate(Severity = factor(DAST_SUM, levels = 0:10),
         ADHD = factor(MENT_ADHD,levels = c(0,1), labels = c('No ADHD','ADHD')),
         Relative_Frequency = ifelse(ADHD == 'No ADHD', 100*(MENT_ADHD_REL_FREQ * -1), 100*(MENT_ADHD_REL_FREQ)))

#Static Plot


PopPyramid <- adhd_pop %>%
  ggplot(aes(x = Severity, y = Relative_Frequency, fill = ADHD)) +
  geom_bar(stat = 'identity') +
  scale_fill_manual(values = c('#FBA7A7', '#90C6F9')) +
  scale_y_continuous(
    breaks = c(-20, -40, -60, 0, 20, 40, 60),
    label = c("20%", "40%", "60%", "0%", "20%", "40%", "60%")
  ) +
  coord_flip() + 
  theme(
    legend.position = "bottom",
    plot.background = element_rect(fill = "#242422") ,
    #axis.ticks = element_blank(),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    panel.background = element_blank(),
    panel.border = element_blank(),
    strip.background = element_blank(),
    #strip.text.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(), 
    axis.text = element_text(size = 10),
    legend.key.size = unit(0.75, 'cm'),
    legend.background = element_blank(),
    legend.text = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.title = element_text(
      size = 14,
      hjust = 0.5,
      face = 'bold',
      color = 'white'
    ),
    plot.subtitle = element_text(
      size = 8,
      hjust = 0,
      face = 'bold',
      color = 'white'
    ),
    axis.title.x = element_text(
      size = 10,
      face = 'bold',
      color = '#242422'
    ),
    axis.text.x = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    axis.text.y = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.caption = element_text(
      size = 8,
      hjust = 1,
      face = 'bold',
      color = '#f5a11d'
    ),
    plot.margin = margin(10,10,10,10)
  )

PopPyramid <- PopPyramid + 
  labs(
    title = 'ADHD and DAST-10 Score',
    subtitle = '',
    y = '',
    caption = ''
  )


# ---------------

anx_df <- read_csv('ment_anx_df.csv')

# Age -> DAST_SUM
# Gender -> MENT_AUT

anx_pop <- anx_df %>% 
  na.omit %>% 
  mutate(Severity = factor(DAST_SUM, levels = 0:10),
         Anxiety = factor(MENT_ANX,levels = c(0,1), labels = c('No Anxiety','Anxiety')),
         Relative_Frequency = ifelse(Anxiety == 'No Anxiety', 100*(MENT_ANX_REL_FREQ * -1), 100*(MENT_ANX_REL_FREQ)))

#Static Plot


PopPyramid <- anx_pop %>%
  ggplot(aes(x = Severity, y = Relative_Frequency, fill = Anxiety)) +
  geom_bar(stat = 'identity') +
  scale_fill_manual(values = c('#FBA7A7', '#90C6F9')) +
  scale_y_continuous(
    breaks = c(-20, -40, -60, 0, 20, 40, 60),
    label = c("20%", "40%", "60%", "0%", "20%", "40%", "60%")
  ) +
  coord_flip() + 
  theme(
    legend.position = "bottom",
    plot.background = element_rect(fill = "#242422") ,
    #axis.ticks = element_blank(),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    panel.background = element_blank(),
    panel.border = element_blank(),
    strip.background = element_blank(),
    #strip.text.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(), 
    axis.text = element_text(size = 10),
    legend.key.size = unit(0.75, 'cm'),
    legend.background = element_blank(),
    legend.text = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.title = element_text(
      size = 14,
      hjust = 0.5,
      face = 'bold',
      color = 'white'
    ),
    plot.subtitle = element_text(
      size = 8,
      hjust = 0,
      face = 'bold',
      color = 'white'
    ),
    axis.title.x = element_text(
      size = 10,
      face = 'bold',
      color = '#242422'
    ),
    axis.text.x = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    axis.text.y = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.caption = element_text(
      size = 8,
      hjust = 1,
      face = 'bold',
      color = '#f5a11d'
    ),
    plot.margin = margin(10,10,10,10)
  )

PopPyramid <- PopPyramid + 
  labs(
    title = 'Anxiety and DAST-10 Score',
    subtitle = '',
    y = '',
    caption = ''
  )

# ---------------

dep_df <- read_csv('ment_dep_df.csv')

# Age -> DAST_SUM
# Gender -> MENT_AUT

dep_pop <- dep_df %>% 
  na.omit %>% 
  mutate(Severity = factor(DAST_SUM, levels = 0:10),
         Depression = factor(MENT_DEP,levels = c(0,1), labels = c('Not Depressed','Depressed')),
         Relative_Frequency = ifelse(Depression == 'Not Depressed', 100*(MENT_DEP_REL_FREQ * -1), 100*(MENT_DEP_REL_FREQ)))

#Static Plot


PopPyramid <- dep_pop %>%
  ggplot(aes(x = Severity, y = Relative_Frequency, fill = Depression)) +
  geom_bar(stat = 'identity') +
  scale_fill_manual(values = c('#FBA7A7', '#90C6F9')) +
  scale_y_continuous(
    breaks = c(-20, -40, -60, 0, 20, 40, 60),
    label = c("20%", "40%", "60%", "0%", "20%", "40%", "60%")
  ) +
  coord_flip() + 
  theme(
    legend.position = "bottom",
    plot.background = element_rect(fill = "#242422") ,
    #axis.ticks = element_blank(),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    panel.background = element_blank(),
    panel.border = element_blank(),
    strip.background = element_blank(),
    #strip.text.x = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(), 
    axis.text = element_text(size = 10),
    legend.key.size = unit(0.75, 'cm'),
    legend.background = element_blank(),
    legend.text = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.title = element_text(
      size = 14,
      hjust = 0.5,
      face = 'bold',
      color = 'white'
    ),
    plot.subtitle = element_text(
      size = 8,
      hjust = 0,
      face = 'bold',
      color = 'white'
    ),
    axis.title.x = element_text(
      size = 10,
      face = 'bold',
      color = '#242422'
    ),
    axis.text.x = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    axis.text.y = element_text(
      size = 10,
      face = 'bold',
      color = 'white'
    ),
    plot.caption = element_text(
      size = 8,
      hjust = 1,
      face = 'bold',
      color = '#f5a11d'
    ),
    plot.margin = margin(10,10,10,10)
  )

PopPyramid <- PopPyramid + 
  labs(
    title = 'Depression and DAST-10 Score',
    subtitle = '',
    y = '',
    caption = ''
  )
