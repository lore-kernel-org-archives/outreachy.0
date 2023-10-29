Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EFB3C10
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 23:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ls3acaVs"
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1cc2f17ab26so9076995ad.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 16:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698623461; x=1699228261; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tnaUx4F8KrZZ3PGoAEtrzlrFKiWjXS8sFp/d/9HvjiA=;
        b=Ls3acaVsWELSrwHoVk/Sa99dleokk4UTJrlWggI8DMHQMcrz24NWfRfS+Rv1bZiB+G
         8lPoprOASD/3i4/R5VbsaZPYh6SGxUjlf2JcezMYv+Q5zid+61YoWzRxjccaKKcZFyyf
         qh7+Rc3TvpIKl25SPzCb+mo3vQwxpvPPAriRnqVzYzxIUHUeYeOZESmM8tS4fQDJ55Rd
         HtEkOvlEudTA0zAEZirpmrc085lXocYsQ2W9Ahmruf5gAmeA7bd06kgN3tCzuARwwVjg
         s8bdYI0CAjlKEoB92hDiJ20OARzTLzzYH03MGW2J6CjVthqd1xe1Pl8giIKSOxjrZN1f
         +KYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698623461; x=1699228261;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tnaUx4F8KrZZ3PGoAEtrzlrFKiWjXS8sFp/d/9HvjiA=;
        b=IOPCVQ/IHEjnpSIy12OGvFdu2iZrx8bn1Uu64CDyTTWRLvshR9aCUcVqgzNR1pHDik
         tbML4I70sHQkSCNcAJijjKG8flr4Ko9s+8wU1Vaahe0YweilaGbuwf5QTWPEo2pXwZJW
         NsVarbx3JbQw3hkzAILJ96TpKRgJ69XHd/BeQUyFX51c541FEYpOFfPwv4pWuxVc/V73
         r6UXxFP7E41Jp4rY67PHiDpfVCinvHMLKuI1UAMO52VwLjG7vcpa3Q/MaWGBU/ZJr28f
         nGmYEdUr+feTirpG3RcqGp5IVc9W2PEOuN/rusPQZGd03w9dXSOq8gOZv/DeeHA+oWIm
         Ax/g==
X-Gm-Message-State: AOJu0YzJbqAuoYd6c34cfQPvF6zYTFRC4L8U37szlOHA7/AG/eZVK3X7
	ohAbXIOgJkpK8tENtTCV/98=
X-Google-Smtp-Source: AGHT+IHxBs7QaWgZIVC/mTGf2u0/bmEMVPy6LqzGkKMozIa2+zb2CUBE2+Sgs/lTnSYfa4r0xCiPgg==
X-Received: by 2002:a17:902:db09:b0:1cc:3065:9167 with SMTP id m9-20020a170902db0900b001cc30659167mr3416006plx.23.1698623460693;
        Sun, 29 Oct 2023 16:51:00 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902bd0400b001b06c106844sm1077916pls.151.2023.10.29.16.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 16:51:00 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 461598039BBC; Mon, 30 Oct 2023 06:50:56 +0700 (WIB)
Date: Mon, 30 Oct 2023 06:50:55 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>,
	Dorine Tipo <dorine.a.tipo@gmail.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Helen Koike <helen.koike@collabora.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Nick Terrell <terrelln@fb.com>,
	Daniel Stone <daniels@collabora.com>,
	Rob Clark <robdclark@gmail.com>
Cc: Linux Outreachy <outreachy@lists.linux.dev>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH Resend] Fix line Length
Message-ID: <ZT7v39jG4WTxPYjm@debian.me>
References: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
 <alpine.DEB.2.22.394.2310291610030.3136@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hxSAXAGVE2cfMdh7"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2310291610030.3136@hadrien>


--hxSAXAGVE2cfMdh7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 29, 2023 at 04:11:01PM +0100, Julia Lawall wrote:
>=20
>=20
> On Sun, 29 Oct 2023, Dorine Tipo wrote:
>=20
> > Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> >
> > Fix the line lengths of lines 8 and 49
>=20
> The Signed off by line should be here, below the log message.  Please see
> the patches sent by others.
>=20
> >  export IGT_FORCE_DRIVER=3D${DRIVER_NAME}
> >  export PATH=3D$PATH:/igt/bin/
> > -export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:=
/igt/lib/x86_64-linux-gnu:/igt/lib:/igt/lib64
> > +export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:=
/igt/lib/x86_64-linux-gnu
> > +export LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH:/igt/lib:/igt/lib64
>=20
> There was a suggestion that it was better to keep this as one line.
>=20

Hi Julia,

The submitter touched one of CI scripts for the DRM subsystem. To test
this patch, there must be a way to run these scripts locally (which
may requires non-trivial setup).

Cc'ed DRM maintainers.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--hxSAXAGVE2cfMdh7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZT7v2AAKCRD2uYlJVVFO
o954AQD8oXo0ltpyVgNj+W2HrUdj0qfZcYHTNndycvvkv2Y9hQD+IgA8U6ryTDQ/
pvwMNit/pa5/2yFf2sQWJmC+jlJpKAo=
=Wy7e
-----END PGP SIGNATURE-----

--hxSAXAGVE2cfMdh7--
