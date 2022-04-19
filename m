Received: from m228-62.mailgun.net (m228-62.mailgun.net [159.135.228.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD901364
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:47:44 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650379665; h=Content-Type: MIME-Version: Message-ID:
 Subject: Subject: To: To: From: From: Date: Sender: Sender;
 bh=t6kTMyvUWlvIMDWuRhK4XgWIlIwiKrKDcGeXHhzBiD8=; b=puOKekT3++UUCw2kBN9kv55SpbG6V+UJA3jbZJJvCuMPLTVkQY3DPSj9U78+w/RZMiUO+CWx
 CvrMgQlDjoOa13hunemNwei7pEAwiNyw7uVUS+mrXa3iX4mjPWA1FwuTkX4j/I06fHuh79SK
 g4LARxtMGeixFFcRgXVFGGgBs0XXep9TNwwLSbLg7n9I0vaQGrc4yLHBuv6FdqIXwO1knmF/
 6if56WRYsd/QDepkq1cXF0w1Keo2LxE1Xbz6CM1Mk5M3c5mgtGxxL2fhN2XhFo6Kj/5Wtc1H
 BUTuGMNOAdLWHdpsXVxiYYeo5if3cBE+DO69dMYteoo0OwGNwRj3kA==
X-Mailgun-Sending-Ip: 159.135.228.62
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (dynamic-user.170.84.57.33.mhnet.com.br
 [170.84.57.33]) by smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 625ecb8f225c4690820943e0 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Tue, 19 Apr 2022 14:47:43 GMT
Sender: codeagain@codeagain.dev
Date: Tue, 19 Apr 2022 11:47:38 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: [PATCH v2 0/2] Docs: Update information at changes.rst
Message-ID: <cover.1650376049.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dir4xtje6p7ta4sv"
Content-Disposition: inline


--dir4xtje6p7ta4sv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add and update information at 'Documentation/process/changes.rst'. The
text has outdated kernel version and misses the 'cpio' build
requirement, necessary for the `kernel/gen_kheaders.sh` script called by
the install target.

The PATCH 1/2 fixes the missing cpio requirement, while PATCH 2/2 fixes
the kernel version reference.

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
CHANGE SUMMARY
   version: v1  v2
[PATCH 1/2] *   -
[PATCH 1/2] *   *

CHANGELOG
[PATCH 1/2] Docs: Add cpio requirement to changes.rst
        v2:
                - No changes
[PATCH 2/2] Docs: Replace version by 'current' in changes.rst
        v2:
                - Renamed from 'Docs: Update kernel series in
                changes.rst'
                - Changed approach from the original, replacing 4.x by
                5.x, to using 'current', as suggested by Matthew Wilcox.
---
Bruno Moreira-Guedes (2):
  Docs: Add cpio requirement to changes.rst
  Docs: Replace version by 'current' in changes.rst

 Documentation/process/changes.rst | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

--
2.35.3


--dir4xtje6p7ta4sv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYl7LigAKCRAZtd3tyEY2
klMEAQD7GhNwW69LkRR+NiYprOk0un5iHf7yuuhTWrDAsi8v3QEArHCMNqA6rFQt
uW9gRYzpdqGJa979zNlFM32xj9Zacww=
=XfWs
-----END PGP SIGNATURE-----

--dir4xtje6p7ta4sv--
