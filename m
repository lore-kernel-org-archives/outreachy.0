X-GM-THRID: 6526226538878205952
X-Received: by 10.28.93.145 with SMTP id r139mr577951wmb.32.1519505780114;
        Sat, 24 Feb 2018 12:56:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.3 with SMTP id c3ls476227wmh.9.gmail; Sat, 24 Feb 2018
 12:56:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELs/DueSqL/9InJf76+gP+LtSfERys/UQRWn53dRMwvXo6bjPLhMY/Ji1I0+EL0aRoLzVt0d
X-Received: by 10.28.150.137 with SMTP id y131mr560218wmd.6.1519505778015;
        Sat, 24 Feb 2018 12:56:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519505777; cv=none;
        d=google.com; s=arc-20160816;
        b=MPSjlL2kaIaAdStAkqNTD7B/c8neHSPDwJuvrDoLXVXBE5NeNk9cF3yvoazsl6K2DJ
         H7C3ntnl/jf84YqEpvLYBrwd9aNs9/2L/hcOCCotmG+nMpQIp6FhRTeBkr2qE6LBjkwJ
         RXoWroTrRGL1XqHD2JhFz0hTigh5gqCSOACpvG1UIER/ZLhfIsE7Jk0Knvn4xwF42n5n
         B5kq0yJ3Lg8MUmUomM8MIjiCYm9OgkPyTgjK8mQHK/3LeJ4Ngfhcx0vY2yGjrGeNdV8e
         btpOqXSTWUimlzGR4S+WiP/DS2xHhhwJI9zj7Z4pjARFDC5m13D25fXdBXLik8iLSbVR
         c6TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Vvyb4doYBNVFUAeqVz2xFXoz6ajBBGRNkjyp/qFJDIE=;
        b=VAM7HWVcmXDAoOaa5HfuxsXAsevjA6VoOOZa/fe0KqKQaKNIFN0dxRtWcN+5Msq8u9
         oeWAhDx8J0Tg3CqeP8KxbiU+VLMQ9c1Zp2FFsE2hxrGvXNyf3jpyHYBTqJEePn/KJ8i8
         nLWHix/m7zaHerMLzbNCbVEPA/cjFLO6P24C+8Yi90q+gNUqwGPk0V1Y4IfGvVhdxu1n
         Fc0iJPMkrXi1pC8fzyepB8+48zQRh9ISS9A4LlX2GpsgRn+7KzHPCPoUbRnIsC0dF3In
         Oyv2ZNrWSHI8UqojGekoaapkTbgIa10uufitwL5YUuZ5FOmX6K3kKPgEv0EXsGkuaEmJ
         dE2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@crimson-ua-edu.20150623.gappssmtp.com header.s=20150623 header.b=xsVct1U8;
       spf=pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=hashah@crimson.ua.edu
