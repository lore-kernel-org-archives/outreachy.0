Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91C046A9
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 06:56:53 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1649746613; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Subject: Cc: To: To: From: From: Date:
 Sender: Sender; bh=fvgEOeU8QI1dhGiQvK+nRA/UPCGXfJKOpsdVofoakIo=; b=G0v9XHEVyK8aqFVe1LF5Wv7GC/4WoBHONZfkOHktW9WsarPXF+vSe05P9QYzDm1pGmzW20zs
 SbiqHp4tCeLL2gYf4r4lq86+Lh1Gey5z8Yh9SKs2mgT3xnkeVu2izAI7q1dan9kJFKwNaz5H
 DhnvhHoa7CtZO75jP24PgSrg3SSOtaxVPZkteZpJpTfz0QdL2XWHvcu7HMtuSlx//FCQLPIU
 3n5BbcHDd+Bw6f7BqSH8O9agbswtObljwNjoDd28t3P7atRaMslhwg1jWomObb4rFatrjJHn
 bTYYEAg5/fJohXgoFauAdU4rQaIa6aNq5Rh/AigK8yZQ7MK5o7r+8Q==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (186-250-90-1.mhnet.com.br [186.250.90.1]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 625522b5487c9ee854845f8a (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 12 Apr 2022 06:56:53 GMT
Sender: codeagain@codeagain.dev
Date: Tue, 12 Apr 2022 03:56:43 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Martyn Welch <martyn@welchs.me.uk>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH v2 2/3] staging: vme: Fix missing `depends on` at KConfig
Message-ID: <aab0591ac73a54059621c722a63635d43a446fd2.1649721450.git.codeagain@codeagain.dev>
References: <cover.1649721450.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r67e4p532boyyctc"
Content-Disposition: inline
In-Reply-To: <cover.1649721450.git.codeagain@codeagain.dev>


--r67e4p532boyyctc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Originally, the KConfig file for VME_USER
("drivers/staging/vme/devices/Kconfig") was sourced at
"drivers/vme/boards/KConfig". It misses a `depends on` line for VME_BUS,
which went unnoticeable for a menuconfig user who wouldn't be able to
select it through this interface without selecting the CONFIG_VME_BUS
option because it was nested on its menu.

A patch to move appropriately this driver to the "Staging" submenu[1],
however, unveiled this missing `depends on` line, since it moved the
`source` line for VME_USER's KConfig to somewhere else, allowing it to
be compiled without the support for VME_BRIDGE. While it compiles fine
and seems to initialize the driver fine[2], it seems to make no sense
having VME_USER without VME_BUS.

This patches addresses it by adding the VME_BUS to the `depends on` line
at "drivers/staging/vme/devices/Kconfig".

CHANGELOG:
v2:
- Added this patch to the patchset

REFERENCES AND NOTES
[1] First commit in this patch, originally submitted at
https://lore.kernel.org/linux-staging/3fbc5325e94b9ae0666a1f5a56a4e5372bfce=
a1d.camel@codeagain.dev/T/#t
[2] Tested both as module and as built-in.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
 drivers/staging/vme/devices/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vme/devices/Kconfig b/drivers/staging/vme/devi=
ces/Kconfig
index 5651bb16b28b..e8b4461bf27f 100644
--- a/drivers/staging/vme/devices/Kconfig
+++ b/drivers/staging/vme/devices/Kconfig
@@ -3,7 +3,7 @@ comment "VME Device Drivers"
=20
 config VME_USER
 	tristate "VME user space access driver"
-	depends on STAGING
+	depends on STAGING && VME_BUS
 	help
 	  If you say Y here you want to be able to access a limited number of
 	  VME windows in a manner at least semi-compatible with the interface
--=20
2.35.1


--r67e4p532boyyctc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYlUiqwAKCRAZtd3tyEY2
kh7WAQDnPJNUjIPGKOS6iN5nijD+bLt8dlNylHDXGzcDp/x21QEAttFRYM5TnNEi
Wn7P5NtTX55JavXFp1wmv2lUDtDWZww=
=So4f
-----END PGP SIGNATURE-----

--r67e4p532boyyctc--
