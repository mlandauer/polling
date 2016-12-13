# Longitudinal polling

Just a static prototype to work through some ideas - **it doesn't actually work or do what it says it does**.

## Development

You'll need Ruby 2.3.1. Then after cloning the code,

```
cd polling
bundle
middleman
```

Then point your web browser at http://localhost:4567/

## Deploying

```
middleman build
middleman deploy
```

## And a loose collection of some thoughts on this...

### How it might work
* Get a link to a poll, answer some questions, show something meaningful about
  how your results compare to other people
* Potential follow up questions:
  * Collect demographic information (for demographic weighting of poll results) - or do we want to ask these questions at the start? How important is usefulness of data versus putting people off at the start?
  * After completing poll optionally give your email address (always kept private),
    only used to inform the user of other polls that they could answer
  * Opt in to follow-up qualitative research
* Offer incentives? (Prize draws, social incentives, products, straight
  financial incentives)
* Ability to do phone polling with the same tool - sample randomly from phone
  numbers in a geographic area - how do you do this with mobile phones rather
  than landlines?
* Ability to crowd-source phone polling or perhaps some kind of intervention
  polling where people intervene in some other kind of situation where they
  might be able to randomly sample people
* Randomise the order of questions
* Randomise which form of the statement the user is given (the "normal" form or the "converse" form)
* We should make the results of all polls available in an anonymous form linked
  up via a randomised person id so we could potentially do the equivalent of
  longitudinal studies with this data. How do we ensure that it's not possible
  to de-identify the data? What if we provide the covariance matrix or something like that? How much would we restrict the kind of analysis you could do?
* Wouldn't it be great if people didn't need to remember a password? It's likely
  that the main way people would return to the platform as a "panel" participant
  is that they would get an email alert saying that there is a new poll to join.
  The links in the email could automatically log them in so there is never any
  need to remember a password. What do with forwarded emails in this case? We
  want people to be able forward emails safely without revealing
* Mobile first - does this mean one question per screen
* Be able to come back to the questionnaire later easily. Remember your state
  with cookies. Save your state by adding your email?
* Extra security for private information - what's the best way of doing this?
* Detailed privacy explanation for users
* Explanation of how researchers can use the platform
* Tell the user how long it's going to take to fill out the questions
* Show the progress of the user
* Back button should work on multi-step question
* State of questions answered so far should be encoded in the url
* Give the user some option if they don't understand the question - maybe an option to say "I don't understand the question" or "This question isn't clear" or perhaps some link to some more explanation of what the question means or what the words in the question means.
* Show the user the answers they've given and allow them to change them at the end
* It should be possible to link to the page showing your results (at a high level) without giving away the details of how you answered each question
* Use cookies, IP address to help identify whether people are trying to fill out the form multiple times
* Perhaps have a question "have you ever filled this out before?" towards the end just to add that little bit of extra honesty check. Of course if people really want to deceive they can but this little extra thing is likely to dissuade the casual person filling it out more than once. Or maybe they just want to see the results again and lost the details so they do it again but we don't want to use their results.
* Mail the results to yourself
* Possible demographic questions:
  * What year were you born?
  * Sex (not just binary - reflect the ABS data?)
  * Which of the following news sources do you read most often?
  * How did you vote in the last federal election?
  * Education?
  * Income?
  * Language spoken at home? - useful for dealing with inherent bias of the poll being in the English language
  * Access to internet? - It's an online poll. Let's see how this biases things
  * Where do you live? Postcode? Suburb name? (Small enough to be useful - big enough to keep things private)


### Some questions
* What other ways can we get more people to join the "panel" of poll people?
* What kind of numbers do we need in a questionnaire for results to be
  statistically significant?
* If we make the results available for free what incentive would poll creators
  have to financially support the platform?
* Crowd-funding - for what, how and why?
* Should we only include people who are of voting age?

### Some other things that will need to get done
* Contact polling company to discover how to design questions, size of study,
  number of questions, cost of research.
* Look at the ABS geographic areas to understand how we can ask for where people
  live without potentially making them identifiable.

### Some potentially useful references
* [Data Analysis Australia: Sampling and Weighting – A Better Practice Guide for Practitioners](http://www.daa.com.au/analytical-ideas/sampling-and-weighting/)
* [Data Analysis Australia: Political Polls](http://www.daa.com.au/analytical-ideas/political-polls/)
* [YouGov Australia](https://au.yougov.com/)
* [Australian Market & Social Research Society (AMSRS)](http://www.amsrs.com.au/)
* [List of AMSRS members](http://www.amsrs.com.au/documents/item/244) and this list [converted to a spreadsheet](https://docs.google.com/spreadsheets/d/1fseT6F8Tpszo0BJP932GWQEhtFA6SsREAoTuAf5EJjI/edit?usp=sharing)
* [Vote Compass methodology](http://voxpoplabs.com/votecompass/methodology.pdf)
* [TableBuilder at the Australian Bureau of Statistics](https://www.censusdata.abs.gov.au/webapi/jsf/login.xhtml)
