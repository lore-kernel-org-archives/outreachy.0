X-GM-THRID: 6754458583373447168
X-Received: by 2002:a37:688b:: with SMTP id d133mr21066842qkc.470.1572913759696;
        Mon, 04 Nov 2019 16:29:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:68a:: with SMTP id f10ls4749214qth.5.gmail; Mon, 04 Nov
 2019 16:29:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqzQNy3/BgNvtwxHkTEKR+S5+9AqfnYsxX2cveTBftcbE9ar0K+ihfOMzhOiZa4QBX3ProzJ
X-Received: by 2002:ac8:1c49:: with SMTP id j9mr15413210qtk.173.1572913758554;
        Mon, 04 Nov 2019 16:29:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572913758; cv=none;
        d=google.com; s=arc-20160816;
        b=uoiI0G7qyujl5Fw6xGEFN4LYACfnhNxhXlh062Hy8M2rAECJwJrwf51nDFQSw7Nt6+
         1Q4TvLRwY8VK6xkvWmZFBp8gZmiL8yw4UYpqQcnML/WQkNayWToMYioZa52i/yjR+4Fp
         EgrViWOKjlWx2IUkcjTRq8Push0N+sMp4TvgVS3nD19J6ILWd7nIaRJjsD+yNz4AaaVh
         BEfn2d9j+mkKC5y3lKNak/cHPgMUgkN0yX6fhbk6emiNxjlRobmBpOFq7HqYo8sHn4nv
         1DbO2fvq6E879FvJ3njWQdFMTsRCu4KviZOgjRZFpiYGWyOmUehgVFU7UYjN5n0qGq6M
         kAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CDccPPlNGiCfoqu894jO9EoSUuh6MeezFwGXcRRqFkU=;
        b=Rlhsi+DsMggiKvYEE2RcHCssIcKEmpiBv0mfz6fIKKWPqu2c8krqL5kcvWPrcoDM8I
         Febbu3dIFlEnZLBJeVVfXB0nczSBWQW3wdv0o7qitH3AmFiYiSp1wC+SqyNc87Sx87Fq
         BAnS54wiMVlRx4U9JmkHk9rZ9sTGeXvvRoJ0g1x89ei9RiJzkyIn1Zc/SCQcFggl6rWy
         FvnIxD/qHaAck4F0HmMTPC6odEjoIv+vPd8SEhm1rWOqth0oGpCZLH2aHxVJJdTEFrXa
         fuFCs72pyN9umXvl+13spAgtSJyGJp0FsGQg78SbK/rDW4xBUP5a/VhKed8zw99YzzXE
         vKjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HW0/m8Ge";
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id z90si1089647qtc.3.2019.11.04.16.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:29:18 -0800 (PST)
Received-SPF: pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HW0/m8Ge";
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id x21so26798147qto.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CDccPPlNGiCfoqu894jO9EoSUuh6MeezFwGXcRRqFkU=;
        b=HW0/m8GejFEos3m0bmUb9MlAgq1y3jwYvX8Ptry/DkSBH7GndVp/EeYs8a8dBgwM7+
         WQ6MAH8q5CeiYAC8JEAxSytav/btmSheGZNFz/iJnqmMEnISkVnWfB3qT5/sW6joK7mF
         8eZd8KOHdnYSIkm39RwOsbWZwVxGona5Ctg2kIIm1amf84SaJOL/NQQ3VS3aiBb0RgxL
         N0CYEmkkpt3EwGqzwNYY94Hqp7nvv7aPQ+DVuRXapWXbUu2DFlv89K3bosnVu7lzGRX/
         STCRmNCOHXiyaKJywC5TSr+Ve4NktLZpbWB6nRHar0gpimLiYi3KEb6OG2O8y37l0PCl
         S4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CDccPPlNGiCfoqu894jO9EoSUuh6MeezFwGXcRRqFkU=;
        b=dfVxKu0yOd/PlcUCl2hBelFJ1jCO6kc28RgzT6dkkghzlpV4wJwrhkRfNhRCMZg8mZ
         Q14/Hy11/WXjfMYaOma8ISO9NS9MkxC1YKJiw4dPU2X7SCkSc1gvNyzeqoG7/RmDuXey
         KZHlflPYQVlWpNnmoLi6DbX1lCRFF8O6oVKrstWrXWli/6Kzu45MyUtQ+Pjht4eT4ISH
         R2KtMs5vz05QgB5jdoFJqoVan6rGrMbWO4ISEh4mIo3HvaSO6clyf+ztOBYMEKsNaJa9
         pr4Bz1x+1qqGKCqPctTQ/BUiVDN/FhDzd3I0A7lXtmF+mtU6Ep55hbnCAf1ovmONXIUi
         RcXg==
X-Gm-Message-State: APjAAAULMiHwH883PkrifjhdHLzfJwUNTTgdcKmx9D3/XqbAYEgk2Lws
	5GPk4gSZP4TGjbTCeCo5h4j1TzuJbYI=
