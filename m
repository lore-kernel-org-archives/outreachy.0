X-GM-THRID: 6388900397139886080
X-Received: by 10.129.155.201 with SMTP id s192mr6023228ywg.159.1487535726462;
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls8406645otc.20.gmail; Sun, 19 Feb
 2017 12:22:06 -0800 (PST)
X-Received: by 10.13.253.6 with SMTP id n6mr6381175ywf.84.1487535726140;
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id e196si1088856itc.2.2017.02.19.12.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id e137so8782592itc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 12:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DQA4MRCLuGDKqXQp/I4N/+Gj8yj3+yQy5aZuk9o3+KI=;
        b=u6gtfoPgREvZbux6Cw3JvZmuLJpgWWAPml/J8sLeDVI3Tw6OL4ABTz54iqoz1c52w3
         dA5Ra5QoywQqxLm9jIlUgCttj8lEYl0pIZRuVqOjd2ff/xCfmEZ/P99B1DYSkBFbpLIy
         WWFlxT3JzDCDtfBQ+Fo/pJzFPupXU4tLwKqLzQHt7rLqF3oxmquq9RbRPAjpGjp26QtG
         zkihFqyrWrHBo5ycpsuGyBZr5A3lLRG3iChz55jFKw7qTM2FQiIIZeFZxOPKK8qHg8ZX
         gPsN+KrRyoiyVuZaImaY86qG73X5e8J3rbDT27fsKeLdX3k5ZHr8iGdKVqh4ShmVVQQ3
         WWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DQA4MRCLuGDKqXQp/I4N/+Gj8yj3+yQy5aZuk9o3+KI=;
        b=q04yMXRUHrFdp6oEFTekeH9K227j5Kznp0nMws9hGMXx3kOHco7C9HqRjNkBnPHi6G
         0dos7RXzt8DtKlnx6dDpgMspHDkqcJA1QS51OfV0V6bbDdNDBjADCWaXnx8+BmJlxTDc
         xWCQPCtKv7vGiDjEbeIyoeVExx61+8s2cBLzDyb8xUI5PU5Vzbfs0V68nXe3Pudh2/pS
         ew6UcArZ8+rxnHFz8rfZG0W2xOrJg/29HFCGFmji0sW8Uyw0bxJmjGKQN2zqzlT5K3bh
         wP5U1O/Daoac0Ajzj8evrno7LBhZaHdp2DTP9Inn5sCS/xz/dga9rlZYxHvc7fFozE73
         I/Kg==
X-Gm-Message-State: AMke39kb5ptRaf/pwXx4T4fSkCsXVFKrhzH4An+JNTxcHRVAvfR+Pzsdb3uD21eArwf0eu8pQxgpFvhpqzw+jA==
X-Received: by 10.36.66.145 with SMTP id i139mr2839753itb.6.1487535725928;
 Sun, 19 Feb 2017 12:22:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 19 Feb 2017 12:21:35 -0800 (PST)
In-Reply-To: <1487535533-22366-1-git-send-email-gs051095@gmail.com>
References: <1487535533-22366-1-git-send-email-gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 20 Feb 2017 01:51:35 +0530
Message-ID: <CAOCi2DGcsbVhJAtrrhxJ1XHM9UE7JdTGH2XhCBQ8V_Du13u1qw@mail.gmail.com>
Subject: Re: [PATCH] staging: media: Remove ternary operator
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>, Gargi Sharma <gs051095@gmail.com>
Content-Type: multipart/alternative; boundary=001a1144b94888f1130548e7e61b

--001a1144b94888f1130548e7e61b
Content-Type: text/plain; charset=UTF-8

Please ignore.
On Mon, Feb 20, 2017 at 1:48 AM, Gargi Sharma <gs051095@gmail.com> wrote:
>
> Relational and logical operators evaluate to either true or false.
> Explicit conversion is not needed so remove the ternary operator.
> Done using coccinelle:
>
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/media/platform/bcm2835/controls.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/platform/bcm2835/controls.c
b/drivers/staging/media/platform/bcm2835/controls.c
> index a40987b..4d7e2a2 100644
> --- a/drivers/staging/media/platform/bcm2835/controls.c
> +++ b/drivers/staging/media/platform/bcm2835/controls.c
> @@ -218,9 +218,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
>                 dev->iso = iso_values[ctrl->val];
>         else if (ctrl->id == V4L2_CID_ISO_SENSITIVITY_AUTO)
>                 dev->manual_iso_enabled =
> -                               (ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL
?
> -                                                       true :
> -                                                       false);
> +                               (ctrl->val ==
V4L2_ISO_SENSITIVITY_MANUAL);
>
>         control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
>
> --
> 2.7.4
>

--001a1144b94888f1130548e7e61b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore.<br>On Mon, Feb 20, 2017 at 1:48 AM, Gargi S=
harma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt; =
wrote:<br>&gt;<br>&gt; Relational and logical operators evaluate to either =
true or false.<br>&gt; Explicit conversion is not needed so remove the tern=
ary operator.<br>&gt; Done using coccinelle:<br>&gt;<br>&gt; @r@<br>&gt; ex=
pression A,B;<br>&gt; symbol true,false;<br>&gt; binary operator b =3D {=3D=
=3D,!=3D,&amp;&amp;,||,&gt;=3D,&lt;=3D,&gt;,&lt;};<br>&gt; @@<br>&gt; - (A =
b B) ? true : false<br>&gt; + A b B<br>&gt;<br>&gt; Signed-off-by: Gargi Sh=
arma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt;<b=
r>&gt; ---<br>&gt; =C2=A0drivers/staging/media/platform/bcm2835/controls.c =
| 4 +---<br>&gt; =C2=A01 file changed, 1 insertion(+), 3 deletions(-)<br>&g=
t;<br>&gt; diff --git a/drivers/staging/media/platform/bcm2835/controls.c b=
/drivers/staging/media/platform/bcm2835/controls.c<br>&gt; index a40987b..4=
d7e2a2 100644<br>&gt; --- a/drivers/staging/media/platform/bcm2835/controls=
.c<br>&gt; +++ b/drivers/staging/media/platform/bcm2835/controls.c<br>&gt; =
@@ -218,9 +218,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;iso =
=3D iso_values[ctrl-&gt;val];<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (=
ctrl-&gt;id =3D=3D V4L2_CID_ISO_SENSITIVITY_AUTO)<br>&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;manual_iso_enabled =3D<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ctrl-&gt;val =3D=3D V4L2_ISO_SENSITIVIT=
Y_MANUAL ?<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 true :<br>&g=
t; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 false);<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (ctrl-&gt;val =3D=3D V4L2_ISO_SENSITIVITY_MANUAL);<br>=
&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 control =3D &amp;dev-&gt;component=
[MMAL_COMPONENT_CAMERA]-&gt;control;<br>&gt;<br>&gt; --<br>&gt; 2.7.4<br>&g=
t;<br></div>

--001a1144b94888f1130548e7e61b--

