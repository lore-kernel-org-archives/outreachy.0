X-GM-THRID: 6523882080322977792
X-Received: by 10.25.242.13 with SMTP id q13mr144288lfh.16.1519401542627;
        Fri, 23 Feb 2018 07:59:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.126.11 with SMTP id z11ls95281ljc.7.gmail; Fri, 23 Feb 2018
 07:59:00 -0800 (PST)
X-Google-Smtp-Source: AG47ELtJBwyEmztZvoWZjU4Osc1MI35hPSTPDXCA5NZVLBAXqs/SG7LgOL7xpww008XY03x4Bd2j
X-Received: by 10.46.46.23 with SMTP id u23mr132163lju.14.1519401540873;
        Fri, 23 Feb 2018 07:59:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519401540; cv=none;
        d=google.com; s=arc-20160816;
        b=U8N7QTEvKFHQMo98DI0jSAst/c5UYJ3iiIw70uZYi5rJkQS8hMOGbQAHiAS9fS31NW
         GgZrPPsIj35APQe2FhoMV0lECwwba8JoAURPOTOj+2165B7YyedG2MIjqluMXmqDvy1f
         B7bLnHeghFCNYYcCMbMn4Q568wpplD/RUpO8hh1dr3qPBgEgpcxZshjgW6lj+gsWP5qA
         QUrGwVaEMzGSchj+d5Ksh3bF5Zun7rZZC0yAkHDtEQa3UryKribXqLsyd3DBYUvfh6AQ
         E61V+2qh15W8meoYcUt7cxneHSfRaZOC1KU70SIPK4BWAYsr9wts00q/kpsz5dFgWMBZ
         0X+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:date:to:from:subject:message-id
         :arc-authentication-results;
        bh=mypkEWxTTe1CQpLm7iIKQlEDSETmE6iRPKtAPUu66OI=;
        b=fk2HyS/qAq4+6ueLrOxoDv5zgHnWfRAXvxavP14tn56pUYSWX/J4N8o188rjv0iPI0
         kzjN/FR8PkvalkjpJ6HJQmtxV2mmMzB9bykR3v9USSuKE0CW6rR060Y6/g/4TLGx5usK
         WUSmvUiuwqGlAKASxZgsRpGXgD7RNjXLmhqbtf7nwUVv9eTOla5bAVdrrJd751rumIZ2
         03+vq/RYggOX6jQpVW4sgTzUuHoSN1jh1KOqzHdYO8eEbxIgym82Ks9p1UMsnGHQRZYv
         pu1+Bm/bbohQ4aqWM/R3t+8rlLd1CihPUgAzs91tYZz5hx0hanD8qlJvBlFL9AgUQNGi
         zL2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ben@decadent.org.uk designates 88.96.1.126 as permitted sender) smtp.mailfrom=ben@decadent.org.uk
Return-Path: <ben@decadent.org.uk>
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk. [88.96.1.126])
        by gmr-mx.google.com with ESMTPS id k82si117852lfe.1.2018.02.23.07.59.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Feb 2018 07:59:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ben@decadent.org.uk designates 88.96.1.126 as permitted sender) client-ip=88.96.1.126;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ben@decadent.org.uk designates 88.96.1.126 as permitted sender) smtp.mailfrom=ben@decadent.org.uk
Received: from 94.197.121.210.threembb.co.uk ([94.197.121.210] helo=deadeye)
	by shadbolt.decadent.org.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.84_2)
	(envelope-from <ben@decadent.org.uk>)
	id 1epFkQ-00079b-8A; Fri, 23 Feb 2018 15:58:58 +0000
Received: from ben by deadeye with local (Exim 4.90)
	(envelope-from <ben@decadent.org.uk>)
	id 1epFkH-0001ta-Pk; Fri, 23 Feb 2018 16:58:49 +0100
Message-ID: <1519401525.2617.295.camel@decadent.org.uk>
Subject: Re: [Outreachy kernel] [SETUP] Difficulty with dmesg
From: Ben Hutchings <ben@decadent.org.uk>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>, outreachy-kernel
	 <outreachy-kernel@googlegroups.com>
Date: Fri, 23 Feb 2018 16:58:45 +0100
In-Reply-To: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com>
References: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-2zYrtVqxSp8Kg78zPIi9"
X-Mailer: Evolution 3.26.3-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 94.197.121.210
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false


--=-2zYrtVqxSp8Kg78zPIi9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2018-02-18 at 05:14 -0800, Nishka Dasgupta wrote:
> When I run dmesg | less, the file is blank and the error I get is "dmesg:=
=20
> klogctl failed: Function not implemented". Writing to the kmsg file has n=
o=20
> effect. I can't modify dmesg_restrict either. I am running Ubuntu 14.04=
=20
> inside WSL (Windows 10). I would appreciate any assistance.

Are you still working inside WSL?  This isn't one of the options listed
in <https://kernelnewbies.org/Outreachyfirstpatch>, and I expect you
will keep run into limitations of WSL.  You certainly won't be able to
run any of the code you change this way.

Ben.

--=20
Ben Hutchings
Who are all these weirdos? - David Bowie, reading IRC for the first
time

--=-2zYrtVqxSp8Kg78zPIi9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAlqQOjUACgkQ57/I7JWG
EQmCsQ//VEdBArDS48RZH09EBqReQtNeziN7JWDUVyKdcanPlHNZK5RZplumOJ1E
5QCdIcLE9WVVVgP/6ErlpkL5md0kNMLf8FxN/YvT48MYKAeA6hSHvqzMF61VbogU
u1LMzXRh422C9VIXVvPlOy5APOUs23TQm0177rWoOcDYXKAimalhR1USroTaxfTB
hh6jInF96phwtXaRo1QOVzrerUqJqk5N1JqO6OhhIddnRNVbxeRw3r6CR5a4a3FR
3uu7lz921q/CKqn3oJ6ujvxD4O3a07GO220DRICAHdt7rAhiSfkSwAUEQmIy8+Er
9oZDn2KUIJobNmUGEGrcQIs3cMH2BbmBry/PDJ91ySwpDdi/6HJPmRgBh4PIFMmp
7ZWncu4f1sTcg5irEFdrj7etnL3nWDGJ5R3N4Ay2fzCTKyFGV3c7VGV6HauaEkxB
sv31t5zzWg1V218EQbxW43IPUL8/194LvhICtLQbqzqX9twAQnucvD8lOVNwyAFe
RksEaRSypDplgFKS56WMoEMBVn8w4Qvpauoa6LlHuVpWoY/1qzUitvXX9l+1UKsA
erkyy2m11fItN3hPGL5Uf0zrhSAWL9pHD6tR5ODZQAhlejywgJA3jvOgWLc/JSWW
L4t9MjUSssld9gxdoJ5yhrwjQdSjDiuhB1Kuak6sFysxckib0zk=
=sYVs
-----END PGP SIGNATURE-----

--=-2zYrtVqxSp8Kg78zPIi9--

