Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6B1BA35
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 14:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IfF72/V5"
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1cc3bb32b5dso6313225ad.3
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 07:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698588676; x=1699193476; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+k/F3pywcFNb9QPmBba7PeS4yjsOLc+34a2n9PbqANc=;
        b=IfF72/V5Ul5Gt221CqT1JnPOcygiHmakV5q0YGmxWi+crI0gkjKS/sxLP1jLceWo22
         8bDSkbIzVA2RZawyWxVE4rsc+WevaiFYiUJWIjJytvDtKgK89m8bPk/ROEj6MYFoVWrB
         Kdd7qE5yLKnsB2e9a16qVmSgYr6nysakBuzjQuohXlehqmbgjKC3oc4onS2JZsMUP7Eb
         R+ca0Rfacn58yKhwyad5l+eNOBg1LZc3kKheKQXFNFkX4T6WGaRmu34aS5Ul5EKHquE+
         IkvLooLZ8+MFwEGEnXQmaDWMGWzU6sCImQarrL/NGKU575R5pKd/vWqMDKIOlwRuYqjj
         k/TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698588676; x=1699193476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+k/F3pywcFNb9QPmBba7PeS4yjsOLc+34a2n9PbqANc=;
        b=ra1aC3CUJLiBKVfU4hzR3cE2X15/SsIjrJwz1uwfCHwjKG74Wb/ZWZVT0eR207GeSX
         +Bw1lNtfql4a6xI6L0WutNLRYWcj/LgBdqVqc2VXnGwKQDNaQtcf5uYM/rElhHglBSvw
         uy5cNOSN6vFJAXorWxSJWwAokT1yLfrj3f/ju8TLaz4njhY60+iy0sDkNHgdbkAAjuga
         Fgmv+O6a4x9L2Dz6vwLwMtF/Ja8PYdE3+I7KzYs0Q6eTQZRI0WIUSjsaYTulTJUpxnUq
         H/EqY92F4GLtDuU/iTKt0308c6oigJtmjI0nYzmrsYrRQUU5SRZtQWdIXr74fjeC/JSt
         QyFw==
X-Gm-Message-State: AOJu0YxPXgtHKlaLKdP/6udau5M7yM4ibsU7M1PLT2/GogmLo2v0gWEr
	sSlHurz7TdmwJkH+5tgsdjo=
X-Google-Smtp-Source: AGHT+IH1AgjGDZDT4RHmsde26FFxupiT7h34t3COj9dMXHpKj9wEbiSmTqymPLKQOAUsECrwwivUPA==
X-Received: by 2002:a17:902:d2cf:b0:1cc:45f1:adf5 with SMTP id n15-20020a170902d2cf00b001cc45f1adf5mr1305980plc.40.1698588675884;
        Sun, 29 Oct 2023 07:11:15 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id jf2-20020a170903268200b001cc32261bdfsm2609034plb.38.2023.10.29.07.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 07:11:14 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 4EA20819823E; Sun, 29 Oct 2023 21:11:08 +0700 (WIB)
Date: Sun, 29 Oct 2023 21:11:07 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Dorine Tipo <dorine.a.tipo@gmail.com>,
	Linux Outreachy <outreachy@lists.linux.dev>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Helen Koike <helen.koike@collabora.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Nick Terrell <terrelln@fb.com>,
	Daniel Stone <daniels@collabora.com>,
	Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH] Fix line Length
Message-ID: <ZT5n-5hSfD0MqsnT@debian.me>
References: <20231029135104.5136-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+IGZbxdgpE8N3o2c"
Content-Disposition: inline
In-Reply-To: <20231029135104.5136-1-dorine.a.tipo@gmail.com>


--+IGZbxdgpE8N3o2c
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 29, 2023 at 01:51:04PM +0000, Dorine Tipo wrote:
>=20
> Fix the line lengths of lines 8 and 49
>=20

Is it checkpatch fix?

> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/gpu/drm/ci/igt_runner.sh | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_ru=
nner.sh
> index 2bb759165063..d7b779bb7f64 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -5,7 +5,8 @@ set -ex
> =20
>  export IGT_FORCE_DRIVER=3D${DRIVER_NAME}
>  export PATH=3D$PATH:/igt/bin/
> -export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/i=
gt/lib/x86_64-linux-gnu:/igt/lib:/igt/lib64
> +export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/i=
gt/lib/x86_64-linux-gnu
> +export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib:/igt/lib64

I'd like the former (single-line) assignment version.

> -curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s ${FDO_HTTP_C=
ACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
> +curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s \
> +	${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar =
--zstd -v -x -C /

This one LGTM.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--+IGZbxdgpE8N3o2c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZT5n9gAKCRD2uYlJVVFO
o7KuAQCNWqOLgT6d0cU/7eaEiZMLafusZHMKJi1OvsPCdiDXOQEApgOKm+qME/IC
zdQejLNFHVo5rqO05qFFPEe71U05wQ4=
=buIf
-----END PGP SIGNATURE-----

--+IGZbxdgpE8N3o2c--
