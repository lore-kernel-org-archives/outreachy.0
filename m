X-GM-THRID: 6810513252473110528
X-Received: by 2002:a1f:7dc1:: with SMTP id y184mr1853806vkc.21.1585830083467;
        Thu, 02 Apr 2020 05:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f7cb:: with SMTP id a11ls390961vsp.9.gmail; Thu, 02 Apr
 2020 05:21:22 -0700 (PDT)
X-Google-Smtp-Source: APiQypIilnFLumgC793RY2qwSf1Q1XA/C5/Wxw7oEHjcOQyfUFx5J82QBYZBswsmv1cxIc9vS28l
X-Received: by 2002:a67:8844:: with SMTP id k65mr2002315vsd.231.1585830082358;
        Thu, 02 Apr 2020 05:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585830082; cv=none;
        d=google.com; s=arc-20160816;
        b=ejHobTI7ib3fQOr0SSC99cxE3mz+F9J5u2TA2J8O2LgqS2Q66xA2+FNglGWjkPDSrs
         zgN3KbQcwnJM4ld4FwH6iMP/4K71xFXRFXLVyYEFJErhZ0vpjZXqhKB7bK6yRt4p+VzR
         ElDSwoH4NFoqdj687ROJ0yQQNlZIuPyhlucDiXsLg890EJ4MNdzwSn/OVz17vVqkr/YQ
         ly98SJiO0L2caAgjImGNUjYd/tx0Lo53oT4u5RmQpOLq3IE2hC6mVICH3ry22wJTegP4
         0F2xpqHMZHFMEvQE+J5k25Au3jklzNpXkdnDK3AQbkRsa3vbZ27qvfd4jao1IiaGg2KU
         ZAUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c6aXgNqlGcrur1UycUWnkHxxpHpzhXfTfbvrT2vyJSs=;
        b=ECoQ5X1S+Q6ajoB3uCalyokhC7I5ndZ8X6B6LsNraHr+PgDHxdcKqqNsB/aQKEQRby
         sXwMXp4+vNk3PwCcH0f++4ILqT3hLBXNYYDJ2Rn6Q9PKU87Xsce8nqRxEJGQg+zxvDZN
         Qyfo2Dszf2ZFUDqIg/yCfJl0nD6C3lcwFPCHJJXZj0rhjQdEbsmYzdlz+WcaTnZ4qg6F
         pNJeZFdYwQ1V8ytqlFnTq9yflFevx9UuFJAPjNgs7/D3khumR5/4zPz6GdCQglQb6Jy6
         +r/Q5ldd6VusxGyQ5HpE/QbBWqgx7KqBqHFeM6fNxak3Qm+iHICJJusAXX5yKmYsdxfN
         dwew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Un7gMWIW;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id s124si382929vka.1.2020.04.02.05.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 05:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Un7gMWIW;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id 184so2132392vsu.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 05:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c6aXgNqlGcrur1UycUWnkHxxpHpzhXfTfbvrT2vyJSs=;
        b=Un7gMWIWGEWfMo9jZWY1F8VdkGDgXcwunV7L8AKoG0ocOpiD71bEY3to6WqNTLjaCD
         oLdw8wQwnEBuGdRTWzaSv8XDe5YFDThYeQYBkSawUbE+W+ZuJ66CGjG8KZSG9A+4fs75
         NoKUa6IaaiRZY5lfLiLW0i+cONd+IYC6jnBZ6O9yEcCVR+MnyH608lF8S73rZPHOrJ1D
         zknJhlFl8XCoqD5irBk72lOtbxrvMBUGmthHAaQirD5SX44fSHkk6qL7kYQuPvIS0EnV
         Hqh19XF2edlm+7qPDpf3gsnLcGuBWIllic263rDDJ9yrD1eBLpIdYdoaPJQDwKJIT5WM
         YBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c6aXgNqlGcrur1UycUWnkHxxpHpzhXfTfbvrT2vyJSs=;
        b=CMn1xin/ae8IpF7x/ue37p7CMhu68ggteEAXc1gyZns2D8MQy/ySbwCoFhKoJL48mr
         BVonxNlXKKOxGVwkRGRRrQ4yQfkJ2CgRBPjSiCtkwV+ZsOhvmvvSg4e4oRnf0yNsJP0K
         BiJlLGCcf2pjN2jI9k2eNQQAyjfGI5Kz+PNb6/oLSjuKcLElz6rj3VU5gfkqvZldcit/
         7L0l7p0o3M7EAZu1sCe/1CTu260T1spaxtyfoSaNQ/HsFrteqmdbooyXsiZCoAf7z32M
         iHeWKnMP/FgYGC3WlrMIZwfR30Yp9kf+RerwKk2M6JqkaKc9QY+HSBxeyjAn9JN9hIMO
         pnRw==
