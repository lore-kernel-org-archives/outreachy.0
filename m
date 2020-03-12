X-GM-THRID: 6803328043405279232
X-Received: by 2002:a17:90a:cb90:: with SMTP id a16mr4623021pju.80.1584024049156;
        Thu, 12 Mar 2020 07:40:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls2088376pjw.0.canary-gmail;
 Thu, 12 Mar 2020 07:40:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuVn86k+jTQf4Jxm4BD40IQqblIlqn5K2ng54SGmR2VLkQLbcv4hm3K5amW8NNBDFesuCvy
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr4424881pjb.91.1584024047452;
        Thu, 12 Mar 2020 07:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024047; cv=none;
        d=google.com; s=arc-20160816;
        b=W78ABLO2U3GSAy0BTyjqbBcybeITl+xSlBscJOs+IXWZqoFFubDX5ClZ2WEzyTDH+d
         XPtOlq+4eeAcMO85sg89kZ8m2QZ5z+7fZvPC3N+M0vE3DRu9h4S/K9XFKlsyIHrOIwwS
         E9iQ+1/KjPCmBd1B2FND5WRcA0iliyeWRnxGy90hO2N/mIdpP3Kfwe8mWLQ0r0YU3FyX
         4cgYrfbU+P5mfzu0g6F6b2oceJP4eq2bfd8w4uuZ/JRjrNuc8VyTmzB5+QJ7Kf+/iFt+
         0r3bkO9702qr5nYphr/gS89FadgInfsaHwCm4RoVIlXWaYkwjvxY1RAjSHSKXjGFLm/c
         7M5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PTvMFXGSuO6l5XHskyTCtk7ZUkKoDKCw/Ort93CYdBw=;
        b=spkoUmINrvErgb6zKNwtxpgYeGopV0OpQAI4B2u3nvZrUJ2RJDgDXW794kYioBKhZa
         DGkB/Li42b3qdu84FixLh8hhNnId+6VRyhTaltSNsTJn9n4imZmp4PyY2sHc5KxMdelD
         0trJ3BJXhp5U7BapklxvA+5FB71qvXBMIAM3Z8RjgfxW0wMfJbcsWjpLnabfgZ9jOUB+
         TdldVspdJuq6meNDHVr8tXGk8tjolWGt59QoLgqalNz8E9YGQhYz3xbLQnPToGqJZwne
         i2vmQ3JCYnPD3jg98uH1SFH7gAbyN+xA5Sc6VPF1SQfSvQDibL+foQvAsnkITrBghkgZ
         mA/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=ylAMiL64;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id b10si301221pfo.6.2020.03.12.07.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=ylAMiL64;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-qk1-x743.google.com with SMTP id d8so6563331qka.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PTvMFXGSuO6l5XHskyTCtk7ZUkKoDKCw/Ort93CYdBw=;
        b=ylAMiL64izYvkjNABikXyiOzrQWOWqhFj0FzpiK+6MI+iLPoFIOv8HO/tDjmB/SmWl
         DYaDPFyA/zUarg637xM4+QRAxnuMg/ys/7mxpKSKMljG4W3o5iflCg4pLQ9xKd8DxN2G
         cwQQfCmMbGQIWZG3EVYBsIrFyv3eY0gZTuppAMwkZVMzK4+d8W8MdxZtf1Acf/Hy3mqx
         AxAcJm1M1/vvpI4nv4JLZdX5GH1zo30MrgVsBn7kMYjaGkgP4zMa/CKoy0yRYlwN69+H
         LvXysGkvJk2aXChlulniQm+/A2L4eRcyWw4xCrFIJF25dZY5LexcM4m/GzLzEatadf6l
         mDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PTvMFXGSuO6l5XHskyTCtk7ZUkKoDKCw/Ort93CYdBw=;
        b=tdU9DUa8TiBEsbq93J8ZG92iZNdJtGPtzWFMJ17QD0hRe9nM99Dss3dLSdCSG794uZ
         AGvF20emeqZWfJKShPo/YcWHoZHkhHTT+DpBvPiVZI2V5fWybojdaoEPpaIlz/ug2xP6
         S2JcTRfOgR80WEUFQpDwjfUrFf5sW/wnJoxC3KncAFq64NN/cLh34MjyIOSZsLeeXdlX
         FHomkXeWFDWSg9xqwoaGW4WaZYy7oWcDUrjkwIkl27mnhh/YV3ZxbYxdSVwXMMjJjDGi
         bCu/oqPx15TuNMyzNw0BwYFJw501n8p1Ay6AXOMwSu03hwJfrX7DoyvGRdhda1xnukXd
         lNmA==
