Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316B2A23
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 02:57:49 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650337070; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Subject: To: To: From: From: Date:
 Sender: Sender; bh=7L1sYb6w42tY8ZZhWtLebw/isZSIhXjV323yjszy98s=; b=lMf79yOHWpRrRrrFkoyi81lyqOpxd4XnjNscTh+QtarZ4SSQUdu9v0qx4L0OqOocMB1PRxga
 7xYi7iIJ1jE7z6jktzHij7jhzYM7LBN5ZkwTygmIBdrAo7Fw8H6xfzdsp2IPuVKqwQ3B4DmU
 ZH3eCRtwgn7u+I7erF7wpzMQrQ8OR62yG0pV5QT407mw5esjfKSPVSEFTxODd58pYj6USFF/
 9FGX+D5erxppUhpJa04147iBjoLR9wlPfF7UtGka87O9NjP+F6cfkVf3awaDwpzQsxaNKsNU
 JlBsvm5qwinwI99mspsszGH0TJpwA+ARDtj8Vx3WDj7aZHCoJegv+Q==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (186-250-90-1.mhnet.com.br [186.250.90.1]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 625e252c1f77778b07c43930 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 19 Apr 2022 02:57:48 GMT
Sender: codeagain@codeagain.dev
Date: Mon, 18 Apr 2022 23:57:44 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH 1/2] Docs: Add cpio requirement to changes.rst
Message-ID: <16abd8eb6a5c8398a030ae5d8919d5c8e92e2af1.1650336366.git.codeagain@codeagain.dev>
References: <cover.1650336366.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tnq77z332i66f2ik"
Content-Disposition: inline
In-Reply-To: <cover.1650336366.git.codeagain@codeagain.dev>


--tnq77z332i66f2ik
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The install target requires cpio to run the `kernel/gen_kheaders.sh`
script, but it's missing in the requirements list at
'Documentation/process/changes.rst'. This patch adds it to the list.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
 Documentation/process/changes.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/process/changes.rst b/Documentation/process/chan=
ges.rst
index a337e8eabfe1..41a44e5f47e6 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -56,6 +56,7 @@ iptables               1.4.2            iptables -V
 openssl & libcrypto    1.0.0            openssl version
 bc                     1.06.95          bc --version
 Sphinx\ [#f1]_         1.7              sphinx-build --version
+cpio                   any              cpio --version
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
=20
 .. [#f1] Sphinx is needed only to build the Kernel documentation
@@ -458,6 +459,11 @@ mcelog
=20
 - <http://www.mcelog.org/>
=20
+cpio
+----
+
+- <https://www.gnu.org/software/cpio/>
+
 Networking
 **********
=20
--=20
2.35.3


--tnq77z332i66f2ik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYl4lKAAKCRAZtd3tyEY2
klFxAP9Ap0gSen+3JB1yYbom2DWiCNDV5QiR9vvNqc7UOusYpgEAptihhB2CI+U/
OO4dXnvQfPKWLTFBSwQrKVL3PzfX+wU=
=G9sw
-----END PGP SIGNATURE-----

--tnq77z332i66f2ik--
