# Mason does .dotfiles

## dotfiles
---
dotfiles are what make up your personalised system. These are mine.

After moving to a two mac setup one for home and one for the office I quickly became enraged that if I was hacking my home laptop over the weekend. I would lose all my shortcuts and aliases when I got into work.

## install
---
This is a very simple way of getting into the whole "share my dotfiles" thing. If you want some more complex and fully featured things check out [dotfiles.github.com](http://dotfiles.github.com/) for some awesome guides.

This is all pretty much taken from Michael Smalley's post [here](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/), I just hacked it up and changed it a bit to suit my needs.

1. Open up terminal
2. type in `cd ~/` this will make sure you are in your home folder.
3. type `mkdir .dotfiles`, this will create your dotfiles folder
4. create a `makelinks.sh` file in this `.dotfiles` folder
5. this script is heavily commented and should be fairly easy to understand, if you want to carry on as default the only thing you need to change is the `files="bash_profile gemrc gitconfig"` line. In here you just need to add in the dotfiles names separated by a space.
6. Move your dotfiles from your home directory into the new `.dotfiles` folder. 
7. Run `sh makelinks.sh` in your terminal. You should see some comments this means its working.
8. Voilà!

## Github setup
---
Well done guys you have successfully created a dotfiles folder full of your lovely goodies.
Next you just need to push it up to github so that you can retrieve on any other *nix computers. First off create a github account if you haven't already.

Create a new repo and name it whatever you like (dotfiles is nice and descriptive). Back in your terminal make sure you are in your .dotfiles folder by typing `cd ~/.dotfiles` then type `git init` if you then type in `git status` you should see that all your files are there ready for commit. 

This next command should only be used at the start of a project for the initial commit, I would personally be more granular on further commits, type in `git add .` this will add all files to the be staged within the folder. 

Now time for the initial commit `git commit -m "Initial commit of awesome dotfiles project"`, now if you type `git status` you should see something like this `nothing to commit, working directory clean`. 

Now its time for you to push it all up to the great ship Github,
if you visit your repo page in github you should see some instructions simply type these into your terminal and then when you refresh the page you should see all your folders and files.

## adding to another mac
---
Now all this is awesome for nerd points but for it to be useful you will want to add this new dotfiles to your second mac. Simply open up terminal type `cd ~/`, then in github grab the address near the top of the page should look something like this `git@github.com:samjbmason/dotfiles.git` and in your terminal type `git clone git@github.com:samjbmason/dotfiles.git` this will clone your dotfiles repo down to your home directory. 

Next simply run the makelinks.sh script again and you should be all up and running.

## pulling down changes
---
Say you added a cool feature to one of your files and pushed it up to your repo to get that on the next machine just cd into the .dotfiles folder and type `git pull` this will pull down any changes to that repo.

## thanks
I want to thank [Michael Smalley](http://blog.smalleycreative.com/) for writing up the original post to this and expelling it all so nicely. Also [Zach Holman](https://github.com/holman) for putting up his dotfiles for inspiration.

