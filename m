Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B1A23
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 02:58:41 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650337121; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Subject: To: To: From: From: Date:
 Sender: Sender; bh=Kadp6rfgGJvN7qZeAf+AMQzkEbabEcTUzAKSdc/5biE=; b=lpit+4Qttmb1SrkMvmepIFBNYvdeFCrtHp05X3aXN3KHfRkySwRwTdNgiH1lTvfoltdHk6qA
 r7p1e3eN1tN9rWDwM36nJPqAh4FJqMgvWPxeIfTLw5qmjo5WAu3fq2gOXAwfKv0dICt3McbC
 dKTF1TEoI3dVEGyTpAD7lbIsGerGMttWAHkcVzckEKq52tKZAvGhWsKjOBCy38Hs/UEip/qY
 b4DFtYJvZ8qpRHeKYqWikn35FSzHnawONnxc0fpTL0imIW79K4+S8Q6K5azmPT40bYyTYQZu
 KSJ4UaRxCQIHA7NWWCVDAsuY2WDP1WofMf8MgMnkbDHjLC2hZU1PNw==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (186-250-90-1.mhnet.com.br [186.250.90.1]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 625e255f1f77778b07c4a92e (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 19 Apr 2022 02:58:39 GMT
Sender: codeagain@codeagain.dev
Date: Mon, 18 Apr 2022 23:58:35 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH 2/2] Docs: Update kernel series in changes.rst
Message-ID: <a124c3c34e627c124673640aed177c10e401b052.1650336366.git.codeagain@codeagain.dev>
References: <cover.1650336366.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oefgg65gzpmk5xb5"
Content-Disposition: inline
In-Reply-To: <cover.1650336366.git.codeagain@codeagain.dev>


--oefgg65gzpmk5xb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The file 'Documentation/process/changes.rst' states the listed
requirements are for the 4.x kernel version. However, there are
requirements updated for the 5.x version, so this patch updates it to
match the current kernel version.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
 Documentation/process/changes.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/process/changes.rst b/Documentation/process/chan=
ges.rst
index 41a44e5f47e6..08515b11cf92 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -7,7 +7,7 @@ Intro
 =3D=3D=3D=3D=3D
=20
 This document is designed to provide a list of the minimum levels of
-software necessary to run the 4.x kernels.
+software necessary to run the 5.x kernels.
=20
 This document is originally based on my "Changes" file for 2.0.x kernels
 and therefore owes credit to the same people as that file (Jared Mauch,
--=20
2.35.3


--oefgg65gzpmk5xb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYl4lWwAKCRAZtd3tyEY2
kvoPAQDJhnM4s1asjT1tuwbuECzVkwb2ammAYM3ToPdTWq4S0gD/RdfXb5bNIdIO
m9jECO45ycrvVMEzFEIYKGXzjR805gM=
=B3+m
-----END PGP SIGNATURE-----

--oefgg65gzpmk5xb5--
