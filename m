X-GM-THRID: 6210234849248149504
X-Received: by 10.50.114.2 with SMTP id jc2mr19660116igb.5.1445932977386;
        Tue, 27 Oct 2015 01:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls3356134qge.6.gmail; Tue, 27 Oct
 2015 01:02:56 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr33493123vkp.0.1445932976241;
        Tue, 27 Oct 2015 01:02:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si3976506pbb.0.2015.10.27.01.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hk11so215203885pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZEomdOoao2BBBdd2MUtCTAEMAhRsKa2Et6X2Cpx/7Z4=;
        b=yttR3RlDsxi/7mKeD48JnpWtLMIQkHJ4tHox5gnxQ0cKBRFLp5VQsxSeSzbQ9ikLBV
         uUdGlUBds9oX07gUgcoteoICeI2zy6QYHzj4tZ5sbSDsafEEZiAo58oxqnE3dhLsX/GC
         d7vY0m1ZsI3NfrnEWofK2CKu7zfM0Ey/wBD6/BG73Hx3Vvjfq4HdipuTsi8q3J9iQWDK
         KH4Y9IgVmb6wFwIoqsf+6jN8c5lpljOR9gKzZImXByrlngxXokp+AnntwPYBxXJL1SEB
         kMhdqEO6gfEKyJ6AZllLjk7CzyCDUBjZgNd5pfZNodGVoilA9aQhTzCONzySOqXyxLQt
         M2YA==
X-Received: by 10.66.248.137 with SMTP id ym9mr26758352pac.157.1445932976049;
        Tue, 27 Oct 2015 01:02:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.184.86])
        by smtp.gmail.com with ESMTPSA id sn9sm38088778pac.16.2015.10.27.01.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 01:02:55 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:32:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: Remove unnecessary functions
Message-ID: <20151027080252.GA27211@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove functions that can be replaced by a single line of code and are
unnecessary.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 28 ++++------------------------
 1 file changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index a7c8b73..0637020 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -1135,11 +1135,6 @@ int rtw_acl_remove_sta23a(struct rtw_adapter *padapter, u8 *addr)
 	return 0;
 }
 
-static void update_bcn_fixed_ie(struct rtw_adapter *padapter)
-{
-	DBG_8723A("%s\n", __func__);
-}
-
 static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1173,21 +1168,6 @@ static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
 	}
 }
 
-static void update_bcn_htcap_ie(struct rtw_adapter *padapter)
-{
-	DBG_8723A("%s\n", __func__);
-}
-
-static void update_bcn_htinfo_ie(struct rtw_adapter *padapter)
-{
-	DBG_8723A("%s\n", __func__);
-}
-
-static void update_bcn_rsn_ie(struct rtw_adapter *padapter)
-{
-	DBG_8723A("%s\n", __func__);
-}
-
 static void update_bcn_wpa_ie(struct rtw_adapter *padapter)
 {
 	DBG_8723A("%s\n", __func__);
@@ -1246,7 +1226,7 @@ void update_beacon23a(struct rtw_adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	switch (ie_id) {
 	case 0xFF:
 		/* 8: TimeStamp, 2: Beacon Interval 2:Capability */
-		update_bcn_fixed_ie(padapter);
+		DBG_8723A("%s\n", __func__);
 		break;
 
 	case WLAN_EID_TIM:
@@ -1258,15 +1238,15 @@ void update_beacon23a(struct rtw_adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 		break;
 
 	case WLAN_EID_HT_CAPABILITY:
-		update_bcn_htcap_ie(padapter);
+		DBG_8723A("%s\n", __func__);
 		break;
 
 	case WLAN_EID_RSN:
-		update_bcn_rsn_ie(padapter);
+		DBG_8723A("%s\n", __func__);
 		break;
 
 	case WLAN_EID_HT_OPERATION:
-		update_bcn_htinfo_ie(padapter);
+		DBG_8723A("%s\n", __func__);
 		break;
 
 	case WLAN_EID_VENDOR_SPECIFIC:
-- 
1.9.1


