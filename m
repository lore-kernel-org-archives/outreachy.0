Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055F033C7
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 16:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QBZUCyBO"
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso580430266b.1
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 09:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698596616; x=1699201416; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mYs9l3Y38zsYWeGQkpS/YrsCTWgRjRBtAkilkQ1IrrY=;
        b=QBZUCyBOLNiZLmE7CGmGs//Hy0heK0rrHTBeQoF7Ywpsb9F9tfUliWAy48f/IAZiDP
         itORUhqJj4C+ZPuJ1afNHSHfZ5olI9dug65tZFcpHFA9t6sdhedAQBlJ3z52oTIJKWKG
         C/J9WEU9S4GXstL0q+UTE4nMIVllbxI0L9K5+HnKoW7eBC8q+eOPbTPoIou1dnNelALb
         XCKdyZUC68pxxSC7qSGUGxQ+PCTvssPrrvi+VeAmM5s+QGPfgH9DVMWQQeyW8gAicwbM
         j3UiiY/dD+bE6hcHLl/4MV3MhBsPiW6SJwW2XW8aKhOxyv5br10IuXxXAn3xxXka7nvV
         EkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698596616; x=1699201416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mYs9l3Y38zsYWeGQkpS/YrsCTWgRjRBtAkilkQ1IrrY=;
        b=SPre0y6GoA4OjMxmTjg6uv3b7zcWK5ERfENgAjS1WXsSrWPLA4Ic/PE1yDsNytsQY2
         fWDHspr04Jw6q2gvihQqF+UokJyl+igVFGoV9dOROR02zVIUw/h6qBW89E6wLSmjZi6F
         pNtt5fo9UnIxIWYhAyZLe06BxKDz60bg8OUirniAYIYfCkvtf5kB+YeucShEkdmVAsNo
         29FcNCsNwUopcq4yfKwXq/+1l37nCOC3ZAOh1Cs43cqfG0OniaYzzB5SOXqGwJKMAHYy
         sp5KaaeQuTzp5gk3/3TXm0pDzoYwZW+kdRw1wEI0yn3lnyGMvhn7QsqBMSrWY64Jovg9
         sHeQ==
X-Gm-Message-State: AOJu0YzDNU8M0AVPG9Pk7vq7sUf3XSQWWhEJ4Wyf7M+JsXo2328S5dgS
	nD+eGcfn9uP1DPk/uZLpZQHT7s2pNp/F9fkA
X-Google-Smtp-Source: AGHT+IHDETjJ6k7NwVVThFLbyrMWQCEGb5Ps9pXyB8aNWS+MLAwQkUWmrn/GILSrogV0CVdp3d3sog==
X-Received: by 2002:a17:906:c148:b0:9be:6ccb:6a8b with SMTP id dp8-20020a170906c14800b009be6ccb6a8bmr7423410ejc.10.1698596615530;
        Sun, 29 Oct 2023 09:23:35 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id a13-20020a170906190d00b009ae3d711fd9sm4533782eje.69.2023.10.29.09.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 09:23:35 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] staging: octeon: remove unnecessary parentheses
Date: Sun, 29 Oct 2023 16:01:53 +0000
Message-Id: <20231029160153.7295-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch addresses the unnecessary issue reported by checkpatch.
The subject line has been revised to be more concise and less detailed,
as suggested in the patch feedback.

Changes made:
- Removed unnecessary parentheses around 'interface < 2'.

The parentheses around interface < 2 are not necessary because
the < operator has a higher precedence than the && operator.
In this context, removing these parentheses doesn't change the order of
evaluation or the logic of the code and improves readability

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

