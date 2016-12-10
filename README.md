# Longitudinal polling

Just a static prototype to work through some ideas

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

* Get a link to a poll, answer some questions, show something meaningful about
  how your results compare to other people
* After completing poll optionally give your email address (always kept private),
  only used to inform the user of other polls that they could answer
* Offer incentives? (Prize draws, social incentives, products, straight
  financial incentives)
* Opt in to follow-up qualitative research
* Collect demographic information (for demographic weighting of poll results)
* Ability to do phone polling with the same tool - sample randomly from phone
  numbers in a geographic area - how do you do this with mobile phones rather
  than landlines?
* Ability to crowd-source phone polling or perhaps some kind of intervention
  polling where people intervene in some other kind of situation where they
  might be able to randomly sample people
* What other ways can we get more people to join the "panel" of poll people?
* Allow different ways that answers can be grouped and organised to make them
  useful to people
* Allow order of questions to be randomised
* Allow two forms of questions to be randomised (the question and its opposite
  form to avoid biases in the framing of the questions)
* What kind of numbers do we need in a questionnaire for results to be
  statistically significant?
* We should make the results of all polls available in an anonymous form linked
  up via a randomised person id so we could potentially do the equivalent of
  longitudinal studies with this data. How do we ensure that it's not possible
  to de-identify the data?
* If we make the results available for free what incentive would poll creators
  have to financially support the platform?
* Crowd-funding - for what, how and why?
* Contact polling company to discover how to design questions, size of study,
  number of questions, cost of research.
* Look at the ABS geographic areas to understand how we can ask for where people
  live without potentially making them identifiable.
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
