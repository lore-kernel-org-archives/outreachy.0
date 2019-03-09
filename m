X-GM-THRID: 6666346191524986880
X-Received: by 2002:a9d:5f81:: with SMTP id g1mr12703393oti.8.1552144536267;
        Sat, 09 Mar 2019 07:15:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls3258184oif.3.gmail; Sat, 09 Mar
 2019 07:15:35 -0800 (PST)
X-Google-Smtp-Source: AHgI3IatHnz/zwZMwzlp0uyxopXZMxoKj255zk4v1w6Fardfqnyh9kgcdWM35UtyGJBVHy1Zbbkl
X-Received: by 2002:aca:3081:: with SMTP id w123mr26033965oiw.14.1552144535143;
        Sat, 09 Mar 2019 07:15:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552144535; cv=none;
        d=google.com; s=arc-20160816;
        b=XPs69D6xMW8lTLlw2//du3YuMO62y6Tcfw4U1wG9VzMwkxCR7lF6VlzNPB25XLwooM
         h9OoD5FLbWYTgNw9Xu9Uv9eKUbg4JQ9tNNHwB0CmYbCzijSCgCGmxcnrd1b4x4Pr46LL
         M5lED+L98JeA8xEMudm9zqFwUTAADYmWysYTzkV9lVkOL3/+4RTLNsF9KtIMnKPzGN8S
         Tw8C2s7YEsvzZtyuKdKMXy/p6NoLrC0IdbcKIeCeMIDWbGW7qREHWxgadDau/ZrSnsoO
         V1q/jujOOGtXhy7IWp12VY+hnMj4XQb1c8AtF6AybihdYGqE0tiLvX+NpP1cknIejho+
         XEAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=5QOMsiaj8Tqzw0WEIIlZnOIjzwIpM3fpvPFdGaK0CAU=;
        b=UxCPPQ9XBjzqZurXJ/0sfAjYyG9URXIUp1TFhaoxcZyaZ2fa1c/MSdwP8h9fKiHxRi
         Z3NXNsv5I03ttkUddyr/ohokBqeTEBqMphq5+pguZszL8f7hEkLZm1EU4V44h0Umqvor
         xk6Kj3znvU95dh2oY7JwPtiYRsIZFwpsC9qOuSki2cnoaVO3VysbeYv2K6ZrTlf4o7zD
         775uXjBglzVOZYt5SuFmcfVt78l5qXQcFgY2GKSd558y9ZbMzt2m1c5xZtSAJU35TfXO
         EgCs1QwTJlU4VNGc3PYgn+CkDQRMqvp+pSKlj/7ur0Wraw2w4wEI7CdTAdYGBCWHRyFV
         ak4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=owTeoKbM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d128si35698oia.3.2019.03.09.07.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 07:15:35 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=owTeoKbM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n74so325603pfi.9
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 07:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5QOMsiaj8Tqzw0WEIIlZnOIjzwIpM3fpvPFdGaK0CAU=;
        b=owTeoKbM8LcRDXemI0YTx1MLGDjdIJfP+hiIr9qoXRYnbsmasXnzyicE4zmLk6HFEU
         4wqT/JBFfymbjKFOEKqpTXNqZ+7novx7lJBUYSE3kp943vB/Xw6132eyh3hgqQnSpOTC
         J80j1YdinXKukC9cKQmEBWU2rjQv2rXQs+ky/RdsL9LjvYCVp1NvKnducEy6RjPx5xmI
         jVBrmfOOfVrg6mBuowaDP16mzjAfBNOsMQjQSc3Z81pGeUys1TPkSYT+kgiq8U8nCgTM
         IwOZ/gEhJSFjyq0COfetduvk9F6cyPsODCLeRlna8M78c/JRaTv/53VDRqd+hMHNb+sd
         94TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5QOMsiaj8Tqzw0WEIIlZnOIjzwIpM3fpvPFdGaK0CAU=;
        b=C752stk6P2U0mHmjUyO2jEiC92+zDLUqbjkknfwDMSnMX+bz3XwKMCCBRrC/DKxaUE
         eL4ht+KyzJCm0+swvjmWtpAoPu4N8zy6XgyYctjwdlXu2cdY+9+ZypahS1J97iB1yjVH
         ovagEfPTL9RMgl9XdC4LfA7d7K2vKL9xF12k8ZX5Qjfoabk5QKoaXzmCo+ibKhtKwnRk
         eDfGku7VrT0TUi/25rkB3BdHZ5hkbUw4kPjo4hoe1C9DPGHOHMvCq9rxhMs/I/R+gCbK
         AanbTvh5EZRVgOd2ThrlTDqH3jpOMa9dKDQOhKAaKIABMvmo1nrY+cPm68z1rPYzNy21
         Cepg==
X-Gm-Message-State: APjAAAUmYouko6iciytNKGGSOWnpfbeoGu/xBh7BIoJq/A/3lLFuZl8/
	ljzpsKvtQ3AJDfQe2walMdyLVkRiR3E=
X-Received: by 2002:a63:2141:: with SMTP id s1mr4686770pgm.363.1552144534071;
        Sat, 09 Mar 2019 07:15:34 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.161.228])
        by smtp.gmail.com with ESMTPSA id i79sm2693153pfj.28.2019.03.09.07.15.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 07:15:33 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: wilc1000: remove unnecessary local variables
Date: Sat,  9 Mar 2019 20:45:06 +0530
Message-Id: <20190309151506.47787-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309110743.41443-2-himadri18.07@gmail.com>
References: <20190309110743.41443-2-himadri18.07@gmail.com>

Remove unnecessary local variable "ret" and its assignments from
functions wilc_set_tx_power and wilc_get_tx_power. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index fa0e1bd9f836..76c73ef08eb2 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2119,7 +2119,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
 
 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2127,15 +2126,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 	wid.val = &tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				   wilc_get_vif_idx(vif));
-
-	return ret;
 }
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2143,8 +2139,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	wid.val = tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-
-	return ret;
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
-- 
2.17.1


