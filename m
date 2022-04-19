Received: from m228-62.mailgun.net (m228-62.mailgun.net [159.135.228.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8FA23
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 02:57:12 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650337032; h=Content-Type: MIME-Version: Message-ID:
 Subject: Subject: To: To: From: From: Date: Sender: Sender;
 bh=1rL2vp7V7+wKoQ87BcU2C7fDdhb8wqUApGLXA1ggxm4=; b=O2akDMzbE97y3+g417NyIMP+6bauud5CzeMHg6MjWJeSY3kkbi466JpDnbfbS8OD1CSc6SsA
 JmCXHJRmfIVP1Hfu+i4X+DFdk7lSrhTPX+kWNgwO5dqTNbBRjQ1FrtWgHU/UGzYLa8eDAmLh
 0K3B1do4O0n9vh+EtkTGJpfgwyT5o23cMevTBIs1ZUhOFqwz85H1X3MaoqRmiBSZWz8m46yb
 k1ejWkhT+gye7GCMcTvIZe2bAuzgvSaVYcVX4b1m7X799eU8pae5oydVComxlLVELjEU/HMp
 ESKANoDpOAXli2s5bfKoO+dM811cSswEKKn757+DGe+i3lp3+f1NLw==
X-Mailgun-Sending-Ip: 159.135.228.62
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (186-250-90-1.mhnet.com.br [186.250.90.1]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 625e2507487c9ee854800177 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 19 Apr 2022 02:57:11 GMT
Sender: codeagain@codeagain.dev
Date: Mon, 18 Apr 2022 23:57:06 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH 0/2] Docs: Update information at changes.rst
Message-ID: <cover.1650336366.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bpzzsdc6houvacyh"
Content-Disposition: inline


--bpzzsdc6houvacyh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add and update information at 'Documentation/process/changes.rst'. The
text has outdated kernel version and misses the 'cpio' build
requirement, necessary for the `kernel/gen_kheaders.sh` script called by
the install target.

The PATCH 1/2 fixes the missing cpio requirement, while PATCH 2/2 fixes
the kernel version.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
Bruno Moreira-Guedes (2):
  Docs: Add cpio requirement to changes.rst
  Docs: Update kernel series in changes.rst

 Documentation/process/changes.rst | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

--=20
2.35.3


--bpzzsdc6houvacyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYl4lAgAKCRAZtd3tyEY2
kpd3AP9O+BHCyMUtLB86c1qgQEfZhDCee86AS1T4mqPw/ZIdOAD+KaTrWFtyqDTT
7m3mQ+XzO7ShHw1XylPSkQr76iV3sgQ=
=zLsk
-----END PGP SIGNATURE-----

--bpzzsdc6houvacyh--
