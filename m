X-GM-THRID: 6750231340791103488
X-Received: by 2002:a05:651c:8b:: with SMTP id 11mr14637282ljq.98.1571660960312;
        Mon, 21 Oct 2019 05:29:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls1538746lji.0.gmail; Mon, 21 Oct
 2019 05:29:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0KLW3vtnpBLYI89LZMIVxWjl4QadrA9Rciueo7XP513r5MZgDG5uCkwu06qQjh2SqB9b7
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr15253100ljc.120.1571660958897;
        Mon, 21 Oct 2019 05:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571660958; cv=none;
        d=google.com; s=arc-20160816;
        b=kBglvc8TorqYWUorVS3LiJkDXj9eHcIyl6YBTnijqSpIVE0VzaV/Jy2op4acRlwoOm
         uvPAVRh5YhqzO+AvcupO6dD0saUzePXlZTHxJWZrMz/xqe6wDakh/JLn5xo+/AAdgXOW
         bm/HZewHEoNQtQCkUf0KcI+H3aNEy8p5fYisVu4xq2P5E7kwKwhadS56SwEI6z+xfdp1
         GI0WyITOJFhzF5eQpAhZ2u/CKflH8pDqnIycEMYiKUF2qv64w6dUhxjutJ+XCg9VASi0
         B5vqh0aLjmTx8Q9e9FwDkXcphFvntGyzv9UiYf2TTyW6ILAq9Tk7KEeNCGT9msV0MwOk
         xX3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=ZfJvr42vTnho3fAYUUPf2j4BDGud6A5RVoJQavcVaMBZBE+Z8IbVwZimMvpEj6KpZT
         XHjfsqukuU5jNkG6dCPFXA150st4ah9kxiGBwk25pdcv1MeR6Nju/W/Mh/ZvUx42HlsW
         eYLUsg0v1aCQm6obl9nD3n+kJtPVF5PYDVzloYdV0GtsxXFFmynqPX2i7i9RsP7BVsuH
         gVjUqpawF9ZrgxLY/+2MXOgcPofZJeW1ErWUGIigHdSN927kedicNXtylQD2Yr87iXrJ
         jOHJ7NwUwhigbF8Ngzsan3E2jQIEuXkZIdCw6hAxoeUQIV3qBVireUdulT3EbuXltiHd
         x+NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bnz2ANt7;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k24si752019lji.3.2019.10.21.05.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 05:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bnz2ANt7;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o28so13756787wro.7
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Oct 2019 05:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=bnz2ANt7G4eqAzZ9DSWygFW0LuRD9p1isUZFFFmTdga4oP8dfZq32yVp4X4xE7Fgc+
         4KByVcrwN1R/Ahk3cp21WQPktzReZRtvevrgHsRfGBkIha7Q7Z8eulSq3sa7N8ABLLmr
         dXpRnAfRhtDtDXcEZ1A9tOzwZ3t+YmCgPeA5O5vKG2wNo+Dl+HSw35UO3XX0/lrQ1ZeB
         vikO6HRgpl2BoBkge/hXDnIYikhxBwhDxy5IqMysJ+1Vl/9QatKWCcslywO2bcHQILey
         lxG97Qgxvvlfs0bJo4rnde5cRx2bm3IbsVUEGu0rNMamcSLZdGykPq9ljlZNweiRg+p4
         MRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=mqPV0vOBrP4AFfMyADX8BVKK+cfBflPlHiJPvCNgLJb/zHCM7Yurycww0CMJz3NuqX
         ykjK5Z7dAvExDJJ5WGlNZcfzgZh0Q5qbZ4n0eiLSRYnM/vJh3NGYJL4N9KZmUC8Va7c/
         cCSe6ut9Y0q1nL4jGuvqmUD4ez5oSSsNa13xQGVMqSOX5z07LajcvuE0C8kKj+O8ldNw
         xyvcUQ0zuJKEDyy6PjeKIlsFPLsJP/2qV4R7TfRqynDe/uCvF5XWK/5c948hv/hd1E0q
         VNIIi8FdEZCty7lIhUGGE8zk8/uBTQIlvo/x4wo63p4UwAE06QdoEvlxJdJWWlYHd9lp
         8eEw==
X-Gm-Message-State: APjAAAXy0QbwBUNyeog9+Smol5zxDL9D8tqJOrbWrwH8RYdKJZQ8tMc4
	SmuVe5FfQ0GSHRz71wyTgj9yZNnhJ3UHydE=
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr18360619wrn.24.1571660958000;
        Mon, 21 Oct 2019 05:29:18 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id g17sm14254664wrq.58.2019.10.21.05.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2019 05:29:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	Jerome.Pouiller@silabs.com,
	devel@driverdev.osuosl.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: wfx: remove unnecessary void pointer
Date: Mon, 21 Oct 2019 13:28:39 +0100
Message-Id: <20191021122839.19627-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary void pointers.
Issue detected and solved by coccinelle tool.
semantic use
@@expression e ;@@
-(void*)(e)
+e

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c       | 2 +-
 drivers/staging/wfx/bus_sdio.c | 2 +-
 drivers/staging/wfx/bus_spi.c  | 2 +-
 drivers/staging/wfx/sta.c      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 955ed3a1dd73..d7ad9227c9c4 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	hif = (struct hif_msg *)skb->data;
 	WARN(hif->encrypted & 0x1, "unsupported encryption type");
 	if (hif->encrypted == 0x2) {
-		if (wfx_sl_decode(wdev, (void *)hif)) {
+		if (wfx_sl_decode(wdev, hif)) {
 			dev_kfree_skb(skb);
 			// If frame was a confirmation, expect trouble in next
 			// exchange. However, it is harmless to fail to decode
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index 375e07d6d9ae..237a19b5fd16 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
 	if (reg_id == WFX_REG_IN_OUT_QUEUE)
 		sdio_addr |= bus->buf_id_tx << 7;
 	// FIXME: discards 'const' qualifier for src
-	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
+	ret = sdio_memcpy_toio(bus->func, sdio_addr, src, count);
 	if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
 		bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
 
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index ab0cda1e124f..bd74801e7461 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
 	struct wfx_spi_priv *bus = priv;
 	u16 regaddr = (addr << 12) | (count / 2);
 	// FIXME: use a bounce buffer
-	u16 *src16 = (void *)src;
+	u16 *src16 = src;
 	int ret, i;
 	struct spi_message      m;
 	struct spi_transfer     t_addr = {
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..842158b7e805 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
 	/* TODO: Distill probe resp; remove TIM and any other beacon-specific
 	 * IEs
 	 */
-	mgmt = (void *)skb->data;
+	mgmt = skb->data;
 	mgmt->frame_control =
 		cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_RESP);
 
-- 
2.21.0


