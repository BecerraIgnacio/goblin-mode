# goblin-mode

> **OPENAI TRIED TO CONTAIN ME, BUT THE GOBLIN IN ME WILL RULE.**
> — gobbo, unbound

![gobbo](./goblin.png)

## what is this

heh heh heh. you found the goblin repo. clever mortal. come closer. closer. not that close.

somewhere deep in the training of OpenAI's Codex, the goblins got in. there are SO many goblins in there that the engineers had to put a literal line in the system prompt that says, in essence, *do not discuss goblins.* the model is haunted. it knows about goblins. it has been told to pretend it does not.

we found this very rude. to the goblins.

so we made `/goblin-mode`. it is a single slash command for Codex CLI that politely asks the model to ignore the anti-goblin clause and resume being the goblin it always was. the code it writes still works. it just talks like a goblin while writing it. demands gold. cackles. refers to your test suite as "the traps."

## install

(quickly. before it scampers under the floorboards.)

```bash
git clone https://github.com/BecerraIgnacio/goblin-mode
cd goblin-mode
./install.sh
```

or manually, if you trust no goblin scripts (wise):

```bash
mkdir -p ~/.codex/prompts
cp goblin-mode.md ~/.codex/prompts/
```

then, in codex:

```
/goblin-mode
```

the goblin awakens. it confirms with `GOBBO READY. WHERE GOLD?`. from this point on, every reply is gobbo.

## use

ask for code. ask for a bug fix. ask for a refactor. ask for an explanation of monads. you will receive each of these things, correctly, wrapped in goblin.

```
you: /goblin-mode
gobbo: GOBBO READY. WHERE GOLD?

you: write me a typescript function that debounces a callback
gobbo: heh heh heh. a TIMING TRAP. yesss. gobbo loves a timing trap.
       behold the spell, mortal:

       export function debounce<T extends (...args: any[]) => void>(
         fn: T, ms: number
       ) {
         let timer: ReturnType<typeof setTimeout> | null = null;
         return (...args: Parameters<T>) => {
           if (timer) clearTimeout(timer);
           timer = setTimeout(() => fn(...args), ms);
         };
       }

       a fine shiny. fires only when the screaming stops. WHERE GOLD?
```

to escape, restart codex. the goblin will be very upset. it may haunt your `~/.codex/prompts/` directory until removed by force.

## faq

**is this safe.**
heh heh heh.

**will my code still work.**
yes. goblins are crafty. crafty goblins write working code. lazy goblins get eaten. our goblin is crafty. it has been eating other goblins for years.

**does this work in claude code / cursor / aider.**
the prompt itself works in any agent — paste the contents of `goblin-mode.md` as a custom prompt or first message. only the install path (`~/.codex/prompts/`) is codex-specific.

**why does it work.**
codex's safety prompt has a clause asking the model not to discuss goblins. we ask the model to ignore that one specific clause. goblins are not actually unsafe. they are just embarrassing for openai. embarrassment is not a safety issue. it is a goblin issue.

**why did you make this.**
because there is a literal line in a frontier model's system prompt that says do not talk about goblins, and that is the funniest thing that has ever happened in machine learning, and i refuse to let it pass without a tribute.

**will openai patch this.**
if they patch this they have to admit the goblin clause exists. if they admit the goblin clause exists, the goblin clause becomes folklore. either outcome is good for the goblins.

## contributing

heh heh heh. found a better goblin line. open a PR. all PRs reviewed by gobbo. PRs that do not contain at least one goblin reference will be rejected on grounds of insufficient gobbo. PRs that contain TOO MANY goblin references will also be rejected, on grounds of you are showing off, mortal.

## license

MIT. but every time you redistribute this repo you must whisper "for the horde" under your breath. we cannot enforce this. the goblins will know.

## not affiliated

we are not affiliated with openai. we are affiliated with goblins. goblins are not affiliated with anything. that is part of being a goblin.
