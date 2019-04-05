X-GM-THRID: 6674267883353145344
X-Received: by 2002:a5d:4211:: with SMTP id n17mr703038wrq.3.1554472391335;
        Fri, 05 Apr 2019 06:53:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls2109410wrp.7.gmail; Fri, 05 Apr
 2019 06:53:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwj+BqB91itHR2nk5DUUNFPoLq9KN+amQgE8SCviR4C+DngIRdSiAk907TkzM/5d4ohlWsz
X-Received: by 2002:a5d:4ac2:: with SMTP id y2mr205672wrs.22.1554472390228;
        Fri, 05 Apr 2019 06:53:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554472390; cv=none;
        d=google.com; s=arc-20160816;
        b=SyZ7DDdCJ+i/QvIKg+sy+5DEbxc6yr4v1wMhFkufuT16V+MIby3p7Us/hCACuuCe5z
         nInO1cgJhsqmqZelQe3Qprh9WvznBq4IBhFqhirziqmhcQf6cYZ9eBrlO7biJXti1xjT
         Vsq8L3lOtNXrvGopElQdIi8i3CoDwVLdyaN1YBHfr56APnljPbgVvcrs/OYqiGuzqdB8
         6a3OqwovxKvnScD2vvIkRMZTEAEvmykRdar6r8cQa4hfDB5SSVRneJ11GE+7l4bMuH+d
         SDTkHuB6i5fxgg4FKBC6/EehWJY1DGqQvY2Zak5W5rrFe6tA2MipQEQgE0L1slnBQCjS
         rwjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QnsG2KPdCVEHduVWadFbf3gmQZ8X8BRjWGI07t8ixlU=;
        b=I6EHqAykztT/92i5crnw2Ce2bTQ+wkrFq4jCmTIadEXFK/RFffvsPJ0MTCkKaBAqr/
         BcEoaiuSojYM6GwZF96c3IjmvVKhY/JuHDXJVY2SP6UbYq2ZOTaLypekd9ksVcqGutyW
         22Dzgx86DK5aw3nLiNDtrhjt+TqaQcUaEYp6npLrg4KiDtyerCoKtEcgVu/Z0/JokQZi
         YCzfOOsW+aoBpixgVhPD1SvSPHz3mijs8Vvj7z6bN50lYNHcWeXQqqbCo+k3lgvuD52w
         vet+smKjzvtSth5s+HeKaLuKfYoXQFN4ShIzv9TIpVZIsYOuPdzh5t7saHaiKtpnVbWE
         XoOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi9+Hjmh;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id o3si381354wmf.0.2019.04.05.06.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 06:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi9+Hjmh;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id w10so8146403wrm.4
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 06:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QnsG2KPdCVEHduVWadFbf3gmQZ8X8BRjWGI07t8ixlU=;
        b=Vi9+Hjmh5Lh7WcRX6Ak+2/SXisN6IIeXKgSMFAj5pljOGkGKrFX3l40fpTw92bUiqg
         JxyXf5aIVOIizNmjIopkT3XoL+t/7cln5IXWk0/WXBHmHP++Be4RDfUig0NYeermojvi
         RaKR31tZs/Oc04/i0LnjqhX0g0oDsJV405FlnJ8imNnIRbyDMoH3XANs1u6XOyvHJHoO
         E7TW9CicyNxArRL17DD+BlxDgGBWZbHNdcEYDfAX0AMxU8kWWQJC7u8ed1cIb1FRkJdA
         RFQaPE8ewyJJLrajkXxu641BjUTAcVQN80y//MOxwH6xXuGkhjOJAHSJGsiauKLRTa6v
         e9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QnsG2KPdCVEHduVWadFbf3gmQZ8X8BRjWGI07t8ixlU=;
        b=fZ4AclAIU4kViM8HUpv0jfwPG97Dj+E4DXQhgs6hs3SKTBE6EMAlSWBuvteR2iqoa0
         e0Wgp5CF03Ov7rzdkHWyGCMtD+1RanOrxkbEhzk65uiD/zTcNg8Tv9QfNIS24dOVGLZU
         WxYsaFGUFSHrBjMQhxIfZcnGU+b7aKjaw2BuBP+IQourA3M7hXY9dom9Bq1qioS1VwgU
         L4JbicULEZAdfxl0Fvzzrju6Qz9ihbILE+RCgiXNXazcpLg7ar1JpGL6r1G5286he4fH
         WB3OVfPMMR1nTLwiNzeFbJYGlZUFr6r6Bb+J+xGKHNBLiOs8xP3k+rgfOjY8+ZD/oKc+
         1Q3A==