Return-Path: <hashah@crimson.ua.edu>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id g70si165228wmc.2.2018.02.24.12.56.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 12:56:17 -0800 (PST)
Received-SPF: pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@crimson-ua-edu.20150623.gappssmtp.com header.s=20150623 header.b=xsVct1U8;
       spf=pass (google.com: domain of hashah@crimson.ua.edu designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=hashah@crimson.ua.edu
Received: by mail-lf0-x244.google.com with SMTP id o145so13816306lff.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 12:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=crimson-ua-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Vvyb4doYBNVFUAeqVz2xFXoz6ajBBGRNkjyp/qFJDIE=;
        b=xsVct1U8Hgw5Wg0++7oGm98YleGyJXPFMeoDW1I4mdOKL8bXlSOFQtcukj5Q9qrjJ3
         vlyQc8R7p01WIUXSCMtu/09YIRsz3BJ8NAbAlNFlQCxay3HAb7jQ0RJx20dh2jWWQGYc
         vYS6vLrcB7y5zIOmh/+FOQCzkxFFJc6aCabJcYNzjnktuGXC7RHUvVwZV9j/gzGG8vDb
         bLRUesUftWmaBQ9VXB7rBjACMyd/Ol9KncgGlfy61TTUmABLovPL4PtZCQBNEeMlMerf
         bWqXKLSinyQhXzT0as4Lib97WHKQwaGdKRPDCtYsf8mgChcw04ibdgTGTBp2Ue8Yinem
         FERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Vvyb4doYBNVFUAeqVz2xFXoz6ajBBGRNkjyp/qFJDIE=;
        b=NL69vQcdZai2fty0jAnAiGOtOXLf6Kv1/JHLbuxl/kXJ1hctGEl0RPASdlR2DdEv5U
         8tC9BTam2aA6CjVgYW09vRYWOrvXMQ4S4Qhq3wU4RBBd3pis7iI0R92Knl03IzNd9sNo
         yNULP9eT3iDHbe1r69UqIPGFx3ZDPI/yG7i8MUv6z6uRXU439OlGdZoRTxFGTZiZztH0
         xsuKzGKY+tGfZslOMyIQiW5Ff4bcdCepZS5yftf1yM+AX/GOgnCKdDHoCsDuNtCqvvqY
         X0DpFLHmpXaoMGlA8J7qmJpo9oawjVTcxhX2PlY39Ennkjk05sX0o62NWFykSMAQmM4l
         y1cQ==
X-Gm-Message-State: APf1xPDQ0MZ14nOTGYZ4dO0TGTHPvpgAvDpYmd1Jx9zuKl5jqAPL/qSo
	9k8zg2RyWWlHhkE8AoWawybGWps7zKBmvUt1tWSBpg==
X-Received: by 10.46.85.17 with SMTP id j17mr4459884ljb.55.1519505777719; Sat,
 24 Feb 2018 12:56:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.190.206 with HTTP; Sat, 24 Feb 2018 12:56:17 -0800 (PST)
In-Reply-To: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
References: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
From: "Hetavi (Haley) Shah" <hashah@crimson.ua.edu>
Date: Sat, 24 Feb 2018 14:56:17 -0600
Message-ID: <CANfc03LXBghmpVRbbi=qdiMS=cnhcN64Ctifz4w+ib5p9LWfTg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: use structure pointer to
 get the size of the structure
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: gregkh@linuxfoundation.org, garsilva@embeddedor.com, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="94eb2c1ce0dc1d9e840565fb8221"

--94eb2c1ce0dc1d9e840565fb8221
Content-Type: text/plain; charset="UTF-8"

Hello,

I have recently found out about this project and would like to make some
contributions.

May I know what is the first contribution that I can start with?

Thank you,
Haley Shah.

On Sat, Feb 24, 2018 at 2:51 PM, Santha Meena Ramamoorthy <
santhameena13@gmail.com> wrote:

> Use pointer to the structure to get the size of the structure. Issue
> found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
> Change in v2:
>  - Use single line when the number of characters is less than 80
>  drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c
> b/drivers/staging/rtl8192e/rtllib_wx.c
> index 03fbff0..74d4d2d 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
>                 struct lib80211_crypt_data *new_crypt;
>
>                 /* take WEP into use */
> -               new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
> -                                   GFP_KERNEL);
> +               new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
>                 if (new_crypt == NULL)
>                         return -ENOMEM;
>                 new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1519505516-10389-1-git-send-
> email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

--94eb2c1ce0dc1d9e840565fb8221
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have recently found out about =
this project and would like to make some contributions.=C2=A0</div><div><br=
></div><div>May I know what is the first contribution that I can start with=
?</div><div><br></div><div>Thank you,</div><div>Haley Shah.</div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Feb 24, 2018 =
at 2:51 PM, Santha Meena Ramamoorthy <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:santhameena13@gmail.com" target=3D"_blank">santhameena13@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Use pointer to the struct=
ure to get the size of the structure. Issue<br>
found using checkpatch.<br>
<br>
Signed-off-by: Santha Meena Ramamoorthy &lt;<a href=3D"mailto:santhameena13=
@gmail.com">santhameena13@gmail.com</a>&gt;<br>
---<br>
Change in v2:<br>
=C2=A0- Use single line when the number of characters is less than 80<br>
=C2=A0drivers/staging/rtl8192e/<wbr>rtllib_wx.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8192e/<wbr>rtllib_wx.c b/drivers/staging/rt=
l8192e/<wbr>rtllib_wx.c<br>
index 03fbff0..74d4d2d 100644<br>
--- a/drivers/staging/rtl8192e/<wbr>rtllib_wx.c<br>
+++ b/drivers/staging/rtl8192e/<wbr>rtllib_wx.c<br>
@@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct lib80211_cry=
pt_data *new_crypt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* take WEP into us=
e */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crypt =3D kzall=
oc(sizeof(struct lib80211_crypt_data),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_KERNEL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crypt =3D kzall=
oc(sizeof(*new_crypt), GFP_KERNEL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (new_crypt =3D=
=3D NULL)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return -ENOMEM;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_crypt-&gt;ops =
=3D lib80211_get_crypto_ops(&quot;R-<wbr>WEP&quot;);<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
--<br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">=
outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/1519505516-10389-1-git-send-email-santhameena13=
%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.co=
m/d/<wbr>msgid/outreachy-kernel/<wbr>1519505516-10389-1-git-send-<wbr>email=
-santhameena13%40gmail.<wbr>com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>optout</=
a>.<br>
</font></span></blockquote></div><br></div>

--94eb2c1ce0dc1d9e840565fb8221--

