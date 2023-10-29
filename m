Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B7633C7
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 13:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JXD8q9Pc"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9c2a0725825so572746066b.2
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 06:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698586728; x=1699191528; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3+9N2Spb+6l5Vm3dEcD+0dbViCYa89ODzappv9F4BBU=;
        b=JXD8q9Pc4f+/aN6vYFqzJ/vPyVhL66jsIVTNo4Ge5GFo/obJdZZ8f4/NKNIo5KYihy
         ibyw6OM752Rgatt8bR0z4cr8TJFnuTTAf0w3a6lx/hKOt7g/MnmoWQTlT1p8Zgl1G+z5
         StNHOBm0VfurwQPscu/oiOropJvH2sE7O7HjaAz3LFoCIPgOonJAJxAvHCDRSpQacAdD
         GhNSFBczWMoE9Dx4b46SFrZAnsjE9wqxvfpsBpKwRP0miJuL1UVu3xyzRqSdZ3ht4NeP
         Op61R5OjTYva+5mzet8Hp+p1pqz32PGnrnPQrnirrd6dz5HkrYImEe7Ffo/yTy8cyHpO
         F7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698586728; x=1699191528;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+9N2Spb+6l5Vm3dEcD+0dbViCYa89ODzappv9F4BBU=;
        b=jh3aEShySdN+NFoY9AH479+Hwhfha/8ePWr2+HdCmTNfs8liO/6ZOZrStc0ykzRGFY
         bHOaORvTos1q4esxDcDP3B8Dbhdb9HSdDImbA+LOskUXNzXWvEtpYx93KGZpmXJG/VcI
         juef7hQnCGMEc6P04L9bB1z+RTmHnvy3tdx3CxJY7HkyLZGviLWPMHBbBKUkGMRZMyDy
         a1d2FHk1bOQHN5nOr4B3Rprp0Mja9xN6BsJH/9eSO2JM2XwoihpSpY8KdqbGAKTydHuA
         wWrwPq0eFT7xyGprdZVXIcmmn7qidxTKhf9BKTLOBXRR2TIwTnNxu2Hhj2EoC4kgCS4o
         kM/A==
X-Gm-Message-State: AOJu0YzBgmN1xbtOSkPKGTgzGFQSPYbtSblRLsWIASGxXSiD0lo1N4m9
	cwPM1MbMtamoH7JmcQB8KAPpv4tpIrIpl50c
X-Google-Smtp-Source: AGHT+IGAIygI3Y6oEsKJmyUqMwrhceRvMd809EYFab4r+V0Al3OBR5bJT6RyuXRnvD7WrR1FoLs4bw==
X-Received: by 2002:a17:907:72ce:b0:9c7:5a01:ffe6 with SMTP id du14-20020a17090772ce00b009c75a01ffe6mr6501347ejc.13.1698586727837;
        Sun, 29 Oct 2023 06:38:47 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id y8-20020a50bb08000000b005400dc94f43sm4519099ede.45.2023.10.29.06.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 06:38:47 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH]
Date: Sun, 29 Oct 2023 13:38:26 +0000
Message-Id: <20231029133826.4576-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix unnecessary parentheses in drivers/staging/octeon/ethernet.c

The commit addresses the following code style issue reported by checkpatch:

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8e1f4b987a25..349308edbc9e 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -248,7 +248,7 @@ static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
 
 	dev->mtu = new_mtu;
 
-	if ((interface < 2) &&
+	if (interface < 2 &&
 	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int index = INDEX(priv->port);
@@ -294,7 +294,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
 
-	if ((interface < 2) &&
+	if (interface < 2 &&
 	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		union cvmx_gmxx_rxx_adr_ctl control;
@@ -346,7 +346,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int interface = INTERFACE(priv->port);
 
-	if ((interface < 2) &&
+	if (interface < 2 &&
 	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int i;
-- 
2.25.1

