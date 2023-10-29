Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EFBBA3B
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 15:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ejcDfrS5"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-99357737980so573946566b.2
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 08:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698592693; x=1699197493; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=//dk7QaO0DevBZWFQoNf1pWa84IUijCla6S+OiWb+do=;
        b=ejcDfrS5hTpOegNO8OP2GKsIQTFxJbje2cQj2Iij9HSL3uO65iOAFZNJev788uOvv0
         U4sy/IFYkf5jMUh0d+k+LKmRCnrp96BEaGeaQl04aRDOjr3bPlyRUr8RO6cnYc94ZMnu
         e7Vszmdd4gtcZZKcqJbbbubgbsUUeEppw2smosP+LRumIfoiyvQoG9knjg3VKyivRfds
         QacXNz47PmaZu1/zrl2JPtH94/5g1Oxs82FoOBEMU7KApStNs4jfKdNY42NuO1G5koPl
         J6Fy9J4qqw6B8+JkG2dZ7zezmCxp7b8euwSbiyJ15itym7NiMBsGi7Hka3yLiTYK8yUz
         OEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698592693; x=1699197493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=//dk7QaO0DevBZWFQoNf1pWa84IUijCla6S+OiWb+do=;
        b=FJ1puzblHr82oyK0S6NJijyKpsW7qZlLKXmEE6tpXgOzj/3dsKgdPi1jqzLRyCkip/
         NqlHUcUD1/c1Uu72rsI3pwoIPOCA/q+N8e+2Lt0SWZI2JjFOqxPFWX/z7f5Q45AiXTXD
         p/cNW+CeNyO5OULzpMR3d/NF3MsvoKYNlr+lSRpO0zdbYuDI6Ull2ajWmDAjSNN1OH9U
         36kVuMYXsmtuitc1QEHUGDrK6wLcu1MfwOASzyaJm9FDwtYnZkPR7FquB3kkEbNGn6Sl
         ms/S+ZkwHbI9J2ugjoSHOyvaVMW/Vx7pX2H3tra9+P/3PKh8gixN6V6NSsMzidBStJM+
         BwVQ==
X-Gm-Message-State: AOJu0YzXC2NN9UZtjkdtT6fMaynJRPy87WMCISmKHFM7XiXilAYynlZZ
	16kffdqX5xcegd3s3UpaJkwwyZmb8xH7Y9FA
X-Google-Smtp-Source: AGHT+IGUBcd7QnNE6WO0f5qz1Td6WSjLKxAWgNUL9rZ2jcMbfeF4mq2iTWjpgJfTRCHC9SpQdheKfQ==
X-Received: by 2002:a17:907:2d0c:b0:9bf:10f3:e435 with SMTP id gs12-20020a1709072d0c00b009bf10f3e435mr5934881ejc.1.1698592693195;
        Sun, 29 Oct 2023 08:18:13 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id gg15-20020a170906e28f00b009b9aa8fffdasm4442137ejb.131.2023.10.29.08.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 08:18:12 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH v2] Subject: [PATCH]Fix unnecessary parentheses in drivers/staging/octeon/ethernet.c
Date: Sun, 29 Oct 2023 15:04:11 +0000
Message-Id: <20231029150411.6529-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The commit addresses the unnecessary style issue reported by checkpatc

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

