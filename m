X-GM-THRID: 9883922464768
X-Received: by 10.236.70.67 with SMTP id o43mr15511849yhd.40.1427372495061;
        Thu, 26 Mar 2015 05:21:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.7 with SMTP id e7ls629374igi.27.gmail; Thu, 26 Mar 2015
 05:21:34 -0700 (PDT)
X-Received: by 10.66.102.100 with SMTP id fn4mr15560856pab.19.1427372494752;
        Thu, 26 Mar 2015 05:21:34 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-ie0-x22f.google.com (mail-ie0-x22f.google.com. [2607:f8b0:4001:c03::22f])
        by gmr-mx.google.com with ESMTPS id u2si524732igh.0.2015.03.26.05.21.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 05:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c03::22f as permitted sender) client-ip=2607:f8b0:4001:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4001:c03::22f as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ie0-x22f.google.com with SMTP id vj10so44793282iec.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 05:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=n2yg7i2rirTaLshXFDwH/t0tXib+UQvC671YgZJJk/o=;
        b=jYZvPWf2H+mGCBBmLFcuVkzjQbtoeBbxvWKnGsWpFTbQSnezL+pdw4YYml/FSiUc7p
         LjS89sprKC5M8+8RVrjiUWEk7LuhQoCPK4vjasnaVhIwonbqAXSZB7p/1oehGtfUdEbW
         bMKJgsjvNpgrhlpqUbJUk8mgC1bsC0B3cLHzR37am/O0YdIhctVbRGEfnE/S9FhXtj0Q
         DzC5DDSOUribyTq2szaKJ2ViiG+Pz6Jds4rLOKgdwv91ICaNyO5+Vi6n897+iAz3YHQS
         X+zbiourGdoAX3hrrl65UIDgW2IJPQhIW1/zsaFwngme5CSz7gAqdrM4sb2YsKBT/5S0
         JMcg==
X-Received: by 10.42.172.9 with SMTP id l9mr37563619icz.6.1427372494627; Thu,
 26 Mar 2015 05:21:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.82.85 with HTTP; Thu, 26 Mar 2015 05:21:14 -0700 (PDT)
In-Reply-To: <20150326093849.GA20410@kroah.com>
References: <1427328243-6391-1-git-send-email-helen.fornazier@gmail.com> <20150326093849.GA20410@kroah.com>
From: Helen Fornazier <helen.fornazier@gmail.com>
Date: Thu, 26 Mar 2015 09:21:14 -0300
Message-ID: <CAPW4XYaXLDQZJbmaoqnRjYsevS8QYYXH4gkrUPYFRP6oRN8ytQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] block: Use kcalloc instead of kzalloc
 to initialize array
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=90e6ba6e81d2812d780512300e09

--90e6ba6e81d2812d780512300e09
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 26, 2015 at 6:38 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 25, 2015 at 09:04:03PM -0300, Helen Fornazier wrote:
> > This patch fixes checkpatch.pl warning:
> >
> > WARNING: Prefer kcalloc over kzalloc with multiply
> > +       bio_slabs = kzalloc(bio_slab_max * sizeof(struct bio_slab),
> GFP_KERNEL);
> >
> > Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> > ---
> >  block/bio.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> The outreachy application process can only accept patches made in
> drivers/staging/* so there's nothing I can do with these block patches,
> sorry.
>
> greg k-h
>


No problem, I suspected about it after I sent the patches.

-- 
Helen Fornazier

--90e6ba6e81d2812d780512300e09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 26, 2015 at 6:38 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Wed, Mar 25, 2015 at 09:04:03PM -0300, Helen Fornazier wrote:<b=
r>
&gt; This patch fixes <a href=3D"http://checkpatch.pl" target=3D"_blank">ch=
eckpatch.pl</a> warning:<br>
&gt;<br>
&gt; WARNING: Prefer kcalloc over kzalloc with multiply<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bio_slabs =3D kzalloc(bio_slab_max * sizeo=
f(struct bio_slab), GFP_KERNEL);<br>
&gt;<br>
&gt; Signed-off-by: Helen Fornazier &lt;<a href=3D"mailto:helen.fornazier@g=
mail.com">helen.fornazier@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 block/bio.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
</span>The outreachy application process can only accept patches made in<br=
>
drivers/staging/* so there&#39;s nothing I can do with these block patches,=
<br>
sorry.<br>
<br>
greg k-h<br>
</blockquote></div><br><br>No problem, I suspected about it after I sent th=
e patches.<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signa=
ture">Helen Fornazier<br></div>
</div></div>

--90e6ba6e81d2812d780512300e09--

