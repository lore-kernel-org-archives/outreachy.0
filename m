X-GM-THRID: 6392767227308802048
X-Received: by 10.237.48.72 with SMTP id 66mr3545615qte.77.1488433109477;
        Wed, 01 Mar 2017 21:38:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls4364527ita.4.canary-gmail; Wed,
 01 Mar 2017 21:38:28 -0800 (PST)
X-Received: by 10.99.157.142 with SMTP id i136mr4086612pgd.78.1488433108704;
        Wed, 01 Mar 2017 21:38:28 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id i189si3509656iti.0.2017.03.01.21.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 21:38:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id r141so7373019ita.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 21:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=46jqyUAOdQymVlYw475Aqg+KrYhuvdbs/1MA8o6umXs=;
        b=dDA3uzXY/goOZsxgDj+hN6p1Zqh4Rirmgc3Yz1lqy8MKmPN2DgbJhU3AGnZpMOfW23
         5Gpo/QeH8HaQ4hb5yjNJDyGSZIyVIyH+T0QGEnqSRlwt0YPzXgcOfXUor1T8Gnzy7thj
         78Rw4LXYV06WWV00SleC4wFBnApcXvTylNI1VqzAtVq6vc7KV1i/JDrRui1bnDlQZ/X9
         b4IbJLwDcWqRYiyfETuTAedoIx+eT1T7f9JTmFS4vrydOSDb8K/UfijZsg0NuHAULZC6
         Ly205JhG5jnrRnPpigHkDsWV7ClXOUCbovo0WIgAGTA4iVsxy7LrIFdeYbKWXXHhfUod
         oyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=46jqyUAOdQymVlYw475Aqg+KrYhuvdbs/1MA8o6umXs=;
        b=i9A8J44NtxUo/a9C9Tw73e64rW51oO62R7p8pDLhG+chWCO1tuAltW1W8RBoUX86NO
         W7G60bMP7iVmlbSaP0+Qyn4irpyLlqF5T0mF+91bh0cvgL/JrV4ZZZsuXKom76t5NdEU
         MW1xiHSrlIjvIFtxs4jMTHncc6AZRYqP8uayOdLTuZxa68F0x1FEybvN1iHvxDdCoHIK
         WyQpaI9ZmK36cTduRxo3wqkA97KDkzFLliWwDgsOGe9sdJHv2pVKu11eLzaK6Vk5l255
         n4cVc4YJkCohtuyBokyFrfN6jOE379PIMn/RuXN3qO68CQJDAWyNaET7MjPtiFDinoLj
         thzA==
X-Gm-Message-State: AMke39mH2cZcklZi6S4pF9uU5nOLEV9hLMnOG2lcLOCVWugmSjOkdNQtZvXL+16GbEBn1o2sb2rqy3eCcKoWxg==
X-Received: by 10.36.103.142 with SMTP id u136mr8427605itc.89.1488433108229;
 Wed, 01 Mar 2017 21:38:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 1 Mar 2017 21:37:57 -0800 (PST)
In-Reply-To: <1488431965-24969-1-git-send-email-gs051095@gmail.com>
References: <1488431965-24969-1-git-send-email-gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 2 Mar 2017 11:07:57 +0530
Message-ID: <CAOCi2DETBQrjt4CHHMvYaJ=fxc4JHXMK6piMs41F9oyofrfLFQ@mail.gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192u: Constufy ieee80211_qos_parameters structure
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114a91bcb02da90549b8d674

--001a114a91bcb02da90549b8d674
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 10:49 AM, Gargi Sharma <gs051095@gmail.com> wrote:
>
> Declare def_qos_parameters instance of the ieee80211_qos_parameters
> structure as it is only passed src parameter to the function memcpy.
> The fields of def_qos_parameters structure are never modified and
> hence it can be declared as const.
>

The commit message is a bit incorrect here. Please ignore this patch.

thanks and apologies,
gargi

