X-GM-THRID: 6334708873542238208
X-Received: by 10.129.104.132 with SMTP id d126mr7391263ywc.78.1475000333503;
        Tue, 27 Sep 2016 11:18:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls2881290otd.20.gmail; Tue, 27 Sep
 2016 11:18:53 -0700 (PDT)
X-Received: by 10.13.252.199 with SMTP id m190mr8521350ywf.156.1475000333116;
        Tue, 27 Sep 2016 11:18:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id f12si848145pfk.0.2016.09.27.11.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so1006602pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 11:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y5OA2eYswXR/RwI5AbGDUv8fc0+U512axam0paIXGAg=;
        b=L3ukjZ9HqmIB6LFQj4/NVaw5xOJXJLUL2tqvMMWEP4LU5rzX2xvssFnmD8hN5fYZ9F
         uclIs99ZYiRg3C1TEue5lVvFqkQ0eAZ+b9I4dwsSIkk8FBU5KXiJDBsXK+easLbQ3+X5
         melCc5RcvKlnDvfPKpZYUM2PkkwIzbZljEcP16N3mGwT15rlSKpoKTUfoAthZOFnQ+Hr
         qYlHRowZdDg6bPjvUuPUmrFDbq3/eoRe/eaEt9Iej52NPq9F8wxVWvX4SaAU5+5MaAy7
         c65DPxv9WoTmZjxikWkhGbi+jfL6C6Dj7DaWArewIecY197j4S61pxtTBLTl6cAOYOun
         wtlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y5OA2eYswXR/RwI5AbGDUv8fc0+U512axam0paIXGAg=;
        b=TrvKqwNgqqXMBC2eaie8hiS7WbM8/33HotW6fuXsmqBkQBKiRJxOsWrJj36ZoLjNYK
         YL+pdElLBidTync3ZMzxVeapjU/kntD0ABJilBhWmt2tmHE+rj1xA7wjccLeljOheqYf
         sn/BrWy7D1EurLObiKD9yqWMgwSY7vkv7EibEgrB5geOdP6sz1fqdvGONjxf1qJAoP8L
         2iv4nxs0tyIjVtaQB03xt147YpZMmPh+fDEV/FI8+9gV7CF/2BJy8FJZA+D5Z2szcWMo
         TmSTzGWFzQxVI5qJKOcVUeeS3s3QoreB/dpejiNps7rU+XZNn4ztLhNyL6ZXJvLIF9KE
         2s+g==
X-Gm-Message-State: AA6/9Rkf0WgL8JaQxypSh++cJKwyPVpbVKcslulF0BkO8D0fZPscNv6gW2J6e4k/e/2RqA==
X-Received: by 10.66.216.199 with SMTP id os7mr22066849pac.155.1475000332529;
        Tue, 27 Sep 2016 11:18:52 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ik7sm6517537pab.43.2016.09.27.11.18.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:18:52 -0700 (PDT)
Date: Tue, 27 Sep 2016 23:48:47 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: vt6656: Remove unnecessary return values
Message-ID: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary return values. Change return type of corresponding
functions to 'void' and comments.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 Changes in v2:
 - combine both patches of prior patchset

 drivers/staging/vt6656/card.c | 22 ++++++----------------
 drivers/staging/vt6656/card.h |  6 +++---
 2 files changed, 9 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 13719d1..59bbfd1 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -559,14 +559,12 @@ void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
  *  Out:
  *	current_tsf	- Current TSF counter
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  *
  */
-bool vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf)
+void vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf)
 {
 	*current_tsf = priv->current_tsf;
-
-	return true;
 }
 
 /*
@@ -703,13 +701,11 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  *
  */
-int vnt_radio_power_off(struct vnt_private *priv)
+void vnt_radio_power_off(struct vnt_private *priv)
 {
-	int ret = true;
-
 	switch (priv->rf_type) {
 	case RF_AL2230:
 	case RF_AL2230S:
@@ -727,8 +723,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
 	vnt_set_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
 }
 
 /*
@@ -740,12 +734,10 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  */
-int vnt_radio_power_on(struct vnt_private *priv)
+void vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = true;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -763,8 +755,6 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	}
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index c2cde7e..84270c1 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -41,14 +41,14 @@ void vnt_update_ifs(struct vnt_private *);
 void vnt_update_top_rates(struct vnt_private *);
 int vnt_ofdm_min_rate(struct vnt_private *);
 void vnt_adjust_tsf(struct vnt_private *, u8, u64, u64);
-bool vnt_get_current_tsf(struct vnt_private *, u64 *);
+void vnt_get_current_tsf(struct vnt_private *, u64 *);
 bool vnt_clear_current_tsf(struct vnt_private *);
 void vnt_reset_next_tbtt(struct vnt_private *, u16);
 void vnt_update_next_tbtt(struct vnt_private *, u64, u16);
 u64 vnt_get_next_tbtt(u64, u16);
 u64 vnt_get_tsf_offset(u8 byRxRate, u64 qwTSF1, u64 qwTSF2);
-int vnt_radio_power_off(struct vnt_private *);
-int vnt_radio_power_on(struct vnt_private *);
+void vnt_radio_power_off(struct vnt_private *);
+void vnt_radio_power_on(struct vnt_private *);
 u8 vnt_get_pkt_type(struct vnt_private *);
 void vnt_set_bss_mode(struct vnt_private *);
 
-- 
2.7.4


