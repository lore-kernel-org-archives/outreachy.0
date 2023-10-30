Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF251D29E
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 12:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kHMjSRQM"
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1cc2fc281cdso10688245ad.0
        for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 05:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698667588; x=1699272388; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zUKw7odBdhzecvoGM23NdzRT1rvFqZvxoReTrdJla34=;
        b=kHMjSRQMFKjxVDCs4iEHoP+clvjb3zRDf9P9nk2bwXurs8vH4HBBXzHAxALENYjyr8
         u/Jg91v2S+6pJwDMLNNM+l2ou3pMKbVxYeyFoSQgo0PEekCZPwW96k56+YnhkImcYlDX
         W2PiwkyrW+ydheNtDsI8d9RGFZ22FHqnGosUifQuXiS38t9Y199iHrX/z0GcwqH+H6It
         XzjGeupaVAI4mobyVxofT8e3eAED+ut11g8Hg0qKOn3Vc8kKYRjs6gMXjWx64pJAa9FG
         L7hJ5OqqGb49TUhB8zjz5kjBmHVFv1EnKK1jTOv+eNpL8CjKeIkDoXH9b/0GM9zLtgmy
         TMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698667588; x=1699272388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUKw7odBdhzecvoGM23NdzRT1rvFqZvxoReTrdJla34=;
        b=LZXIbrnB7aFeEmWy45opCgYDy5TATAxxPIcI4gr/eqmOpIjHPYxxEIKTty/E/VMPPs
         y2fYtrnfS1xSGBLg1Ngb2rFolp+al4bZcjgfvF4W7poEjroYFByDi2V3Khk/g8OkPkii
         xak7TbT2jep8NZj+sXYPk/YjfdNDjZMfoxuWTCotVwG0O+pr8IcGPVq/MrYz1qKyLXpx
         OmYlEGaQW3JPpCjMLZamxLFXiNmhTpM4rG3CqV4itTgPG1PssRy5MmatT2TT+uypVwB1
         7FlRPQsq13+m0hNFlsWvp7ZoHX3/Ja94CJUkpPYGKVyvvOmP1uHUJ0NV47wpY9EFi5iY
         Bm0A==
X-Gm-Message-State: AOJu0YyzGrleXZpzAx4ZKK5APsrXTU/qjgyPbVJuAZ1ct7vunRiIRM99
	0KtLdn7HALeIn9fftl3kxubyx0ddoAQ=
X-Google-Smtp-Source: AGHT+IHgW7c28v+ZZVJKPORmCkaCoWAUlk0zgUxHr3eo7CYEpH/iNKXSsTxND9m6sathCjbpvISqsQ==
X-Received: by 2002:a17:902:f1d2:b0:1ca:12f3:6775 with SMTP id e18-20020a170902f1d200b001ca12f36775mr6008259plc.33.1698667587815;
        Mon, 30 Oct 2023 05:06:27 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id u2-20020a1709026e0200b001c746b986e5sm6317085plk.45.2023.10.30.05.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 05:06:27 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id CC456805F1FC; Mon, 30 Oct 2023 19:06:23 +0700 (WIB)
Date: Mon, 30 Oct 2023 19:06:23 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Dorine Tipo <dorine.a.tipo@gmail.com>, outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: Remove unnecessary parentheses
Message-ID: <ZT-cPxSGysyfLCfk@debian.me>
References: <20231029185405.11073-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="43/DOtcj1xq9fsHO"
Content-Disposition: inline
In-Reply-To: <20231029185405.11073-1-dorine.a.tipo@gmail.com>


--43/DOtcj1xq9fsHO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 29, 2023 at 06:54:05PM +0000, Dorine Tipo wrote:
> diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/oc=
teon/ethernet-rgmii.c
> index 0c4fac31540a..15d2c84925ba 100644
> --- a/drivers/staging/octeon/ethernet-rgmii.c
> +++ b/drivers/staging/octeon/ethernet-rgmii.c
> @@ -148,7 +148,7 @@ int cvm_oct_rgmii_open(struct net_device *dev)
>  		 */
>  		if ((priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_GMII &&
>  		     priv->port  =3D=3D 0) ||
> -		    (priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_RGMII)) {
> +		    priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_RGMII) {
>  			priv->poll =3D cvm_oct_check_preamble_errors;
>  			cvm_oct_check_preamble_errors(dev);
>  		}
>=20

I'd prefer explicit parens on the right-hand side of || instead (to match
the left-hand one).

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--43/DOtcj1xq9fsHO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZT+cNQAKCRD2uYlJVVFO
o+XgAP4zhPcSQazQB6xNijSxzVdT7hVGYH9BmkZFL7J7nfuwwAD/XnQ1sWNZSyqQ
ZqwV44XVQbjwOlIorSDn8gE5UtHpDwY=
=E2MP
-----END PGP SIGNATURE-----

--43/DOtcj1xq9fsHO--
