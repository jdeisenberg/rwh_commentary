*It might help to look at this as moving much of your debugging up front.* I look at this as a case of “pay now” or “pay later”, and paying now is almost always cheaper.

Quick quiz: This causes an error `[1,2,3] :: Int` How can you make the type specification correct? 

*Haskell doesn’t have a notion of a one-element tuple.* That’s because it would make it would make the parentheses in `(3 + 4) * 5` ambiguous -- are you multiplying by an expression or a one-element tuple?

*Our discussion of lists and tuples mentioned how we can construct them...* the `:` and `++` operators don’t work on tuples, and there is no analogous operator.

In the section **Passing an Expression to a Function**: you will learn later about the `$` operator, which lets you avoid having lots of parentheses.

The book shows you how to write an `add` function (`add a b = a + b`). I have never liked that as an example; I think “why are you asking me to write a function to add, when the language already has an operator for that?!” Instead, I think writing an average function is more interesting; it’s not that much more complicated, and it also introduces multiple operations.

*Next, our function applies itself recursively.* For those of you have not programmed before, *applies itself recursively* means that the function calls itself.  This sounds weird at first, to have something defined in terms of itself, but trust me; it works. It’s sort of a programming version of [the Droste effect](https://en.wikipedia.org/wiki/Droste_effect).

In the exercise to write the `lastButOne` function, I have cheated horribly by using the `length` function, which was introduced in chapter 2. (See the `lastButOne.hs` file in the `chapter02_files` directory of this repository.)

