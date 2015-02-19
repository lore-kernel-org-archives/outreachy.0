X-GM-THRID: 697096470528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae4d3b7517c21de2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Thu, 19 Feb 2015 09:14:56 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <9e53858e-81ab-4822-ad2c-73cde876ec19@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502191747570.3284@hadrien>
References: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com> <alpine.DEB.2.10.1502191738120.3284@hadrien> <CAAJLE+1BsZaDcMkR_VVV+e9VasJSwhnx1umbTEMtroFnGKebYA@mail.gmail.com>
 <alpine.DEB.2.10.1502191747570.3284@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: Convert
 simple_strtoul to kstrtoul
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_696_1702794328.1424366096143"
X-Google-Token: EJC0mKcF8f4QAHj3l8w0
X-Google-IP: 61.16.142.166

------=_Part_696_1702794328.1424366096143
Content-Type: multipart/alternative; 
	boundary="----=_Part_697_1497190774.1424366096143"

------=_Part_697_1497190774.1424366096143
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I didn't understand the part where you said 'Probably if it fails for any 
reason, then you should skip the current value.'Could you explain it to me?

On Thursday, February 19, 2015 at 10:17:06 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Thu, 19 Feb 2015, navya sri nizamkari wrote: 
>
> > When the conversion is not successful the final string (whose pointer 
> > is ep) and the initial string are the same(a parsing error).kstrtoul 
> > returns a non-zero value for parsing and overflow errors.Maybe I 
> > should add an addtional check for the return value of kstrtoul to be 
> > EINVAL. 
>
> Probably if it fails for any reason, then you should skip the current 
> value.  This explanation should be part of the commit message of the 
> patch. 
>
> julia 
>
>
> > On Thu, Feb 19, 2015 at 10:10 PM, Julia Lawall <julia....@lip6.fr 
> <javascript:>> wrote: 
> > > On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote: 
> > > 
> > >> This patch fixes the following checkpatch.pl warning: 
> > >> 
> > >> WARNING: simple_strtoul is obsolete, use kstrtoul instead 
> > > 
> > > simple_strtoul and kstrtoul don't have the same functionality.  You 
> have 
> > > to argue carefully why this change is correct.  That is, under what 
> > > circumstances does simple_strtoul end up with the value in its second 
> > > argument being the same as its first argument, and under what 
> > > circumstances does kstrtoul give a non zero result. 
> > > 
> > > julia 
> > > 
> > >> Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
>
> > >> --- 
> > >>  drivers/staging/media/parport/bw-qcam.c | 4 +--- 
> > >>  1 file changed, 1 insertion(+), 3 deletions(-) 
> > >> 
> > >> diff --git a/drivers/staging/media/parport/bw-qcam.c 
> b/drivers/staging/media/parport/bw-qcam.c 
> > >> index 67b9da1..1b81244 100644 
> > >> --- a/drivers/staging/media/parport/bw-qcam.c 
> > >> +++ b/drivers/staging/media/parport/bw-qcam.c 
> > >> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port) 
> > >>       if (parport[0] && strncmp(parport[0], "auto", 4) != 0) { 
> > >>               /* user gave parport parameters */ 
> > >>               for (n = 0; n < MAX_CAMS && parport[n]; n++) { 
> > >> -                     char *ep; 
> > >>                       unsigned long r; 
> > >> -                     r = simple_strtoul(parport[n], &ep, 0); 
> > >> -                     if (ep == parport[n]) { 
> > >> +                     if (kstrtoul(parport[n],0,&r)) { 
> > >>                               printk(KERN_ERR 
> > >>                                       "bw-qcam: bad port specifier 
> \"%s\"\n", 
> > >>                                       parport[n]); 
> > >> -- 
> > >> 1.9.1 
> > >> 
> > >> -- 
> > >> You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > >> To unsubscribe from this group and stop receiving emails from it, 
> send an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > >> To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > >> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/1424363402-10346-1-git-send-email-navyasri.tech%40gmail.com. 
>
> > >> For more options, visit https://groups.google.com/d/optout. 
> > >> 
> > 
>

------=_Part_697_1497190774.1424366096143
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">I didn't understand the part where you said 'Probably if it fails for any reason, then you should skip the current
value.'Could you explain it to me?<br><br>On Thursday, February 19, 2015 at 10:17:06 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 19 Feb 2015, navya sri nizamkari wrote:
<br>
<br>&gt; When the conversion is not successful the final string (whose pointer
<br>&gt; is ep) and the initial string are the same(a parsing error).kstrtoul
<br>&gt; returns a non-zero value for parsing and overflow errors.Maybe I
<br>&gt; should add an addtional check for the return value of kstrtoul to be
<br>&gt; EINVAL.
<br>
<br>Probably if it fails for any reason, then you should skip the current
<br>value. &nbsp;This explanation should be part of the commit message of the
<br>patch.
<br>
<br>julia
<br>
<br>
<br>&gt; On Thu, Feb 19, 2015 at 10:10 PM, Julia Lawall &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="D6xH08D_r2AJ" rel="nofollow">julia....@lip6.fr</a>&gt; wrote:
<br>&gt; &gt; On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote:
<br>&gt; &gt;
<br>&gt; &gt;&gt; This patch fixes the following <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning:
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; WARNING: simple_strtoul is obsolete, use kstrtoul instead
<br>&gt; &gt;
<br>&gt; &gt; simple_strtoul and kstrtoul don't have the same functionality. &nbsp;You have
<br>&gt; &gt; to argue carefully why this change is correct. &nbsp;That is, under what
<br>&gt; &gt; circumstances does simple_strtoul end up with the value in its second
<br>&gt; &gt; argument being the same as its first argument, and under what
<br>&gt; &gt; circumstances does kstrtoul give a non zero result.
<br>&gt; &gt;
<br>&gt; &gt; julia
<br>&gt; &gt;
<br>&gt; &gt;&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="D6xH08D_r2AJ" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; &gt;&gt; ---
<br>&gt; &gt;&gt; &nbsp;drivers/staging/media/<wbr>parport/bw-qcam.c | 4 +---
<br>&gt; &gt;&gt; &nbsp;1 file changed, 1 insertion(+), 3 deletions(-)
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; diff --git a/drivers/staging/media/<wbr>parport/bw-qcam.c b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>&gt; &gt;&gt; index 67b9da1..1b81244 100644
<br>&gt; &gt;&gt; --- a/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>&gt; &gt;&gt; +++ b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>&gt; &gt;&gt; @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; if (parport[0] &amp;&amp; strncmp(parport[0], "auto", 4) != 0) {
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* user gave parport parameters */
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for (n = 0; n &lt; MAX_CAMS &amp;&amp; parport[n]; n++) {
<br>&gt; &gt;&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char *ep;
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; unsigned long r;
<br>&gt; &gt;&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; r = simple_strtoul(parport[n], &amp;ep, 0);
<br>&gt; &gt;&gt; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (ep == parport[n]) {
<br>&gt; &gt;&gt; + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (kstrtoul(parport[n],0,&amp;r)) {
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; printk(KERN_ERR
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "bw-qcam: bad port specifier \"%s\"\n",
<br>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; parport[n]);
<br>&gt; &gt;&gt; --
<br>&gt; &gt;&gt; 1.9.1
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; --
<br>&gt; &gt;&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; &gt;&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="D6xH08D_r2AJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; &gt;&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="D6xH08D_r2AJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; &gt;&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424363402-10346-1-git-send-email-navyasri.tech%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424363402-10346-1-git-send-<wbr>email-navyasri.tech%40gmail.<wbr>com</a>.
<br>&gt; &gt;&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; &gt;&gt;
<br>&gt;
<br></blockquote></div>
------=_Part_697_1497190774.1424366096143--

------=_Part_696_1702794328.1424366096143--

