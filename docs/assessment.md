
# Project workflows

## Bryan (2017)

*What problems can setwd() cause in your scripts and how do RStudio projects address them?*
    
  I actually already started doing that on my own because I thought it as a convenient way to shorten my code. Considering that I already did that while taking the first steps at learning R, I would imagine it is quite common. I certainly don't want anyone coming into my office and setting my computer on fire, so I'm going to listen to the advice in the blog.
    
  The big issue I gather with using setwd() is that it limits reproducibility because it sets the working directory as a local path, and will not be able to be transferred easily to another user's system. It might require someone else to sort through each line of the code to update the pathname to their own directory. This could be arduous depending on the number of code lines. In terms of efficiency alone, it should be avoided. 
    
  RStudio projects allow for an easily transferable format that will save the working directory information, settings, and create all the required elements necessary to run the scripts within. It also avoids installing new packages, though I'm not entirely sure about how that would happen in the first place (Something I will have to learn more about). Projects seem almost like a dmg to me, something that has all the components contained within to run without an issue, even when moving it from system to system. They also prevent the almost inevitable broken pathnames that result from adding a folder, or shifting files around on a local hard drive. Since the Project file runs directly from the folder where it is saved, it ensures that all data and files are neatly organized, and more importantly, all live in the same place.
    
  Furthermore, the here() function allows for a simple way to generate and save files to their respective directories without having to deal with cumbersome pathnames.

*When you call rm(list=ls()), what is removed from your environment?* 

  USER CREATED OBJECTS ARE **OBLITERATED**! That seems problematic indeed. Rebuilding objects takes time and thorough searching. So something like $a <- 6*6$ would no longer be $6*6$, and likely result in an error message. Also, it seems especially problematic if an object is a file path assignment.
  
  *What’s left over that restarting your R session would remove?* 
  
  rm(list=ls()) retains library calls invisibly. Restarting would require all libraries to be called again. Seems like sage advice to restart often and run from the top, because it is one more check in place to ensure the code is all working as intended, free of bugs.
  
  *What’s the keyboard shortcut for restarting your R session?*
  
  shift + command + 0, probably updated since the article because it's different in my RStudio version

# Version control

You either read Bryan (2018) or Braga et al. (2023). Answer the questions for the paper you read.

## Bryan (2018)

  *The basic git commands are commit, push, and pull. Which commands change happen locally (i.e., on your computer)? Which happen remotely?*
  
  **Commit** is a localized version of the project, hence only on my machine. (local)
  **Push** sends the commit to GitHub and can thus be shared openly with other people. (remote)
  **Pull** is used to fetch data that has been stored in the repo and then merge it with the local copy. (local)
   
  *Why do diffs work for source code (e.g., .R files) but not Word documents (i.e., .docx files)?*

  This is a text-based vs binary file problem. Unpacking ones and zeros from a .docx file requires specific software to be read. They are also much larger in size, which can slow down push and pull commands. And most importantly, since they can't provide meaningful insights into changes that are made. Text-based files are smaller and easily readable because they are just text and don't have anything fancy going on under the hood. They are just ASCII, after all.
  
  *Why is Markdown useful for GitHub repos?*

  First of all, it is intentionally simple and human-readable by it's design, and fairly easy to implement. And even more importantly, because it is text-based, it can be opened by a myriad of different software programs, enriching a collaborative working environment. The presentation is logical thanks to it's wide array of formatting options. An underappreciated, and likely underutilized feature of markdown, is that it can create webpages without all the complexity of html code. (I'd like to learn more about that last part.)
  
## Braga et al. (2023)

  *Imagine you’re working with a few collaborators on an analysis. Come up with two examples of Issues you might open. How would using Issues differ from communicating over email?*
    
  *What are three ways GitHub features can promote open science practices?*

