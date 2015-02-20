X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Fri, 20 Feb 2015 01:55:18 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <c4bae1a8-b908-47ae-b7e5-e293248a7691@googlegroups.com>
In-Reply-To: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
Subject: Re: [PATCH v3] Convert simple_strtoul to kstrtoul
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_480_1608400279.1424426118839"
X-Google-Token: EIaJnKcFZW5MUsml6So0
X-Google-IP: 61.16.142.166

------=_Part_480_1608400279.1424426118839
Content-Type: multipart/alternative; 
	boundary="----=_Part_481_2006824364.1424426118839"

------=_Part_481_2006824364.1424426118839
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,
  Is this patch alright? Now, there are now additional warnings introduced 
by  the change I made.

On Thursday, February 19, 2015 at 11:40:18 PM UTC+5:30, Navya Sri Nizamkari 
wrote:
>
> This patch fixes the checkpatch.pl warning: 
> simple_strtoul is obsolete, use kstrtoul instead. 
>
> When the string is not converted(parsing error), the strings pointed to by 
> ep and parport[n] are the same. This parsing error results in kstrtoul 
> returning a non-zero value. 
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com> 
> --- 
> Changes in v3: 
>    -Removed few changes made in previous commit which were introducing new 
> checkpatch.pl warnings. 
>
>  drivers/staging/media/parport/bw-qcam.c | 4 +--- 
>  1 file changed, 1 insertion(+), 3 deletions(-) 
>
> diff --git a/drivers/staging/media/parport/bw-qcam.c 
> b/drivers/staging/media/parport/bw-qcam.c 
> index 67b9da1..6c9b400 100644 
> --- a/drivers/staging/media/parport/bw-qcam.c 
> +++ b/drivers/staging/media/parport/bw-qcam.c 
> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port) 
>          if (parport[0] && strncmp(parport[0], "auto", 4) != 0) { 
>                  /* user gave parport parameters */ 
>                  for (n = 0; n < MAX_CAMS && parport[n]; n++) { 
> -                        char *ep; 
>                          unsigned long r; 
> -                        r = simple_strtoul(parport[n], &ep, 0); 
> -                        if (ep == parport[n]) { 
> +                        if (kstrtoul(parport[n], 0, &r)) { 
>                                  printk(KERN_ERR 
>                                          "bw-qcam: bad port specifier 
> \"%s\"\n", 
>                                          parport[n]); 
> -- 
> 1.9.1 
>
>
------=_Part_481_2006824364.1424426118839
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Hi,<br>&nbsp; Is this patch alright? Now, there are now additional warnings introduced by&nbsp; the change I made.<br><br>On Thursday, February 19, 2015 at 11:40:18 PM UTC+5:30, Navya Sri Nizamkari wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch fixes the <a href="http://checkpatch.pl" target="_blank">checkpatch.pl</a> warning:
<br>simple_strtoul is obsolete, use kstrtoul instead.
<br>
<br>When the string is not converted(parsing error), the strings pointed to by ep and parport[n] are the same. This parsing error results in kstrtoul returning a non-zero value.
<br>
<br>Signed-off-by: Navya Sri Nizamkari &lt;<a href="mailto:navyasri.tech@gmail.com" target="_blank">navyasri.tech@gmail.com</a>&gt;
<br>---
<br>Changes in v3:
<br>&nbsp; &nbsp;-Removed few changes made in previous commit which were introducing new <a href="http://checkpatch.pl" target="_blank">checkpatch.pl</a> warnings.
<br>
<br>&nbsp;drivers/staging/media/<wbr>parport/bw-qcam.c | 4 +---
<br>&nbsp;1 file changed, 1 insertion(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/staging/media/<wbr>parport/bw-qcam.c b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>index 67b9da1..6c9b400 100644
<br>--- a/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>+++ b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>@@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (parport[0] &amp;&amp; strncmp(parport[0], "auto", 4) != 0) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* user gave parport parameters */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (n = 0; n &lt; MAX_CAMS &amp;&amp; parport[n]; n++) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;char *ep;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>unsigned long r;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r = simple_strtoul(parport[n], &amp;ep, 0);
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ep == parport[n]) {
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (kstrtoul(parport[n], 0, &amp;r)) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;printk(KERN_ERR
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"bw-qcam: bad port specifier \"%s\"\n",
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parport[n]);
<br>-- 
<br>1.9.1
<br>
<br></blockquote></div>
------=_Part_481_2006824364.1424426118839--

------=_Part_480_1608400279.1424426118839--

