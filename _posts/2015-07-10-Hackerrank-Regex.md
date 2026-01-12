---
layout: post
title: Regex and Hackerrank
category: ["Unix", "Hackerrank"]
tagline: "regex"
comments: true
---

Regular expressions are one of the most versatile tools available. You can do some crazy things with regexing. Lately, I have been solving many problems on the regex subsection of [hackerrank](https://www.hackerrank.com/domains/algorithms/regex). The problems were fairly simple at first and I continued to code in java even though it probably would have been easier in perl or bash. But eventually the expressions got complex forcing me to abandon Java and settle with the regex alone. I used [this](http://regexr.com/) website to check if my expressions were correct.

I have added the expressions to a text file on github but for anyone following the blog I will add them here too:

- [stack-exchange-scraper question](https://www.hackerrank.com/challenges/stack-exchange-scraper)

Print out the question id, summary and date in the order in which they appear on a stackexchange website.

1. regex for id:


    ```
    (?:(<div (.*)?id="question-summary-))([0-9]+)(?:("(.*)?>))
    ```
    The id is the text inside capturing group #3

2. regex for summary:


    ```
    (?:(<h3>.*?\[))(.*?)(?:\])
    ```
    The summary is inside capturing group #2

3. regex for relativetime:


    ```
    (?:<span.*?(?=class="relativetime").*?>)([\w ]+?)(?:<\/span>)
    ```
    The relativetime is inside capturing group #1

In Java after identifying the substrings using regex and adding them to an arraylist they can be printed out in the required format.

- [detect-the-email-address problem](https://www.hackerrank.com/challenges/detect-the-email-addresses)

Output unique email addresses from given body of text.

Fairly simple regex:

`([a-zA-Z][a-zA-Z0-9]*)@[a-zA-Z]{2,}\.[a-zA-Z]{2,}`

This question isn't clear because a valid email can be a fairly complicated string. RFC 822 specifies a very broad set of rules for 'valid' email addresses. Check out [this](http://ex-parrot.com/~pdw/Mail-RFC822-Address.html) website for a Perl regex which is RFC 822 compliant ;)

- [longitudes and latitudes](https://www.hackerrank.com/challenges/detecting-valid-latitude-and-longitude)

Pretty complex regex :

```
\([\+\-]?(?!.*([\-\+\.,]\)))(?!\d{3,}\..*,)(?!0\d+\.,)(?!.*\.,)(?!9[1-9]\.)(?!90\.0*[1-9]0*,)(?!.*[\.\+\-].*[\.\+\-].*?,)(?!,.*[\.\+\-].*[\.\+\-].*?)(?!.*,\.)(?!.*,\d{4,}[\.]?)(?!.*,[2-9][0-9][0-9])(?!.*,1[8-9][1-9])(?!.*,180(\..*[1-9]+))(\d*\.?\d*,[\+\-]?\d*[\.]?\d*)\)
```

It worked on all the sample test cases but I have not tested this completely. The strategy is to start off with the most general case; \d+(\.\d+)? for numbers and then start adding negative lookaheads to customize.

For example the regex for the range [-90,+90] could be :

```
^[\+\-]?(?!\d{3,})(?!9[1-9])(?!90\..*[1-9]+)(?!.*[\.\+\-]$)(?!.*[\+\-].*[\-\+])\d+(\.\d+)?
```
