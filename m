X-GM-THRID: 6204754090721804288
X-Received: by 10.50.43.163 with SMTP id x3mr12608361igl.4.1444656928734;
        Mon, 12 Oct 2015 06:35:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls477123obc.76.gmail; Mon, 12 Oct
 2015 06:35:28 -0700 (PDT)
X-Received: by 10.182.117.194 with SMTP id kg2mr25374252obb.49.1444656928515;
        Mon, 12 Oct 2015 06:35:28 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1709629pbb.0.2015.10.12.06.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so154425194pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=grhOlyOsjFg1KSe74MSc/hzvNaawSFQrmWntHRIZavI=;
        b=viFKjsrJr/RNU7K5MvFkknXXYobTW2yNbhr252tk5kClOo7/XHoPlMZ1L6D72HQZPA
         ThQ8deL4CLNktLjcZB/KHXcVbgGTjzHPMa0jAoDOZ3BtM+SrVlaSUrg2JrzrAZEtMxi3
         A3NmaPNXMmMOzI8xPiJGhNx/mzkKCDQ+NZiEzrnG8PYG1BJ/unvMMDoVWi9AVI+u8fdZ
         eLSjW32Gh744O4XsrG0hyy5imd03PW/TITiLmkXY0mCHvwbe7B8um+7mLjn/t/FoxYLX
         i1Ne6eUubJ+rXadQABTtNKxo84zE3yhh+j0v2Lk3A3sg+i+yUzBPr13g13DWwPyT3gxG
         qPtg==
X-Received: by 10.68.68.197 with SMTP id y5mr34493163pbt.88.1444656928393;
        Mon, 12 Oct 2015 06:35:28 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id vm6sm18564114pbc.8.2015.10.12.06.35.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:35:27 -0700 (PDT)
Date: Mon, 12 Oct 2015 19:05:21 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: wilc1000: host_interface: Replace kmalloc with
 kzalloc
Message-ID: <eac47047141a3ed75e04ca4cfb1fece8a8ef349f.1444655924.git.shivanib134@gmail.com>
References: <cover.1444655924.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444655924.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the function kmalloc and following memset function with a
single function kzalloc.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..d279eba 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2523,16 +2523,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 
 	case WPARxGtk:
 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY_AP)	{
-			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
+			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send RxGTK Key\n");
 				ret = -1;
 				goto _WPARxGtk_end_case_;
 			}
 
-			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
-
-
 			/*|----------------------------------------------------------------------------|
 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
 			 * |------------|---------|-------|------------|---------------|----------------|
@@ -2574,16 +2571,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY) {
 			PRINT_D(HOSTINF_DBG, "Handling group key(Rx) function\n");
 
-			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
+			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send RxGTK Key\n");
 				ret = -1;
 				goto _WPARxGtk_end_case_;
 			}
 
-			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
-
-
 			/*|----------------------------------------------------------------------------|
 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
 			 * |------------|---------|-------|------------|---------------|----------------|
@@ -6750,9 +6744,8 @@ static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo)
 	pu8IEs = ptstrNetworkInfo->pu8IEs;
 	u16IEsLen = ptstrNetworkInfo->u16IEsLen;
 
-	pNewJoinBssParam = kmalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
+	pNewJoinBssParam = kzalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
 	if (pNewJoinBssParam != NULL) {
-		memset(pNewJoinBssParam, 0, sizeof(tstrJoinBssParam));
 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->u8DtimPeriod;
 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->u16BeaconPeriod;
 		pNewJoinBssParam->cap_info = ptstrNetworkInfo->u16CapInfo;
-- 
2.1.0


