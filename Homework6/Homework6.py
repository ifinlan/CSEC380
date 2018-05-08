import urllib2
content = urllib2.urlopen("http://csec380-core.csec.rit.edu:86/index.php").read()

print content
"""<script>alert("ALERT!");</script>
<script>alert(document.cookie):</script>"""