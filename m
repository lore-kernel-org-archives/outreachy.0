X-GM-THRID: 6210234849248149504
X-Received: by 10.129.109.148 with SMTP id i142mr32830171ywc.14.1445934762711;
        Tue, 27 Oct 2015 01:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.147 with SMTP id 19ls4047401qgd.23.gmail; Tue, 27 Oct
 2015 01:32:42 -0700 (PDT)
X-Received: by 10.129.92.198 with SMTP id q189mr34798008ywb.40.1445934762129;
        Tue, 27 Oct 2015 01:32:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si4026000pac.2.2015.10.27.01.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so215638867pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nldjTrV7q7fQWGmidpJKVIEfr20lek8eArU+hnpdz5Y=;
        b=mYC/TYJAc6NdzMko2GIWYX8kczf91DbzZPK5OuasC6NoD0g6OK/pP+qaA8eTqWhbSZ
         LJN8V4dugG9FZKTVRBsXYL+Q59i449vRFniJNI1Buu5ppP/myjPfDoUrM6LJCxbfjQ7z
         f1obtmSAoWyBmOgYSDH1sLjUrLTDeJSHVQ46mGJcbPm2qyOpIx37gvYYoLZiD6dcQH7h
         3nX6dSKBV8Yx/JJk9RutwiMicOJGFr1LXNqXunkBQG4L5wWvkkhmbcCyJGdSbhWrD0qd
         GV8mtmIebSoT2dhuiAhkkAmy9fq9wTegz2ZGvPY62H24t4PTpG0FNWQb9rQAQWFPXM+j
         NB0g==
X-Received: by 10.66.136.39 with SMTP id px7mr45398987pab.23.1445934761956;
        Tue, 27 Oct 2015 01:32:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.184.86])
        by smtp.gmail.com with ESMTPSA id xs2sm38135427pbb.75.2015.10.27.01.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 01:32:41 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:02:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723au: core: Remove unnecessary functions
Message-ID: <20151027083237.GA6312@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop functions that are declared but are not being used anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Remove function callers

 drivers/staging/rtl8723au/core/rtw_ap.c | 37 ---------------------------------
 1 file changed, 37 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index a7c8b73..65a9df4 100644
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
@@ -1244,11 +1224,6 @@ void update_beacon23a(struct rtw_adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	spin_lock_bh(&pmlmepriv->bcn_update_lock);
 
 	switch (ie_id) {
-	case 0xFF:
-		/* 8: TimeStamp, 2: Beacon Interval 2:Capability */
-		update_bcn_fixed_ie(padapter);
-		break;
-
 	case WLAN_EID_TIM:
 		update_BCNTIM(padapter);
 		break;
@@ -1257,18 +1232,6 @@ void update_beacon23a(struct rtw_adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 		update_bcn_erpinfo_ie(padapter);
 		break;
 
-	case WLAN_EID_HT_CAPABILITY:
-		update_bcn_htcap_ie(padapter);
-		break;
-
-	case WLAN_EID_RSN:
-		update_bcn_rsn_ie(padapter);
-		break;
-
-	case WLAN_EID_HT_OPERATION:
-		update_bcn_htinfo_ie(padapter);
-		break;
-
 	case WLAN_EID_VENDOR_SPECIFIC:
 		update_bcn_vendor_spec_ie(padapter, oui);
 		break;
-- 
1.9.1


