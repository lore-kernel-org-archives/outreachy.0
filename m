X-GM-THRID: 6950903323792769024
X-Received: by 2002:a17:902:e211:b029:e9:a266:53a7 with SMTP id u17-20020a170902e211b02900e9a26653a7mr29154308plb.11.1618383371330;
        Tue, 13 Apr 2021 23:56:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls643018pgb.11.gmail; Tue, 13 Apr
 2021 23:56:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwdhCva9gZZPaXzIsI3UiArQzgnXfUSqbn9uRnmuYFwoGAexkSXoeOThBs1SZjFQzGZ+2Lw
X-Received: by 2002:a63:eb49:: with SMTP id b9mr35275377pgk.318.1618383370213;
        Tue, 13 Apr 2021 23:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383370; cv=none;
        d=google.com; s=arc-20160816;
        b=nJ75ukvTCx0XaIL9vZz906FgJSyuZvGP6w6H9usjn4cASGK2P1wn6PvEVKyLwW+9OZ
         sfGn2hK1E/1jMRivwIGxBJGez2Ovt/XdYmM7rmcS0jqXJgqQxMSGhUWIN4VEqEQ6GS3s
         AzVCovCf3XOyD66og6/gOUW3X57YZZtxWKi3hEaXv5j3AS7LjC1rbRi8bZSW61nMnmAV
         tL6jXUtOLWUJ7yQhV83o48sXL//JGpBRhH8/qlm1kFMv12FhnQEUmlnMrH0k/WBh7Ait
         0vES1hRx0YZS2OQujiPFWdEVZrD4fY1kvXTIYmfdtJEPangSt64ueqmED2IY0VZFq70N
         F7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jKWFgdob/YlSgZVEF7gL6K3vLHR0vBCSyJL9Ey7fyRQ=;
        b=rZETQCjhMQVT33bBaGr5qTqqiHAKSJiAfVkotimzzGn3Dhs4nMFArMJuDQUc+7KwW7
         Uyft6XyOokUGSyUCpQ/utZ7i6RNOhf5RbJjPvXmcsBScBwDXqeq2hGe8dTjEP+dpiZSX
         16d/i6AqMVHPZrvK27uvxteEICG1bRYVl43sgNMamEchcP4wN0k0quZG1TLxQ+pc0DOZ
         osPEIciThZKh6ZCWjNpN384KOPyOXdxD8MD5+zqsdo6h3vioVUh0eWZQwqqWI8h102re
         T4TSVmfYT+zmKKEfnrLfJ6edus1Cpl/FkNmIMoOm864w2s6Cl1m32JSA1BrdNms4WlYB
         K5tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEnkR7Sh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id f16si127197plg.0.2021.04.13.23.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEnkR7Sh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id j7so4314098pgi.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jKWFgdob/YlSgZVEF7gL6K3vLHR0vBCSyJL9Ey7fyRQ=;
        b=kEnkR7Shph4FnLF7lE2LSHNqZIKGyBPPCa2lIDahpz+iDygI+2HL41VNGLE2wsJpOf
         gXJNb42xBbA/xW5k6ShsNQXwdZXWmZg0E0Z2NxIY4y39l7IilXqdzTrdyDIMHRFHAisQ
         BaTh0YEywwIThZE5By8pt+GntZsnFRMOfCzLkh2P0wB9LNABAGGCn+anPqt7FuWUYtNM
         vMBFnhd9iY2bqzVsFgJ8Q0WQon/2ZUS2vZ77rhX51tSyoghTh3GsBDy2UoO8xoyeQc4L
         bdOtF8cZbSnCF38oqcEjcOMpqgll6nz5UYE84kNrMwyDMrWs3hucRih4G6QZ2wJdBJCy
         Sa+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jKWFgdob/YlSgZVEF7gL6K3vLHR0vBCSyJL9Ey7fyRQ=;
        b=ZH3pLG1Qpst3jtXKLPvwjrhP5izKGh8RreSFo5bzN3iAZ6NHxwrs0rVD9aQBdh7lj9
         Ugi0kmVhahRBFaW7zOTafFDN7MkC0TLwBhLV2bPXW4+QphJxId6Nri28mxvnIRYsXhV7
         SKubw/XmnX5Lg0CUogn6yDtw/P/DGOAU8PIKKchVeql7TuFLz5Bjqm7E5ZHXjc+x/tv+
         iFptAsYrON2Jr+6QZzGhJk/+QA5E0KWMe7t5SFHOiik5UOXMgqLWlUt4FZ/r05lSO8dQ
         +0DK6BHw5+3AoCAmGUvVZz6UhH53l5U0GXvt+hbHlenvlvHc8kedbzBU0zYChxuyytRu
         xGkA==
