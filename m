Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462FDA4D
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 09:14:11 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id j13so7642499pjd.1
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 02:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679130850;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q1HUnBQULdH+yj1WjOyv+pwIZaTFzEd5df7J1coJcws=;
        b=Cj82a4VjRbIaf8dAdNtPGRtJl2TW2EaYUTPPszSpkbf3EeUNXO22/m2kEGg8K04Mg7
         ula85t2Xi6eYf2CbWngdzGI2XH/lPVROUfe68L52f3wy7X6lHmxZg7nSNZWAuIT/Z5lC
         as5CzOYyZ5vEewX0ZB6rVd8BiQhFOZAwOdeIFLKaazPbQuBXkBQ0s9mNpZyo56/9ysnC
         vX8JJ7AVfIVcH8Trg4MO5bvW5R3Pdjz48d+T7s+5iyyQRj1WuYQLlMZShhQUdfWQiI0W
         WZrxN8pkFdpn3ocvLY8Qu2lfdsiX1u8MKkJkmMCRDJmq8d4xfhyA6e5KyIlsJVUneUGX
         ax5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679130850;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q1HUnBQULdH+yj1WjOyv+pwIZaTFzEd5df7J1coJcws=;
        b=uHM/4eOT/tWmU899UyqWM8aVNSMuO5F9R9HP6HX1FHiQwoWyn/f6DsPgzl9dLPP1an
         /SWCrwNppGrT66xHgszvK739ZkZ/UAXWWbqp2hMI1H//Bkm2NCaIExx85keA6TjAk4oy
         2rVoWFJEW8sw6npuIpPLhowJGrPYCjtTsgUm9g8LepZw0UqdEI0zpd6Rhc/1mFAvBbrl
         7TOODwV4rwL9spx/mkeDItUSQ5u9PC+DPA9J1SCv9C1Sgp+VUFNi/d3XUN1GeqjQ/RUF
         HhmuYVGGTTxvTTle/pFOTm4DjHB1NtoZJlCvAq0E1xlRbq+fazLSFhjPM7PfHhz3kBWa
         Bxeg==
X-Gm-Message-State: AO0yUKU/Yz1/kIOjaT6WoKHq/UN6dQdaL5eFIkJ/aeIG2lZdY0J7QYvL
	yit8ir/JoyG/PBJ/i76Tj7bNyOrElxPZ4Q==
X-Google-Smtp-Source: AK7set8PVOiZnMe+lfPrWm0BgRqXXFqqwuiFarPBSCc3eGmW8K/FSL1ZwDNPcsl+2RVIy+QoIet6aQ==
X-Received: by 2002:a17:902:ebd2:b0:19b:107b:698e with SMTP id p18-20020a170902ebd200b0019b107b698emr8957684plg.14.1679130850618;
        Sat, 18 Mar 2023 02:14:10 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-29.three.co.id. [180.214.232.29])
        by smtp.gmail.com with ESMTPSA id y14-20020a1709027c8e00b0019f3a28ea29sm2846561pll.160.2023.03.18.02.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 02:14:10 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 6E8DD10665E; Sat, 18 Mar 2023 16:14:06 +0700 (WIB)
Date: Sat, 18 Mar 2023 16:14:06 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBWA3rb9nVP8ho05@debian.me>
References: <20230318084048.GC4434@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KgKuXD8KuL75hQ2o"
Content-Disposition: inline
In-Reply-To: <20230318084048.GC4434@sumitra.com>


--KgKuXD8KuL75hQ2o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
>   =E2=94=82 Symbol: NVEC_PAZ00 [=3Dn]                                    =
                                                      =E2=94=82
>   =E2=94=82 Type  : tristate                                             =
                                                    =E2=94=82
>   =E2=94=82 Defined at drivers/staging/nvec/Kconfig:45                   =
                                                    =E2=94=82
>   =E2=94=82   Prompt: Support for OEM specific functions on Compal PAZ00 =
based devices                                       =E2=94=82
>   =E2=94=82   Depends on: STAGING [=3Dy] && MFD_NVEC [=3Dn] && LEDS_CLASS=
 [=3Dy]                                                   =E2=94=82

Hi,

MFD_NVEC depends on ARCH_TEGRA, which requires arm64
(aarch64-*-linux-gnu) cross-compiler. If don't have it yet, you can
build one with crosstool-NG. When the cross-compiler have been successfully
built and installed, add <cross-compiler prefix>/bin to PATH.

Now in order to cross-compile the kernel (to arm64 in this case),
you need to pass `ARCH=3Darm64 and CROSS_COMPILE=3Daarch64-<vendor>-linux-g=
nu-`
to each invocation of `make`.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--KgKuXD8KuL75hQ2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBWA2gAKCRD2uYlJVVFO
o0KVAP9aJLjQA7EWGMsS4fG/aj1jMa4X1Vbp5dw73h8iw3ncrwD+JRZM1IdWFnzD
yjB+rwyffIIgVOzbRM1lLeaqF+4jzAw=
=WuDx
-----END PGP SIGNATURE-----

--KgKuXD8KuL75hQ2o--
