X-GM-THRID: 6754458583373447168
X-Received: by 2002:aa7:9639:: with SMTP id r25mr31490140pfg.17.1572882618690;
        Mon, 04 Nov 2019 07:50:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2ec5:: with SMTP id u188ls1255552pfu.0.gmail; Mon, 04
 Nov 2019 07:50:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwv4nCcyhHtwVMVw9QyCWryKIF46nYEqUdr3DAID01wwMlWAzzKJf0USuqHKA+Q1FAgI0h+
X-Received: by 2002:a63:b62:: with SMTP id a34mr10884463pgl.123.1572882617565;
        Mon, 04 Nov 2019 07:50:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572882617; cv=none;
        d=google.com; s=arc-20160816;
        b=xrhEJj7bzX6IhAGUJ7mhYocs19L3/5lu5qJTlfHmXfMyyvGdT221wXixXZgKbP1FRl
         qkTg8UTeUM+rQs8O0e1yeXzVdvcu7Jeg+/I3DtLQgpgYJUFwGZHOsCuiY5e4QKznAT2q
         Bgz9kM9HymRcN/c2uYQqEecjJWj2N3vaH/mag7vW577fz33MthrDvPBdnqhw0EkBH2pR
         dKTbonJ3qZMn+WK/0BvFry2Ya5PXr/NLyYz8EjBhFlG3pJSWkhwDh9XnnDtRKUMSyuoi
         MpYbKrHF+jKOyV0u17J7FZlxHftutIseMfpDFZWbd0l9xtQWEjAOEwSYiRLrsO0MOp+c
         hO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kP1Dsw0pGBhULD74j5Sjmpym4D/yTZlUKtWObbsiHq4=;
        b=iPQUBZtmV9FVtmIbabt9Afbwx5GOakoTGPWHuqqej2yejxH4Gxa66fxCCD8nsoGyHL
         RHyZeuMAsUyyK7zDporvEDH3EUU5ya+ZRL+YtB/8KmtE/VnvOt2QfCqT3cGcSTzh9Hqm
         wgsaKTMk8QhkkvvDGwJI/tThAjRaiuHfv2m/+v7xP2hj3QA9YHZTdfjhEb7w1biYC9U4
         kwStL2aoHYb8bqokm42DV9X2nPTJy31IrpA1WjwkhKAwP/jlVxpeMceDVHF3MqYCXhwi
         9NNcwVgkSIHW9xiOm6mwPP88uvr3NPXNcWdL8VwC93HhWXfISlOvjG2XdHT8DF1uJJxa
         xPSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=egXtoZb7;
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id ba9si585659plb.5.2019.11.04.07.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 07:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=egXtoZb7;
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id h2so11344286qto.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 07:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kP1Dsw0pGBhULD74j5Sjmpym4D/yTZlUKtWObbsiHq4=;
        b=egXtoZb7MmoQ1HRgP9tQUpSPHXsTK+enkEWTl24Fk3OGYR/IOBbJiHQPQy98PTWtak
         QmdJXQBXQJP7sUhFBUnMEYnTikz5jW4KkkK9StBmCPX0mUZFuanD20UXFQFheD3spcHb
         CEuT1sDaWxqErg3SQ0xnbreybvvUCbm8BSDsNMnSD7WnlWuekBne0wJDC9Z1R05sC/jF
         /slklHPsyOfI3EaXdejEC1N3dB6X5oDBSJ06oU7zummvij6J3akUSE1zI0mPJCSdjEcB
         KC/Uwk37Tw+akwYLUtvCEviimV7d4e/sq1DkTjaD6MBSgmbm0qIXneJcjf/KAXNOr08y
         XQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kP1Dsw0pGBhULD74j5Sjmpym4D/yTZlUKtWObbsiHq4=;
        b=WKdQVCW54XD+1ibdYwwX1DgzHkW2L6F2lQfo6wOvB4WR4GS+dOE/zb3EW1FBHTDg2r
         Fb1RQ2jOgznB52BDwLzGYhjwMOCVxD2h3rUcY+5oRM/27LC8UcO8BXA/WxhQnzhqtd4/
         PvCofUk84I54ijcFRia7sDJbMDJUQ0GzkWkeS+GoVqskabf9zet7OJ0lp9ihOxz7EFmw
         wiwLNr210GfbbLuMTiEpkcA0kQJwRB8Be2Nd4Q0p54a6TcYqV0wC/8n+P57DsJmUSdCW
         z1fBgWEiL/ZFlsZX5+LF8FuhPp3Ffw2oKjY3wY0zYgl8Ov7RVU6pxAK9c+VKaprwSbHq
         AR0g==
