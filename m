X-GM-THRID: 6208838944103071744
X-Received: by 10.180.10.170 with SMTP id j10mr2963566wib.6.1445764201724;
        Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.229 with SMTP id p5ls358073wif.45.gmail; Sun, 25 Oct
 2015 02:10:01 -0700 (PDT)
X-Received: by 10.28.132.75 with SMTP id g72mr294718wmd.2.1445764201320;
        Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id q6si157287wiz.0.2015.10.25.02.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id fv8so79301410wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vFX0wxSRzL8Q8RLyD9bjaw0kFelrHeILH62vCzYdajY=;
        b=YD4UqmvMLXHKyItFV5O3L7LvWUVeXvV8VEohXcu9kc0/gISwDrBrbQDUrywxi3VbnR
         FICYMRaIXRGLH9qhIMhini2udiujsqFtZEnK+qI1k/l0+RpyQFzL5J7ch85QG3U3YA7u
         /dvwkPs1jjLNDOzgjYtx8bQ5tgSFNILCLVLMqVzYdRufVBtS00bw6L+FVZ1FXPKG/7ui
         4qWvJlCk1x9KqFvOffWkn/asYGy0jJ3vgJrhwejl85ex9eVqbJLhxxp1Cumi/4+tM/Vk
         h0w6BYnk2NZ2hv2mSwtsT6yyoD0oWBlPVvpFtHmg8gQI5uYqFz9vR6UoRlJtK+ebT1sS
         tFeQ==
MIME-Version: 1.0
X-Received: by 10.180.102.230 with SMTP id fr6mr12915061wib.66.1445764201240;
 Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 25 Oct 2015 02:10:01 -0700 (PDT)
In-Reply-To: <20151025012518.GC7654@kroah.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
	<a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
	<20151025012518.GC7654@kroah.com>
Date: Sun, 25 Oct 2015 14:40:01 +0530
Message-ID: <CAKHNQQG4FYpGnKve7Kd585v4ix4NqO3AgDRYahE-vhMm4pGbuQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000:
 coreconfigurator: Remove irrelevant wrapper function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=f46d04448073a4df680522ea357b

--f46d04448073a4df680522ea357b
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 25, 2015 at 6:55 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Oct 23, 2015 at 07:16:20PM +0530, Shivani Bhardwaj wrote:
> > Remove the function get_current_channel() and replace its calls by
> > get_current_channel_802_11n() as the former function's definition
> > involves only returning the value of latter function.
> > Semantic patch used to find out the issue:
> >
> > @@
> > identifier f,g;
> > @@
> >
> > *f(...) {
> >  return g(...); }
> >
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.c | 15 ++++++---------
> >  1 file changed, 6 insertions(+), 9 deletions(-)
>
> This replaces a previous patch you sent, right?
>
> I'm totally confused as to what patches you want applied, please resend
> all of them for this driver, the latest versions, with proper version
> information so I have a hint as to what to do...
>
> thanks,
>
> greg k-h
>

This is different. I'm sorry for not updating the version information in
the patches. I completely missed it. I'm sending them all again.
Thank you

--f46d04448073a4df680522ea357b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Oct 25, 2015 at 6:55 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Fri, Oct 23, 2015 at 07:16:20PM +0530, Shivani Bhardwaj wrote:<=
br>
&gt; Remove the function get_current_channel() and replace its calls by<br>
&gt; get_current_channel_802_11n() as the former function&#39;s definition<=
br>
&gt; involves only returning the value of latter function.<br>
&gt; Semantic patch used to find out the issue:<br>
&gt;<br>
&gt; @@<br>
&gt; identifier f,g;<br>
&gt; @@<br>
&gt;<br>
&gt; *f(...) {<br>
&gt;=C2=A0 return g(...); }<br>
&gt;<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com">shivanib134@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/coreconfigurator.c | 15 ++++++---------=
<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 9 deletions(-)<br>
<br>
</span>This replaces a previous patch you sent, right?<br>
<br>
I&#39;m totally confused as to what patches you want applied, please resend=
<br>
all of them for this driver, the latest versions, with proper version<br>
information so I have a hint as to what to do...<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div>=C2=A0</div></div>This is different. I&#39;m =
sorry for not updating the version information in the patches. I completely=
 missed it. I&#39;m sending them all again. <br></div><div class=3D"gmail_e=
xtra">Thank you<br></div></div>

--f46d04448073a4df680522ea357b--

