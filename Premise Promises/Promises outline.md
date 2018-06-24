# Premise: Promises

## Intro Slide 

## Why Promises Slide 

## Background on Promises Section 
- More than one slide
- Call it "Promises past and FUTURE" 
- Use the "say monad 3x" joke in here 

## Intro to PromiseKit 

## Intro to the Countries App 
- what it does 
- the vanilla version of all these calls 
- side trip: Codable with unknown keys 

## Refactor the network calls to return promises 
- what returning a promise looks like 
- you can return a promise OF A TYPE 
- warning: SEAL IN is the new hotness 
- `.fulfill` and `.reject` are different flavors of return values 
- wait, now, what about these `guards` that need to return a thing? 

## So what does this look like in the vc's? 
- `firstly` and `done` 
- nesting the promises? meh 
- un-nesting the promises into some other way 
- don't google translate, think about the problem in a promise-y way 

## Some other promise frameworks 

## Promises and Con-ises 
- seems like a lot of overhead for small or linear requests 
- learning curve in terms of thinking about your code in a promise-y way 
- syntax is clearly more readable, might make onboarding new people to complicated project easier 
- seems like a clear win when things are complicated, or chain together 
- `handler`s are garbage, let's just admit that 