X-GM-THRID: 7286653190144
X-Received: by 10.236.2.227 with SMTP id 63mr26822974yhf.12.1425908922025;
        Mon, 09 Mar 2015 06:48:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.33 with SMTP id 30ls1543563qgg.45.gmail; Mon, 09 Mar
 2015 06:48:41 -0700 (PDT)
X-Received: by 10.236.209.33 with SMTP id r21mr27500627yho.6.1425908921874;
        Mon, 09 Mar 2015 06:48:41 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ri9si2659788pdb.1.2015.03.09.06.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:48:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so25275071pdj.12
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xQ6rJbvA1JoTU0kRQ8V6e/isPI1AHOkSgv46SKElatc=;
        b=dS7bvRqIePFNGsSYWLPc95/AJfya1dTKi2mv5AK66NSgYHVCKmfOMKHrAPsNpTMiZE
         3/WUZpz/DfPEHXE2rxVxvFN8dU9rMYhx4fi7xRzE/UGIpOcdvaqIJOTUsPQkyXG8Gd/D
         T3CUpO/8aWL44b1xXVG29O4zRLgBw3RJGYgHth2o+7YDnW8Fss2kEf12jao4FcTiWCFh
         kzMRNNEvu/dif36Jljz3i1KQ4nHrq5N1krygqHhCtgHuJT7uHZWoGj0SlFSe6y7GlGjD
         uxHlUYl/PuTpdeHvQREK5QI3ueAjWCyKRCT6nvHLf2Wk8+JkLU6U35a+MmyIuJXwi+Xv
         dK1Q==
X-Received: by 10.70.90.193 with SMTP id by1mr16856919pdb.135.1425908921395;
        Mon, 09 Mar 2015 06:48:41 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.39.255])
        by mx.google.com with ESMTPSA id ji6sm19513656pac.30.2015.03.09.06.48.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 06:48:40 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v4  1/2] Staging: rtl8188eu: Remove redundant local variable
Date: Mon,  9 Mar 2015 19:18:24 +0530
Message-Id: <1425908905-30288-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

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
Changes since v3:
 * Reformatted the patch according to the updated staging-next tree.
 
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 81 +++++++++-----------------
 1 file changed, 28 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 4f2f736..b3c4dd9 100644
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
@@ -1209,48 +1196,36 @@ unsigned int is_ap_in_wep(struct adapter *padapter)
 
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
-	int	inx = 0;
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