X-Gm-Message-State: ANhLgQ3wrbrMDPxz3Qa5+dPKfubutZdnuKZcUdycu9QmE3kEhZjKneYw
	tut6ZaWINxKTShfB88MOpV3kHc2I/AHpsgqiW4fUWQ==
X-Received: by 2002:a25:3b50:: with SMTP id i77mr9320523yba.523.1584024046479;
 Thu, 12 Mar 2020 07:40:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200312142721.GA2748@evX1> <alpine.DEB.2.21.2003121536280.2418@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003121536280.2418@hadrien>
From: Jesus Enrique Vargas Medrano <jevargas@seas.upenn.edu>
Date: Thu, 12 Mar 2020 08:40:30 -0600
Message-ID: <CA+ph0OzwpQKhccp59FN3xDfJaXn9aC5-YBXY=cQHYVpA_BBmjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: align multi-line
 function argument with open parenthesis
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009b42af05a0a9563c"

--0000000000009b42af05a0a9563c
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback Julia, will include your comments and resend.

On Thu, Mar 12, 2020 at 8:38 AM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Thu, 12 Mar 2020, Enrique Vargas wrote:
>
> > Eliminate WARNING found with checkpatch.pl for argument split in two
> > lines not matching coding conventions identation.
>
> The message seems a bit obscure.  There is no argument that is split in
> two lines, although it is the case that the argument list is split in two
> lines.
>
> For the subject line, maybe "reduce parameter indentation"
>
> And then for the log message:
>
> "Align function parameter with the right side of the open parenthesis
> starting the parameter list, to follow kernel coding style.  Problem found
> using checkpatch."
>
> julia
>
>
> >
> > Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> > ---
> >  drivers/staging/iio/adc/ad7192.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/adc/ad7192.c
> b/drivers/staging/iio/adc/ad7192.c
> > index 51b1cd3ad1de..5f65d084e320 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,
> >  }
> >
> >  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> > -                                                 int *freq)
> > +                                          int *freq)
> >  {
> >       unsigned int fadc;
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200312142721.GA2748%40evX1
> .
> >
>


-- 
J Enrique

--0000000000009b42af05a0a9563c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the feedback Julia, will include your comments =
and resend.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Mar 12, 2020 at 8:38 AM Julia Lawall &lt;<a href=3D"mail=
to:julia.lawall@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Thu, 12 Mar 2020, Enrique Vargas wrote:<br>
<br>
&gt; Eliminate WARNING found with <a href=3D"http://checkpatch.pl" rel=3D"n=
oreferrer" target=3D"_blank">checkpatch.pl</a> for argument split in two<br=
>
&gt; lines not matching coding conventions identation.<br>
<br>
The message seems a bit obscure.=C2=A0 There is no argument that is split i=
n<br>
two lines, although it is the case that the argument list is split in two<b=
r>
lines.<br>
<br>
For the subject line, maybe &quot;reduce parameter indentation&quot;<br>
<br>
And then for the log message:<br>
<br>
&quot;Align function parameter with the right side of the open parenthesis<=
br>
starting the parameter list, to follow kernel coding style.=C2=A0 Problem f=
ound<br>
using checkpatch.&quot;<br>
<br>
julia<br>
<br>
<br>
&gt;<br>
&gt; Signed-off-by: Enrique Vargas &lt;<a href=3D"mailto:jevargas@seas.upen=
n.edu" target=3D"_blank">jevargas@seas.upenn.edu</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/adc/ad7192.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/ad=
c/ad7192.c<br>
&gt; index 51b1cd3ad1de..5f65d084e320 100644<br>
&gt; --- a/drivers/staging/iio/adc/ad7192.c<br>
&gt; +++ b/drivers/staging/iio/adc/ad7192.c<br>
&gt; @@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static void ad7192_get_available_filter_freq(struct ad7192_state=
 *st,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int *freq)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 int *freq)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int fadc;<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20200312142721.GA2748%40evX1" rel=3D"noref=
errer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel=
/20200312142721.GA2748%40evX1</a>.<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">J Enrique</div></div>

--0000000000009b42af05a0a9563c--

