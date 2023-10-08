Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D638F42
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aB9uNoU1"
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6934202b8bdso3021182b3a.1
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 05:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696767179; x=1697371979; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gzVWyC3Uw96qg3fz/cZmSjeBDgcHMVStHcIEt656adM=;
        b=aB9uNoU11sZQp0ayxyFetRaI38QE6SF1NBSk6xi03PlejRvkZyiw2+9QlhDnutRTQz
         thIVEQt5pSEhcqzMir4JqPQLv2VVxy2d9TlGCPCqEDUMqs56YeEP+QV1/rzXg05kg/2e
         GblsN2CKcpwlNXYIAkAmq2067iY6GltVuYJ6/PvKgTdBY5uxMVpl1NlxFZH/h1B+zuip
         PJ1/1ql57kFXc4QIjexyHcZHw9mLmCCwC72V9K+xHvBxb0suNh+md6eMsSEPeHxVdF+X
         ITaBpudLSl1iZluuDwkFd3p1xGFjb4lBX5pJ0uo0Kkfk7LZqWgHsZuaQcn4oi8qEv1My
         Y7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696767179; x=1697371979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gzVWyC3Uw96qg3fz/cZmSjeBDgcHMVStHcIEt656adM=;
        b=B4dxpMXLUbPeVo71uWY1hB5Su/RJ84wdT6t/8vKHKTWFbmAvXfMdjzy8RUNMKrn+a+
         XJWRRhUdfGq/DL23nccaZ6dawuNqfeL37b1mHTPM8rYYuh7x4nqBmHumQffnIWGjyq8W
         cJJKFCh1cGS4cC+0TKVH/Ubp1lZ5kx+KwonCV9CC5fy0z7aPPm5WTY3f1BlgFVQVe3Ox
         bqtiswinTfJJjRQnbel9IdICGEXI8ZWF5cr2+DLdW6q/QPGGp7hl6xPMNegYHRtulKcR
         Qj78I+9AaSqQ+0Y0O2MJq570bEzuhfbHJJLIgDmwMWL4ckVXbCAGD3XQkF3R01mEpX/c
         mEiw==
X-Gm-Message-State: AOJu0YxU1RzTFB+ma/n2yz6suSrkPwipvQR/Ye1Z4HEXjkxH6q6ri/D7
	NNlrFEGpOx3Es74KBmPvp+g=
X-Google-Smtp-Source: AGHT+IG09OpOyVbQjpi6nCvLRRi2DaE/Semj9suFIITKCrSRwUNKYiMYL4pp7WcjbftboHNbEr0/Ng==
X-Received: by 2002:a05:6a00:1410:b0:68b:eb3d:8030 with SMTP id l16-20020a056a00141000b0068beb3d8030mr13707120pfu.1.1696767179204;
        Sun, 08 Oct 2023 05:12:59 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id x52-20020a056a000bf400b0069023d80e63sm4500313pfu.25.2023.10.08.05.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 05:12:58 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 30E8F81B12C1; Sun,  8 Oct 2023 19:12:49 +0700 (WIB)
Date: Sun, 8 Oct 2023 19:12:48 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
	Linux Outreachy <outreachy@lists.linux.dev>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Julia Lawall <Julia.Lawall@inria.fr>, Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [ERROR] HELP NEEDED
Message-ID: <ZSKcwGbe0ZDWSdHQ@debian.me>
References: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1grw6rbc3eaU5EHP"
Content-Disposition: inline
In-Reply-To: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>


--1grw6rbc3eaU5EHP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 08, 2023 at 12:12:17AM +0100, Gilbert Adikankwu wrote:
> Hello fellow community member,
>=20
> I'm trying to build the kernel on Ubuntu 22.04 LTS natively installed
> on my computer and I'm getting this error message:
>=20
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol table
> make[2]: *** [scripts/Makefile.build:361: arch/x86/entry/thunk_64.o] Erro=
r 1
> make[2]: *** Deleting file 'arch/x86/entry/thunk_64.o'
> make[1]: *** [scripts/Makefile.build:497: arch/x86/entry] Error 2
> make: *** [Makefile:1764: arch/x86] Error 2
>=20
> It seems like a file is missing but I don't know if that is possible
> because I just cloned the repository and didn't touch any file.
>=20

You should always clean up the tree first (`make mrproper`), then do
the build as usual. To speed up build time, you can try copying your
current kernel configuration (can be found either in `/boot/` directory
or in `/proc/config.gz`), then trim it up with `make localmodconfig`.
Make sure that all options needed by your computer are enabled (you
may have to plug all peripherals available on your hand) as well as
options related to kernel subsystem/driver you're hacking. For more
information, see Documentation/admin-guide/quickly-build-trimmed-linux.rst.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--1grw6rbc3eaU5EHP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZSKcwAAKCRD2uYlJVVFO
o9svAP9tcVmFjDxIFZm9zqVK9xGXMpPBKQPLPDNkFEX1hLG7tQEAvOi372x7TrVY
6HT8Pre2YYn79aM8tQ3YfUxIVtCO8AA=
=ljq/
-----END PGP SIGNATURE-----

--1grw6rbc3eaU5EHP--
