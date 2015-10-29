X-GM-THRID: 6210381585761435648
X-Received: by 10.107.10.153 with SMTP id 25mr1217632iok.3.1446099428008;
        Wed, 28 Oct 2015 23:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.101 with SMTP id g98ls212153iod.2.gmail; Wed, 28 Oct
 2015 23:17:07 -0700 (PDT)
X-Received: by 10.66.246.234 with SMTP id xz10mr16174pac.10.1446099427728;
        Wed, 28 Oct 2015 23:17:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si264pbc.2.2015.10.28.23.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hk11so30666769pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sI5sPKdChmFMCX494wx5ztVZKJS2fG1a1Dg6XNOQogA=;
        b=Eh34vR9DvbXICI0bnvRilja0EPZMahpG+dnPIHjm3CAtQquAKkGOBICPQnb6TmjKwE
         uelb7qgfOpTohMKp7Isn+zFohz6YASErK0A6nPEl6y/Mh6/JAsIMEw4WrXWH/NOGVwSq
         a+dUKm0dtbToTqCK2SB5mytOJWwd0LL7k9X5M6bIefrGEh4zV84w5l9Z9N61V/CP8lVM
         e0lYqA65rIeTQOSlckJdHO08jEbNzrsLStj8w4JO4PbupVqAtFICY0/20Mk7i/eKEBmV
         Gr66N48ID30bX90bum6oUe4ZDYPN8wDYC7YuPB5iE3d++XBN/jpzTyTjPdkXIztXVCzC
         LYPQ==
X-Received: by 10.68.68.233 with SMTP id z9mr10672pbt.132.1446099427614;
        Wed, 28 Oct 2015 23:17:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id rm10sm36080427pbc.96.2015.10.28.23.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 23:17:07 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:47:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8188eu: core: rtw_ap : Remove unnecessary
 functions
Message-ID: <7bc010a2b0f9dad19e07e5e9825ea5a8477d9f68.1446098996.git.amitoj1606@gmail.com>
References: <cover.1446098996.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446098996.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unnecessary functions that are declared but not being used.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/rtl8188eu/core/rtw_ap.c | 54 +--------------------------------
 1 file changed, 1 insertion(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 5c45f8a..aab9918 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1240,11 +1240,6 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	return 0;
 }
 
-static void update_bcn_fixed_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
 static void update_bcn_erpinfo_ie(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
@@ -1279,31 +1274,6 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 	}
 }
 
-static void update_bcn_htcap_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
-static void update_bcn_htinfo_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
-static void update_bcn_rsn_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
-static void update_bcn_wpa_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
-static void update_bcn_wmm_ie(struct adapter *padapter)
-{
-	DBG_88E("%s\n", __func__);
-}
-
 static void update_bcn_wps_ie(struct adapter *padapter)
 {
 	u8 *pwps_ie = NULL, *pwps_ie_src;
@@ -1354,22 +1324,12 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	kfree(pbackup_remainder_ie);
 }
 
-static void update_bcn_p2p_ie(struct adapter *padapter)
-{
-}
-
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
 	DBG_88E("%s\n", __func__);
 
-	if (!memcmp(RTW_WPA_OUI, oui, 4))
-		update_bcn_wpa_ie(padapter);
-	else if (!memcmp(WMM_OUI, oui, 4))
-		update_bcn_wmm_ie(padapter);
-	else if (!memcmp(WPS_OUI, oui, 4))
+	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
-	else if (!memcmp(P2P_OUI, oui, 4))
-		update_bcn_p2p_ie(padapter);
 	else
 		DBG_88E("unknown OUI type!\n");
 }
@@ -1391,24 +1351,12 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	spin_lock_bh(&pmlmepriv->bcn_update_lock);
 
 	switch (ie_id) {
-	case 0xFF:
-		update_bcn_fixed_ie(padapter);/* 8: TimeStamp, 2: Beacon Interval 2:Capability */
-		break;
 	case _TIM_IE_:
 		update_BCNTIM(padapter);
 		break;
 	case _ERPINFO_IE_:
 		update_bcn_erpinfo_ie(padapter);
 		break;
-	case _HT_CAPABILITY_IE_:
-		update_bcn_htcap_ie(padapter);
-		break;
-	case _RSN_IE_2_:
-		update_bcn_rsn_ie(padapter);
-		break;
-	case _HT_ADD_INFO_IE_:
-		update_bcn_htinfo_ie(padapter);
-		break;
 	case _VENDOR_SPECIFIC_IE_:
 		update_bcn_vendor_spec_ie(padapter, oui);
 		break;
-- 
1.9.1


