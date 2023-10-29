Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0410101CA
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 17:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eAfBUHxi"
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-9d2e7726d5bso82614366b.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 10:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698600796; x=1699205596; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oONESIONR0875+VY7V+KJv4RBl2k7EOc49mVhor/0ew=;
        b=eAfBUHxi/SRrCIebobMMyhYzTyDEgHLjDtTDes8P+nidPGp5VUpR0cWOMJ0h+Yr46x
         aktouM/NDZs3duGXd+uv+lfm4PdrmpxfE4PJn3txFi458qYO/bT8M5BSJzFMdBVs0Hma
         kxNGj12qVVY6f2NnuDwgrT5LvpzXFlRLkwEOerLVwpm5g7TI8jTTppvxt23PcAaTF1sB
         lqwjAsXRtjEsNzGL1VXqyq1Mw4nbwALkor84TAos8bZRPI2zC63GATuGPq/xjX+IFv8q
         Ynw5g0EpCiZmhR/EQBUbujl6H5ifVUu9mJyytS9uuwiIcQBexnmdYFBKrPUNi4jOErv6
         3YpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698600796; x=1699205596;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oONESIONR0875+VY7V+KJv4RBl2k7EOc49mVhor/0ew=;
        b=tMClGBYoPUXIWYUwg67phNqMkVqqsJBMp9b0w+vbsCjYf9VJ8bj1JEt9q8QHtPBMPb
         BzbqDufdcIoJi55JNBELAHF3wuNvrCxTCZ6KNVysEBMtj79HFUF1Abc0sURcQDYWgZj8
         cnoeYB89QwKt6GGVP1sm8q/RWW8YSkU0GgbY4wRe9y7kyUdXzzM6un32sDPZqwN207pv
         Di0fl2dGWUftBrIO/m+yZe7Dc9qwBJZkQ+xnrjyoJdtmuafdvem5q1RHDfWNvlDSwG9Q
         T5FCip3voC9Y1rxxy2Y3qIGhif8w22anFdzPE0AddyqVR6MYSa6dMMrdZcHIJ/iuJPug
         z0WQ==
X-Gm-Message-State: AOJu0YxLVK4uPXvixfTR7fjWLdIqcbUqLOLPXKIR700Q+ch1pCtmZX5D
	HSwZVtseq/F8AgOJCAh06hgqlZaGpBTOKMju
X-Google-Smtp-Source: AGHT+IHOAEb0lBw33sYli3wNS10ABawn9u5kXn7O6/ZiB/QJZPtC3WKYnnG8XHFlXTygPc8nhZb0vw==
X-Received: by 2002:a17:906:d555:b0:9bf:f20:8772 with SMTP id cr21-20020a170906d55500b009bf0f208772mr6691022ejc.26.1698600795251;
        Sun, 29 Oct 2023 10:33:15 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id op12-20020a170906bcec00b00997cce73cc7sm4655418ejb.29.2023.10.29.10.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 10:33:14 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH v2] staging: octeon: remove unnecessary parentheses
Date: Sun, 29 Oct 2023 17:11:19 +0000
Message-Id: <20231029171119.7816-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Remove unnecessary parentheses around 'interface < 2'.

Removing the parentheses around interface < 2 improves readability without
changing the order of evaluation of the logic because the < operator has
a higher precedence than the && operator.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>

---
This patch addresses the unnecessary issue reported by checkpatch.
The subject line has been revised to be more concise and less detailed,
as suggested in the patch feedback.

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

