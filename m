X-GM-THRID: 6755994568036974592
X-Received: by 2002:a50:8a88:: with SMTP id j8mr40552933edj.35.1573002564506;
        Tue, 05 Nov 2019 17:09:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fc87:: with SMTP id f7ls90247edq.4.gmail; Tue, 05 Nov
 2019 17:09:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqyScYpFKq7B62wMTbWud5a3Dek8FB1rV/8f3t4O3u0sS/8JmSPvTDCyhsk3s6W8jZJkdzj+
X-Received: by 2002:a05:6402:110c:: with SMTP id u12mr39603033edv.127.1573002563604;
        Tue, 05 Nov 2019 17:09:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573002563; cv=none;
        d=google.com; s=arc-20160816;
        b=Mecjf4e1ykA/WMHyY1pJ1mEBtIpM5SVoR23z/NCWG7ajaUYCPLfWfS6hYeY8CukZBW
         GluKyThLcXOSkIhxmCKx18ijf7tkH+ke7Q4UGBqnT+F6v0SUYd+unZgBQrHpRXgJJ70R
         88W1Ne1G6jhwGGyy5vCNfHHrzio/lv5rpwta9xe0JT7HOZ955eycZzyQSePaEcAUWdlC
         sUEgWHNjXV7cdzXHKGn613XXTdGrkA4D56wDnVsW2JTJ4qroYJuTwpNoZEJ2aXOVA6n8
         2oXDzzgy9Jgm0qQXI1DIAHdC555WdCLOjMyuCtpFO8wQ21QkXm0oCXs+X39iMRLpw5rF
         3/mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Hzsfx1BdenQQjmd3zDk1LB4v+b/Gnc7s9vbKtwGpV+U=;
        b=K/bzf8zjIDYVUosNEYRMYB0glFtqM+BlAw6qj5JDXyOHdGb1F92xoJW6PwiK/9XlQV
         3CNkkUYbhjyZ8PnJ/d4CUgRWSPTiojtD1Zp+mo1iDsIAbgeE0Qz/528trNRtRS4YHcOk
         dVm3PXBgWvsaN3T2ME4FAU49Ry3mzJi3o1Ze6+IegeVtiQDbunptENizuR55qOCCcKeO
         ZfQgTYPfc92DbkBpBy08dRJgPmomG7DbBPhUq/ADfCCjADnr3erxJ3SmYI6xl1U49peF
         N9kPEAeIxMNrxIa0eU8mVLIKlX09IaXpRsEJu1a8VQKYd8531EOIRwGSknm6+0LeKC6n
         er3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HUS3ZBJV;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z18si1245989edd.5.2019.11.05.17.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 17:09:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HUS3ZBJV;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v3so1132973wmh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 17:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hzsfx1BdenQQjmd3zDk1LB4v+b/Gnc7s9vbKtwGpV+U=;
        b=HUS3ZBJVHVoUI89MLx44m0I5ivqsmBuZUlRkIglEFlgv37SIFfHF2AkZ8SoRxMyGLT
         AshNjgV+pt7udcnw8ykdBdCnERxL8pLTSunjJ1NnEiJN9VWtPS78PvpGdjeBmOkF4IpO
         5PkP3vatoc2IeNnRV/fqxSojXNe3qFIeZ3tGaa6+Co5dlNEjHl9ltkblRtCzVAbozcd0
         +guEnVM/TI7mJSEvEnJLL4bLTujY0eYYk0PVmRU0rqeKRFmDBgDowdY/+pbh5+KV3VIx
         mjRMTxU6Fpm1TZrAl2dwafE16mwWHu7XEqaLbsqp1P2XlO6YrwT+9z9b9ol5buL9fNvq
         GPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hzsfx1BdenQQjmd3zDk1LB4v+b/Gnc7s9vbKtwGpV+U=;
        b=b98VnCXGgbA2sbGxCqDY6NyoQbKc3oFzBOiNNLQ7/qUOcahmtniiWP+1p0kRZoHP+u
         OX0AcrV/fHTI2u0mYfLcIf1kaR6wDUsSbu2ZnPXYB8KHYTyrc6iymz67AUzPvIWjqetC
         xGtL7Oqih2CoYThwEkya0WNOjOFcNo/FDF0/RhSRFwGyIFca/UfOTlOrdi6Jr9HnoP/i
         eXLJvEqmoT4Az9fHBMwIxtN568TrAqcK2iKnxovAoRNNtr/sQkUsIFBhC8rjimdNZgAM
         um/fiKAeo8URUwBw02wq9AZda7mJYZq9AopoaaM+DoOJcbHClW6XL6TNsZiMljVvAxz8
         ///A==
X-Gm-Message-State: APjAAAV3bdVf1wzySA+mee4H0mWk/KhVjzB6fFYT1c8IpP/kGRoPi++/
	ThsdwEGOjPOJqXYHj7cFCBWOXDRAf0eS
X-Received: by 2002:a7b:c181:: with SMTP id y1mr91250wmi.16.1573002562983;
        Tue, 05 Nov 2019 17:09:22 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id b17sm13334650wru.36.2019.11.05.17.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 17:09:22 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH 2/3] staging: wfx: replace uint8_t with u8
Date: Wed,  6 Nov 2019 01:09:10 +0000
Message-Id: <20191106010911.157294-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106010911.157294-1-jbi.octave@gmail.com>
References: <20191106010911.157294-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace kernel type uint8_t with u8.
As per recommendation of checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_tx.c |  4 ++--
 drivers/staging/wfx/data_tx.h | 18 +++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

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
index f74d1988925d..f203697a9617 100644
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
+	u8     rates[12];
+	u8     usage_count;
+	u8     uploaded;
 };
 
 struct tx_policy_cache {
@@ -55,9 +55,9 @@ struct tx_policy_cache {
 struct wfx_tx_priv {
 	ktime_t xmit_timestamp;
 	struct ieee80211_key_conf *hw_key;
-	uint8_t link_id;
-	uint8_t raw_link_id;
-	uint8_t tid;
+	u8     link_id;
+	u8     raw_link_id;
+	u8     tid;
 } __packed;
 
 void wfx_tx_policy_init(struct wfx_vif *wvif);
-- 
2.23.0


