# Lab 1 Hello World

## Purpose
The purpose of this lab is to get hands-on experience with Github classroom and
create and submit a simple application for practice.

## Register with GitHub
- Refer to the document provided in the course about GitHub to correctly set up
  git.
- If you do not have a GitHub (https://www.github.com) account yet, you will
  need to register in order to complete the assignments for this course.
- You will need to setup the authentication method to access the
  repositories in the future.

  - [Generate your GitHub personal token][1] to use HTTPS protocol.
  - **Must have the repo group checked for your token**

[1]:https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

## Create a directory for this course
Somewhere on your system, create a directory that you intend to use for this
course if you have not done so already. It is nice to have one place to look
for all of your work. Giving it an obvious name such as **cop3530** will make
it easier to find. You make create a subdirectory like **projects** and
**labs** for better organization of course related contents.

## git and Github setup
Here is a [cheat sheet][2] of git commands that will be helpful in working with
the git version control system.

[2]: https://education.github.com/git-cheat-sheet-education.pdf

- When you are prompt a roster, find your name and select it to link your
  GitHub account that you are currently logged in to the name shown in the
  roster. **Never skip this step if your name is present!** If your name is not
  listed, skip this step and email me your GitHub account name and your full
  name, and I will add you manually.
- Click "Accept this assignment" button. This will create a new private
  repository for you to submit your work. You will need to wait a couple second
  for the system to create your repository and refresh to see the link to your
  repository.
- Near the top right of your browser, you'll see a green "Code" button.
- Click the button and copy the URL of your repository. HTTPS protocol is
  preferred in this course for simplicity. Remember that you need to [generate a
  personal token][1] to be used in the place of password.
- In the command line environment (terminal), change into the directory you
  created for this course to hold all projects.
- Run `git clone URL_COPIED_ABOVE`.
- You will be prompt for user name and password to authenticate. Use your
  username and personal token to authenticate log in using HTTPS.

This will create a directory called lab1-YOUR_ID that will contain this
README.md file along with some supporting files.

If you have never used Git before, you'll need to run a few one-time
configuration commands.

- Add your name and email, at a minimum.

  - For example, type the following (substitute your details for the
    placeholders):

    ```
    git config --global user.name "Your Name"
    git config --global user.email youremail@students.uwf.edu
    ```

    **Please use your UWF email account rather than a personal one here.** It
    does not need to match the email used used to register your GitHub account.

This setup process should only have to be done once, not each time you make a
repository.

## Development

1. Coding

    Using a text editor of your choice, create a Hello world application that
    prints your Github account, followed by a colon and your last name, first name
    in **UpperCamelCase** in the first line.

    Print **Hello World!** in the next line. **Case and format matter!**

    E.g. If your GitHub account were UsEr123 (case matters, hyphen allowed) and
    your name was John Doe, your output would look like this:

    ```
    UsEr123:JohnDoe
    Hello World!
    ```

2. Test your program

    A Makefile is provided to enable automation
    - run **make** to compile your **main** executable
    - run **make test-output** to see if your output is valid

3. "Saving" work

    **You do not need to upload anything to Canvas!**

    Once your program is working as expected, go back to your command line. Type
    `git status`. You should see your new files. Type `git add -A`, to tell git to
    stage all changes.

    The stage is basically a list of files (or blocks of code if using advanced
    features such as patches) that you intend to commit to the repository.

    Now if you type `git status` again, you should see all updated files added to
    the stage.

    You may now use `git commit -m "message"` to commit and provide a message
    directly in the command. Substitute `message` with your commit message, which
    is the short description you what you have added in this commit.

    The "add, commit" process outlined above isn't something that you need to wait
    until your done with the whole project to do. **Do it frequently to save your
    progress.**

## Incremental development
Repeat steps 1 to 3 to add small chunks of logic to your project until all
tests pass.


## Submitting work
To post the work you've completed back to Github for me (or a TA) to review and
grade, simply run `git push origin main` (assuming you already committed the
code locally).

For projects, which are graded against a rubric.

## Important notes
You should add and commit frequently and provide clear commit comments to be
able to trace your changes later.

Push your code when you are asking my help or when you passed all local tests
and want to summit. As pushing will trigger auto-grading, **DO NOT PUSH TOO
FREQUENTLY** so we will run out of quota for auto-grading. You can use push and
pull to synchronize your code for convenience but do not use it too frequently!


## Grading Information:
**Grading is test based! Program that fails to compile and provide correct
output will get ZERO POINT**

- Breakdown 10 total

  + 10 GitHub Auto-grading

    - 3 program compiles ("make" runs correctly)
    - 7 Correct output ("make test-output" runs correctly)

## Checking Auto-grading Results:

After you push your code, GitHub will automatically run tests on your
submission. To view the results:

1. On your GitHub repository page, click the :arrow_forward: **Actions** tab at
   the top
2. Click on the most recent workflow run (it will show your commit message)
3. Wait until the run finishes (showing either ✅ or ❌)
4. Scroll down to "Autograding summary" section to see the summary
5. It will display:
   - **Points:** Your score (e.g., 10/10)
   - ✅ All tests passed! or ❌ Some tests failed
6. If tests failed, click the "Autograding" button above to see detailed logs:
   - Expand the **education/autograding@v1** step to see which tests failed
   - Look for :x: marks to identify specific failures
