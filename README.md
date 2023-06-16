<h1 align="center">Nrich CVE parser</h1>
    <h2>Description</h2>
    This script a nrich result parser for monitoring all ip with CVE.
</br>
<hr>
    <h2>Possibilities</h2>
    <li>Diff CVE result;</li>
    <li>Rewritten output nrich(more readable)</li>
    <li>Sending the comparison result by email(Reporter);</li>

</br>
<hr>
    <h2>Install</h2>
    <i>Download script:</i>
    <pre>git clone https://github.com/J3eyond/nrich_cve_parser</pre>
    <i>Enter the folder:</i>
    <pre>cd nrich_cve_parser/</pre>
    <i>Config the vars bellow(run.sh):</i>
    <pre>
path="*<i>Your full path to this script</i>*"
reporter_path="*<i>Path to Reporter folder*"    
    </pre>
    <i>Give permission to launch:</i>
    <pre>chmod +x ip.sh</pre>
    <i>Create file <b>ip.txt</b> with your targets.</i>
    <br>
    <br>
    <i>Install <b>Requirements!</b></i>
<br>
<hr>
    <h2>Launch</h2>
    <pre>./run.sh</pre>
<hr>
    <h2>Requirements</h2>
    <li><b><a href="https://gitlab.com/shodan-public/nrich"> nrich</a></b></li>
    <li><b><a href="https://github.com/J3eyond/Reporter">Reporter</a></b></li>