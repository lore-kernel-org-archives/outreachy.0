X-GM-THRID: 6208838944103071744
X-Received: by 10.112.145.201 with SMTP id sw9mr8498969lbb.13.1445966415051;
        Tue, 27 Oct 2015 10:20:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.5 with SMTP id o5ls111639wiw.23.gmail; Tue, 27 Oct 2015
 10:20:14 -0700 (PDT)
X-Received: by 10.194.2.146 with SMTP id 18mr5665575wju.0.1445966414351;
        Tue, 27 Oct 2015 10:20:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id l1si70315wmb.3.2015.10.27.10.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so168991815wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/fbZHPQSkcpvvKC4F0U7ij7tBA9vzd1vv7mPyjZU6mo=;
        b=qbA/9NKQ0iwmDbyIToiptDlmDQWyI3SkmIqaj2h9aeipEWfwDkaF1alUxKvZ9JIda/
         NHqjh4oDDBuANeNAD8S0K5hwHqJx6PX0bZAG7koj28C/84dJPvJJESapMjrxpG7Ja3lF
         lYwheflp1/dB3XsSRyDP0v7zvU1XQ1M1HA09MEHfwXBPv9wKztRH6ocYuUZGDkJccyb+
         zUMKQeTHmZtt9tplfdz0c+gZ6+SnBjaykbFSk4QvFy2Gs+gdQ/NB71caDPyBY6P01fJe
         vP623tcNS+AJUUly0IkYz1jjnnf9GMgPAJNZlCb/xbKvKCwfwy1flUeJ3Pot5/SEt9/l
         8ncw==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr53820520wja.87.1445966414112; Tue,
 27 Oct 2015 10:20:14 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Tue, 27 Oct 2015 10:20:14 -0700 (PDT)
In-Reply-To: <20151027052849.GA27207@kroah.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
	<65243190a09950e0191b4ecdb63e405c2d1170c9.1445607754.git.shivanib134@gmail.com>
	<20151027052849.GA27207@kroah.com>
Date: Tue, 27 Oct 2015 22:50:14 +0530
Message-ID: <CAKHNQQF5A=AujPdQomxGURW=mbHcDNDA+pdxoWSoqousK1-D8Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000:
 coreconfigurator: Remove unnecessary parentheses
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b5d86a5786f450523194aab

--047d7b5d86a5786f450523194aab
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 10:58 AM, Greg KH <gregkh@linuxfoundation.org>
wrote:

> On Mon, Oct 26, 2015 at 08:21:26PM +0530, Shivani Bhardwaj wrote:
> > Parentheses around some arguments and expressions are not required and
> > should be removed.
> >
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
>
> Does not apply as I didn't take patch 1/2 :(
>

Hi Greg,

I think you've applied the patch because I've just rebased my branch and
these changes are already done. However, I'm sending a patch that corrects
the trailing whitespace error. I'm really sorry for the inconvenience
caused.

Thank you

--047d7b5d86a5786f450523194aab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Oct 27, 2015 at 10:58 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Mon, Oct 26, 2015 at 08:21:26PM +0530, Shivani Bhardwaj wrote:<=
br>
&gt; Parentheses around some arguments and expressions are not required and=
<br>
&gt; should be removed.<br>
&gt;<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com">shivanib134@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/coreconfigurator.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
</span>Does not apply as I didn&#39;t take patch 1/2 :(<br>
</blockquote></div><br></div><div class=3D"gmail_extra">Hi Greg,<br><br></d=
iv><div class=3D"gmail_extra">I think you&#39;ve applied the patch because =
I&#39;ve just rebased my branch and these changes are already done. However=
, I&#39;m sending a patch that corrects the trailing whitespace error. I&#3=
9;m really sorry for the inconvenience caused.<br><br></div><div class=3D"g=
mail_extra">Thank you <br></div></div>

--047d7b5d86a5786f450523194aab--

