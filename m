X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.122.75 with SMTP id lq11mr19210009vdb.4.1425751264580;
        Sat, 07 Mar 2015 10:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.137 with SMTP id e131ls605892ioe.0.gmail; Sat, 07 Mar
 2015 10:01:04 -0800 (PST)
X-Received: by 10.50.154.41 with SMTP id vl9mr21486442igb.6.1425751264387;
        Sat, 07 Mar 2015 10:01:04 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ri9si1823312pdb.1.2015.03.07.10.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 10:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so13772084pdj.8
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 10:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pocVWa5MtkmQiyD78qcwSzckLTfXzNIlIjpwPD9NsZI=;
        b=yo3s5dDyX+jwnTsMFkSpqfU7yeZuzFSDFd7h3s6zdglStBLa4bel7mjlCPtzvDYZrJ
         ib3cAos1tjm2sydUywe6CBsJFTl7ab282yEWfx522x3ycWIcxqFQ9EuXn+9Tu7yI/fQy
         4+k4W0hiC5mS+oPAz5tvyOwy7dh7UGKj8y1X+IXC1N22tuUYbH6vPobOKffikPPd+K9m
         mpIMUf+GbbqJLb02A7al0xD3hmt8PKSKe5EO9VsZWXJ4HQ/hrowN7L1+AWWGVq9TR31K
         RMhSNSx4AiUtRDdU7z6N9UlAm8arbu0vvAFNqd0K+Y8mj2892MV9xqaOIrydrdz4VNMH
         OMeQ==
X-Received: by 10.70.109.135 with SMTP id hs7mr10225860pdb.133.1425751264274;
        Sat, 07 Mar 2015 10:01:04 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([106.218.78.166])
        by mx.google.com with ESMTPSA id zs9sm12863291pbc.43.2015.03.07.10.01.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 10:01:03 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v3 3/3] Staging: rtl8188eu: Remove redundant local variable
Date: Sat,  7 Mar 2015 23:30:28 +0530
Message-Id: <1425751228-9804-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
References: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>

This patch removes a redundant variable "val" and adds
inline return statements. It also adds a default case
to the switch statement which returns 0 to keep the logic
intact.

It also removes a redundant variable "inx" and adds inline
return statements.

This issue is identified by the following coccinelle script.
@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 82 +++++++++-----------------
 1 file changed, 28 insertions(+), 54 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index d5ebd52..0bb9181 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -136,47 +136,34 @@ u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen
 
 static unsigned char ratetbl_val_2wifirate(unsigned char rate)
 {
-	unsigned char val = 0;
-
 	switch (rate & 0x7f) {
 	case 0:
-		val = IEEE80211_CCK_RATE_1MB;
-		break;
+		return IEEE80211_CCK_RATE_1MB;
 	case 1:
-		val = IEEE80211_CCK_RATE_2MB;
-		break;
+		return IEEE80211_CCK_RATE_2MB;
 	case 2:
-		val = IEEE80211_CCK_RATE_5MB;
-		break;
+		return IEEE80211_CCK_RATE_5MB;
 	case 3:
-		val = IEEE80211_CCK_RATE_11MB;
-		break;
+		return IEEE80211_CCK_RATE_11MB;
 	case 4:
-		val = IEEE80211_OFDM_RATE_6MB;
-		break;
+		return IEEE80211_OFDM_RATE_6MB;
 	case 5:
-		val = IEEE80211_OFDM_RATE_9MB;
-		break;
+		return IEEE80211_OFDM_RATE_9MB;
 	case 6:
-		val = IEEE80211_OFDM_RATE_12MB;
-		break;
+		return IEEE80211_OFDM_RATE_12MB;
 	case 7:
-		val = IEEE80211_OFDM_RATE_18MB;
-		break;
+		return IEEE80211_OFDM_RATE_18MB;
 	case 8:
-		val = IEEE80211_OFDM_RATE_24MB;
-		break;
+		return IEEE80211_OFDM_RATE_24MB;
 	case 9:
-		val = IEEE80211_OFDM_RATE_36MB;
-		break;
+		return IEEE80211_OFDM_RATE_36MB;
 	case 10:
-		val = IEEE80211_OFDM_RATE_48MB;
-		break;
+		return IEEE80211_OFDM_RATE_48MB;
 	case 11:
-		val = IEEE80211_OFDM_RATE_54MB;
-		break;
+		return IEEE80211_OFDM_RATE_54MB;
+	default:
+		return 0;
 	}
-	return val;
 }
 
 static int is_basicrate(struct adapter *padapter, unsigned char rate)
@@ -1208,49 +1195,36 @@ unsigned int is_ap_in_wep(struct adapter *padapter)
 
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
-	int	inx = 0;
-
 	rate = rate & 0x7f;
 
 	switch (rate) {
 	case 54*2:
-		inx = 11;
-		break;
+		return 11;
 	case 48*2:
-		inx = 10;
-		break;
+		return 10;
 	case 36*2:
-		inx = 9;
-		break;
+		return 9;
 	case 24*2:
-		inx = 8;
-		break;
+		return 8;
 	case 18*2:
-		inx = 7;
-		break;
+		return 7;
 	case 12*2:
-		inx = 6;
-		break;
+		return 6;
 	case 9*2:
-		inx = 5;
-		break;
+		return 5;
 	case 6*2:
-		inx = 4;
-		break;
+		return 4;
 	case 11*2:
-		inx = 3;
-		break;
+		return 3;
 	case 11:
-		inx = 2;
-		break;
+		return 2;
 	case 2*2:
-		inx = 1;
-		break;
+		return 1;
 	case 1*2:
-		inx = 0;
-		break;
+		return 0;
+	default:
+		return 0;
 	}
-	return inx;
 }
 
 unsigned int update_basic_rate(unsigned char *ptn, unsigned int ptn_sz)
-- 
1.9.1


