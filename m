X-GM-THRID: 6399197627083128832
X-Received: by 10.25.145.17 with SMTP id t17mr932157lfd.25.1490078032242;
        Mon, 20 Mar 2017 23:33:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.83 with SMTP id d80ls433675lfd.37.gmail; Mon, 20 Mar
 2017 23:33:51 -0700 (PDT)
X-Received: by 10.46.87.80 with SMTP id r16mr4574847ljd.12.1490078031605;
        Mon, 20 Mar 2017 23:33:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x234.google.com (mail-lf0-x234.google.com. [2a00:1450:4010:c07::234])
        by gmr-mx.google.com with ESMTPS id e72si1097511wma.0.2017.03.20.23.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 23:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) client-ip=2a00:1450:4010:c07::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x234.google.com with SMTP id z15so63473117lfd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 23:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RnvrIKF0Z48wxv5n6i3k3HlHKq9a0m+YdBwxe1/9/eg=;
        b=O3WxZPn7/0bJrpBXWPxnM4KhItDYi9d5zokb8bN6l5CFaEWOTPHoNIi7+VwNsb/0O6
         ZV0Jkgl70LTaeK9TPkcjo/okw6TqdQc+Fq2lkaIxtfC2N/scMjwwp2TkiBKD0FQHMKd5
         Ir9PE0Mgtshw/qXuFQ4m5/t4i0kvlHP0B5DqENcgsVwfV06apBfIzsh2lkXNb9DVszLC
         fUZsALyWNRYXNPkEwru4ejI2cXGEwwNcA9G5M6wVuWxXpBbm/d5DqWAkJq7kHbUKOKkW
         ysUPT3K7RXP8R/ifVAuBis1a7SJALgDxY9ICtMY+iUCYe3pRUxV1DOH6EXxDw8f239xR
         sFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RnvrIKF0Z48wxv5n6i3k3HlHKq9a0m+YdBwxe1/9/eg=;
        b=j6V1SEua5vOT9BWOLAC9GCrg8nLkLEse32HKcokq4GtxlVtfS+FHFXXHiBKek7afGv
         fc9g6qzdfxHEiWvP5mYTi5lg5P0C2vNvb46EMyN6mqHZ3o28iCCMhTMHXDcW5LRgloua
         +ynSLrP38X//iUZYRuxRZjGP6hzSLOlxVRds+sF4yncBg7BEmRXWJnSOs0zkzhHc4esn
         PoyMjLJ+m4OGNXG108bsk5NIP815FSCe07eBD4Y0zoZ4hhaQeUMM2lDC8ov8r3wlIbGp
         RdDpWCaZ+uLDP6Jny9RGb/pS7PYqQFCM/aiqT18kYuRYBK8/PIFP33hYiLizG7xkWPtz
         jJzA==
X-Gm-Message-State: AFeK/H2FTphVRdw0Hp6W7ZyH4kkw7MVZ9o6mMYyzhnLpAhehP9PNz1Vg80pNjLjWJbERsQSPwHXBM++lo4c5sA==
X-Received: by 10.46.69.137 with SMTP id s131mr9202909lja.125.1490078031366;
 Mon, 20 Mar 2017 23:33:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Mon, 20 Mar 2017 23:33:50 -0700 (PDT)
In-Reply-To: <20170321061108.GA5524@kroah.com>
References: <20170319131455.25007-1-arushisinghal19971997@gmail.com> <20170321061108.GA5524@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 21 Mar 2017 12:03:50 +0530
Message-ID: <CA+XqjF_MC042ev5H1h4=4C7NNH1wJFyWxtekOtRe9Yybik2=-w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] staging:speakup: Multiple checkpatch issues,
To: Greg KH <gregkh@linuxfoundation.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon <chris@the-brannons.com>, 
	outreachy-kernel@googlegroups.com, Kirk Reiser <kirk@reisers.ca>, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, speakup@linux-speakup.org, 
	driverdevel <devel@driverdev.osuosl.org>, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary=001a114b10babf511c054b37d312

--001a114b10babf511c054b37d312
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 11:41 AM, Greg KH <gregkh@linuxfoundation.org>
wrote:

> On Sun, Mar 19, 2017 at 06:44:53PM +0530, Arushi Singhal wrote:
> > Improve readability by fixing multiple checkpatch.pl
> > issues in speakup driver.
> >
> > Arushi Singhal (2):
> >   staging: speakup: Moved OR operator to previous line.
> >   staging: speakup: spaces preferred around operator
>
> You have sent many different speakup patches, in different series, and
> then a bunch of individual patches all at once.  I have no idea what to
> apply here, what order they go in, or even which ones should be
> reviewed.
>
> So I've dropped all of them from my patch queue.  Please resend all of
> your outstanding speakup patches, in a _single_ patch series, so that
> they can be reviewed in the correct order.
>
> Hi Greg
I will resend them all in a single patch series.
I just want to confirm that  whether you have droped all my patches or only
speakup driver patches.
Thanks
Arushi


> thanks,
>
> greg k-h
>

--001a114b10babf511c054b37d312
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 21, 2017 at 11:41 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span class=3D"gmail-">On Sun, Mar 19, 2017 at 06:44:53PM +0530,=
 Arushi Singhal wrote:<br>
&gt; Improve readability by fixing multiple <a href=3D"http://checkpatch.pl=
" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt; issues in speakup driver.<br>
&gt;<br>
&gt; Arushi Singhal (2):<br>
&gt;=C2=A0 =C2=A0staging: speakup: Moved OR operator to previous line.<br>
&gt;=C2=A0 =C2=A0staging: speakup: spaces preferred around operator<br>
<br>
</span>You have sent many different speakup patches, in different series, a=
nd<br>
then a bunch of individual patches all at once.=C2=A0 I have no idea what t=
o<br>
apply here, what order they go in, or even which ones should be<br>
reviewed.<br>
<br>
So I&#39;ve dropped all of them from my patch queue.=C2=A0 Please resend al=
l of<br>
your outstanding speakup patches, in a _single_ patch series, so that<br>
they can be reviewed in the correct order.<br>
<br></blockquote><div>Hi Greg<br></div><div>I will resend them all in a sin=
gle patch series.<br></div><div>I just want to confirm that=C2=A0 whether<e=
m> </em>you have droped all my patches or only speakup driver patches.<br><=
/div><div>Thanks<br></div><div>Arushi<br></div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--001a114b10babf511c054b37d312--