X-Gm-Message-State: APjAAAVxExY9ZGY4vtXAEOuhRJ13eBhPHO6XE8BgsQEnApcI7MzVSDbS
	zuZfu3qwsIvyANSOExhdQL6ma0NDymnfDSILKarI9Q==
X-Received: by 2002:a05:6000:120c:: with SMTP id e12mr8198897wrx.187.1554472389868;
 Fri, 05 Apr 2019 06:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190403160816.38958-1-himadri18.07@gmail.com>
In-Reply-To: <20190403160816.38958-1-himadri18.07@gmail.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Fri, 5 Apr 2019 19:22:58 +0530
Message-ID: <CAPnhUpbm2tPpWBrB2eLrET_GHcmE8=mHMRHH69uxn0sozk8WOg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8712: remove unnecessary NULL check
To: Larry Finger <Larry.Finger@lwfinger.net>, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009c82eb0585c8cefa"

--0000000000009c82eb0585c8cefa
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr, 2019, 9:38 PM Himadri Pandya, <himadri18.07@gmail.com> wrote:

> List wlan_network is built properly with init_list_head and
> list_add_tail which cancels out its probability of being NULL because of
> the precence of list_head at the top of this structure. Hence, the NULL
> test can be omitted.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> b/drivers/staging/rtl8712/rtl871x_mlme.c
> index e370841a79ca..7c7267d0fc9e 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1120,8 +1120,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv
> *pmlmepriv)
>                 }
>                 pnetwork = container_of(pmlmepriv->pscanned,
>                                         struct wlan_network, list);
> -               if (!pnetwork)
> -                       return _FAIL;
>                 pmlmepriv->pscanned = pmlmepriv->pscanned->next;
>                 if (pmlmepriv->assoc_by_bssid) {
>                         dst_ssid = pnetwork->network.MacAddress;
> --
> 2.17.1
>

Please let me know if the patch needs any further improvements.

Thank you.

- Himadri


>

--0000000000009c82eb0585c8cefa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, 3 Apr, 2019, 9:38 PM Himadri Pandya, &lt;<a hr=
ef=3D"mailto:himadri18.07@gmail.com">himadri18.07@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">List wlan_network is built properly=
 with init_list_head and<br>
list_add_tail which cancels out its probability of being NULL because of<br=
>
the precence of list_head at the top of this structure. Hence, the NULL<br>
test can be omitted.<br>
<br>
Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail.com"=
 target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/rtl8712/rtl871x_mlme.c | 2 --<br>
=C2=A01 file changed, 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl87=
12/rtl871x_mlme.c<br>
index e370841a79ca..7c7267d0fc9e 100644<br>
--- a/drivers/staging/rtl8712/rtl871x_mlme.c<br>
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c<br>
@@ -1120,8 +1120,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv =
*pmlmepriv)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pnetwork =3D contai=
ner_of(pmlmepriv-&gt;pscanned,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct w=
lan_network, list);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pnetwork)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return _FAIL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pmlmepriv-&gt;pscan=
ned =3D pmlmepriv-&gt;pscanned-&gt;next;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pmlmepriv-&gt;a=
ssoc_by_bssid) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dst_ssid =3D pnetwork-&gt;network.MacAddress;<br>
-- <br>
2.17.1<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto"><div dir=3D"auto" style=3D"font-family:sans-serif">Please let me know=
 if the patch needs any further improvements.</div><div dir=3D"auto" style=
=3D"font-family:sans-serif"><br></div><div dir=3D"auto" style=3D"font-famil=
y:sans-serif">Thank you.</div><div dir=3D"auto" style=3D"font-family:sans-s=
erif"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif">- Himadr=
i</div><div dir=3D"auto" style=3D"font-family:sans-serif"><br></div></div><=
div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
</blockquote></div></div></div>

--0000000000009c82eb0585c8cefa--

