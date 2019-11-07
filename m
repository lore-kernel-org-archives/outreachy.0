X-GM-THRID: 6756641036009734144
X-Received: by 2002:a19:4f4c:: with SMTP id a12mr3452060lfk.18.1573153081039;
        Thu, 07 Nov 2019 10:58:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:720a:: with SMTP id n10ls1833702ljc.9.gmail; Thu, 07 Nov
 2019 10:57:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqxdz+BQonjvKXbEQixNbQs9iq5J44Ekn9LMbcy/mIy5HvBJuqUmD4yN+WauV/iJz9Q0625v
X-Received: by 2002:a2e:9e8f:: with SMTP id f15mr3572244ljk.9.1573153079862;
        Thu, 07 Nov 2019 10:57:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153079; cv=none;
        d=google.com; s=arc-20160816;
        b=E3HAEDbuIaAfYQgxVVYgx7AJJYBFHkcqhQzm8zSzupqDqN6aIENg6fD1Vx7PoOSx+B
         0VVga+LdcBbf4ymhIxarjIkzKxhn4yRuU5PwLNSTIaNdOWjDjPZd7xOfSrD6IigtwmnG
         V7Y+U3J8TVsaW/2f2IDB8YtUzb/RSPSNZ8TzaTwa6r61nR2aaGWLBFVrreK67aLCt5sX
         quyL0KmqfD71f81Ogdim4LLBvpDdB+xBRfXMTcHxyT+KrHQuupp/k1aA/5bFSztXaA27
         dgtKZ5WLxL0VMXPkCoYskf7RpXZ48A9TQuwe0KkvrLMXfPL72yNpmW8neU+KnwX4TyuH
         5xNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eTB2jEGuSW46bEjJggOIJpmZZOcAyxTgkaCeGb1gLKQ=;
        b=L6/xZws2Jd2dxkybBLsB46Ma9Qho/L7wTPg1RfYJAHMipGa0ap57vjesvlgQ0JfrCL
         CGVbzxQm4vTitpMKuJ8FrN4RJM6pa3Y7pPxUZeK43AxB6+wjP1zNUpDhQaw0rX/eA0Eq
         JFm/jddDz3LVAQFG+9OzIt1EItcajNMBvljGVRb3HGTFW8RK9iGPIkVbjSKPFJ6mVBot
         gB4iwsTN5/2fW4CLOEyQb8o/Rk4yxxEpONq879Rr3vAV/DxUX3s+t7xHn7uKh7Wd7Bgp
         5mMoFgSiwwZso9QEow6/ZrCbQ/RXWB+5cPrsL59SiIxI4OfzuCjnyeUwKmA535t2pv0u
         Y7sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9mvaBYX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v82si201309lfa.3.2019.11.07.10.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 10:57:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9mvaBYX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id f3so3648792wmc.5
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Nov 2019 10:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eTB2jEGuSW46bEjJggOIJpmZZOcAyxTgkaCeGb1gLKQ=;
        b=a9mvaBYXQq8bcfdRW7WFU8spF3lZNGKV3+R2WU3dYFmPcDfnCJ45KHJhHnw7kh6uOl
         6zQfUnG29Xa/AlKsEW/wDQLthisb+1DRD+WnyJEEx5C0kMwskf1rURW7xIyfUuDgnrq7
         Zq6rfTBqDfa9vDjLOpYMrbT7jx7eznFgUHnOwVWiWejrdA9GQeD8JVgcy+jTtJZDtvZr
         a6F6ZWQDAADOBrklaJHFZNVcF0Srbe+8mYUrlWnDfWjnsmckFfvBM35Ouwkyis5xIrrV
         llVlwvmWnbPv5tO8k0Pkaog/2RNEu3dmzJTUHWsxQTi0+YkTfgmLweOKS0yxo9jxoWZa
         MygA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eTB2jEGuSW46bEjJggOIJpmZZOcAyxTgkaCeGb1gLKQ=;
        b=ESoAAihM6nt4KePB1OBqCyqUbQr27Bty6OIyZQ2bB9H+gYc3H7Zr8K/QI+j+M6/cQP
         LPlSDGWhL2VrZDKvZgQhhiYK2CCcn0vhDe3Wo24kCwuTgHPGl05fnLHS3ABLcn443Wem
         MBLrHVwL9bn4CcjFXUkupgQjxYdCVC79E7VSIWqn3JZflzzyi17/aC/ZoxdO1BNq02do
         ps0Sb5/Bz7qDSYA1fgHBB5I29HOvnnrbqkwUZnQlUrKJyFv8YcvOTRuL+s93vslf7qUo
         f0lclmvPW//6y8F1vaNtphZ5AjKI799B+9Z44ymMt9GD7UJVvHXB8+vxw/wm9cXnhXNo
         6OiQ==