X-Gm-Message-State: AGi0Pua4L/2R6JtpBKbatqmZMeCnr6Sj15rtWN1U0xV2LYV0g3042f/o
	myr2li0s/+j0LYEpy5GGqJ0gqlk/fpywZPMJ681olw==
X-Received: by 2002:a67:2ec6:: with SMTP id u189mr2103203vsu.200.1585830081982;
 Thu, 02 Apr 2020 05:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200331230940.GA12376@siyah2> <20200401055650.GA1903894@kroah.com>
In-Reply-To: <20200401055650.GA1903894@kroah.com>
From: Gokce Kuler <gokcekuler@gmail.com>
Date: Thu, 2 Apr 2020 15:20:56 +0300
Message-ID: <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com>
Subject: Re: [PATCH] staging: gasket: using octal permissions instead of
 symbolic permissions
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>, 
	Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Content-Type: multipart/alternative; boundary="000000000000b5f2d705a24dd63a"

--000000000000b5f2d705a24dd63a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

checkpatch.pl did not show any warning about this. Can I add the permission
head to __ATTR_RO() ?

Greg KH <gregkh@linuxfoundation.org>, 1 Nis 2020 =C3=87ar, 08:56 tarihinde =
=C5=9Funu
yazd=C4=B1:

> On Wed, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:
> > Since octal permissions is preffered to symbolic permissions,
> > octal permissions is used.Problem found checkpatch.pl.
> >
> > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> b/drivers/staging/gasket/gasket_sysfs.h
> > index 1d0eed6..28dc422 100644
> > --- a/drivers/staging/gasket/gasket_sysfs.h
> > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> >
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
>        \
> >       {
>     \
> > -             .attr =3D __ATTR(_name, S_IRUGO, _show_function, NULL),
>     \
> > +             .attr =3D __ATTR(_name, 0444, _show_function, NULL),
>   \
>
> Why not use __ATTR_RO() instead?
>
> thanks,
>
> greg k-h
>

--000000000000b5f2d705a24dd63a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"http://checkpatch.pl">checkpatch.pl</a> did not=
 show any warning about this. Can I add the permission head to __ATTR_RO() =
?=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@lin=
uxfoundation.org</a>&gt;, 1 Nis 2020 =C3=87ar, 08:56 tarihinde =C5=9Funu ya=
zd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed=
, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:<br>
&gt; Since octal permissions is preffered to symbolic permissions,<br>
&gt; octal permissions is used.Problem found <a href=3D"http://checkpatch.p=
l" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a>.<br>
&gt; <br>
&gt; Signed-off-by: Gokce Kuler &lt;<a href=3D"mailto:gokcekuler@gmail.com"=
 target=3D"_blank">gokcekuler@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/gasket/gasket_sysfs.h | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/g=
asket/gasket_sysfs.h<br>
&gt; index 1d0eed6..28dc422 100644<br>
&gt; --- a/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; +++ b/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(_nam=
e, S_IRUGO, _show_function, NULL),=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(_nam=
e, 0444, _show_function, NULL),=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
<br>
Why not use __ATTR_RO() instead?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000b5f2d705a24dd63a--