X-Gm-Message-State: APjAAAXKxw2w3qz0JoSFjDZXCxkLDJCRMO2jf8JdzAn2XaDcwBZ0Dbej
	o7wBoXN4yBI3J7q0l/KGGTE=
X-Received: by 2002:ac8:5485:: with SMTP id h5mr13011854qtq.16.1572882615816;
        Mon, 04 Nov 2019 07:50:15 -0800 (PST)
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from smtp.gmail.com ([165.204.55.250])
        by smtp.gmail.com with ESMTPSA id a66sm8308420qkd.34.2019.11.04.07.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 07:50:15 -0800 (PST)
Date: Mon, 4 Nov 2019 10:50:13 -0500
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	hamohammed.sa@gmail.com, daniel@ffwll.ch, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org, trivial@kernel.org
Subject: Re: [PATCH v2 VKMS 0/2] drm/vkms: Changing some words in 'blend'
 function documentation
Message-ID: <20191104155012.wdg25roebjqt4tiy@smtp.gmail.com>
References: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="arzbpojwlifr6sea"
Content-Disposition: inline
In-Reply-To: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
User-Agent: NeoMutt/20180716


--arzbpojwlifr6sea
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Gabriela,

In the case of this series and the patch "drm/vkms: Fix typo in function
documentation", I recommend you to use a single patch. In general, If
your changes produce a lot of deltas, you need to split them into
individual patches that modify things in logical stages. In these
patches, you made changes to some files that belong to the same patch;
thus, a single logical change is contained within a single patch.[1]

Btw, thanks for fix these issues.

Best Regards

1. https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#se=
parate-your-changes

On 11/01, Gabriela Bittencourt wrote:
> Changes in v2:
> - Add fixing typo in word 'destination'
> - Add change of the preposition
> - In v1 the name of the function was wrong, fix it in this version
> - Add the patch changing the word 'TODO'
>=20
> I've tested the patches using kernel-doc
>=20
> Gabriela Bittencourt (2):
>   drm/vkms: Fix typo and preposion in function documentation
>   drm/vkms: Changing a 'Todo' to a 'TODO' in code comment
>=20
>  drivers/gpu/drm/vkms/vkms_composer.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> --=20
> 2.20.1
>=20

--=20
Rodrigo Siqueira
Software Engineer, Advanced Micro Devices (AMD)
https://siqueira.tech

--arzbpojwlifr6sea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl3ASLQACgkQWJzP/com
vP8nuBAAtA6lod7nNzI304FKxAxD1+ZvfHaYc7MNdBouOK0OiYwKTA3yu2W97k2S
LO/lfqZc9fBLb8r4MgogGnRbQ6esN5A/lSUpPUsHltcD6HKWK/wdl1soebYYn+M0
LEyKFHsGptJuQyXLvBIo44UaXBmXzadRZxsaF62F/LLsbqDnHswM7OLrl832Wv3r
YMBp6P0siy6tJXUMy0FPYWD6/t/67Fq+Z287d7Xex9Kc6RJLly98mNlmfkvg9NcD
88NaSz3dVo0eUvUffiy3LWwRcUlVdZvE4jOjv9w+qzEJ5xKEMNHYCEd1Osqq/Q+x
HkfWuwXY4MtIs1UHaC8uR0eC47oaX/mWuZSoEqnbS7O60sKwbxZIUdHMcGJdMkLw
qDbJ5GXslD1nMzfOJzVyWljoLVS92ScFn+Q1f4x75j7aV5ioJW7A91GJytloLFDd
LBGa3maYQmuvWtjOLbiIQc9fqXt0Ef/Hiv57ZRCCbPBg5wui1EtqfLiWN73tLlKh
rEMAAFOhCDcsomnzkl6tMT37iHlhAgMSDBx0oXNtv+Pl+oo4QN5s4Gb0YBawOSTA
kqZak08Mci4zrBFqlarBjxlJirWO4f8fS3yVYQsm1vqXcV71hoa18SwDeTApUHh7
n3+5wK5xKmelhdgX+cJxZm8dI3NiW5+uER+cm9Kfbv7ZPusk4ro=
=5GmA
-----END PGP SIGNATURE-----

--arzbpojwlifr6sea--

