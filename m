X-GM-THRID: 6812284492301991936
X-Received: by 2002:a1c:b144:: with SMTP id a65mr19792239wmf.54.1586108583928;
        Sun, 05 Apr 2020 10:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e07:: with SMTP id g7ls4530374wmh.0.canary-gmail; Sun,
 05 Apr 2020 10:43:02 -0700 (PDT)
X-Google-Smtp-Source: APiQypLVxDcEtv7qVg1IqVkU8/dFuvnx2WvhEkgM4hrmZ492/64XrxK0l+i5SCMUTnCD3SdufVqX
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr19151264wmk.142.1586108582890;
        Sun, 05 Apr 2020 10:43:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586108582; cv=none;
        d=google.com; s=arc-20160816;
        b=MmxzUGYHgApCeNwAN4LLJw7unGV7VkRHXwmz8YVl/TzVcsJ0AWD5V+oSAWRaXxuYZu
         lEBIzbu6Z4T2EZVcfHu8eRljIYgVHu+YM6QXQlIrHfaPOBl0Kmj+u5ePREEq+jXDWjnL
         nX6QwYAnomdAmgb32KyGSgYvEfGc43sVekjWJBXZn8DvATaEeS5SYHeqCDsy+tqz9oe+
         LtTNqPhA8tyXjtuuuf46TNSRSCXQx7cb+XZslxiDbWUYaCvGpnRsvKQvqJX3Y1uq0G6R
         rOCrqITUEuo3XK4PUaEgelPZLcUNkrGi13mnhXv6Ky33DYH5nqFO4VjjoPaeRxSTi0Dj
         0+DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=HumUKykeK/hIiYezVULrUdg0IaUSDx3EJQyBjlDsDkk=;
        b=xQhh0PDhL3lbxTh1lhNOZ+vZNKy88W5zdVr/Jlitc8nHcTGGoezkHz0O/WW4RNCJ8F
         5mbj6b2oxqlSOviMMqbNKpoCHjAul8o1QQA2DsD4+nfxX62skD4SBa4mudTgfFAp01u3
         KagoKU6Wuut4/546NHdDaqfjzMU62QM8fLxTV8kQnNSiTIzR4UCZ5OwndvkX1Ce9hI6o
         MBBb6/2UzLxY9rfKox6DcubLxtVnINYdb1hEsx5/QHFGlYCn5+MQM4l1rCycntMAuOOK
         pQbZh1GGJqSjswIS2Ml5ZrDwUU9hO0NIYJeyqsLVKG7E5/2oI93NAv+vo68mXgn4pim5
         exJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id y15si209816wrh.1.2020.04.05.10.43.02
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 10:43:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 18266 invoked from network); 5 Apr 2020 17:43:01 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.220.21)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 5 Apr 2020 17:43:01 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	wlanfae <wlanfae@realtek.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8192e: rtl8192e: Correct misspelt variable name
Date: Sun,  5 Apr 2020 23:12:47 +0530
Message-Id: <20200405174247.7868-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt variable name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 20e494186c9e..43494a2b6f05 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -2444,7 +2444,7 @@ static void _rtl92e_dm_init_dynamic_tx_power(struct net_device *dev)
 static void _rtl92e_dm_dynamic_tx_power(struct net_device *dev)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
-	unsigned int txhipower_threshhold = 0;
+	unsigned int txhipower_threshold = 0;
 	unsigned int txlowpower_threshold = 0;
 
 	if (priv->rtllib->bdynamic_txpower_enable != true) {
@@ -2454,10 +2454,10 @@ static void _rtl92e_dm_dynamic_tx_power(struct net_device *dev)
 	}
 	if ((priv->rtllib->pHTInfo->IOTPeer == HT_IOT_PEER_ATHEROS) &&
 	    (priv->rtllib->mode == IEEE_G)) {
-		txhipower_threshhold = TX_POWER_ATHEROAP_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_ATHEROAP_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_ATHEROAP_THRESH_LOW;
 	} else {
-		txhipower_threshhold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_NEAR_FIELD_THRESH_LOW;
 	}
 
@@ -2465,7 +2465,7 @@ static void _rtl92e_dm_dynamic_tx_power(struct net_device *dev)
 		 priv->undecorated_smoothed_pwdb);
 
 	if (priv->rtllib->state == RTLLIB_LINKED) {
-		if (priv->undecorated_smoothed_pwdb >= txhipower_threshhold) {
+		if (priv->undecorated_smoothed_pwdb >= txhipower_threshold) {
 			priv->bDynamicTxHighPower = true;
 			priv->bDynamicTxLowPower = false;
 		} else {
-- 
2.20.1


