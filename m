X-GM-THRID: 6750231340791103488
X-Received: by 2002:adf:f74e:: with SMTP id z14mr4740643wrp.84.1571660707987;
        Mon, 21 Oct 2019 05:25:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c448:: with SMTP id a8ls3638947wrg.0.gmail; Mon, 21 Oct
 2019 05:25:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyhKZK1lAZ9bAAm7LUoiboxAZlIkpwWc9Wqv6P7XS1c3yW8KotVnn6gM1d2BWV1BHhTrigF
X-Received: by 2002:a5d:6a91:: with SMTP id s17mr12646595wru.224.1571660707088;
        Mon, 21 Oct 2019 05:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571660707; cv=none;
        d=google.com; s=arc-20160816;
        b=cHo9utS5pHlKAsPHD/s4NkESFr0d0Qj6BzH6+adwV5y+LF6oLMGONwgGsKYvlVdF1G
         AC4rbDWE3bnQ4Ep7vmXYG8ZoA1eqKd4CYiGc2ZJHQCcscbzJaKZDGWzJEA14vVP14c6M
         CoNEJjngVEknnJtLHxSPLSiz/LjFBb9ZautkRC78mmTDv3YzHr3tbo/icIzDozfhj+3A
         NxX40c77Q6S7VUX1kkggnIZoSZX29OEkPeyFXhu5m2z2AwWowns0TkpRYDPnwutD7JnW
         9AGREku9r+XK9DZq36po229hF6x0xx8XyWiy6FKDd+rEqoWTwCy+wAz0vPDNcfp3T5FT
         wbHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=iPZvQEHxYk6Ovhl+WhnF2KXwRMSoyfJQ5dZms+yp3kuEbaoRy/hE1huiFuu7u23wWY
         HCXMwsmUnHmuoRybmnefVxmk54t4vnlOieU0cFxPyiuc0kIeAFA2uNw7EwmTD86WjRPC
         xTcoi8fsx/TMGVq7UvVfAiiYyEg3jXWXjchl7NgAocMRKg3cGTrm7UeqrqnLm6p3REJu
         3Vvo6Usc1KXE2S9HSHybvbBDQK7xDGBNDEM0Ov7jNu3fa0X8Fhjy9hIP0+mDRnwxwcyO
         wgtkCZQ67j/nwsnynr4JDJcE/BDgLvRqd7aYXz7FV0Q/qXNdqyCUfbOXqYgf8hB+6CIQ
         rErA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SkFLoDUS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id p15si724408wrj.0.2019.10.21.05.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 05:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SkFLoDUS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id q13so3053639wmj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Oct 2019 05:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=SkFLoDUS8YE06hJOPyAETAJqLJvTI9G0UOA9I183JtgYYfriY52dnLfRx8pDpqgsWX
         zxEEoGwJtlITUIQZ+DhLrHbL7o3NNhKz2z27+I1ytCYFbBxKw2e9wc2TxERj2190DFL+
         p9v0D1AH7+s7BWWk4KZ+zmWc6303tV+gmPs3NuCv3yqaEXDK9eDChyGUNtLkIyz3ee01
         DbhFJkosejFxL89pih35Nc6cnafiVUQJAg9RadmsMW2Qo6OLr9cxnH6tlglI2HIhwGlY
         7LbaA26UQN7XZfw6UL54+YRD3pSgNzTNOaoYR/xj9fXnTRsZrwOH2mcfX6yMC6T9ozTQ
         1HKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
        b=nezn4uGnaYEjhidiSMk5bT5M0WvJWZ4atu23upRbG8Vs5y3XekzAcDPSuNZhEJQC8g
         BuGiqUoim6HPB/cGLXD0Rsbwg7DVwMAeFfLtH4jakFMBpaCk5PbDzfkKlMQwJEls05AQ
         wQa++757Gseo19Eje3HvQGF8I2VTRdzOuT4DMXdi0eRXQgTBITR9ARUk1bJtPqKm0e5X
         Yep/gLL4M6p/hBqnnIVtjZ0y+c11Pfl7OwN1pDvfMrVTG99076E/GjS3DVuK1rmgOAhD
         2PXf7gmaalpnZ9z1tsv4r1bA1Y84ccJy38/OQGBBpijVJMl9dgVEciLhAlLs+k3s+hSh
         jm3w==
X-Gm-Message-State: APjAAAXSRiyuakXimBYkyUkTTUdfInzEArYWtgwxrboDrnh+PP422aFL
	F2Sc4ssHaI1Rk5vjgZihIjKeRBL8e8zK
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr18811907wml.170.1571660706405;
        Mon, 21 Oct 2019 05:25:06 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id 200sm4285874wme.32.2019.10.21.05.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2019 05:25:05 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	jerome.puiller@silabs.com,
	devel@driverdev.osuosl.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: wfx: remove unnecessary void pointer
Date: Mon, 21 Oct 2019 13:24:49 +0100
Message-Id: <20191021122449.19343-1-jbi.octave@gmail.com>
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