X-Gm-Message-State: APjAAAVbt9S6jzJz4p948LI5kcjLjS8+eX6PnwLG2y4Mu4s/sy5DBEuL
	GS3P1H2jJsz6bFnOXfKghw==
X-Received: by 2002:a7b:ce86:: with SMTP id q6mr4285322wmj.20.1573153079047;
        Thu, 07 Nov 2019 10:57:59 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org ([213.205.241.171])
        by smtp.googlemail.com with ESMTPSA id j67sm2968939wmb.43.2019.11.07.10.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 10:57:58 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	jerome.pouiller@silabs.com,
	ast@kernel.org,
	songliubraving@fb.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 1/3] staging: wfx: replace uintXX_t to uXX
Date: Thu,  7 Nov 2019 18:57:38 +0000
Message-Id: <20191107185740.381485-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace uint8_t to u8 and uint32_t to u32.
As per recommendation of checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
Changes
v1 did not include all the replacements in the driver 
v2 includes all replacements in the driver,
   remove error of space and
   merge u8 replacement file  and u32 replacement file
   into one file. 
between the identifier and variable. 
 drivers/staging/wfx/bh.c      |  2 +-
 drivers/staging/wfx/data_tx.c |  4 ++--
 drivers/staging/wfx/data_tx.h | 18 +++++++++---------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 955ed3a1dd73..2432ba95c2f5 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -239,7 +239,7 @@ static int bh_work_tx(struct wfx_dev *wdev, int max_msg)
  */
 static void ack_sdio_data(struct wfx_dev *wdev)
 {
-	uint32_t cfg_reg;
+	u32 cfg_reg;
 
 	config_reg_read(wdev, &cfg_reg);
 	if (cfg_reg & 0xFF) {
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index ea4205ac2149..76a474bf2e85 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -107,7 +107,7 @@ static void wfx_tx_policy_build(struct wfx_vif *wvif, struct tx_policy *policy,
 
 	for (i = 0; i < IEEE80211_TX_MAX_RATES; ++i) {
 		int rateid;
-		uint8_t count;
+		u8 count;
 
 		if (rates[i].idx < 0)
 			break;
@@ -546,7 +546,7 @@ static uint8_t wfx_tx_get_rate_id(struct wfx_vif *wvif,
 				  struct ieee80211_tx_info *tx_info)
 {
 	bool tx_policy_renew = false;
-	uint8_t rate_id;
+	u8 rate_id;
 
 	rate_id = wfx_tx_policy_get(wvif,
 				    tx_info->driver_rates, &tx_policy_renew);
diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index f74d1988925d..29faa5640516 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -31,17 +31,17 @@ enum wfx_link_status {
 struct wfx_link_entry {
 	unsigned long		timestamp;
 	enum wfx_link_status	status;
-	uint8_t			mac[ETH_ALEN];
-	uint8_t			old_mac[ETH_ALEN];
-	uint8_t			buffered[WFX_MAX_TID];
+	u8			mac[ETH_ALEN];
+	u8			old_mac[ETH_ALEN];
+	u8			buffered[WFX_MAX_TID];
 	struct sk_buff_head	rx_queue;
 };
 
 struct tx_policy {
 	struct list_head link;
-	uint8_t rates[12];
-	uint8_t usage_count;
-	uint8_t uploaded;
+	u8 rates[12];
+	u8 usage_count;
+	u8 uploaded;
 };
 
 struct tx_policy_cache {
@@ -55,9 +55,9 @@ struct tx_policy_cache {
 struct wfx_tx_priv {
 	ktime_t xmit_timestamp;
 	struct ieee80211_key_conf *hw_key;
-	uint8_t link_id;
-	uint8_t raw_link_id;
-	uint8_t tid;
+	u8 link_id;
+	u8 raw_link_id;
+	u8 tid;
 } __packed;
 
 void wfx_tx_policy_init(struct wfx_vif *wvif);
-- 
2.23.0


