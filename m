X-GM-THRID: 6469693451646533632
X-Received: by 10.223.143.14 with SMTP id p14mr311030wrb.27.1506342904417;
        Mon, 25 Sep 2017 05:35:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.46.11 with SMTP id u11ls2357060lju.13.gmail; Mon, 25 Sep
 2017 05:35:03 -0700 (PDT)
X-Received: by 10.25.233.92 with SMTP id g89mr536567lfh.22.1506342903861;
        Mon, 25 Sep 2017 05:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506342903; cv=none;
        d=google.com; s=arc-20160816;
        b=q7Vse+uSuRyzMskQz5ZoOx4Fnzs+IVL+jXVwNip5RucsbuQ5oCSFBbDfT4FCJQlyQf
         pj+fQ2ENnP2oxjE08lZWtFN7TLWEHrjV1BbwpmurqsTHaGxU8fI0VLQWlyM8wkhQsalV
         e+UING+Gwp7W8xZHfw1I07iSyrQuTXv8hZnFPFEFBZmFb22Itg00y4YB+EF3HpKq+7eA
         kJ4cp79/RN1vwDvK5yGuhcPMyFAoSWRehY/GhxTRFLJ14oytsHH2VM5i0rJHXNo4SFhf
         S9Wmrdw35TGoPAFBJdNG5YF56zF28KMkuFRsRdZLOO5yGTplx8oCX5/my/sel1ROc+vt
         kdhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=CWqs5kW0EwbNmYKVyGW1X+nHuSFxvf20g9IOXiewtKM=;
        b=QUjuVRoZi8kJWZ90DjlXFX+EUS/ftu6ydUTC2CNeNQ1WAVy6mYpY0moNQBRgNSVvSF
         5OV5OFx4y34tcYnstThJgC2EP3oE+o6BLo1LN0Dyvy31ONLMUV9dCNlUwiNO7IOggRRw
         bEg2j0j2DaprGA1imFelJ4HKM+Lv25i11LjEiXYPEKtKPY0riyVqTHpQkDcdwLM+2ZVB
         e1OuRDE3jN+vIjvPNpVCmAlWOMl5tA2hO9z6iwN/dc5nadh9xwGBWdWtFPSrQYCqTeM/
         nFRT+D4EIichGs4/mgxR4VfiFRQolCUsGHDJFoM6jpF3dQHvjfgtqnIArjouBvgY3fQH
         OOKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r3HbfSOU;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id l133si511535wmb.3.2017.09.25.05.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 05:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r3HbfSOU;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id p37so2089504wrb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 05:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CWqs5kW0EwbNmYKVyGW1X+nHuSFxvf20g9IOXiewtKM=;
        b=r3HbfSOUokWEP79nPEwef/3F9KjvaNE9TWg5x7ZPTlF0kKl2qOvl9fvZiyy8/iGEqm
         Q//UA8mDLBibfIcZMRU3HawsZfsE6HRvS0NEw255UurRkSKhhXnQrOB0zwBCymSt56An
         mamqEZ7G8Qxf5ifTPltSzzJ4kFLBe9fjfBFI0Jt0INIb14R/MRZnPfBVzulluwZLIo06
         l1vOa678MFrfOa3IS8H6tmSES0UmY4Ra0Hh6ClUE2kvwMuJRefO8bZIRZL69G7bvDqWh
         b35k3xtA4w/PjGax7SOfVGVuGDikuVGfjWuZSs8+SYb2oNtpQosNA2hTqzvsDaVgMFTW
         qI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CWqs5kW0EwbNmYKVyGW1X+nHuSFxvf20g9IOXiewtKM=;
        b=Dbrb9FBSGQrRpIGz2zr0rMObtMV68XQODdbBH6Y5PC3AQETK6SqhEurvbVjCGsfJEC
         CMWeJdj8vjUxolQgOcgS+NBsBxgMPJOsIsrgRI9vxTO620e/1JnCOOizRg/BMTCodjL6
         jUAJTAoXCepD02jlowPMWUgeRnoemuTQAnQx0YDJS8vOCqMTtRLpMi7tFrDweH/RYI6v
         yhw5X5WKVIrScMLmDALrej1w5Jy6KvY5jW0K/5udqsRSGmST7ZjeJ2r/bVB2omXEFX20
         yaTcekvBrdbZmfKNEca6fJqOf23YHi81F6OROIOfE7hLlaPlZhm0q//UEIo8M4CvMO4z
         NHcw==
X-Gm-Message-State: AHPjjUh2GISNIm2jFTAewQ3oJN1VrrwldvDlcK+rQr79YGe4Glfr1+rI
	CajUUGtKp8U25ylKCQNYkd4=
X-Google-Smtp-Source: AOwi7QBYsoHJa5IC6M5xJLW4TsOC2nCMXGuy5gYeP9peJ54zgVS71tId87auhU3FN8atz7rEg+aPQg==
X-Received: by 10.223.166.21 with SMTP id k21mr5483583wrc.261.1506342903501;
        Mon, 25 Sep 2017 05:35:03 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id 25sm10330669wrv.8.2017.09.25.05.35.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 05:35:03 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] Staging: rtl8188eu: core: Fix line over 80 characters
Date: Mon, 25 Sep 2017 05:34:07 -0700
Message-Id: <2d3150740148514e61f3e8ac77f44c057f902dd7.1506339722.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>

Fix warning reported by checkpatch.pl script:
WARNING: line over 80 characters

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
* new patch added to the patchset

 drivers/staging/rtl8188eu/core/rtw_recv.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 355a039..7c7c838 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -237,25 +237,31 @@ static int recvframe_chkmic(struct adapter *adapter,
 	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 
 	if (prxattrib->encrypt == _TKIP_) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-							       __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
+			 ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
+			 ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+			  __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2],
+			  prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
 
 		/* calculate mic code */
 		if (stainfo != NULL) {
 			if (IS_MCAST(prxattrib->ra)) {
 				if (!psecuritypriv) {
 					res = _FAIL;
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
+						 ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
 					DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
 					goto exit;
 				}
 				mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
 
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: bcmc key\n", __func__));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
+					 ("\n %s: bcmc key\n", __func__));
 			} else {
 				mickey = &stainfo->dot11tkiprxmickey.skey[0];
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: unicast key\n", __func__));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
+					 ("\n %s: unicast key\n", __func__));
 			}
 
 			/* icv_len included the mic code */
@@ -346,7 +352,8 @@ static int recvframe_chkmic(struct adapter *adapter,
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
+				 ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
 		}
 
 		skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
@@ -1011,7 +1018,8 @@ static int validate_recv_mgnt_frame(struct adapter *padapter,
 
 	precv_frame = recvframe_chk_defrag(padapter, precv_frame);
 	if (precv_frame == NULL) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s: fragment packet\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
+			 ("%s: fragment packet\n", __func__));
 		return _SUCCESS;
 	}
 
-- 
2.7.4


