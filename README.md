# batch_unsubscribe

Dead-simple mass unsubscription from github repositories.

## The problem

Have you ever been added to some github organization and suddenly got spammed with tons of notifications from projects you don't care about? me too.

You can unsubscribe manually one-by-one but this is tedious, you can also change your settings so you don't automatically subscribed but this also affects individual repos you become a contributor to, which are mostly the ones you're interested in watch.

### The solution

Ideally github should differentiate between adding a collaborator to a specific repo and being added to an organization in order to prevent mass-subscriptions but since I'm not willing to bet or wait for that here's a simple bash script to automate the process using the API.

## Usage

When you get added to an organization you receive an email that looks like this:

    Hey there, we're just writing to let you know that you've automatically started watching several repositories on GitHub.
    
    You'll receive notifications for all issues, pull requests, and comments that happen inside the repository. If you would like to stop watching any of these repositories, you can manage your settings here:
    
      https://github.com/someguy/someapp/subscription
      https://github.com/someguy/myproject/subscription
      https://github.com/someguy/otherstuff/subscription
      https://github.com/someguy/anotherapp/subscription
      https://github.com/anotherguy/morecrap/subscription
      https://github.com/anotherguy/ohgod/subscription
      https://github.com/anotherguy/makeitstop/subscription
      https://github.com/someguy/helloagain/subscription

    You automatically watched these repositories because you've been given push access to them.
    
    Thanks!

Save that list of URLs to a file, let's call it "repos.txt" then download the script and run:

    bash batch_unsubscribe.bash git2samus < repos.txt  ## change "git2samus" for your github username

And presto!

## Dependencies

You'll need [curl](http://curl.haxx.se/) and a relatively recent [bash](http://www.gnu.org/software/bash/) (v3 should be ok, let me know if there's any issues).

It can be made to run with [wget](http://www.gnu.org/software/wget/) but I don't have it installed on this system, maybe I'll add it later.
