Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B44A810
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 08:51:19 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id f6-20020a17090ac28600b0023b9bf9eb63so4475794pjt.5
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 01:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679043078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eRcXM0niLh64oJ3vcXqdEyJ0pRLnzl2mKqLhZ0LEy+M=;
        b=BAlboaxvyaSbbZ6Zj7ag8qEzJF4YaZF5nRN6h/GUE1AEYB9himRW03mC1RXeksuWAv
         qMOUfvFWcwnNrXQCug2NJzRs5BaUezpOhFrFbgeDhtVySXiQFGR27OIeuqxA8WjDd9EY
         Ru9N8lOEd3Lj+HqIJLokvdJA9UQebdofDR0qIbRQv1k4Ooh+9AmWzXpGCHk5xKoioihE
         eVsyOT9LfC5/NkgLW4/gcLEKlQ+4hSYzL6YlAFxbBzd4Ta9BYhQY55g6NloXixypA4cQ
         AhSPFPmBf05ejjTWw1YzAgWuyvWrrW6Ng+FZaj2zM5bYKhSC57oZyNmowgSiOm836lds
         1I2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eRcXM0niLh64oJ3vcXqdEyJ0pRLnzl2mKqLhZ0LEy+M=;
        b=iM3VH82LDfVJrMyJetPbN/sI27zXISHr6qGZGLlHIPInhKqPqfCCMZ0eCjIi+qC9aG
         19/kuEGRhqGShaAPs53DVI9+H37GH3m5rFlSiaVIwXkJs9ostwN7PoZKtJFQdAyrSqEp
         Dzw5l0WbvRBWg70Df44atk8a3xcm0wQfb71Hd/UQc9aKeO/AyGRm04hE4On8AMbfiiGG
         FshQbh0heOD1lIoZNS46OGfye+zUGxdGqV/1wn/U1wbUOSQ5W03QOlqncYndVl0REQ68
         g66guQT82bCV18fbXW6/SIHYovPoW3cBzgb9nUQ40IkeN1V3cOjA9CQTkY1JAh0Nhr+n
         /vmg==
X-Gm-Message-State: AO0yUKW/ivLKiJVJIH5eJfNQhPPx1tSRqhNpz45hy9/dvEwhpLgJKTdj
	D8Le6mfO1K8lGHBETh8bARqq5NPkAp5xug==
X-Google-Smtp-Source: AK7set/OMW3kFWh388IsGgJdcGgI5PMwr2NaXqTYkWShUzlgNWBOnxPeIpL29BV6tEqkuBiOztV+Gg==
X-Received: by 2002:a17:902:e852:b0:1a0:549d:399e with SMTP id t18-20020a170902e85200b001a0549d399emr6975206plg.21.1679043078570;
        Fri, 17 Mar 2023 01:51:18 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-2.three.co.id. [180.214.232.2])
        by smtp.gmail.com with ESMTPSA id 30-20020a630c5e000000b00502fd141ffbsm981688pgm.49.2023.03.17.01.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 01:51:18 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 04A1A106581; Fri, 17 Mar 2023 15:51:14 +0700 (WIB)
Date: Fri, 17 Mar 2023 15:51:14 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <ZBQqAmT0egOgizg0@debian.me>
References: <20230312170757.GE28100@ubuntu>
 <20230316083116.GB47053@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9iOfw9QZJJpuHnKO"
Content-Disposition: inline
In-Reply-To: <20230316083116.GB47053@sumitra.com>


--9iOfw9QZJJpuHnKO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 16, 2023 at 01:31:16AM -0700, Sumitra Sharma wrote:
> On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > 2. The outreachy document directly links the ".rst" file
> > https://elixir.bootlin.com/linux/latest/source/Documentation/process/co=
ding-style.rst
> > at many places under different sections. And as noted by fabio there is=
 a difference between the
> > .rst source files content and its corresponding .html file which can le=
ad to confusions and missing
> > important information. I would like to suggest to change the links to t=
he .html/.pdf files rather than the > .rst source files.
>=20
> Hi mentors
>=20
> I would like to have some update on this.=20
>=20

OK, please go ahead. You need to link to
https://docs.kernel.org/process/coding-style.html.

--=20
An old man doll... just what I always wanted! - Clara

--9iOfw9QZJJpuHnKO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBQp/QAKCRD2uYlJVVFO
o5ewAQDVjPeuDI2bjqfSkciBPKSlrS9wSI2IWoNLp0HRKdxKuwEA0s4v5LcN8x92
gVPkevIAP9/bkC8v81sfvYD+X31bXQo=
=RNcW
-----END PGP SIGNATURE-----

--9iOfw9QZJJpuHnKO--
