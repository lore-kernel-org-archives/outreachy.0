X-GM-THRID: 6210381585761435648
X-Received: by 10.66.152.230 with SMTP id vb6mr35191874pab.46.1445967313092;
        Tue, 27 Oct 2015 10:35:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.108 with SMTP id y99ls4638782qgd.35.gmail; Tue, 27 Oct
 2015 10:35:12 -0700 (PDT)
X-Received: by 10.13.248.68 with SMTP id i65mr21872098ywf.39.1445967312555;
        Tue, 27 Oct 2015 10:35:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si4410944pbb.2.2015.10.27.10.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv9so238674445pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+EmAyvZrBnVam+E47M/UvhEhbArXNETPGzZpOdBb8/8=;
        b=Zf4pVtB25E9k5pWm7/TnOd1IYdEoQmAYACyztiukJe1I6e3mqK72mRxXqsCYK0I9cg
         HAIZLs4j7XL+DS/0jG6Cc1eFe4kuLJpGrq5CW5b/qWB/SbCxYouIxmz24KTw7Xt6ITPh
         y3zDM7iStyvmdDjx9X6lZC+9KS4O+tIqvX12D4E6bGjcN9iGazpvTaDYBfoUvK1xerM6
         d5FhewxHPGlGJ4H0dTS9zWakb8GvefSTFafPA038CKK8vIZaDrjuvwyZ+3Phk6+vlSUp
         2E4Nj/v3MCPes36bnfMVO0iRgF0MbR5dnweI+7yk04LegBwpwmK0EFP74l1FFSVIJMCH
         niIQ==
X-Received: by 10.68.216.229 with SMTP id ot5mr29017821pbc.15.1445967312383;
        Tue, 27 Oct 2015 10:35:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.134.91])
        by smtp.gmail.com with ESMTPSA id yz3sm40760307pbb.37.2015.10.27.10.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 10:35:12 -0700 (PDT)
Date: Tue, 27 Oct 2015 23:05:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8188eu: core: Remove unnecessary functions
Message-ID: <d8e2f4e31570671e97e9e3f73e53832ad80f40e8.1445966850.git.amitoj1606@gmail.com>
References: <cover.1445966850.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445966850.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unnecessary functions that are declared but not being used.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
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


