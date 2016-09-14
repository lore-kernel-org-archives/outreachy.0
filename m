X-GM-THRID: 6329968789142110208
X-Received: by 10.107.169.66 with SMTP id s63mr1548873ioe.16.1473844610334;
        Wed, 14 Sep 2016 02:16:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls658312otw.27.gmail; Wed, 14 Sep
 2016 02:16:50 -0700 (PDT)
X-Received: by 10.13.231.68 with SMTP id q65mr1067311ywe.58.1473844609963;
        Wed, 14 Sep 2016 02:16:49 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id w132si341303ywg.1.2016.09.14.02.16.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id b204so586722qkc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1Wgxv943Cv9qXdKqd7MA2/xiUdPKEiFieJ67LcpNyRE=;
        b=GShp1wYMGk7qm7N6mp7rM54CZerU3shVeIVGN9nWuKHG4jgPZ65OUSF8QAsb19Rt2o
         jQFGLpeKbN09Bw5YTBrI+3G2N+8j7ZLIL68LMxSkgqurfvatk00luRM2cXRTYi7NIZPb
         A6QIdYkMUGTpWC9GjNXfNairPwMPZDdfKnP4D+VmsVhLPfika9UUPb0vbVKSvjlbTpcz
         uYeTn7s15QXA/u5XfZgViPdsVWPKvs+QYQrOwQegcVymZrEcoaHY6yKevNvrJkTvT9ZJ
         HMXCZlZH1I0eQG2kbIZ188oXzWt8QSz3X5oJN/BZNSFfvAaWJzehRWShr1/KgpGrDbA1
         zxcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1Wgxv943Cv9qXdKqd7MA2/xiUdPKEiFieJ67LcpNyRE=;
        b=XUQxR8014u/W3DkdAOFH2lRazy6rZjjrOU1kTvOYh2DqW7ZcYeeFoN9z0yIDbpheVQ
         fyKOtk97OAnAHwzIEH7k0iPfJ/TFX4Qp1njbpayvQ8d2SaXDJIXPgKkkn6F4yawRsZ7j
         ZCdCfMMRaUhVO2nBmE/viLmA0EhpsYJA9WEB8ksQ+NZI3c//L1Rd/JIVDa++cy5SDV1V
         e1oKV61JN0XpSydy3ZqSEV13P2y6ZYwM3GqVm2pRAUB+tJNBuPcG94NSfVWMQYOTBGfR
         V9yOQCgG9rF8UmySCW6JChbFbU+t4fBXnNNQJ4NnzxiLCRQFTmzhquDk4kScUAJjMiNs
         fJEQ==
X-Gm-Message-State: AE9vXwOtD7laLfRmfhqU+Rydwo+ywvGeG+0pBLDvT9dbwk+mVdbDx5WDKK5Q8b/1HTlBD35Ziu6O2tOzJAkNjA==
X-Received: by 10.55.186.65 with SMTP id k62mr1710943qkf.204.1473844609722;
 Wed, 14 Sep 2016 02:16:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Wed, 14 Sep 2016 02:16:19 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609140741050.3395@hadrien>
References: <cover.1473809550.git.gs051095@gmail.com> <alpine.DEB.2.10.1609140741050.3395@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 14 Sep 2016 14:46:19 +0530
Message-ID: <CAOCi2DFsEPQjsn8Ua60A7vbYbeUiqO6Z1R_6i_Pk5pLQQB7KVQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Cleaning xgifb/vb_setmode.c
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
	gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary=94eb2c0441ce6aaed0053c743035

--94eb2c0441ce6aaed0053c743035
Content-Type: text/plain; charset=UTF-8

Hi
On Wed, Sep 14, 2016 at 11:11 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Wed, 14 Sep 2016, Gargi Sharma wrote:
>
> > This patchset fixes various issues that come up in the checkpatch in
patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion when a
one patch was sent fixing the checkpatch issue of moving && operator to
previous line.
>
> This is actually a v2, because eg the first one was sent already.

I'm sorry for all the stupid question but will the revision patches I send
now to correct the commit subjects be v3 ?

Thanks,
gargi

>
> julia
>
> >
> > Gargi Sharma (6):
> >   staging: xgifb: move AND operator for logical continuation
> >   staging: xgifb: remove unnecessary parentheses
> >   staging: xgifb: remove blank line after open brace
> >   staging: xgifb: add spaces around |
> >   staging: xgifb: remove blank line before closing brace
> >   staging: xgifb: fix alignment for if arguments
> >
> >  drivers/staging/xgifb/vb_setmode.c | 48 ++++++++++++++----------------
--------
> >  1 file changed, 17 insertions(+), 31 deletions(-)
> >
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/cover.1473809550.git.gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--94eb2c0441ce6aaed0053c743035
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br>On Wed, Sep 14, 2016 at 11:11 AM, Julia Lawall &lt;<=
a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.=
fr</a>&gt; wrote:<br>&gt;<br>&gt; On Wed, 14 Sep 2016, Gargi Sharma wrote:<=
br>&gt;<br>&gt; &gt; This patchset fixes various issues that come up in the=
 checkpatch in patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia&#39;=
s suggestion when a one patch was sent fixing the checkpatch issue of movin=
g &amp;&amp; operator to previous line.<br>&gt;<br>&gt; This is actually a =
v2, because eg the first one was sent already.<br><br><div>I&#39;m sorry fo=
r all the stupid question but will the revision patches I send now to corre=
ct the commit subjects be v3 ?=C2=A0<div><br></div><div>Thanks,</div><div>g=
argi<br><div><br></div><div>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt;=
 &gt; Gargi Sharma (6):<br>&gt; &gt; =C2=A0 staging: xgifb: move AND operat=
or for logical continuation<br>&gt; &gt; =C2=A0 staging: xgifb: remove unne=
cessary parentheses<br>&gt; &gt; =C2=A0 staging: xgifb: remove blank line a=
fter open brace<br>&gt; &gt; =C2=A0 staging: xgifb: add spaces around |<br>=
&gt; &gt; =C2=A0 staging: xgifb: remove blank line before closing brace<br>=
&gt; &gt; =C2=A0 staging: xgifb: fix alignment for if arguments<br>&gt; &gt=
;<br>&gt; &gt; =C2=A0drivers/staging/xgifb/vb_<wbr>setmode.c | 48 +++++++++=
+++++----------------<wbr>--------<br>&gt; &gt; =C2=A01 file changed, 17 in=
sertions(+), 31 deletions(-)<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; 2.9.=
2<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message becau=
se you are subscribed to the Google Groups &quot;outreachy-kernel&quot; gro=
up.<br>&gt; &gt; To unsubscribe from this group and stop receiving emails f=
rom it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@g=
ooglegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@<wbr>google=
groups.com</a>.<br>&gt; &gt; To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">outreachy-k=
ernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this discussion on th=
e web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/c=
over.1473809550.git.gs051095%40gmail.com" target=3D"_blank">https://groups.=
google.com/d/<wbr>msgid/outreachy-kernel/cover.<wbr>1473809550.git.gs051095=
%<wbr>40gmail.com</a>.<br>&gt; &gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" target=3D"_blank">https://groups.google.com=
/d/<wbr>optout</a>.<br>&gt; &gt;</div></div></div></div>

--94eb2c0441ce6aaed0053c743035--

