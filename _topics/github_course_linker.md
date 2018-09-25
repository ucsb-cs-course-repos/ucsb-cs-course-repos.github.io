---
topic: "Github: course linker"
desc: "A homegrown tool to enable self-signup for github course orgs"
---

We have a UCSB home-grown tool that allows instructors to set up a Github Course
organization, link it to a course roster, and then give students the ability to
join that course organization directly.    This avoids the administrative overhead
of having course staff have to add in each student one at a time, or write their own
script to do it.    

The tool is here:

* <https://ucsb-cs-github-linker.herokuapp.com/>

# Getting instructor access

As an instructor, you need to have the "courses" menu added to your account.  To get this:

1. Use your existing github.com account to log in to the tool.
2. Then contact Richert or Phill and let them know you need to have instructor access added to your account.
3. Refresh the page, and you should see a "Courses" menu at the top of the screen.

# Setting up a course (as an instructor)

You need instructor access to the app first (see above)

1. Create a github organization for your course
2. Invite the special machine user `phtcon` as an "owner" of your course.
   * `phtcon` is a second github account registered to Phill Conrad that the server uses to invite students to join the organization.
3. Contact Phill to have him accept the invitation to phtcon
4. Log in to <https://ucsb-cs-github-linker.herokuapp.com/>, go to the Courses menu, and add your course.
5. Upload your course roster from Egrades to the app.
6. You can then invite student to join the organization.

Once they join, you'll be able to see their status in the app, and also download a CSV file with the association between their github id and their roster information: name, university email address and student id number.

# Instructions for Students

1. Make sure that your university email address (the one on your instructor's course roster) is added to your github account as a verified email address.  
   * It does not have to be the primary email address, but it does need to be associated with your github account and verified.
2. Visit <https://ucsb-cs-github-linker.herokuapp.com/>, log in with your github id and find the link for your course.
3. Click the link for your course; as long as you are on the roster, this will generate an invitation to join the course organization.
   * If the app doesn't find a match on the course roster, you'll be given appropriate instructions as to what to do to resolve the issue.


