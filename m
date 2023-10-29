Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A43879C4
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 16:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CAlT2rrL"
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-53ed4688b9fso5582830a12.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 09:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698598005; x=1699202805; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9qHGXKmGqvj51a1aJCDRA9093gbHB/S0UJqZMJnRHfs=;
        b=CAlT2rrLgYbHWboH74taIJ6od5AegNnkFO2W12N+R73SfuQmmYyGrWCSEnKe9yiffo
         8/1UNKIQcBSv//ibjv3pfxoXJewf0Uh3tZMG4k0NWmWA8pPuS60uD0RL+na81V7zugKF
         cM8RVqhcVTpWGzuhdaP4CDf640mHO/qkkB9IyZJWXm+xanbr1DJJCaaO6+Qf0LADAmd4
         CGIWb69NRaQNEA1vq8c3psbv+V5KpMx2lb2paihboL6xEq+BColShrZq+J92fsDPrg8+
         koUKMnoGemSh/2TfbBA7upVPylfYF/wgrO49MdksDOTUDySPdErlH4JNo8lAQVYtud/2
         hT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698598005; x=1699202805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9qHGXKmGqvj51a1aJCDRA9093gbHB/S0UJqZMJnRHfs=;
        b=sovyy9BFU3oRSXvah6fCpnCWb44cIMXqVdfT+HDJsjO8fhH/7QkwQdJiBhMOIM0LA2
         F+MV9eBbdKJZZMrH5yuIr6e8UmfrdF/Cg7reXhRp6C988UVq1pDyEV06H70UbDsRuNzz
         kSvBkTT6mO5Q7A15+ljvPBh2B3ac5VvCBpmna3zuhnQkQGAf+uO7VbuL5upVOHZnGLO/
         0n0tb8epXLMbC76eZzpAUK4x5AdV/+O4CFG09lgrwQ/asSkgLaT8JxTVEMUjgknPGqGS
         1Ck3gd14lFCQa3rIm0WyEhgE1LKtQHkhDSdF6IWK6hY3CEEibEuo45GTixhvPpGvR/8B
         KNkw==
X-Gm-Message-State: AOJu0Yzw/l+FV2IyA7H+usO1wxh3ieUdeWUbHaN2A1TSgRgKb7x4R3TE
	c5NUO/VKMxAmaBKx/8aMS4+EPiwYTNNPpM80
X-Google-Smtp-Source: AGHT+IEzJYAIBjamUdWwScFHrWZFyjKda40svImuWFW9HZV319DQaYP0NuvtP1jRDzfS58FfmxXOjg==
X-Received: by 2002:a50:d792:0:b0:53d:f073:587c with SMTP id w18-20020a50d792000000b0053df073587cmr6711017edi.0.1698598005253;
        Sun, 29 Oct 2023 09:46:45 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id v2-20020a509542000000b0053e163a1ca0sm4805405eda.1.2023.10.29.09.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 09:46:44 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] staging: octeon: remove unnecessary parentheses
Date: Sun, 29 Oct 2023 16:24:53 +0000
Message-Id: <20231029162453.7437-1-dorine.a.tipo@gmail.com>
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

- Remove unnecessary parentheses around 'interface < 2'.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>

---
Removing the parentheses around interface < 2 improves readability without
changing the order of evaluation of the logic because the < operator has
a higher precedence than the && operator.

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

