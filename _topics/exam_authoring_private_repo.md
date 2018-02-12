---
topic: "exam authoring: private repo"
desc: "How to author an exam in a private repo, then migrate seamlessly into a public course website"
---


To author an exam within the UCSB CS Course repo github pages framework, you can follow this workflow.  

1.  Create an empty private repo (for example, under your own github id&mdash;if you request the academic discount from Github, you can get private repos
    at no cost.   As a suggestion: name it the same as your course, but with `-exams` or `-PRIVATE` as a suffix.
    
2.  Clone that empty repo.

3.  Add your regular public repo as an additional "remote".

4. Pull from the public repo.

5. Push to your private repo.  
    This does NOT publish the material online as long as you do not enable github pages for the site (don't do that.)
    Note that "not publishing" is currently the default.  (If that every changes, this workflow will have to be updated
    to reflect that, but I doubt they would make that change for private repos, since that would obviously leak information.)

6. Work in your private repo to author the exam.  To see it (and generate PDFs, or print copies), run Jekyll locally using the
    `./jekyll.sh` script, and access <http://localhost:4000> to see your exam.
    
7.  OPTIONAL If/when you are ready to publish your exam online (i.e. after all grading is complete), 
    do a `git pull` from the public repo, then a `git push` to the public repo.  
    
   
```bash
Phillips-Mac-mini:ucsb-cs56-w18 pconrad$ git clone git@github.com:pconrad/ucsb-cs56-w18-exams.git
Cloning into 'ucsb-cs56-w18-exams'...
warning: You appear to have cloned an empty repository.
Phillips-Mac-mini:ucsb-cs56-w18 pconrad$ cd ucsb-cs56-w18-exams/
Phillips-Mac-mini:ucsb-cs56-w18-exams pconrad$ git remote add w18 git@github.com:ucsb-cs56-w18/ucsb-cs56-w18.github.io.git
Phillips-Mac-mini:ucsb-cs56-w18-exams pconrad$ git pull --allow-unrelated-histories w18 master
From github.com:ucsb-cs56-w18/ucsb-cs56-w18.github.io
 * branch            master     -> FETCH_HEAD
Phillips-Mac-mini:ucsb-cs56-w18-exams pconrad$ ls
Gemfile			_hwkWIP			calendar.css		hwk.css			moment.min.js
Gemfile.lock		_includes		exam.css		hwk.js			setup.sh
_config.yml		_info			exam.js			index.md		site.css
_exam			_lab			flipclock.css		jekyll.sh		site.js
_hwk			_layouts		flipclock.js		jquery-dateFormat.js	static
Phillips-Mac-mini:ucsb-cs56-w18-exams pconrad$ 
```
