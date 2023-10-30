Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11067D273
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c73j4/Zh"
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1cc3bb4c307so6779965ad.0
        for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 06:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698672634; x=1699277434; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nDZQvMBmFzFYGrN80SFB3GnaJRbIc+/nPDRx+YXpz98=;
        b=c73j4/ZhVn8jcpTGULZ9u5fFo4zUWIMCSSmpDF9WzlKFAqAlxne11XyCgBi5aHREzk
         ub481ve0Vpr9D7tZ6EgaVJGMmcmfXZ5cM/4xzeIduXEsAbvt6Y0OR+oPzMVJ8AkzAMki
         H2hARoFA60KM48IViTG8Ym0pwExvzf90y8vKYciOLiadZzNAJHMfYjMNBA3FEAe9pR9X
         ZLZPWspvdAyLiPWEb6r+zRSoc6oBENmSEV5MGNwORtspF82UNfz3DIcAF4qxhdiiaAUA
         YloRoAquzYgon2iFpbP4yfmF8dcLVuVFDQ0rPYbxzQTm0Ogw/VYAhy/g4Voor+UI6Olv
         FA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698672634; x=1699277434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nDZQvMBmFzFYGrN80SFB3GnaJRbIc+/nPDRx+YXpz98=;
        b=Bw9z7zX37ilg/XA0USf4aZ0yO2BB1eQH3t2kAxDYI/ZL7qsQrddXJH5UNIF6gidlXX
         C0jHzfRjJ7PXIwfFzfMA+xbwcOF5A2nD7mICHjVzl3/n6FOAHSlcRBKz1Na6b2douZiI
         8MEfLDmSJtwvfiPZc/LRaeLi+tE0zAlNNOicrHSq2AOMfwhbHAIBj+00r6G2rlrgwapU
         Q0rnmufp/Pp2knrUm6kwIX05TVavNlHfeUZXegnxT1eD66uGFzl0D+DYcGnB3wnBpGIw
         AvawX4bfAsHQZbtSMdqTUFIE2EloTgF3sVLGIQV3HG3npPxovNYDbBH2hT1/7qNdHPL8
         T9kg==
X-Gm-Message-State: AOJu0Yx/7+6Cc0YNfVDbCjNNKBCWCrHcTwAiGvwAN7ffa4jOBshWrquE
	FPck/E6Xj3fKRXIFZZU061E=
X-Google-Smtp-Source: AGHT+IEbtbzOJAOopCP1JpmAOESkEzrujDiModEn7pbNYkUjtp65GcYSF5uz7cBW6zOMHP+9C9Ueqw==
X-Received: by 2002:a17:902:c409:b0:1c9:f418:c07b with SMTP id k9-20020a170902c40900b001c9f418c07bmr9448545plk.66.1698672633924;
        Mon, 30 Oct 2023 06:30:33 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001acae9734c0sm6261137plf.266.2023.10.30.06.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 06:30:33 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 3A5278036CCB; Mon, 30 Oct 2023 20:30:27 +0700 (WIB)
Date: Mon, 30 Oct 2023 20:30:27 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>,
	Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [PATCH] staging: Remove unnecessary parentheses
Message-ID: <ZT-v87lTgQIx9rMu@debian.me>
References: <20231029185405.11073-1-dorine.a.tipo@gmail.com>
 <ZT-cPxSGysyfLCfk@debian.me>
 <2023103021-flashily-eatery-1ac8@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PnIZMH0Szz4mENF/"
Content-Disposition: inline
In-Reply-To: <2023103021-flashily-eatery-1ac8@gregkh>


--PnIZMH0Szz4mENF/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 01:40:14PM +0100, Greg KH wrote:
> On Mon, Oct 30, 2023 at 07:06:23PM +0700, Bagas Sanjaya wrote:
> > On Sun, Oct 29, 2023 at 06:54:05PM +0000, Dorine Tipo wrote:
> > > diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/stagin=
g/octeon/ethernet-rgmii.c
> > > index 0c4fac31540a..15d2c84925ba 100644
> > > --- a/drivers/staging/octeon/ethernet-rgmii.c
> > > +++ b/drivers/staging/octeon/ethernet-rgmii.c
> > > @@ -148,7 +148,7 @@ int cvm_oct_rgmii_open(struct net_device *dev)
> > >  		 */
> > >  		if ((priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_GMII &&
> > >  		     priv->port  =3D=3D 0) ||
> > > -		    (priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_RGMII)) {
> > > +		    priv->imode =3D=3D CVMX_HELPER_INTERFACE_MODE_RGMII) {
> > >  			priv->poll =3D cvm_oct_check_preamble_errors;
> > >  			cvm_oct_check_preamble_errors(dev);
> > >  		}
> > >=20
> >=20
> > I'd prefer explicit parens on the right-hand side of || instead (to mat=
ch
> > the left-hand one).
>=20
> Sorry, but as always for this type of change, I will reject it so
> there's no need to ask for it to be cleaned up any other way.

Oh dear! That's what I mean (keeping the status quo/code unchanged).

>=20
> Dorine, this type of change is constantly rejected on the mailing list
> that you should be copying all of these patches to.  Please search the
> archives for reasons why.

Greg has review discussions on why it is the case ([1] and [2]).

[1]: https://lore.kernel.org/all/Y%2FiaYtKk4VSokAFz@kroah.com/
[2]: https://lore.kernel.org/all/20190401060216.GA5286@kroah.com/

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--PnIZMH0Szz4mENF/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZT+v8AAKCRD2uYlJVVFO
o20xAP0Xbrl73/nKyvB2a0hcuSlKUdrPwLuItKs2tRQE7QdCJQD9F1U7b149ZByZ
hJhEsmi9gpk8+kiwFZSB1G12V6UagQ0=
=pE/a
-----END PGP SIGNATURE-----

--PnIZMH0Szz4mENF/--
