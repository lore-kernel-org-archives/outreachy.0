Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35444C12F
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b/aL2p/+"
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1c5bf7871dcso26801875ad.1
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 05:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696766737; x=1697371537; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FWzBqg/uMzCeH9u/p7gYmcBYBiRKByjB9Q9BAAADL3c=;
        b=b/aL2p/+hFqkJDRH9c/cF96xfyTj9jJd2DJkijQNKEFMLCk6CLsZk6zUYX1UPwVN/e
         M4n0nNhBFlHjxZkj8ITOTi272aREyar7R967SooZT8XFeT5TKgOGIdPNZ/KlkrZzgc0z
         9Z0PTTuTlx006rjcThzmoaIrLg3jEWvnAwqCLIg59VL5vXA7o1P4WCrIXEtbkKvdtN1k
         Wc5XeCBYm0/wceTkiz/Q01xZs5JfTK4CV7LVKib2XEuKNZCXrLb8K8leH/67P1mo6fCT
         hIHBqpZFbc+z08q+peQ4CDyuSYUjlulDWvn0v07PcV1gDYS0fQQbP+KW40BirvT+0U2p
         phUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696766737; x=1697371537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWzBqg/uMzCeH9u/p7gYmcBYBiRKByjB9Q9BAAADL3c=;
        b=MBH8AAnPh5pn40KqhldErM5rTKx8UyPQNuH7jYQpJFy8qoJyRvB4U9JePChQgb+ruM
         rIAvdRP1o3SdtyUMswXBxoQQzjyOhnaGmnzVShPXUI58FuNy/mHG6tfzxmDumWho0l1B
         oDvnXNRS3PkCEMudORZIZpg8eCxRPO5AgTdK1gS3sKKZGkait46Twu3XfqkMWhjTAoxk
         VPmHEggOHllAEtBmrPw0HqE8M/TO3gIoJFNEB8j6JusnTmryQCFsMDW3RlLyQ6gMpzc4
         TSDko840hz4erLhLB4hG6nd7XPPp+Ec50pDoHiCdjJz192xPq3u8xXgQVjlqFUud38zK
         HWfw==
X-Gm-Message-State: AOJu0Yww4AxOk9ez0G5TlrSjizhfrNzXhwUKXbdX+CcDbGUfufHDZqFE
	lDfurt+TEvsJzP2IHC3BYpo=
X-Google-Smtp-Source: AGHT+IEFnuCerr92QhFsumZAsrLC7GoGM9wLCXznCinDHzdBcExhckj/fHqqqEYbG337eNeBbsIgIw==
X-Received: by 2002:a17:903:234e:b0:1bc:5924:2da2 with SMTP id c14-20020a170903234e00b001bc59242da2mr12212398plh.56.1696766737374;
        Sun, 08 Oct 2023 05:05:37 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id jg14-20020a17090326ce00b001c62b9a51a4sm7416489plb.239.2023.10.08.05.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 05:05:36 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 6BA7B81B12C1; Sun,  8 Oct 2023 19:05:28 +0700 (WIB)
Date: Sun, 8 Oct 2023 19:05:27 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy <outreachy@lists.linux.dev>
Subject: Re: [ERROR] HELP NEEDED
Message-ID: <ZSKbB3K4dwqHD-6F@debian.me>
References: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080811050.3223@hadrien>
 <CAKrXSsZBOPVVOqwRqgg-zZMXq=8hqris-92CNRBt7j_qiHkixg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HSlEtDltTGT9929J"
Content-Disposition: inline
In-Reply-To: <CAKrXSsZBOPVVOqwRqgg-zZMXq=8hqris-92CNRBt7j_qiHkixg@mail.gmail.com>


--HSlEtDltTGT9929J
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 08, 2023 at 08:06:33AM +0100, Gilbert Adikankwu wrote:
> Hello Julia,
>=20
> I deleted the kernel and redownloaded it. It is compiling now.
>=20

Please don't top-post; reply inline with appropriate context instead.
This allows readers to easily follow and understand the conversation flow.

Did you download the tarball or cloning via git?

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--HSlEtDltTGT9929J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZSKbAAAKCRD2uYlJVVFO
o8d5APkBATP5QZ9fYVKKjPEYjKyy4QNuvaLJp9ssR7UNnkfBRwEAtslaE6TNZg6Z
P91IwB32llz1KOnpr+G60UTq3wSxgQg=
=MXMm
-----END PGP SIGNATURE-----

--HSlEtDltTGT9929J--