X-Gm-Message-State: AOAM531/CRGitvCzqZvR/o5gfWe8jUiYkImL2h4is0fxumC28ss1Nmz/
	B4cnwCjknQaJIup7edW4BT7bQvqnnxkvkQ==
X-Received: by 2002:a63:a0c:: with SMTP id 12mr33479455pgk.247.1618383369750;
        Tue, 13 Apr 2021 23:56:09 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id m14sm17566246pgb.0.2021.04.13.23.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:56:09 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:26:01 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 4/5] staging: rtl8192e: rectified spelling mistake and
 replace memcmp with ether_oui_equal
Message-ID: <eda8d3401f2f7ff7a61137b4935c6ccb09112e52.1618380932.git.mitaliborkar810@gmail.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

Added a generic function of static inline bool in
include/linux/etherdevice.h to replace memcmp with
ether_oui_equal throughout the execution.
Corrected the misspelled words in this file.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- Rectified spelling mistake and replaced memcmp with
ether_oui_equal.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 48 +++++++++++------------
 include/linux/etherdevice.h               |  5 +++
 2 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index ec6b46166e84..ce58feb2af9a 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -43,7 +43,7 @@ u16 MCS_DATA_RATE[2][2][77] = {
 	 810, 720, 810, 900, 900, 990} }
 };
 
-static u8 UNKNOWN_BORADCOM[3] = {0x00, 0x14, 0xbf};
+static u8 UNKNOWN_BROADCOM[3] = {0x00, 0x14, 0xbf};
 
 static u8 LINKSYSWRT330_LINKSYSWRT300_BROADCOM[3] = {0x00, 0x1a, 0x70};
 
@@ -146,16 +146,16 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
 	bool			retValue = false;
 	struct rtllib_network *net = &ieee->current_network;
 
-	if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
-	    (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
-	    (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
-	    (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
-	    (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
+	if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
+	    (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
+	    (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
+	    (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
+	    (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
 	    (net->ralink_cap_exist))
 		retValue = true;
-	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
-		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
-		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
+	else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
+		 ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
+		 ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM) ||
 		 (net->broadcom_cap_exist))
 		retValue = true;
 	else if (net->bssht.bd_rt2rt_aggregation)
@@ -179,26 +179,26 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)
 			pHTInfo->IOTPeer = HT_IOT_PEER_92U_SOFTAP;
 	} else if (net->broadcom_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
-	} else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
-		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
-		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)) {
+	} else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
+		   ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
+		   ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM)) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
-	} else if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
-		 (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
-		 (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
-		 (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
-		 (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
-		  net->ralink_cap_exist) {
+	} else if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
+		   (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
+		   (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
+		   (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
+		   (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
+		   net->ralink_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_RALINK;
 	} else if ((net->atheros_cap_exist) ||
-		(memcmp(net->bssid, DLINK_ATHEROS_1, 3) == 0) ||
-		(memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0)) {
+		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_1) == 0) ||
+		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_2) == 0)) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_ATHEROS;
-	} else if ((memcmp(net->bssid, CISCO_BROADCOM, 3) == 0) ||
-		  net->cisco_cap_exist) {
+	} else if ((ether_oui_equal(net->bssid, CISCO_BROADCOM) == 0) ||
+		   net->cisco_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_CISCO;
-	} else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
-		  net->marvell_cap_exist) {
+	} else if ((ether_oui_equal(net->bssid, LINKSYS_MARVELL_4400N) == 0) ||
+		   net->marvell_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_MARVELL;
 	} else if (net->airgo_cap_exist) {
 		pHTInfo->IOTPeer = HT_IOT_PEER_AIRGO;
diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
index 2e5debc0373c..6a1a63168319 100644
--- a/include/linux/etherdevice.h
+++ b/include/linux/etherdevice.h
@@ -87,6 +87,11 @@ static inline bool is_link_local_ether_addr(const u8 *addr)
 #endif
 }
 
+static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
+{
+return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
+}
+
 /**
  * is_zero_ether_addr - Determine if give Ethernet address is all zeros.
  * @addr: Pointer to a six-byte array containing the Ethernet address
-- 
2.30.2


