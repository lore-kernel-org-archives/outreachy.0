Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158831841
	for <outreachy@lists.linux.dev>; Wed,  1 Nov 2023 02:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ImHruutW"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6b89ab5ddb7so6397235b3a.0
        for <outreachy@lists.linux.dev>; Tue, 31 Oct 2023 19:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698804691; x=1699409491; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PkwyaILwsX+VKZTDFEUltkIi2zr5qDA6qHFMO6lWAZw=;
        b=ImHruutWdBFA5Lz8AR87YqJa5AbGczYf6NtLBz3zA/Qr6Ccsga2Ys+MrC7lR+0PIqo
         JW0frYd+Br66LHLxeI/isYv+jP4s7zZ01+zPUIL4cXFfHhT7G6UrCLvG9cz9fSOtgIsk
         ouz/0vy2Vmq4VZParwqjyZRWXOLKNjTeRzVJ7X8NzO5GQKgrygiPQE/FMRw1rPMRrwqG
         Fh+s5Q1dHJwyPduG4eOxLR2qorjLIB3QkJiu6uZoif/ffqKIT75EPXUnUmOUOfYYByph
         2qKorb8qgnmq9M59KrY5wfR9IT3ZK1lO9VFOhqgK/YxQ0rm3XWxanMoOtIA304EFK2iq
         D/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698804691; x=1699409491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PkwyaILwsX+VKZTDFEUltkIi2zr5qDA6qHFMO6lWAZw=;
        b=j1Bz+WnUCQEaLuavrm6jST0a5s15T8r77tmpcxZY7Di2u5lPFkYH/rOUnyNcu15Gow
         33vHm0hx4SURyUF4Qyl94svmwmXg58SztjQ2uyXSgJzR6dNhq71F68vuo3XcD8CIwT+i
         CembDmmtg3ptGoK7BTx82DS2SYZn/oIEsAf6NV0mewBC3MDqeJ1VLdiakg5Ehrj5Q/TP
         sjQu4gJMCJeYSxdD5toxiaF0snKc5zEF1UjUo1/DsHRxWjk8vbgrb61XBYbPHIi+Qk8/
         ksflL6v/Ffek/gnqJxEQ6JuqmRCEOrH5ZWC+BbtvrYpnvGe6d6607JvzwngJ3/rYUkwD
         8bPg==
X-Gm-Message-State: AOJu0YxWT+l1MF4TBgdX/47gV9mcfZm9wfFlrkHZH4qZV3BEwNo008/o
	VMVz0fbt/uOeGCklD+Mx/cw=
X-Google-Smtp-Source: AGHT+IED9CeFPa2E+EjUNPDryeGPow3qOhz0APJeFNDxLSOX0Ztnwop3hA9Qhu4rcOE+I85CHm8FpQ==
X-Received: by 2002:a05:6a20:2d2c:b0:17a:f37e:ddc2 with SMTP id g44-20020a056a202d2c00b0017af37eddc2mr16632463pzl.47.1698804691275;
        Tue, 31 Oct 2023 19:11:31 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id e9-20020a170902d38900b001a80ad9c599sm204872pld.294.2023.10.31.19.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 19:11:30 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 589A5819CFCE; Wed,  1 Nov 2023 09:10:56 +0700 (WIB)
Date: Wed, 1 Nov 2023 09:10:39 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Helen Koike <helen.koike@collabora.com>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: Daniel Stone <daniels@collabora.com>,
	Linux Outreachy <outreachy@lists.linux.dev>,
	Greg KH <gregkh@linuxfoundation.org>,
	Nick Terrell <terrelln@fb.com>,
	Linux DRI Development <dri-devel@lists.freedesktop.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: Re: [PATCH Resend] Fix line Length
Message-ID: <ZUGzn-xcoymIfoQA@debian.me>
References: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
 <alpine.DEB.2.22.394.2310291610030.3136@hadrien>
 <ZT7v39jG4WTxPYjm@debian.me>
 <alpine.DEB.2.22.394.2310300712310.3533@hadrien>
 <3f1fdfa2-e30b-42c6-b290-bb02283b3589@gmail.com>
 <318c568f-c813-4d16-b577-28f37cde92c7@collabora.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dooGvATdJTR1HNc3"
Content-Disposition: inline
In-Reply-To: <318c568f-c813-4d16-b577-28f37cde92c7@collabora.com>


--dooGvATdJTR1HNc3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 03:36:30PM -0300, Helen Koike wrote:
>=20
>=20
> On 30/10/2023 08:36, Bagas Sanjaya wrote:
> > On 30/10/2023 13:12, Julia Lawall wrote:
> > >=20
> > >=20
> > > On Mon, 30 Oct 2023, Bagas Sanjaya wrote:
> > >=20
> > > > Hi Julia,
> > > >=20
> > > > The submitter touched one of CI scripts for the DRM subsystem. To t=
est
> > > > this patch, there must be a way to run these scripts locally (which
> > > > may requires non-trivial setup).
>=20
> Instructions to test it is on the docs:
>=20
> https://docs.kernel.org/gpu/automated_testing.html?highlight=3Ddrm+ci#how=
-to-enable-automated-testing-on-your-tree

Thanks for the pointer!

--=20
An old man doll... just what I always wanted! - Clara

--dooGvATdJTR1HNc3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZUGzYQAKCRD2uYlJVVFO
o3Z4AQDaWdOvXjwiZ0Oc4b0iaHgCHKe7XwNerDY/r1vhieslYAEAquSuTvqW3nD4
fc8XKmmvpMJ4l+G56RFFk2paFOoc6QA=
=+axy
-----END PGP SIGNATURE-----

--dooGvATdJTR1HNc3--
