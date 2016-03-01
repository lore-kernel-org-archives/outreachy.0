X-GM-THRID: 6256792083376373760
X-Received: by 10.129.130.71 with SMTP id s68mr18302354ywf.29.1456856536796;
        Tue, 01 Mar 2016 10:22:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.131 with SMTP id c3ls2788797qga.60.gmail; Tue, 01 Mar
 2016 10:22:16 -0800 (PST)
X-Received: by 10.129.73.215 with SMTP id w206mr18300260ywa.6.1456856535995;
        Tue, 01 Mar 2016 10:22:15 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x241.google.com (mail-ob0-x241.google.com. [2607:f8b0:4003:c01::241])
        by gmr-mx.google.com with ESMTPS id uw3si31499igb.1.2016.03.01.10.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 10:22:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) client-ip=2607:f8b0:4003:c01::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x241.google.com with SMTP id wz1so13101409obc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 10:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to;
        bh=QJLMmxpZdJ4WnvFs3L/K2pT0KlT5dr1g8hqHez1YEAY=;
        b=xi1ZsvFo+RxVdFYwxdmbAcdZnuBpYKO3S1CfOrhOnIwNF0SiarfmFN8cVdJh/GHvnu
         /4elseSDIN46CJb3EvxxjrE1934Nplohl9SMWr34SeR1kvFKEaQlkCzCWb0/7Uv9X0hI
         qcWg5YfOMUVUJ0zpr1nyrgTa48ewRNjOBfeTaHnYtCn3z86EACTQ7mUSe1NFbjnc6fLu
         Cf/eQP7M32hT5b8xvkQ1o7TtBSRyumnkA/XZ49HE/k9PCSEXqS5klDwg9IMiUYQ9bWKT
         EOMRV65fZtGgeQQJ+Bo4MMv69geJdLESi6iynCfEaVUctoj8ksAHx799dRNqh7o7Ru91
         Q3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:date:message-id:subject
         :from:to;
        bh=QJLMmxpZdJ4WnvFs3L/K2pT0KlT5dr1g8hqHez1YEAY=;
        b=E8tkjt3OKhbXbKug25QG13FxY5IxDasMsDEyWzJ+ahPWN4KkWQf9ePvWqfmSb6WBaf
         KdlYL57B27QhgWssFGBJp5JRwycQmcoRayCCGLWX4SQBVFqBTglx93WplMqY8Y6eJpBN
         /yIdsuzC8m8FUkvnu7QcTOr3+sMpzXDOQvzGrLENrOeWF+KNTNXRQcpxqCwZlBxsXKyB
         UKzFHvRnmRo3US1SL6tQTkSj942koyrDok7Lt8dVRpVW/cemEBgg0YmYOpH6zLXbvbKR
         he4VVkcMB4WGuyIvlBG4nrF4zlDYsqDzt5QvEanRvPHenRrgLjwATju9Q2NZUVp7T9Wo
         Shfw==
X-Gm-Message-State: AD7BkJI9a+wc+32fXBXQxjWVBMSqBHpmwk/l6B9wuhFVglavmTHuPwxc+X5qewWeLbHJkaX4/04fDXfGS00MUA==
MIME-Version: 1.0
X-Received: by 10.60.101.199 with SMTP id fi7mr17232648oeb.20.1456856535767;
 Tue, 01 Mar 2016 10:22:15 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Tue, 1 Mar 2016 10:22:15 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
Date: Tue, 1 Mar 2016 23:52:15 +0530
Message-ID: <CAA3ASzkQGGZ9bzG5jNykQ-9rjHSvZP-hp0chad_LLPS-XFcLew@mail.gmail.com>
Subject: Re: [PATCH 3/5] Staging: iio: ade7758_core: Remove unnecessary goto.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com, Daniel Baluta <Daniel.baluta@gmail.com>
Content-Type: multipart/alternative; boundary=089e0111beb04dbd83052d00d83c

--089e0111beb04dbd83052d00d83c
Content-Type: text/plain; charset=UTF-8

Hello,
    If We remove  all occurrence of goto then next code below the goto,
will execute even if error come.
So what exactly i have to change?


Thanks
Sandhya


Thanks
Sandhya

On Mon, Feb 29, 2016 at 4:53 PM, Sandhya Bankar <bankarsandhya512@gmail.com>
wrote:

> Remove unnecessary goto.
> Used below semantic patch to detect the unnecessary goto:
> @r@
> expression ret;
> identifier f,l;
> statement S;
> position p;
> @@
>
> (
> if (<+...f(...)...+>) S
> |
> if@p (...) return ret;
> return ret;
> |
> if@p (...) goto l;
> l:
> return ret;
> )
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c
> b/drivers/staging/iio/meter/ade7758_core.c
> index 0db23e4..32792d0 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool enable)
>                 irqen &= ~BIT(16);
>
>         ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);
> -       if (ret)
> -               goto error_ret;
>
>  error_ret:
>         return ret;
> --
> 1.8.3.4
>
>

--089e0111beb04dbd83052d00d83c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br>=C2=A0=C2=A0=C2=A0 If We remove=C2=A0 =
all occurrence of goto then next code below the goto, will execute even if =
error come.<br>So what exactly i have to change?<br><br><br>Thanks<br>Sandh=
ya<br><br><br></div>Thanks<br></div>Sandhya<br><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Mon, Feb 29, 2016 at 4:53 PM, Sandhya Bank=
ar <span dir=3D"ltr">&lt;<a href=3D"mailto:bankarsandhya512@gmail.com" targ=
et=3D"_blank">bankarsandhya512@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Remove unnecessary goto.<br>
Used below semantic patch to detect the unnecessary goto:<br>
@r@<br>
expression ret;<br>
identifier f,l;<br>
statement S;<br>
position p;<br>
@@<br>
<br>
(<br>
if (&lt;+...f(...)...+&gt;) S<br>
|<br>
if@p (...) return ret;<br>
return ret;<br>
|<br>
if@p (...) goto l;<br>
l:<br>
return ret;<br>
)<br>
<br>
Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@gmail.=
com">bankarsandhya512@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/iio/meter/ade7758_core.c | 2 --<br>
=C2=A01 file changed, 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio=
/meter/ade7758_core.c<br>
index 0db23e4..32792d0 100644<br>
--- a/drivers/staging/iio/meter/ade7758_core.c<br>
+++ b/drivers/staging/iio/meter/ade7758_core.c<br>
@@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool enable)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 irqen &amp;=3D ~BIT=
(16);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D ade7758_spi_write_reg_24(dev, ADE7758_M=
ASK, irqen);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto error_ret;<br>
<br>
=C2=A0error_ret:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
<span class=3D""><font color=3D"#888888">--<br>
1.8.3.4<br>
<br>
</font></span></blockquote></div><br></div></div>

--089e0111beb04dbd83052d00d83c--

