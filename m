X-GM-THRID: 6253454979365863424
X-Received: by 10.13.215.140 with SMTP id z134mr20175761ywd.7.1455996781217;
        Sat, 20 Feb 2016 11:33:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.200 with SMTP id 191ls439734ioz.19.gmail; Sat, 20 Feb
 2016 11:33:00 -0800 (PST)
X-Received: by 10.66.228.102 with SMTP id sh6mr8519559pac.12.1455996780890;
        Sat, 20 Feb 2016 11:33:00 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id kr4si1002753igb.0.2016.02.20.11.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:33:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22e.google.com with SMTP id ts10so19976200obc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 11:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:content-type;
        bh=y0yOXLOJA9XnLTgsHFKsXULEl77NviJvqJpJtTXP5nU=;
        b=JVMFVMR877I2T8CNnhTy7G0q0APecbGeUE9xPPPPyMge9kQwM4wC2DlRnhv+PR3jbZ
         jQO/rk2PU8XiOKETh8Hz3sC15/x2f6UtXTGdZK7F4f5zrh9ITb+YEbY1sVOF7ypIF1XE
         ofaAPC+7C5PAZej5yoOoUYyfKY03wGn7SW9/SmDK/+Zu9m84mlOd2jY/UUBhbrN6/js3
         wjx6+tkKCGC0eH1xHgjE8M1rtZ9LyjconeC56JtaE9/7qhxDpVJ9Ok+cZ3/emi0yxK1E
         VoEMHgGF1zXkLqWTtDyTAgjPXjYKe5glKBkH0aKoCti49hC6CsHb0RPwhMioQlECGlxR
         /Qnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:content-type;
        bh=y0yOXLOJA9XnLTgsHFKsXULEl77NviJvqJpJtTXP5nU=;
        b=OFm1SYAviOxCBSqNKogAKWk9x93tXxhRjn61n0Z2sK4h73w4nLCqYxGPQhEuXmLHJR
         m656NgAy4OHsaWKm078cB6rPu3G6In+hZdIAekYk6fAjjkfPJvSgL6DnzaZ0aNjfKO2W
         Pf/gfdsnGN+XKlAKscNb7ogx1DBVtNdfpsHE1MnjqlnYwTwfXDlyTdu289Lg5Wgtq6py
         x6WYk4C2SbpEPfSRw8zIRYgTGx7Mlgu+6YbM8llAPvvZxMG1bcNBpj5VyKEZl1Fo2PUc
         vDQJdbsP8GvpjfiiXgEWOr51YKVFc3gkYJXP0JcqUNN+KKKIcq+2dlulmu93SFWTjLna
         r+Wg==
X-Gm-Message-State: AG10YORLIVuyuOEspBTwjuJr4mOTQ20p0BKSPTsbiLBPLIZFOSN/+GbRyiNzBxgH018x3zt+BYZ1JIc9e5lNrQ==
MIME-Version: 1.0
X-Received: by 10.60.57.193 with SMTP id k1mr16544938oeq.66.1455996780392;
 Sat, 20 Feb 2016 11:33:00 -0800 (PST)
Received: by 10.157.47.212 with HTTP; Sat, 20 Feb 2016 11:33:00 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <20160220112336.GA3161@sandhya>
References: <20160220112336.GA3161@sandhya>
Date: Sun, 21 Feb 2016 01:03:00 +0530
Message-ID: <CAA3ASznJAt=9hXv1y6B2cxPPG8Fe4rUv4w5N6STnXGj-VcNgAQ@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: wlan-ng: Convert explicit comparison to NULL
 to !x.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e013a02d4e3b6b9052c38aadd

--089e013a02d4e3b6b9052c38aadd
Content-Type: text/plain; charset=UTF-8

I already sent v2 without adding any comment below sign-off ..
now should i send v3 with mentioning comment?

sorry for all this mistakes.

Thanks

On Sat, Feb 20, 2016 at 4:53 PM, Sandhya Bankar <bankarsandhya512@gmail.com>
wrote:

> Convert explicit comparison to NULL to !x.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c
> b/drivers/staging/wlan-ng/cfg80211.c
> index 8c1e3f0..c59dd33 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -303,7 +303,7 @@ static int prism2_get_station(struct wiphy *wiphy,
> struct net_device *dev,
>
>         memset(sinfo, 0, sizeof(*sinfo));
>
> -       if ((wlandev == NULL) || (wlandev->msdstate != WLAN_MSD_RUNNING))
> +       if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
>                 return -EOPNOTSUPP;
>
>         /* build request message */
> @@ -312,7 +312,7 @@ static int prism2_get_station(struct wiphy *wiphy,
> struct net_device *dev,
>         quality.dbm.status = P80211ENUM_msgitem_status_data_ok;
>
>         /* send message to nsd */
> -       if (wlandev->mlmerequest == NULL)
> +       if (!wlandev->mlmerequest)
>                 return -EOPNOTSUPP;
>
>         result = wlandev->mlmerequest(wlandev, (struct p80211msg *)
> &quality);
> --
> 1.8.3.4
>
>

--089e013a02d4e3b6b9052c38aadd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I already sent v2 without adding any comment bel=
ow sign-off ..<br></div>now should i send v3 with mentioning comment?<br><b=
r></div><div>sorry for all this mistakes.<br></div><div><br></div>Thanks<br=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Fe=
b 20, 2016 at 4:53 PM, Sandhya Bankar <span dir=3D"ltr">&lt;<a href=3D"mail=
to:bankarsandhya512@gmail.com" target=3D"_blank">bankarsandhya512@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">C=
onvert explicit comparison to NULL to !x.<br>
<br>
</span><span class=3D"">Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto=
:bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
---<br>
</span>=C2=A0drivers/staging/wlan-ng/cfg80211.c | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/c=
fg80211.c<br>
index 8c1e3f0..c59dd33 100644<br>
--- a/drivers/staging/wlan-ng/cfg80211.c<br>
+++ b/drivers/staging/wlan-ng/cfg80211.c<br>
@@ -303,7 +303,7 @@ static int prism2_get_station(struct wiphy *wiphy, stru=
ct net_device *dev,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(sinfo, 0, sizeof(*sinfo));<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((wlandev =3D=3D NULL) || (wlandev-&gt;msdst=
ate !=3D WLAN_MSD_RUNNING))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!wlandev || (wlandev-&gt;msdstate !=3D WLAN=
_MSD_RUNNING))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EOPNOTSUPP;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* build request message */<br>
@@ -312,7 +312,7 @@ static int prism2_get_station(struct wiphy *wiphy, stru=
ct net_device *dev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 quality.dbm.status =3D P80211ENUM_msgitem_statu=
s_data_ok;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* send message to nsd */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (wlandev-&gt;mlmerequest =3D=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!wlandev-&gt;mlmerequest)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EOPNOTSUPP;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 result =3D wlandev-&gt;mlmerequest(wlandev, (st=
ruct p80211msg *) &amp;quality);<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.3.4<br>
<br>
</font></span></blockquote></div><br></div>

--089e013a02d4e3b6b9052c38aadd--

