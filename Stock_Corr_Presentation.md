Stock Correlation App
========================================================
author: Aaron Adair
date: 8/8/18
autosize: true

Intro
========================================================

A broker or financial advisor needs a way to choose what stocks to put into a portfolio. Theory suggests having a diverse set of stocks, and diverse means uncorrelated. In this way, if one stock goes down, it doesn't mean everything else in your portfolio is going to go down.


What you need
========================================================

- A way to look up two stocks
- Find their correlation
- Do it fast!

The way to do it fast is to not require super-computers and terabytes of data. Instead, a great estimate of correlation can be determined using closing price data over several years.


Introducing Stock Correlator!
========================================================


```
[1] "AAPL" "GOOG"
```

![plot of chunk unnamed-chunk-1](Stock_Corr_Presentation-figure/unnamed-chunk-1-1.png)

Fast Results
=======================================================

For the UI, just enter in the two stock ticker names (i.e., AAPL for Apple, GOOG for Google). The plots of their closing data and their correlation is given by these plots. The lower the correlation, the better two have these two stocks paired in your portfolio.

This fast method doesn't require expensive tools or data access only used by the biggest financial firms. Anybody can use it.

Note: The app does not constitute financial adivise. Speak with a fiduciary advisor for assessments of risks.
