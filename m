X-GM-THRID: 447976833024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ba918805c55279ee
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Wed, 18 Feb 2015 23:22:15 -0800 (PST)
From: navya sri nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com, Julia Lawall <julia.lawall@lip6.fr>
Message-Id: <ab9e0e5f-4c84-4121-b1a9-17c357dbd1b7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1502190728450.2009@localhost6.localdomain6>
References: <20150218221315.GA14737@localhost> <6ffbe89f-e71b-4eec-93b4-b881d5aab211@googlegroups.com>
 <alpine.DEB.2.02.1502190728450.2009@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: fbtft: removed space
 before ')' and after '(' parenthesis.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3691_736275971.1424330535994"
X-Google-Token: EKeelqcFexGosA_4i0A0
X-Google-IP: 61.16.142.166

------=_Part_3691_736275971.1424330535994
Content-Type: multipart/alternative; 
	boundary="----=_Part_3692_789470583.1424330535994"

------=_Part_3692_789470583.1424330535994
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



Hi,
I'll make sure to reply inline from now.I'll send a new version of the 
patch for the ')' and space patch and an other patch for the ',' and space 
one.
Navya

On Thursday, February 19, 2015 at 12:04:38 PM UTC+5:30, Julia Lawall wrote:
>
> On Wed, 18 Feb 2015, navya sri nizamkari wrote: 
>
> > The open parenthesis error is with respect to the mdelay() function.  
>
> Hi, 
>
> I think this is in response to my mail.  When you respond, you should keep 
> a bit of text from the other person, and your patch if it is appropriate, 
> so that one can get the context. 
>
> I think that you need to redo your patch (send a v2) so that it only 
> includes the space and parenthesis change, and not the space and comma 
> change that you submitted previously.  Probably you did not commit your 
> file after the first change?  You can use git add -p to add just part of a 
> change, and then commit that.  More information is available here, at the 
> bottom of the page: 
>
> http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging 
>
> julia 
>
>
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/6ffbe89f-e71b-4eec-93b4- 
> > b881d5aab211%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> > 


------=_Part_3692_789470583.1424330535994
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>Hi,<br>I'll make sure to reply inline from now.I'll send a new version of the patch for the ')' and space patch and an other patch for the ',' and space one.<br>Navya<br><br>On Thursday, February 19, 2015 at 12:04:38 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Wed, 18 Feb 2015, navya sri nizamkari wrote:
<br>
<br>&gt; The open parenthesis error is with respect to the mdelay() function.&nbsp;
<br>
<br>Hi,
<br>
<br>I think this is in response to my mail. &nbsp;When you respond, you should keep 
<br>a bit of text from the other person, and your patch if it is appropriate, 
<br>so that one can get the context.
<br>
<br>I think that you need to redo your patch (send a v2) so that it only 
<br>includes the space and parenthesis change, and not the space and comma 
<br>change that you submitted previously. &nbsp;Probably you did not commit your 
<br>file after the first change? &nbsp;You can use git add -p to add just part of a 
<br>change, and then commit that. &nbsp;More information is available here, at the 
<br>bottom of the page:
<br>
<br><a href="http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging" target="_blank" rel="nofollow">http://git-scm.com/book/en/v2/<wbr>Git-Tools-Interactive-Staging</a>
<br>
<br>julia
<br>
<br>
<br>&gt; 
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups
<br>&gt; "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an
<br>&gt; email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="rJft_c7qKlsJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="rJft_c7qKlsJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href="http://groups.google.com/d/msgid/outreachy-kernel/6ffbe89f-e71b-4eec-93b4-" target="_blank" rel="nofollow">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>6ffbe89f-e71b-4eec-93b4-</a>
<br>&gt; b881d5aab211%<a href="http://40googlegroups.com" target="_blank" rel="nofollow">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; 
<br>&gt; </blockquote></div>
------=_Part_3692_789470583.1424330535994--

------=_Part_3691_736275971.1424330535994--

