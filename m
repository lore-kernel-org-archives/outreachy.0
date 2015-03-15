X-GM-THRID: 8110844411904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,263920401fbf6365
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.234 with SMTP id p70mr57126258yhd.56.1426416787024;
        Sun, 15 Mar 2015 03:53:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.51.82 with SMTP id t76ls2326763qga.26.gmail; Sun, 15 Mar
 2015 03:53:06 -0700 (PDT)
X-Received: by 10.236.47.136 with SMTP id t8mr58250144yhb.44.1426416786882;
        Sun, 15 Mar 2015 03:53:06 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-vc0-x22c.google.com (mail-vc0-x22c.google.com. [2607:f8b0:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id ek9si119796vdd.0.2015.03.15.03.53.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::22c as permitted sender) client-ip=2607:f8b0:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::22c as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vc0-f172.google.com with SMTP id le20so1364276vcb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 03:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mBsWWhmiXHajAe8fVAeXMUkiZ7ZaL5e0vHQSMEFoCek=;
        b=j9zndNx+Q2MoET/ExIsVQ9i9oeicU3lbqztPaot5Iw+8EFeBTNhh8nqh1u3XEduaPp
         tzgGZnYz56o/RbPrWWXpzqVDviIyt0LMoFLbpfjqY/k+YYVHYa5Fs1Zm15KQSKCOgnXd
         0W1en45FmQkJWufzFUADHChXNZj1MbOq+khlE6WrwP4KMtCfPDpO4YTC49Q1dn7gI2vO
         STUIsqdal2px93/x0Jcw6z9qGzV0YHSrfWeUl5qtKMEChq7PW6+lZQeguci4O1dNBPev
         JzYNhhg3Zog0Jtsmip65B4bKvc7CaZaoIxA7UEHOcVMDbq4c2xsKUN5bbzWx0lMDhXYD
         RDAg==
MIME-Version: 1.0
X-Received: by 10.52.36.39 with SMTP id n7mr18865225vdj.2.1426416786736; Sun,
 15 Mar 2015 03:53:06 -0700 (PDT)
Received: by 10.52.102.232 with HTTP; Sun, 15 Mar 2015 03:53:06 -0700 (PDT)
In-Reply-To: <20150315104059.GA20220@kroah.com>
References: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
	<1426267392-27533-2-git-send-email-somyaanand214@gmail.com>
	<20150315104059.GA20220@kroah.com>
Date: Sun, 15 Mar 2015 16:23:06 +0530
Message-ID: <CANPzvBD-5=Zk80P7qbBmBe_sy02Lj+cGANbPsvmd1M==fd7yjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: sm750fb: Move assignment
 out of if statement
From: Somya Anand <somyaanand214@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=20cf307c9deae00b2305115189d6

--20cf307c9deae00b2305115189d6
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 15, 2015 at 4:10 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 13, 2015 at 10:53:12PM +0530, Somya Anand wrote:
> > Checkpatch.pl suggest to avoid assignment in if statement.
> >
> > This patch moves assignments out of the if statement and place
> > it before the if statement. This is done using following coccinelle
> > script.
> >
> > @@
> > expression E1;
> > identifier p;
> > statement S;
> > @@
> > - if ((p = E1))
> > + p = E1;
> > + if (p)
> >         S
> >
> > Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750_hw.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
>
> Doesn't apply to my tree :(
>
Ok I will check it again.

Somya

--20cf307c9deae00b2305115189d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 15, 2015 at 4:10 PM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Fri, Mar 13, 2015 at 10:53:12PM +0530, Somya Anand wrote:<br>
&gt; Checkpatch.pl suggest to avoid assignment in if statement.<br>
&gt;<br>
&gt; This patch moves assignments out of the if statement and place<br>
&gt; it before the if statement. This is done using following coccinelle<br=
>
&gt; script.<br>
&gt;<br>
&gt; @@<br>
&gt; expression E1;<br>
&gt; identifier p;<br>
&gt; statement S;<br>
&gt; @@<br>
&gt; - if ((p =3D E1))<br>
&gt; + p =3D E1;<br>
&gt; + if (p)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0S<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/sm750_hw.c | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
</span>Doesn&#39;t apply to my tree :(<br></blockquote><div>Ok I will check=
 it again.=C2=A0</div><div><br></div><div>Somya=C2=A0</div></div><br></div>=
</div>

--20cf307c9deae00b2305115189d6--

