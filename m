Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1D91364
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:49:06 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650379749; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Subject: To: To: From: From: Date:
 Sender: Sender; bh=GjGIZv1fDSI8+XOsFgpIg9UmNpf9tCa3JfKCPZn26Ls=; b=L4BZVrlTO8PhKW15X9BFQp7jvFfIHlyLovQPngdAho5Z1utbw5p2bvqXdOeYRL+WL6hpfzEH
 lW6bdIaXiiAu8pJZjleD27UqmBsdFBzVCQ+rH2EbQ2m5Kazkp9A5DgKRu9Fozed+SpT1/9Sd
 YqpB++CGYZ1jvWXU0VEC1MRCBFFb26P20zcGGhcwV8Sj5EPmkupmWg6/k0r7l9SCnkkB/7PU
 UHQRrvc8WD7wrvI3IUtCWtZ4nw+yRgUOeyA5rMeMv5jjIWS3H3FLipDufGzkuzzNSJLMNgOq
 WsU9B5mFBhdwF76At2mudUWIJF4+XCDDtXd1YZemEe9OaCBOgt8X0w==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (dynamic-user.170.84.57.33.mhnet.com.br
 [170.84.57.33]) by smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 625ecbd8487c9ee854b06239 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 19 Apr 2022 14:48:56 GMT
Sender: codeagain@codeagain.dev
Date: Tue, 19 Apr 2022 11:48:52 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH v2 2/2] Docs: Replace version by 'current' in changes.rst
Message-ID: <664bdcbb2b33b866de200ac9c05fa020ecb27ffd.1650376049.git.codeagain@codeagain.dev>
References: <cover.1650376049.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="smwaj257h7s7n5bg"
Content-Disposition: inline
In-Reply-To: <cover.1650376049.git.codeagain@codeagain.dev>


--smwaj257h7s7n5bg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The file 'Documentation/process/changes.rst' states the listed
requirements are for the 4.x kernel version. However, there are
requirements updated for the 5.x version, as there might be in other
future versions. This patch updates it to 'latest' so the document won't
be outdated in the future.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
 Documentation/process/changes.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/process/changes.rst b/Documentation/process/chan=
ges.rst
index 41a44e5f47e6..34415ae1af1b 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -7,7 +7,7 @@ Intro
 =3D=3D=3D=3D=3D
=20
 This document is designed to provide a list of the minimum levels of
-software necessary to run the 4.x kernels.
+software necessary to run the current kernel version.
=20
 This document is originally based on my "Changes" file for 2.0.x kernels
 and therefore owes credit to the same people as that file (Jared Mauch,
--=20
2.35.3


--smwaj257h7s7n5bg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYl7L1AAKCRAZtd3tyEY2
kjxuAQC2/iSX96CmxkNiFSJlO8cmjxx+nY1jpNuRRBKM/h1rKwEAkBFye8E5g73s
zA5bJaF1FVz9nhBQP1YPEpjT6CgxcAY=
=ytKt
-----END PGP SIGNATURE-----

--smwaj257h7s7n5bg--
