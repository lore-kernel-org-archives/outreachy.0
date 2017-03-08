X-GM-THRID: 6392907056098050048
X-Received: by 10.157.57.137 with SMTP id y9mr2398324otb.88.1488977694942;
        Wed, 08 Mar 2017 04:54:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.197 with SMTP id t63ls3285124otb.7.gmail; Wed, 08 Mar
 2017 04:54:54 -0800 (PST)
X-Received: by 10.157.52.210 with SMTP id t18mr2424565otd.119.1488977694672;
        Wed, 08 Mar 2017 04:54:54 -0800 (PST)
Received: by 10.55.72.197 with SMTP id v188msqka;
        Wed, 8 Mar 2017 04:46:45 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr1104970ljb.11.1488977205184;
        Wed, 08 Mar 2017 04:46:45 -0800 (PST)
Return-Path: <thierry.reding@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id t131si258752wmf.1.2017.03.08.04.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 04:46:45 -0800 (PST)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so4023868wrc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 04:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=otukS+Y4WpSgwzKfXebsTF+bNZ/Ovdgu3uDcehqhnoY=;
        b=MhDKh6aswCsQm7hkXgguaQdtRz2HUmCN4oSKlsiGxhird/WLIHVvavJ/SOFzBUz9J2
         hfrXMxhYIVVs/8KiVXx9TwEd/xgSpoq6DufPz5SZnO99qARO8wts75kNoqVbKXyfxG5x
         Ad+gy2LJpPegT8yr6NJRq3Sr3hmFckR1NBmEHX8tew6M9i/+CULeOIA3RAuBE7/hH5Tt
         +tqeCEGu4U7HiFqy99HAAAOwYCvHQ3UeIv93dqNSLwFlUwt53NojObs+jQFc8kgg6vtU
         hz6zjdNyP4nPAB3nxzW8cCRRPo9IF1hVWKSCuOJNDBaHJO+wVcW47lL5gTalgj660QM6
         vEZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=otukS+Y4WpSgwzKfXebsTF+bNZ/Ovdgu3uDcehqhnoY=;
        b=sFBYICj7DdlNZ2XjyZ4SrN+2Ifizqk796q/G/isWipqn3p7u3Bl7lKoGaEKkHGf1tW
         XKnTxJu8IUR50XYL1uNkgyfF3OVUQ3AXtQ0af5C2SHTWEUKzt3v9AU/JCnnR03dHW7+s
         RoykAOW5NAMxYJNCVHquz0uFjWs9/rHaf8P5Owh7rAcj7r4nsyfzxK7R/cYWfFLagZCH
         RsWG2ASZb+Fj6x9oSGXSdjFT57P8besv/ZSPLwDY6RCVFxp3LbSYI4bXeo3i+F4gK7in
         1+FaeD08VzhR7FcayHeBWvS3ZTofX8Zri9TApz4UNwePoqTokY/x+eigrLRGRjFFkbas
         Qq8A==
X-Gm-Message-State: AMke39m/82i7hyYg3kJSNsW9QM0qnfxyYdXwD3QhXsYHMh0GWHJ1Ld4JppFIDvFUNUQ71Q==
X-Received: by 10.223.171.76 with SMTP id r12mr5826865wrc.164.1488977204839;
        Wed, 08 Mar 2017 04:46:44 -0800 (PST)
Return-Path: <thierry.reding@gmail.com>
Received: from localhost (port-49067.pppoe.wtnet.de. [46.59.192.68])
        by smtp.gmail.com with ESMTPSA id 82sm3334657wmg.0.2017.03.08.04.46.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 Mar 2017 04:46:43 -0800 (PST)
Date: Wed, 8 Mar 2017 13:46:42 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Marc Dietrich <marvin24@gmx.de>
Cc: SIMRAN SINGHAL <singhalsimran0@gmail.com>, linux-tegra@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup
 USLEEP_RANGEcheckpatch checks
Message-ID: <20170308124642.GC29118@ulmo.ba.sec>
References: <20170302142418.GA16773@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1703021535500.3414@hadrien>
 <b90bc602-cf06-4abb-bea2-6386d4976864@googlegroups.com>
 <1935856.5rv8sDmiv7@fb07-iapwap2>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bAmEntskrkuBymla"
Content-Disposition: inline
In-Reply-To: <1935856.5rv8sDmiv7@fb07-iapwap2>
User-Agent: Mutt/1.8.0 (2017-02-23)


--bAmEntskrkuBymla
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 02, 2017 at 03:57:01PM +0100, Marc Dietrich wrote:
> Hi Simran,
>=20
> Am Donnerstag, 2. M=C3=A4rz 2017, 15:48:13 CET schrieb SIMRAN SINGHAL:
> > On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wrote:
> > > On Thu, 2 Mar 2017, simran singhal wrote:
> > > > Resolve strict checkpatch USLEEP_RANGE checks by converting delays =
and
> > > > sleeps as described in ./Documentation/timers/timers-howto.txt.
> > > >=20
> > > > CHECK: usleep_range is preferred over udelay; see Documentation/
> > > > timers/timers-howto.txt
> > > >=20
> > > > Signed-off-by: simran singhal <singhal...@gmail.com <javascript:>>
>=20
> I prefer not to change this. The whole interrupt routine is very wonky, a=
nd=20
> changing some delays might break the communication with the i2c master. A=
lso=20
> this is in interrupt context, so a change to usleep_range may not by=20
> justified.

Yeah, I think this is going to trigger a WARN_ON from somewhere in the
scheduler because of the interrupt context. I suppose checkpatch could
be made smarter about this, though I doubt my perl skills would be up
to it.

Thierry

--bAmEntskrkuBymla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAli//TAACgkQ3SOs138+
s6H2+w/9GjyvkehnVlfFgHn7KnxHQ3Yo1pH9TC2rui0WcXPQFuNNDBdu454LKPox
D25qJ3YFaj3YCU9i6p49tphquMStGNDCc06o1rK/JxyMPJar/5+e0xzXAQlT0gIQ
qc6vCKW9gzCdmuuytCV4OA0f4iwNCOJXBelknTQJJaemcc+Le1JSvuINH1ZJJUlL
gS/Jbw628+vvOskFNeoIGhK4zKS/MJDMzOl/EtyKuKh8pBc57um3/cV5eaabsq8d
wGIDRohy4T+JEmyYBskI6wDBedWtRlI2HhzdKmQTzWKQFVzhqEaW8Ka2WtblH33o
1YDNnvfFqdCwoxYYMZbgq+TPIkHvAJRinYPcasFJH6B2s3ADx//1WrHj4+rEc+KL
hr83nAmOccF3QX/NMppl9sMoPU0UvI83DDO8yPTVcEFr1CsR26ev5d7Er6fGfzZF
LwNio5UzYdBqFFZsecsUvVFQpaB2EFIlDAo0B4NJOKtrhT9YEZ8StqInN4OZtzoM
gYmnrNImVYIYKrQP41zwto2mqfGI2+XK+hdbu/YxIayrhRVXciQgAXUawLKTE7Nn
XrAedRhSUWP1RRZN2GnVr/cT1jqI1A1Pi0A1ybNfIHpNb6DbQaVeCFgNm0czfCiR
pWhMEHFDD+PmTeyjIQ9Lk4jvZcKowWamWa9NQaTXgMmFQjGIAaU=
=9FfQ
-----END PGP SIGNATURE-----

--bAmEntskrkuBymla--

