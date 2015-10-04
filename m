X-GM-THRID: 6200896862154653696
Date: Sun, 4 Oct 2015 03:19:01 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: shivanib134@gmail.com
Message-Id: <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
In-Reply-To: <20151002125909.GB32540@sudip-pc>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
 <20151002125909.GB32540@sudip-pc>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2964_1578207158.1443953941411"
X-Google-Token: EJX6w7AFBUN2SG7qesw0
X-Google-IP: 124.124.47.116

------=_Part_2964_1578207158.1443953941411
Content-Type: multipart/alternative; 
	boundary="----=_Part_2965_864639065.1443953941411"

------=_Part_2965_864639065.1443953941411
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thanks, Sudip! And for last two messages I did make use of mutt, I don't 
know why doesn't it show up.
And, does this mean that every time I compile, I must use allmodconfig?
Thank you

On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee wrote:
>
> On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote: 
> > Hi Sudeep! I'm having trouble with inline mode of communication, I think 
> > I'm doing it wrong. I'm not getting exactly difference between top-post 
> and 
> > inline way, I've been warned about this before as well. I'll learn as 
> soon 
> > as possible. I've sent my .config file. You can check it. 
> Ok, now I understand why you are getting the warning. :) 
> In your .config CONFIG_STAGING_BOARD is not selected. So staging/board 
> is not included in the build and as a result the modules on which board 
> is dependent are also not built. So in this scenario when you try to do 
> make M=drivers/staging/board it gives warning. To test properly try with 
> make allmodconfig. 
>
> regards 
> sudip 
>

------=_Part_2965_864639065.1443953941411
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Thanks, Sudip! And for last two messages I did make use of mutt, I don&#39;t know why doesn&#39;t it show up.<br>And, does this mean that every time I compile, I must use allmodconfig?<br>Thank you<br><br>On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote:
<br>&gt; Hi Sudeep! I&#39;m having trouble with inline mode of communication, I think 
<br>&gt; I&#39;m doing it wrong. I&#39;m not getting exactly difference between top-post and 
<br>&gt; inline way, I&#39;ve been warned about this before as well. I&#39;ll learn as soon 
<br>&gt; as possible. I&#39;ve sent my .config file. You can check it. 
<br>Ok, now I understand why you are getting the warning. :)
<br>In your .config CONFIG_STAGING_BOARD is not selected. So staging/board
<br>is not included in the build and as a result the modules on which board
<br>is dependent are also not built. So in this scenario when you try to do
<br>make M=drivers/staging/board it gives warning. To test properly try with
<br>make allmodconfig.
<br>
<br>regards
<br>sudip
<br></blockquote></div>
------=_Part_2965_864639065.1443953941411--

------=_Part_2964_1578207158.1443953941411--

