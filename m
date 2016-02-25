X-GM-THRID: 6254957032933163008
X-Received: by 10.129.71.85 with SMTP id u82mr43542943ywa.9.1456401849401;
        Thu, 25 Feb 2016 04:04:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls269041qgm.23.gmail; Thu, 25 Feb
 2016 04:04:08 -0800 (PST)
X-Received: by 10.140.98.197 with SMTP id o63mr13458067qge.9.1456401848977;
        Thu, 25 Feb 2016 04:04:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id u66si1218016pfa.2.2016.02.25.04.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:04:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id yy13so2600491pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XcRyTbqMxFbwmExuOQL9KdKVRUOEwTDm9EIxIu0lCqk=;
        b=qRArW1IAPqI7qBtYayfr2nH9y+F+3kJZuZzAWCuGLDBNV2w21FmDYG0wFkm+0hXGlo
         biBNn6dxiKlDCbrAODzBRiYhHXr46KFXJmCpu8pa5niSzR+9ekdb348yTISRf9O4eR4S
         epkIIwnHZQbeLBNlQdqqLRCPnnuX/nR7gcge67gNyBmynxy7qjWXak7aNtQSqlUsWtBR
         3lmfMixehfje2q3I6VbIMta3ZIVOLK1evG8gSJzHmTJSoJrcuu6qA/b/6plKc8Q4fMj1
         kQbW42k0lykGUHq4VwfFXWCaCvcWl4oJJmrOQzPVwWq1XtETWk3gwT5SgNMQVOZ2rLy4
         yT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XcRyTbqMxFbwmExuOQL9KdKVRUOEwTDm9EIxIu0lCqk=;
        b=gzkcSSg9mbvzLU1Y7Ak1hOo+7uO5a0ZRQp5trJz7cXR/sWdOV2XhRBf0HO1Ym+nZfc
         hifcB8AtjXg8PQcPRuH1zmbsTbFpxD/0Yx1DfETASYqaYP1bAhK8FSPaV5LLgDQ3T8mY
         gzEdVg9DpcEDmv5dFWtiD5j2XIXjYC0j8bpezt1JzG4tmtoiJpPIMHZo8TW7wkcv7qN2
         YMe3w+pKX6ZDVs0MT/8crUCwxwucqhNQEWtFul9dlBEBiFI7ilwjsI/0pb515U73z3Iw
         PGmGy9gCRvO5BEqKCPD+uPU/HBPcBL57XEKleHhRGhDW0jLndhh2S5rxgcxzZ9GSJU59
         eoRQ==
X-Gm-Message-State: AG10YOT0kxGvxUMIDsM3T/8TRHgZRmmcbzJB4nxopZx/kTOl4MiHrsVlyD7szZFooe2hbw==
X-Received: by 10.66.218.196 with SMTP id pi4mr62140938pac.147.1456401848613;
        Thu, 25 Feb 2016 04:04:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d65sm11899297pfb.74.2016.02.25.04.04.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 04:04:08 -0800 (PST)
Date: Thu, 25 Feb 2016 17:34:43 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/8] staging: rtl8723au: hal: Remove useless return
 variables
Message-ID: <20160225120443.GA5640@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-No change

 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index 1688f66..28d1619 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -794,11 +794,7 @@ bthci_IndicateEvent(
 	u32		dataLen
 	)
 {
-	enum rt_status	rt_status;
-
-	rt_status = PlatformIndicateBTEvent(padapter, pEvntData, dataLen);
-
-	return rt_status;
+	return PlatformIndicateBTEvent(padapter, pEvntData, dataLen);
 }

 static void
@@ -2895,16 +2891,13 @@ bthci_CmdCreatePhysicalLink(
 	struct packet_irp_hcicmd_data *pHciCmd
 	)
 {
-	enum hci_status	status;
 	struct bt_30info *pBTInfo = GET_BT_INFO(padapter);
 	struct bt_dgb *pBtDbg = &pBTInfo->BtDbg;

 	pBtDbg->dbgHciInfo.hciCmdCntCreatePhyLink++;

-	status = bthci_BuildPhysicalLink(padapter,
+	return bthci_BuildPhysicalLink(padapter,
 		pHciCmd, HCI_CREATE_PHYSICAL_LINK);
-
-	return status;
 }

 static enum hci_status
@@ -3170,16 +3163,13 @@ static enum hci_status
 bthci_CmdAcceptPhysicalLink(struct rtw_adapter *padapter,
 			    struct packet_irp_hcicmd_data *pHciCmd)
 {
-	enum hci_status	status;
 	struct bt_30info *pBTInfo = GET_BT_INFO(padapter);
 	struct bt_dgb *pBtDbg = &pBTInfo->BtDbg;

 	pBtDbg->dbgHciInfo.hciCmdCntAcceptPhyLink++;

-	status = bthci_BuildPhysicalLink(padapter,
+	return bthci_BuildPhysicalLink(padapter,
 		pHciCmd, HCI_ACCEPT_PHYSICAL_LINK);
-
-	return status;
 }

 static enum hci_status
--
2.1.4


