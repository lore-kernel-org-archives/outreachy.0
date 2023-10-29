Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA83B67F
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 15:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXMixjk2"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9d0b4dfd60dso296164166b.1
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 08:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698595014; x=1699199814; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KaQcVBhPX9xss3LOYHQ45LSBUcqVG/Ji/FvVry5tCrk=;
        b=BXMixjk2D7yUx3HmuDZ7BqSxcBrqAMGujnybXLRDJORws+47LO59YykwdoBkbhSp/i
         dapZ80IcS0s1XIC2LZcTZvg5vlbPABjq4FE5xlXmcNhIr6EMgv/abc0Z0r2BsSf2uDI3
         6WaZ4rkP0+/Y2YHS8eNpZHb/bUwrfp1x5X1nVGV/iz6yNhvBpFhdb4LmI+N1464/+J3x
         aI5USPK3UaXmTfOjqz9dnqwlcn+8sLDmEyHxK1fZX0HkaLKrghwial6uFbP6ROUqTJSg
         LYZGp0ksAZ7vBNGORL4MiM4zjcwQDDZtmwhDJMbVCHPWXJ6+yrtJOEDEzXah2arvhtik
         ni4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698595014; x=1699199814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KaQcVBhPX9xss3LOYHQ45LSBUcqVG/Ji/FvVry5tCrk=;
        b=O3iy+1qQcqLcSxRYf6gHCmPiQNOCeWI2ynptl49TPcuXRFdAQ24rlr3LjAk5DswsBb
         XWyIurCKavwkal1zquuCuxRhIvuJI4u9WbkJ0yOmVpDFPW8spUL0LVoglKbolwAn4VzK
         ktH3RG18RB6GED/cR8ziqOIT6yjq9JIGgEbZU1Baycgvocn00GOBD+VZb3gSK0mj0IXO
         z66QRYjON4aDxS0tQgLZhI3VLCatQ1QgXzh/36boMUP2GnDH4h86NJN0gn7UnmOC4IcN
         /zoaeeLfD+Q7HuuT0r0gJ7iKrClgGsPTk5gkSDY9vydkDO+echncDBI/0UD14iTbrdTQ
         nmsw==
X-Gm-Message-State: AOJu0Yx3aI6Nr6ztrgzhIuni2YQny04f10MJ6pA6k1cGwtw2rvM+kv9j
	UYaXacPfjpUWL1bdTayrqEWF00zjJs6qPplH
X-Google-Smtp-Source: AGHT+IFX2tag+D/NG0IZt0e5Kw4p6SiGotrQcOmEGbOGq1oj90R9j0sHAi+ftndq9aoB7GVeI2hGrg==
X-Received: by 2002:a17:907:2d2b:b0:9b2:a7db:9662 with SMTP id gs43-20020a1709072d2b00b009b2a7db9662mr7423924ejc.12.1698595014244;
        Sun, 29 Oct 2023 08:56:54 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id j21-20020a170906051500b009b2ca104988sm4511604eja.98.2023.10.29.08.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 08:56:53 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Subject: staging: octeon: remove unnecessary parentheses in interface checks
Date: Sun, 29 Oct 2023 15:42:53 +0000
Message-Id: <20231029154253.6846-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The unnecessary parentheses around 'interface < 2' have been removed.

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

