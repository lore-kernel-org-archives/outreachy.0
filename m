Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C13F125DC
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 14:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ovf6e9My"
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-694ed847889so2483637b3a.2
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 07:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696688072; x=1697292872; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QbaOkN11ShFjp3tT/ZrL3/V4ETkntY0iC/qweNkeDQE=;
        b=Ovf6e9MyYUwaLLm53rQ41wjH40pLmIvA15GHJ1szH1U52DmZ1RkZCKo4CNYjxhm72s
         4j6Wx+meSBnN2bQntemArHfT3Hy0/XVPHVd6srRksPK77q76b5CvR9IS89ej5Yj7qBHb
         2eXI00B1rT+l59o9351uydKzZADmgIF3pL8IgVIqbHsKshoDDedC4cFNV6It9mon+gtH
         u8E5TlgypcGEk/n7j9urs1kmi8Axcl+rvFJmtWlSkeUyLxAy8C+MydcF5XZwyPW6fB5G
         oobEt73WMDjRuUTIahzHwczKdt/07E4YXzn6l5B+0MZeogHWsmMlc3WWxJpUlpvwJBE+
         9zdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696688072; x=1697292872;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbaOkN11ShFjp3tT/ZrL3/V4ETkntY0iC/qweNkeDQE=;
        b=Y3wUMvXrUsh3uoel576RMR03ZnJ2Vpz0Phxe91HVv4qPU2DUYcgpIFISElT1bCqvcw
         4bwWUPy9TAt878rZOx4i07agVGRB9jBP0fSYfGKH8A3E7sLHRrY1UYHqaGUgolEQI8T/
         GcQZ1chJgyGvBEF8RnSajgMp42XgRuwVY5XjlHqC0CeppQxmuQlENCkYmiJflQH/tXgW
         XD8WcduAeEDNDd/AwvCxMV0LT0R4ZEHJ4YDc4uoTQTMccOVF6iPj7SnK9X5P7lvlqh0q
         XzRWYVinzDf9WuflYZQn58HwlYD9bzENkf0/1U56fSQoSdZpRtfDx6TDDcQGGu7xekZy
         qUmg==
X-Gm-Message-State: AOJu0YxOShyo963LWVvwUTg2bQm651UVbNw6MxGDM5Z6PcznBDY+iGPz
	8f8c/gwfRSmkvvFecgCHugY=
X-Google-Smtp-Source: AGHT+IE1R8llrP0TWOY82g3RLZePSlPEl4OgvLzr13DUw8DNopmWh1YqFvllsyWFlIxDOLYj3zMKxw==
X-Received: by 2002:a05:6a20:7f83:b0:15e:b8a1:57b9 with SMTP id d3-20020a056a207f8300b0015eb8a157b9mr13659474pzj.24.1696688071887;
        Sat, 07 Oct 2023 07:14:31 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id z9-20020aa785c9000000b006926e3dc2besm3227082pfn.108.2023.10.07.07.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:14:31 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 1E08481C636A; Sat,  7 Oct 2023 21:14:23 +0700 (WIB)
Date: Sat, 7 Oct 2023 21:14:23 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Calvince Otieno <calvncce@gmail.com>,
	Linux Outreachy <outreachy@lists.linux.dev>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Kernel Build System <linux-kbuild@vger.kernel.org>
Subject: Re: Unable to make file
Message-ID: <ZSFnvwvXMiisHOJ7@debian.me>
References: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8tSXnb0WXi8G6rnk"
Content-Disposition: inline
In-Reply-To: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>


--8tSXnb0WXi8G6rnk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 04:50:32PM +0300, Calvince Otieno wrote:
> Hello team!
>=20
> I have a problem. I tried running the Make file and I got this error mess=
age:
>=20
> make[3]: *** No rule to make target 'debian/canonical-certs.pem',
> needed by 'certs/x509_certificate_list'.  Stop.
>=20
> make[2]: *** [scripts/Makefile.build:480: certs] Error 2
>=20
> make[1]: *** [/home/calvince/Documents/labs/git/kernels/staging/Makefile:=
1913:
> .] Error 2
>=20
> make: *** [Makefile:234: __sub-make] Error 2

If you need to keep your modules signed, you have to generate your own
certificate. See Documentation/admin-guide/module-signing.rst in the kernel
sources for how to do that.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--8tSXnb0WXi8G6rnk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZSFnuwAKCRD2uYlJVVFO
o0OkAPwPchkMkTBT3AxCpEroXdS8Ox5JUG6RzzP/QodpsAkSDgD/ToBsBxmcybnx
mg6cl2QWRnmmCE+rKF/nEOfGni+HLA8=
=5xRX
-----END PGP SIGNATURE-----

--8tSXnb0WXi8G6rnk--
