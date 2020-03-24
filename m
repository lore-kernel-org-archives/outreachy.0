X-GM-THRID: 6807662174396219392
X-Received: by 2002:a9d:2004:: with SMTP id n4mr6139517ota.74.1585032376355;
        Mon, 23 Mar 2020 23:46:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4dc4:: with SMTP id a187ls1398354oib.4.gmail; Mon, 23
 Mar 2020 23:46:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsitsqZkg6DzkqmLJ4PXWDEdnJR3Q86hOyikU2Y2Uu1oqlcYKYrFD0ZyKIqZPUmo1mTu79j
X-Received: by 2002:aca:c596:: with SMTP id v144mr2397862oif.136.1585032375302;
        Mon, 23 Mar 2020 23:46:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585032375; cv=none;
        d=google.com; s=arc-20160816;
        b=y/cQtJpZ26TCZVlnM6Y2l4cQ7Nc52wIyvVzs5NcflPNsjiakvjj0+tn6xpkybtDMg3
         etWQJ0lBDvuTLKq7MoFenYZ2xdS30iEnwaZU4oKfWVd277WEtDzR6ytcYgWLgsbi/PmF
         56RocZpqGmgEvFwIG6bqLRStFrDsQuu+T3lHi5jyp2mHXmx4VsI4XbeXJCE5fEBecnh3
         Dl3Q6ObDaS2KJeEtoX0EFLmTnSl6gWj1Ak8XEpP5+qM47nJtsEk0rh8n3QmYm3kQ+RGW
         LT9EGBY1RJ0GtW44tYjCoARmvfeoM3IUUV9ppdwiete3QXUtzkpKidGV3tbCtYwUbXBc
         Nb+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dxldRsVgM50y/CNdhaywWvfHOux55cFEhCcDUOIPfIc=;
        b=EP9V1Pi4DpTsIgwxlk55QuZPRCzFaWu8zVdsIAYXLxqlZD4wqFB2EiGeupLUbEVSx/
         I7hL19HuQieyTxJebW8gY5f7J2E641S2VtP0uNu0B6D3N1XE+SKBoPhRKD2flSRmytkc
         xplHumyXFlMPu+kOLiYT3MH5kT7tIFacVSqsLNQTTQvaSla6uql9Fis8v+tTqO+DNFQX
         RVcqAMChw3HIdtxcPXwu9DtXbPFasFkvA9R0LtKrVbnzD87/JtwW6njLeH1mRfZly7ST
         BdlKtJ9ZPjkDNcQRka0HUzBCw1nxWZWxqfk2pnaVPx4s283JnqESEdywydyc9V3D6bkj
         Ktng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUBTb3+e;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id o10si1046587oic.1.2020.03.23.23.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 23:46:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUBTb3+e;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id l22so6692718oii.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 23:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dxldRsVgM50y/CNdhaywWvfHOux55cFEhCcDUOIPfIc=;
        b=tUBTb3+eObvRl1e/GyketYIRgCE1+FzmKzggzqiKcr26yjwZz9zLn2jScZ8Z+KFMzC
         DBVivRgcnTY0kWmXvqlz2FC0HZS2sJwiq5sp8yZ4S/C3T1KDE/1zTIJxZjzVqbbX/mH5
         5NZcYlf+iRhdxU/BuW66MIp8leVkBwXYSIHFxVbXnlDBSR4qcQUOQBKP+0hmxtlcjcGx
         1ur6/7rP1TKySS8VZ3OUKmPYHAmNjYMgNrJtCFSEPafe36X3JBGAd8t4KxPIwjPs4eU2
         OQg+vfvrbRt/jdjYdCQy/QJ1hs4AhgkRv0p25in+SsyEoAgV0dfZKzOIhDsRWLxmCNpl
         L60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dxldRsVgM50y/CNdhaywWvfHOux55cFEhCcDUOIPfIc=;
        b=sulnmx68hIMg6SxY82aEyTvJGeoj/hesQrKKaanBSMH2th4Pnk2uU4IdWwSSLvt6ul
         ATv7kjf4Dtnb106w5pLvpCvrKdKTi2sGuWW4gEQT3EmCaFU5vteL0f6oEZYmFrNhBN8n
         B2oiuyYObqGxpDmaaeWoA4SwIaUbannLCqabS3OMiXgv2hR0uTiEzmlNISHAd3mBlWic
         qKK7SZekDITYNlolwWlbRj80R2LOmZC9HSmarfA2emFJW25R0B3kbYAK5a+1xXfPamgM
         jhCuI3DIResVmuXh+aoOqIcQUr48gMkfaHHKdLo6E4UPFfMTJYfBRNppzmK3MnBQr0SS
         D40A==
X-Gm-Message-State: ANhLgQ355tkd/dn9t5UuxZg5un0msSOxSIZVGo5GzI947VouMrMH/Ch8
	hky4qE/oizpR79WIMIUgEWIrz/Q5QpTfGA==
X-Received: by 2002:aca:d503:: with SMTP id m3mr2217585oig.165.1585032374928;
        Mon, 23 Mar 2020 23:46:14 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from localhost.localdomain ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 23:46:14 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: change unused int return value to void
Date: Mon, 23 Mar 2020 23:45:45 -0700
Message-Id: <20200324064545.1832227-3-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change unused int function return value to void from previous patch.

Update function documentation to remove mention of return value.

Remove if statement check of the only usage of function in the
kernel. Replace with calling the function.

Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c     | 7 ++-----
 drivers/staging/vt6656/card.h     | 2 +-
 drivers/staging/vt6656/main_usb.c | 4 +---
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 05b57a2489a0..4be7fca32796 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -715,11 +715,8 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *      priv         - The adapter to be turned on
  *  Out:
  *      none
- *
- * Return Value: 0
- *
  */
-int vnt_radio_power_on(struct vnt_private *priv)
+void vnt_radio_power_on(struct vnt_private *priv)
 {
 	vnt_exit_deep_sleep(priv);
 
@@ -739,7 +736,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return 0;
+	return;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index 75cd340c0cce..fcab6b086e71 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -40,7 +40,7 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
 u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval);
 u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2);
 int vnt_radio_power_off(struct vnt_private *priv);
-int vnt_radio_power_on(struct vnt_private *priv);
+void vnt_radio_power_on(struct vnt_private *priv);
 u8 vnt_get_pkt_type(struct vnt_private *priv);
 void vnt_set_bss_mode(struct vnt_private *priv);
 
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8e7269c87ea9..8214427f5ee3 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -370,9 +370,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	if (ret)
 		goto end;
 
-	ret = vnt_radio_power_on(priv);
-	if (ret)
-		goto end;
+	vnt_radio_power_on(priv);
 
 	dev_dbg(&priv->usb->dev, "<----INIbInitAdapter Exit\n");
 
-- 
2.25.1


