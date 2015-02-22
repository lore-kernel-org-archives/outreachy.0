X-GM-THRID: 2547468206080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c76cbb61fb1e8b1f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr816032laj.6.1424628263499;
        Sun, 22 Feb 2015 10:04:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.9 with SMTP id r9ls432159lae.75.gmail; Sun, 22 Feb 2015
 10:04:23 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr849871lbw.4.1424628262991;
        Sun, 22 Feb 2015 10:04:22 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id l8si712738wia.0.2015.02.22.10.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:04:22 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so5777030wiv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 10:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lMASfIATH61OcU2yp5NKWWqPcwlZqBW2TdZRvXR79hI=;
        b=Sa31fP7WdEfK5o50uTUfS2scvB4q6WCeDapSEQsou/MKhYdIBwUxuMUwnNzBim3del
         mQ9XeBjnngsFp8emS2yd61lvwae2Fif3/IKAIenj7Clovk7g4jJtWuwDM5TUi0S9ujZL
         mP4SEGXIzDs2hSa3d0E73eDDlUFkcA3RkY2L3nOWV0AMTkHFBnhot4vtjSCi7a+yhyQ8
         0y+f9UCUZ37CyWurjHotTxL11lMfZTtGkE/sX/GBNfZWCEo8AQ77gE3LLYxGN8g0ST3u
         xEfB0Z+7IEHunlHdN+Jw69jQDzQq+extWVqUHp50OniZgQM44RYbU7GYiM2OKHLHakrl
         Er+Q==
X-Received: by 10.181.13.39 with SMTP id ev7mr13851079wid.3.1424628262846;
        Sun, 22 Feb 2015 10:04:22 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hd5sm12371581wib.21.2015.02.22.10.04.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 10:04:22 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: coding style ether_addr_copy
Date: Sun, 22 Feb 2015 20:04:13 +0200
Message-Id: <1424628253-15398-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following issues detected by checkpatch.pl:

WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 59d08f4..04717dc 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -817,7 +817,7 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 
 	pbss_network->Rssi = 0;
 
-	memcpy(pbss_network->MacAddress, myid(&padapter->eeprompriv), ETH_ALEN);
+	ether_addr_copy(pbss_network->MacAddress, myid(&padapter->eeprompriv));
 
 	/* SSID */
 	p = rtw_get_ie23a(ie, WLAN_EID_SSID, &ie_len, pbss_network->IELength);
@@ -1079,7 +1079,7 @@ int rtw_acl_add_sta23a(struct rtw_adapter *padapter, u8 *addr)
 		if (!paclnode->valid) {
 			INIT_LIST_HEAD(&paclnode->list);
 
-			memcpy(paclnode->addr, addr, ETH_ALEN);
+			ether_addr_copy(paclnode->addr, addr);
 
 			paclnode->valid = true;
 
-- 
1.9.1


