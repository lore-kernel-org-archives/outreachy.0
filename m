X-GM-THRID: 1526974119936
X-Received: by 10.236.1.200 with SMTP id 48mr10181592yhd.41.1424994047428;
        Thu, 26 Feb 2015 15:40:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.200 with SMTP id og8ls163616obb.15.gmail; Thu, 26 Feb
 2015 15:40:47 -0800 (PST)
X-Received: by 10.182.126.168 with SMTP id mz8mr10892342obb.9.1424994047098;
        Thu, 26 Feb 2015 15:40:47 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-ie0-x235.google.com (mail-ie0-x235.google.com. [2607:f8b0:4001:c03::235])
        by gmr-mx.google.com with ESMTPS id ux1si47925igb.1.2015.02.26.15.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:40:47 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c03::235 as permitted sender) client-ip=2607:f8b0:4001:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c03::235 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ie0-x235.google.com with SMTP id tr6so22904302ieb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 15:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tSS9sKMlaHpqgfkaIpvIP3tR85ICBuYDrysNs9sEVNA=;
        b=hERcqYxETrbaWIfEV95doKSwl7FCoCXkvnwokKLgeW0RR1ijk/++IGdhadeTREuxsJ
         U+xNDNhcw8s6kntF6TD3Xvb4kmG7YcTDstVTyRc3dYVgbEQmpxWjvU9GARc9H9sImUtv
         W0xbj9PAkihpjR0F3xnTiSYSpC2CE61riYt5UsJ620yTKQJglcJ8qKUerFGlPOxxJsw5
         l/mXbSzcoO24IloC7CNly/Otg7AEHoQSxuOdP8BkksEgjz6zNbhHbLYkZDEetWS4Ty8h
         xHrQOmmf0d1fNbh2bcF23MR5SUZV+xudn/kiWzqqzE8UZlKlXyiCNpQ1DKNjgCSKhYmJ
         YYRA==
MIME-Version: 1.0
X-Received: by 10.50.79.166 with SMTP id k6mr682948igx.27.1424994046960; Thu,
 26 Feb 2015 15:40:46 -0800 (PST)
Received: by 10.64.142.49 with HTTP; Thu, 26 Feb 2015 15:40:46 -0800 (PST)
In-Reply-To: <20150226182002.GA7025@kroah.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
	<20150226182002.GA7025@kroah.com>
Date: Fri, 27 Feb 2015 01:40:46 +0200
Message-ID: <CAPYvaxM7KhNmzThSQe285NmBv7v-zDkGFMgqT99ywdjivdTHqA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: lustre: Deleted space
 prohibited between function name and open parenthesis
From: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e013a114efa0c560510064712

--089e013a114efa0c560510064712
Content-Type: text/plain; charset=UTF-8

I compile patch before sending. I wonder , am i doing  it wrong?
I'm doing the compiling process as follows:
make drivers/staging/lustre/lnet/klnds/socklnd/


2015-02-26 20:20 GMT+02:00 Greg KH <gregkh@linuxfoundation.org>:

> On Fri, Feb 20, 2015 at 10:04:04PM +0200, Melike Yurtoglu wrote:
> > WARNING: space prohibited between function name and open parenthesis '('
> > Remove unnecessary space between function name and opening parenthesis.
> > That was found by running checkpatch
> >
> > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> > ---
> >
> > v2:changed the subject line and description
> >
> >  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448
> ++++++++++-----------
> >  1 file changed, 224 insertions(+), 224 deletions(-)
>
> Did you test this version?  I hesitate to even apply it considering I
> don't think you did :)
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h
>

--089e013a114efa0c560510064712
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I compile patch before sending. I wonder , am i doing=
=C2=A0 it wrong?<br><span id=3D"result_box" class=3D"" lang=3D"en"><span cl=
ass=3D"">I&#39;m doing</span> <span class=3D"">the</span> <span class=3D"">=
compiling</span> <span class=3D"">process</span> <span class=3D"">as follow=
s:<br></span></span></div><span id=3D"result_box" class=3D"" lang=3D"en"><s=
pan class=3D"">make drivers/staging/lustre/lnet/klnds/socklnd/<br><br></spa=
n></span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">20=
15-02-26 20:20 GMT+02:00 Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gr=
egkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Feb =
20, 2015 at 10:04:04PM +0200, Melike Yurtoglu wrote:<br>
&gt; WARNING: space prohibited between function name and open parenthesis &=
#39;(&#39;<br>
&gt; Remove unnecessary space between function name and opening parenthesis=
.<br>
&gt; That was found by running checkpatch<br>
&gt;<br>
&gt; Signed-off-by: Melike Yurtoglu &lt;<a href=3D"mailto:aysemelikeyurtogl=
u@gmail.com">aysemelikeyurtoglu@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; v2:changed the subject line and description<br>
&gt;<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/socklnd/socklnd.c=C2=A0 =C2=A0 | 4=
48 ++++++++++-----------<br>
&gt;=C2=A0 1 file changed, 224 insertions(+), 224 deletions(-)<br>
<br>
</span>Did you test this version?=C2=A0 I hesitate to even apply it conside=
ring I<br>
don&#39;t think you did :)<br>
<br>
Please fix up and resend.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--089e013a114efa0c560510064712--

