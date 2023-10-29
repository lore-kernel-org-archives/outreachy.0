Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F912F5F
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 16:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D+PUZkRa"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-53e3b8f906fso5888406a12.2
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 09:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698598613; x=1699203413; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oONESIONR0875+VY7V+KJv4RBl2k7EOc49mVhor/0ew=;
        b=D+PUZkRanOYpzcok+Hk9DQIFEU2AiyRASx0ydj9AFrmfQVrZNTQYfKRnyFfNLn8k2r
         TWExPuPvayeoCZ9VRFD5ndjhpMiRDaYnf/BoMOACPtMm9mxSlK7k6dL58ACZ3aj8r+Qt
         BXfFA/gTO7H9B3DwaLj7CxmCzg6+5Vzi0Bl8xIHdRrAiirKDwkWlOI0vXF9n+xglWLgG
         ngHzscYmJ8Qex17ENxkjANisl6ytX+I2c0cuUo1AirNorz4jP8eIfNSQPD9ukhhnrldK
         royNXV32Y5Anjosf+y30M3UKQpUPxZQj5Dy9OgbH6liJwxAbOQHlQJYNZ+5m4o8LlwgC
         T67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698598613; x=1699203413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oONESIONR0875+VY7V+KJv4RBl2k7EOc49mVhor/0ew=;
        b=t9W3SWZHeIna9wl0eXeAYDm8JssKVx0zgujyo41OOn6vh3CgQFos8RBo2BzpVQOzw5
         QLkaty7svbSt06yHOzLaybiqLerpYbzvs0s+QsSRsFYEnjTVu5iOzca6ovUm3VJzqCSI
         AZ12vBydqRaEjRfIjGeuPEZdI9Ukq/KaBd7aPwQXf3hjS+59FkH2+1YVjzYAZJKVuULq
         xOtS6Z8/hxH2SbGw8DlSWVMkVW5F6SCNMnocYuVkkpwz3jlUia00CdwM2ePoY5DKLpuz
         /wb14PgibyWY9Laa5RhIn05yNT3ptYQb9YSbHk4zVc9egf97R9DmMuPUF+PR5xC+8/8l
         1+Cg==
X-Gm-Message-State: AOJu0Yyf2nPYHAtVMbQfdg3+oxjiyM6qv0ICsbnuhIfdPisPobiYjlZ6
	WMjCwDtLG70iMy+9bI0K/YCHBBMWgrljh295
X-Google-Smtp-Source: AGHT+IFFqoXLtio1S93BdUcgYcf4vx5qznfTEYnYegFqczeE2Qwit2yTgzrQwCr/N66I1YJZzzQH7A==
X-Received: by 2002:a50:9f25:0:b0:534:8bdf:a258 with SMTP id b34-20020a509f25000000b005348bdfa258mr6155423edf.31.1698598613262;
        Sun, 29 Oct 2023 09:56:53 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id i19-20020a508713000000b00532eba07773sm4775758edb.25.2023.10.29.09.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 09:56:52 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] staging: octeon: remove unnecessary parentheses
Date: Sun, 29 Oct 2023 16:35:12 +0000
Message-Id: <20231029163512.7713-1-dorine.a.tipo@gmail.com>
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

