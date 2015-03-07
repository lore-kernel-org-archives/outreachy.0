X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Sat, 7 Mar 2015 06:47:40 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: somyaanand214@gmail.com
Message-Id: <7f73e395-3337-4182-9fa6-5da95a45ada7@googlegroups.com>
In-Reply-To: <20150306234957.GA26883@kroah.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
 <1425475385-2360-2-git-send-email-somyaanand214@gmail.com>
 <20150306234957.GA26883@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] Staging: rtl8188eu: Remove
 useless local variable
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1453_900048607.1425739660564"
X-Google-Token: EIyf7KcFzxQhxXX5c_E0
X-Google-IP: 14.139.196.3

------=_Part_1453_900048607.1425739660564
Content-Type: multipart/alternative; 
	boundary="----=_Part_1454_242128381.1425739660564"

------=_Part_1454_242128381.1425739660564
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, March 7, 2015 at 4:26:41 PM UTC+5:30, gregkh wrote:
>
> On Wed, Mar 04, 2015 at 06:53:01PM +0530, Somya Anand wrote: 
> > This patch removes a redundant variable "raid" and adds inline 
> > return statements. 
> > 
> > This issue is identified by the following coccinelle script: 
> > @@ 
> > expression ret; 
> > identifier f; 
> > @@ 
> > 
> > -ret = 
> > +return 
> >      f(...); 
> > -return ret; 
> > 
> > Signed-off-by: Somya Anand <somyaa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 24 
> +++++++----------------- 
> >  1 file changed, 7 insertions(+), 17 deletions(-) 
>
> I think I already applied an older version of this series, right? 
> Please resend the portions I missed that were different from the ones I 
> applied.

  No, Greg You have missed some. Actually Julia said to me that I should 
merge the patches.
  Never mind, I will send them again.

>
> thanks, 
>

 Somya 

>  
>

------=_Part_1454_242128381.1425739660564
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Saturday, March 7, 2015 at 4:26:41 PM UTC+5:30, gregkh wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Wed, Mar 04, 2015 at 06:53:01PM +0530, Somya Anand wrote:
<br>&gt; This patch removes a redundant variable "raid" and adds inline
<br>&gt; return statements.
<br>&gt; 
<br>&gt; This issue is identified by the following coccinelle script:
<br>&gt; @@
<br>&gt; expression ret;
<br>&gt; identifier f;
<br>&gt; @@
<br>&gt; 
<br>&gt; -ret =
<br>&gt; +return
<br>&gt; &nbsp; &nbsp; &nbsp;f(...);
<br>&gt; -return ret;
<br>&gt; 
<br>&gt; Signed-off-by: Somya Anand &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="wLb6lcNUjMoJ" rel="nofollow">somyaa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c | 24 +++++++-----------------
<br>&gt; &nbsp;1 file changed, 7 insertions(+), 17 deletions(-)
<br>
<br>I think I already applied an older version of this series, right?
<br>Please resend the portions I missed that were different from the ones I
<br>applied.</blockquote><div>&nbsp; No, Greg You have missed some. Actually Julia said to me that I should merge the patches.</div><div>&nbsp; Never mind, I will send them again.</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><br></blockquote><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">thanks,
<br></blockquote><div><br></div><div>&nbsp;Somya&nbsp;</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&nbsp;<br></blockquote></div>
------=_Part_1454_242128381.1425739660564--

------=_Part_1453_900048607.1425739660564--

