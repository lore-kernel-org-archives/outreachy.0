X-GM-THRID: 6203640047549284352
X-Received: by 10.194.94.66 with SMTP id da2mr2990389wjb.7.1444757833279;
        Tue, 13 Oct 2015 10:37:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.231 with SMTP id fb7ls1129876wid.38.canary; Tue, 13 Oct
 2015 10:37:12 -0700 (PDT)
X-Received: by 10.180.85.133 with SMTP id h5mr4523732wiz.1.1444757832420;
        Tue, 13 Oct 2015 10:37:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id bh7si759336wib.1.2015.10.13.10.37.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gb1so198482822wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 10:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=GojWLQXwkVdWVeCqAl9gfwSuoYHwCL0UC519EPiNGzc=;
        b=lHaE3J3HFxF/rG98DqO04t7aa1FDhEwo/QrDtDZJDG4+dL4G7jnBMnE+Z8O84vj83G
         OuNN1M3SzQFz7DKnLcDSAyT4spgdxJrxDSbTL9m0yPfFrO7Ly6NGzyLYurvkI5/2Djov
         e6oEVVBdzz3Y8CXq01I7uHD1An84gxZxDf1yQUxbgw73NscVP5N6yhulYTB6EDwogP2f
         pGM2XWMvRrA9DrGINaK7tmNHsc7RoMa6gHC8O6BnmoxZHmK3yzU9uTben3mZy8yL4L3D
         VnR/9M9cOJcPcU5eEKvEIBlJ4g9JpGZv2Bjec41Av5lNfLX2f1UfoRKe3uqs+4BcEbL5
         tWVQ==
X-Received: by 10.194.79.196 with SMTP id l4mr42095548wjx.93.1444757832199;
        Tue, 13 Oct 2015 10:37:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id d8sm25415454wiy.1.2015.10.13.10.37.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 10:37:11 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
Date: Tue, 13 Oct 2015 23:07:00 +0530
Message-Id: <1444757820-2008-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.561D4146.007B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Replace kmalloc and memset with a single call to kzalloc.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 Based on latest staging-testing branch

 drivers/staging/wilc1000/host_interface.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 392bf08..706b27d 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1867,15 +1867,13 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 
 	case WPARxGtk:
 		if (pstrHostIFkeyAttr->action & ADDKEY_AP) {
-			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
+			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send RxGTK Key\n");
 				ret = -1;
 				goto _WPARxGtk_end_case_;
 			}
 
-			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
-
 			if (pstrHostIFkeyAttr->attr.wpa.seq != NULL)
 				memcpy(pu8keybuf + 6, pstrHostIFkeyAttr->attr.wpa.seq, 8);
 
@@ -1904,15 +1902,13 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 		if (pstrHostIFkeyAttr->action & ADDKEY) {
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
 			if (hif_drv->enuHostIFstate == HOST_IF_CONNECTED)
 				memcpy(pu8keybuf, hif_drv->au8AssociatedBSSID, ETH_ALEN);
 			else
@@ -4936,9 +4932,8 @@ static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo)
 	pu8IEs = ptstrNetworkInfo->pu8IEs;
 	u16IEsLen = ptstrNetworkInfo->u16IEsLen;
 
-	pNewJoinBssParam = kmalloc(sizeof(struct join_bss_param), GFP_KERNEL);
+	pNewJoinBssParam = kzalloc(sizeof(struct join_bss_param), GFP_KERNEL);
 	if (pNewJoinBssParam != NULL) {
-		memset(pNewJoinBssParam, 0, sizeof(struct join_bss_param));
 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->u8DtimPeriod;
 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->u16BeaconPeriod;
 		pNewJoinBssParam->cap_info = ptstrNetworkInfo->u16CapInfo;
-- 
2.1.4