> Coccinelle Script:
>
> @r1 disable optional_qualifier@
> identifier i;
> position p;
> @@
>
> static struct ieee80211_qos_parameters i@p ={...};
>
> @ok1@
> identifier r1.i;
> position p;
> expression e1,e2;
> @@
> memcpy(e1,&i@p,e2)
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct ieee80211_qos_parameters i={...};
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
>         - Improved the coccinelle script to check for safety of the
>           modification.
>         - Improved the commit message.
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c
b/drivers/staging/rtl8192u/r8192U_core.c
> index b631990..bbb5f58 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device
*dev)
>         }
>  }
>
> -static struct ieee80211_qos_parameters def_qos_parameters = {
> +static const struct ieee80211_qos_parameters def_qos_parameters = {
>         {cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
>         {cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
>         {2, 2, 2, 2},/* aifs */
> --
> 2.7.4
>

--001a114a91bcb02da90549b8d674
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Mar 2, 2017 at 10:49 AM, Gargi Sharma &lt;<a href=
=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt; wrote:<br>&gt;<br=
>&gt; Declare def_qos_parameters instance of the ieee80211_qos_parameters<b=
r>&gt; structure as it is only passed src parameter to the function memcpy.=
<br>&gt; The fields of def_qos_parameters structure are never modified and<=
br>&gt; hence it can be declared as const.<br>&gt;<div><br></div><div>The c=
ommit message is a bit incorrect here. Please ignore this patch.</div><div>=
<br></div><div>thanks and apologies,</div><div>gargi</div><div><br>&gt; Coc=
cinelle Script:<br>&gt;<br>&gt; @r1 disable optional_qualifier@<br>&gt; ide=
ntifier i;<br>&gt; position p;<br>&gt; @@<br>&gt;<br>&gt; static struct iee=
e80211_qos_parameters i@p =3D{...};<br>&gt;<br>&gt; @ok1@<br>&gt; identifie=
r r1.i;<br>&gt; position p;<br>&gt; expression e1,e2;<br>&gt; @@<br>&gt; me=
mcpy(e1,&amp;i@p,e2)<br>&gt;<br>&gt; @bad@<br>&gt; position p!=3D{r1.p,ok1.=
p};<br>&gt; identifier r1.i;<br>&gt; @@<br>&gt; i@p<br>&gt;<br>&gt; @depend=
s on !bad disable optional_qualifier@<br>&gt; identifier r1.i;<br>&gt; @@<b=
r>&gt; static<br>&gt; +const<br>&gt; struct ieee80211_qos_parameters i=3D{.=
..};<br>&gt;<br>&gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs05=
1095@gmail.com">gs051095@gmail.com</a>&gt;<br>&gt; ---<br>&gt; Changes in v=
2:<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Improved the coccinelle script to =
check for safety of the<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 modifica=
tion.<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Improved the commit message.<br=
>&gt; ---<br>&gt; =C2=A0drivers/staging/rtl8192u/r8192U_core.c | 2 +-<br>&g=
t; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>&gt;<br>&gt; diff=
 --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/=
r8192U_core.c<br>&gt; index b631990..bbb5f58 100644<br>&gt; --- a/drivers/s=
taging/rtl8192u/r8192U_core.c<br>&gt; +++ b/drivers/staging/rtl8192u/r8192U=
_core.c<br>&gt; @@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struc=
t net_device *dev)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; =C2=A0}<br=
>&gt;<br>&gt; -static struct ieee80211_qos_parameters def_qos_parameters =
=3D {<br>&gt; +static const struct ieee80211_qos_parameters def_qos_paramet=
ers =3D {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {cpu_to_le16(3), cpu_to_le16(=
3), cpu_to_le16(3), cpu_to_le16(3)},<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 {c=
pu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 {2, 2, 2, 2},/* aifs */<br>&gt; --<br>&gt; 2.7.4<b=
r>&gt;<br></div></div>

--001a114a91bcb02da90549b8d674--

