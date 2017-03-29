X-GM-THRID: 6402618675117948928
X-Received: by 10.99.163.88 with SMTP id v24mr2747630pgn.57.1490784407250;
        Wed, 29 Mar 2017 03:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.241 with SMTP id e104ls815472ote.29.gmail; Wed, 29 Mar
 2017 03:46:46 -0700 (PDT)
X-Received: by 10.157.33.123 with SMTP id l56mr9419924otd.89.1490784406760;
        Wed, 29 Mar 2017 03:46:46 -0700 (PDT)
Received: by 10.202.44.70 with SMTP id s67msois;
        Wed, 29 Mar 2017 03:36:19 -0700 (PDT)
X-Received: by 10.129.153.65 with SMTP id q62mr11870257ywg.23.1490783779069;
        Wed, 29 Mar 2017 03:36:19 -0700 (PDT)
Return-Path: <broonie@sirena.org.uk>
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk. [2400:8900::f03c:91ff:fedb:4f4])
        by gmr-mx.google.com with ESMTPS id 2si1162609pfx.8.2017.03.29.03.36.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 03:36:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.org.uk designates 2400:8900::f03c:91ff:fedb:4f4 as permitted sender) client-ip=2400:8900::f03c:91ff:fedb:4f4;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of broonie@sirena.org.uk designates 2400:8900::f03c:91ff:fedb:4f4 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk
Received: from [2001:470:1f1d:6b5::3] (helo=debutante)
	by mezzanine.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.84_2)
	(envelope-from <broonie@sirena.org.uk>)
	id 1ctAxa-0007NM-6J; Wed, 29 Mar 2017 10:36:16 +0000
Received: from broonie by debutante with local (Exim 4.88)
	(envelope-from <broonie@sirena.org.uk>)
	id 1ctAxX-0006YX-68; Wed, 29 Mar 2017 11:36:11 +0100
Date: Wed, 29 Mar 2017 11:36:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, corbet@lwn.net,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Message-ID: <20170329103611.266sdjhh75vzozfq@sirena.org.uk>
References: <20170328183021.2683-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gffqqkky7ufds7zd"
Content-Disposition: inline
In-Reply-To: <20170328183021.2683-1-diaconita.tamara@gmail.com>
X-Cookie: Stay together, drag each other down.
User-Agent: NeoMutt/20161126 (1.7.1)
X-SA-Exim-Connect-IP: 2001:470:1f1d:6b5::3
X-SA-Exim-Mail-From: broonie@sirena.org.uk
Subject: Re: [PATCH] Regulator: core.c: Fix kerneldoc comments
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: No (on mezzanine.sirena.org.uk); Unknown failure


--gffqqkky7ufds7zd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 28, 2017 at 09:30:21PM +0300, Tamara Diaconita wrote:
> Remove the description for the non-existing 'ret' to fix the build warning:
> ./drivers/regulator/core.c:1467: warning:
> Excess function parameter 'ret' description in 'regulator_dev_lookup'.
> The description found for the return value is: @ret: 0 on success, -ENODEV
> if lookup fails permanently, -EPROBE_DEFER if lookup could succeed in the future.

Please word wrap your commit messages within paragraphs at something
substantially less than 80 columns.  Doing this makes your messages much
easier to read and reply to and ensures that the changelogs display well
in the git UI.

--gffqqkky7ufds7zd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAljbjhoACgkQJNaLcl1U
h9ANawf+P0xl9CSPb6CHuYQnmoxgDOkKSUez0was0o7Gzt5eXsgIg0iz2BM+qpmO
E6i5c6tkvGscLVr/7e5SrNkVKWbVJ8G3Z57sZAfDTOOpOB5TTjGFmR/vvQNbX/MM
mTZV0SyzNtq9WU7QNoIe6cS6bbH4hr+g3B/RQtMtRHHcB6JhFvFFZMjaekCdFrgB
viJC2r5uJ69YLu84aIMIgeVn0bLQehf+OUc1F6MDzcqFCveinnB5NzWhWUfKTqPj
x6SYqHpNZnGq+FqkuqkVFLdCx5Wi6AMLATZSqCxFMP8GT5tBJ9xZZvmLEp46fA8L
1yPmmv7wCZMWL26BsJVVUkfUu4ZMow==
=sQf5
-----END PGP SIGNATURE-----

--gffqqkky7ufds7zd--