X-Received: by 2002:ad4:5289:: with SMTP id v9mr521802qvr.134.1572913758044;
        Mon, 04 Nov 2019 16:29:18 -0800 (PST)
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from smtp.gmail.com ([165.204.55.250])
        by smtp.gmail.com with ESMTPSA id t26sm2176247qta.75.2019.11.04.16.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:29:17 -0800 (PST)
Date: Mon, 4 Nov 2019 19:29:15 -0500
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	hamohammed.sa@gmail.com, daniel@ffwll.ch, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH VKMS v3] drm/vkms: Fix typo and preposion in function
 documentation
Message-ID: <20191105002914.wvscxesn2ecno5w3@smtp.gmail.com>
References: <20191104161424.18105-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="335jnswaoauvhj7y"
Content-Disposition: inline
In-Reply-To: <20191104161424.18105-1-gabrielabittencourt00@gmail.com>
User-Agent: NeoMutt/20180716


--335jnswaoauvhj7y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Gabriela,

Did you double-check for other typos?

Reviewed-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>

Thanks

On 11/04, Gabriela Bittencourt wrote:
> Fix typo in word 'blend' and in the word 'destination' and change
> preposition 'at' to 'of' in function 'blend' documentation.
> And change the task introduction word 'Todo' for the word all in uppercase
> - 'TODO'. With the TODO word all in uppercase (as it's the standard) it's
> easier to find the tasks that have to be done throughout the code.
>=20
> Changes since V3:
>  Rodrigo:
>  - Merge the patch series into a single patch since it contains one single
>  logical change
>=20
> Changes since V2:
>  - Add fix typo in  word 'destination'
>  - Add change of the preposition
>  - Fix the name of the function in log message
>  - Add the change in word 'Todo'
>=20
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
>=20
> ---
>=20
> I've tested the patch using kernel-doc
> ---
>  drivers/gpu/drm/vkms/vkms_composer.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/=
vkms_composer.c
> index d5585695c64d..4af2f19480f4 100644
> --- a/drivers/gpu/drm/vkms/vkms_composer.c
> +++ b/drivers/gpu/drm/vkms/vkms_composer.c
> @@ -43,18 +43,18 @@ static uint32_t compute_crc(void *vaddr_out, struct v=
kms_composer *composer)
>  }
> =20
>  /**
> - * blend - belnd value at vaddr_src with value at vaddr_dst
> + * blend - blend value at vaddr_src with value at vaddr_dst
>   * @vaddr_dst: destination address
>   * @vaddr_src: source address
>   * @dest_composer: destination framebuffer's metadata
>   * @src_composer: source framebuffer's metadata
>   *
>   * Blend value at vaddr_src with value at vaddr_dst.
> - * Currently, this function write value at vaddr_src on value
> + * Currently, this function write value of vaddr_src on value
>   * at vaddr_dst using buffer's metadata to locate the new values
> - * from vaddr_src and their distenation at vaddr_dst.
> + * from vaddr_src and their destination at vaddr_dst.
>   *
> - * Todo: Use the alpha value to blend vaddr_src with vaddr_dst
> + * TODO: Use the alpha value to blend vaddr_src with vaddr_dst
>   *	 instead of overwriting it.
>   */
>  static void blend(void *vaddr_dst, void *vaddr_src,
> --=20
> 2.20.1
>=20

--=20
Rodrigo Siqueira
Software Engineer, Advanced Micro Devices (AMD)
https://siqueira.tech

--335jnswaoauvhj7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl3AwloACgkQWJzP/com
vP+wqA//RY1Usj+euFpORZ/pNoIlcFq/SrA/bmS4Iys6TkbVypP114kOmX4EyG3f
Tvbeb32D0lsPv+d3pcqMENJfT4Gef0LS9t9wXuhoAdfcfs83FAsPvxRW44G0U40F
lMVjp13b9pjmsxs74NcxoyEmc7BFfi5sjvZd3dKZS2W/dknvBWrWutrSptNE1iLs
w17SGsiNSx11c92i74pFMf1wD/bw868+53+dhQT1b4QfA8E/WgUs9aAd99I0T7iN
RCiOWUpHgXQ+E/1koZ1XvESECEi1ByBoalQG/MxzY53fJe97oKolUKq7tSmtVwer
Xw4zad+WXVa9hUjoqzoTfPrY0OOX3WgW5Ger+jepbSaGGRWB4qYLuHU89S1uJ6qL
wlYnMVGngOs5Z7Ee46i0Hn57C2q7foSg4xbetYTo3DUqPlTTswr9wIdUsnmgWEaC
5MRRk//wuCBGlef+TDjPyY0Z84aRKKFLR+fYX6kVYsGacRQ2gn8dUtzD9N+jSWd7
5kxwX73u+D1Tm5093lN053VtyOaZn6ESwPTmKHpj4Xd3BIailr3d2Q0H/gACdXr3
uP15UPitWukP5qTXZcuAvFI5rg87qF9yxZ4zxzIGbs6eqWOFT2RhhZA5wdUJ+rcb
+UvXuSowTajR4bs6z6MUUIxEowrzVg+MuHS+ZRXNqDbIMw5z+H8=
=zC3i
-----END PGP SIGNATURE-----

--335jnswaoauvhj7y--

