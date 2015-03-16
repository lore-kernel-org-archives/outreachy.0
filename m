X-GM-THRID: 8319960875008
X-Received: by 10.112.77.101 with SMTP id r5mr9574718lbw.4.1426519817289;
        Mon, 16 Mar 2015 08:30:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.75.197 with SMTP id e5ls647007wiw.49.canary; Mon, 16 Mar
 2015 08:30:16 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr9318101wjb.0.1426519816771;
        Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id i8si716247wif.1.2015.03.16.08.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id w10so46566181wix.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=40YWF/LNaIVH8OpbJrVjCx1BSDlkga/pxQo+x7g8EvA=;
        b=F2x2jmmz751o9NMMAemt1n/DYrPFPRLXMWip9RS/p1eLck0KTQqw+JFgT90OP+kTvN
         LkKhNSYQoGOZHj92vvygHn7HaDoIO905cLkJq7xA3pDIolnvStkZMAr4LshrMQypR519
         dT0v/f8vgET8m4oNEIoD4Cm8JPq2jPzwLw1iSf7VfgZrng6bj4xcvpNwND86uOoR+lGu
         bqkSoygN0LThfv1rb7uvdU5IMUq8Orrv61lJo4VBm/32uIvWLAGJ07qAAt57CDuook7i
         CFUnPmFia8JZVZyExH3hprQtk/iGmU+yM8xb6k/FXOvPkbs1EPfexNeCjqVs3YtzStnL
         GW0g==
MIME-Version: 1.0
X-Received: by 10.194.223.103 with SMTP id qt7mr118634426wjc.35.1426519816640;
 Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 08:30:16 -0700 (PDT)
In-Reply-To: <20150316152824.GB26262@kroah.com>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
	<20150316152824.GB26262@kroah.com>
Date: Mon, 16 Mar 2015 21:00:16 +0530
Message-ID: <CAK-LDb+u8DZDtsnX+DDexCxLYHkEh57-Nsy5v=XJZZaMn8at6g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3b7c4ef9ec505116986f5

--001a11c3b7c4ef9ec505116986f5
Content-Type: text/plain; charset=UTF-8

On Mar 16, 2015 8:58 PM, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 16, 2015 at 07:59:01PM +0530, Vaishali Thakkar wrote:
> > For simple modules that contain a single spk_synth without
> > any additional setup code then ends up being a block of
> > duplicated boilerplate. This patch adds a new macro,
> > module_spk_synth(), which replaces the
> > module_init()/module_exit() registrations with template
> > functions.
> >
> > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> > ---
> > v1 : Here, I know, I can go for changing all files
> >      and make them use module_spk_synth at a single point.
> >      But as I am sending this patch as a sample patch, I
> >      am changing only one file to show the use of helper
> >      macro. I will go for changing all other such cases in
> >      this driver if this patch will be accepted.
> > v2 : Use module_driver macro in definition of helper macro
> >
> >  drivers/staging/speakup/speakup_audptr.c | 12 +-----------
> >  drivers/staging/speakup/spk_types.h      | 12 ++++++++++++
> >  2 files changed, 13 insertions(+), 11 deletions(-)
>
> Please make this a patch series, the first one adding the new macro, and
> the rest converting all of the different modules to use it.

Ok. Will do it.

Thank You

> thanks,
>
> greg k-h

--001a11c3b7c4ef9ec505116986f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Mar 16, 2015 8:58 PM, &quot;Greg KH&quot; &lt;<a href=3D"mailto:gregkh@l=
inuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, Mar 16, 2015 at 07:59:01PM +0530, Vaishali Thakkar wrote:<br>
&gt; &gt; For simple modules that contain a single spk_synth without<br>
&gt; &gt; any additional setup code then ends up being a block of<br>
&gt; &gt; duplicated boilerplate. This patch adds a new macro,<br>
&gt; &gt; module_spk_synth(), which replaces the<br>
&gt; &gt; module_init()/module_exit() registrations with template<br>
&gt; &gt; functions.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Vaishali Thakkar &lt;<a href=3D"mailto:vthakkar199=
4@gmail.com">vthakkar1994@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; v1 : Here, I know, I can go for changing all files<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 and make them use module_spk_synth at a singl=
e point.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 But as I am sending this patch as a sample pa=
tch, I<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 am changing only one file to show the use of =
helper<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 macro. I will go for changing all other such =
cases in<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 this driver if this patch will be accepted.<b=
r>
&gt; &gt; v2 : Use module_driver macro in definition of helper macro<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 drivers/staging/speakup/speakup_audptr.c | 12 +-----------<=
br>
&gt; &gt;=C2=A0 drivers/staging/speakup/spk_types.h=C2=A0 =C2=A0 =C2=A0 | 1=
2 ++++++++++++<br>
&gt; &gt;=C2=A0 2 files changed, 13 insertions(+), 11 deletions(-)<br>
&gt;<br>
&gt; Please make this a patch series, the first one adding the new macro, a=
nd<br>
&gt; the rest converting all of the different modules to use it.</p>
<p>Ok. Will do it. </p>
<p>Thank You</p>
<p>&gt; thanks,<br>
&gt;<br>
&gt; greg k-h<br>
</p>

--001a11c3b7c4ef9ec505116986f5--

