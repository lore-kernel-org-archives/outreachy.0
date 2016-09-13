X-GM-THRID: 6329551284190838784
X-Received: by 10.176.3.135 with SMTP id 7mr1558488uau.5.1473748378026;
        Mon, 12 Sep 2016 23:32:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls573929otw.9.gmail; Mon, 12 Sep 2016
 23:32:57 -0700 (PDT)
X-Received: by 10.31.228.133 with SMTP id b127mr19081775vkh.7.1473748377670;
        Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id 83si1297413ywc.4.2016.09.12.23.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id n66so13470010qkf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=D1JMTmC6Sk7ELnyaE4dV7MjGyhlKdUcVJzvzgoHnS6s=;
        b=rXu3K69Lv4iOlA9QZGVNg9jyqAP2ZpOWYVfSU+TlkenZCKsXVPnpxg/v82fNvtTsRY
         xguK32y52pXnQHU7PW4/2rtjyFLDjKtqpUG3HWv6LgHNq0S55rbc8x10QX+goO7a2Caa
         MfNM0bYk0E7B4HpmiTfJkl4GWaKR/+qDo92pIzCz0N/tXt96vr1WgEd9KthSFh3H6poh
         pfMtK75O6abfu3t91dlC7rcy527YsUqyX+hePv+UxbmAPuJjWXf356tRY8zokTBq7vq9
         YHMAHeOteAqmcd+/z7AOwBqMJQhfY4DeoD+UKojwbCGbQS4PgpDKolq4nZl5uJW8I+y2
         NL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=D1JMTmC6Sk7ELnyaE4dV7MjGyhlKdUcVJzvzgoHnS6s=;
        b=J6JKsAgare4HM1uA3p2eDJg55XJAE9Ef62Jmc4wSHl6W2HKbyoHMsK8zCRAlbrU1ry
         Nlt37GikBgY+qA6XDcE4BKvpHIW+tp3baPo0UsAgBn2lpIYBMJWIhUt2VB7e+nGEA37z
         4TcPGf3EAASo9Kv62Xf6OgvedA7etet/kCGczIOfybCNz20CewJtOlnES6RNmcOOY+Ic
         O/ZC4123M3XqiQC8jOi5O+JeiYbS2Sw9UpTGgeOKyG2cr+EapA4AWtR7qodOkLXVFAMi
         bXIAoYNLfKzydpwCCcEPW0+9xDNoIF+uV4DIpj+dl3R7qv6Boe+baaqYcM/2l2EUy07R
         QP4A==
X-Gm-Message-State: AE9vXwMiGD/OWo/F+NGDJW1rv10FijUI12hIqt7A2DGR7HB1KL43vlL/3FPNbqci0SCJmEn0CIHxQEHbad1/Qw==
X-Received: by 10.55.186.65 with SMTP id k62mr25041442qkf.204.1473748377416;
 Mon, 12 Sep 2016 23:32:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Mon, 12 Sep 2016 23:32:27 -0700 (PDT)
In-Reply-To: <20160912205630.GG5245@var.home>
References: <20160912205044.26537-1-gs051095@gmail.com> <20160912205630.GG5245@var.home>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 13 Sep 2016 12:02:27 +0530
Message-ID: <CAOCi2DEPRk4ns1XrPi1EBdmmhJrBm5DBqR0do87w2Vq7byhc9w@mail.gmail.com>
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul by kstrtoul
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
	Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary=94eb2c0441ce863949053c5dc8db

--94eb2c0441ce863949053c5dc8db
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 2:26 AM, Samuel Thibault <
samuel.thibault@ens-lyon.org> wrote:
>
> Hello,
>
> Gargi Sharma, on Tue 13 Sep 2016 02:20:44 +0530, wrote:
> > simple_strtoul is obsolete and hence has been replaced by kstrtoul as
> > mentioned by checkpatch.pl
>
> Please note the details.
>
> > diff --git a/drivers/staging/speakup/kobjects.c
b/drivers/staging/speakup/kobjects.c
> > index 528cbdc..884b2eb 100644
> > --- a/drivers/staging/speakup/kobjects.c
> > +++ b/drivers/staging/speakup/kobjects.c
> > @@ -126,6 +126,7 @@ static ssize_t chars_chartab_store(struct kobject
*kobj,
> >       int do_characters = !strcmp(attr->attr.name, "characters");
> >       size_t desc_length = 0;
> >       int i;
> > +     int err;
> >
> >       spin_lock_irqsave(&speakup_info.spinlock, flags);
> >       while (cp < end) {
> > @@ -153,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject
*kobj,
> >                       continue;
> >               }
> >
> > -             index = simple_strtoul(cp, &temp, 10);
> > +             err = kstrtoul(cp, 10, &index);
> >               if (index > 255) {
> >                       rejected++;
> >                       cp = linefeed + 1;
>
> Here it would be good to include err in the if test, so as to properly
reject
> non-numeric values.

temp is used here as well and again is not updated. So, I think kstrtoul
can't be used here as well,

thanks,
gargi

--94eb2c0441ce863949053c5dc8db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Sep 13, 2016 at 2:26 AM, Samuel Thibault &lt;<a hr=
ef=3D"mailto:samuel.thibault@ens-lyon.org">samuel.thibault@ens-lyon.org</a>=
&gt; wrote:<br>&gt;<br>&gt; Hello,<br>&gt;<br>&gt; Gargi Sharma, on Tue 13 =
Sep 2016 02:20:44 +0530, wrote:<br>&gt; &gt; simple_strtoul is obsolete and=
 hence has been replaced by kstrtoul as<br>&gt; &gt; mentioned by <a href=
=3D"http://checkpatch.pl">checkpatch.pl</a><br>&gt;<br>&gt; Please note the=
 details.<br>&gt;<br>&gt; &gt; diff --git a/drivers/staging/speakup/kobject=
s.c b/drivers/staging/speakup/kobjects.c<br>&gt; &gt; index 528cbdc..884b2e=
b 100644<br>&gt; &gt; --- a/drivers/staging/speakup/kobjects.c<br>&gt; &gt;=
 +++ b/drivers/staging/speakup/kobjects.c<br>&gt; &gt; @@ -126,6 +126,7 @@ =
static ssize_t chars_chartab_store(struct kobject *kobj,<br>&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 int do_characters =3D !strcmp(attr-&gt;<a href=3D"http://=
attr.name">attr.name</a>, &quot;characters&quot;);<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 size_t desc_length =3D 0;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 int =
i;<br>&gt; &gt; + =C2=A0 =C2=A0 int err;<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 spin_lock_irqsave(&amp;speakup_info.spinlock, flags);<br>&gt;=
 &gt; =C2=A0 =C2=A0 =C2=A0 while (cp &lt; end) {<br>&gt; &gt; @@ -153,7 +15=
4,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,<br>&gt; &gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 continue;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 }<br>&gt; &gt;<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 in=
dex =3D simple_strtoul(cp, &amp;temp, 10);<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 err =3D kstrtoul(cp, 10, &amp;index);<br>&gt; &gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (index &gt; 255) {<br>=
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rejected++;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp =3D linefeed + 1;<br>&gt;<br>&=
gt; Here it would be good to include err in the if test, so as to properly =
reject<br>&gt; non-numeric values.<div><br></div><div>temp is used here as =
well and again is not updated. So, I think kstrtoul can&#39;t be used here =
as well,</div><div><br>thanks,</div><div>gargi</div></div>

--94eb2c0441ce863949053c5dc8db--

