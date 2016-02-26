X-GM-THRID: 6254957032933163008
X-Received: by 10.66.139.138 with SMTP id qy10mr370287pab.46.1456479701507;
        Fri, 26 Feb 2016 01:41:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.5 with SMTP id s5ls1041672qgs.19.gmail; Fri, 26 Feb
 2016 01:41:40 -0800 (PST)
X-Received: by 10.140.194.149 with SMTP id p143mr379269qha.17.1456479700907;
        Fri, 26 Feb 2016 01:41:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si1942884pad.2.2016.02.26.01.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:41:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so162611pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jfaZvexCnP/4kTUgjOm+JU89gEXIV93uR0ZOwS5Vezc=;
        b=NNsRdH7RwEQ+bMSsSZY+LN8igKJXOnELpRcGuPhlXrsawbYbcQa8A8GDmH1ekrYTqs
         dNcqpqIbTYPGEJirB7Q2OaWmTRqXn+gy+dHTqlbqjbhGXGHdahkHIhY3NwJH6d9kbnly
         XKXINiqs/haesXyEOoGx4mSZOIk5S5lIuNGOEIh1nyTzvH4x1ERKndO1Q5xAX8fEGK9+
         2T00ydB1VdHg1wWsy+hvoDUvVxGv5dBB8h13KVPP0bZXjEKf4sRDzpCPqq4oHnjVkG2i
         IVoYXA7fV1z6z06PBGv+RF8vpG1F4V1zmMWoG3mGBiZtjLEvCMs4aFLFNINvyT44nYOD
         LuMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jfaZvexCnP/4kTUgjOm+JU89gEXIV93uR0ZOwS5Vezc=;
        b=C8kZ8W3LQm3kfBWKSzB1CjXO4dNTVF2AFj7usNSVzyydoFhq9bN+wnn3GsPDrUHPSu
         LEZEpbVF0ln+tjSfQ7ob3ZFRtMJgzQURyqmQmbKdLrUHALV7RZ7iQ2pmz9g5x3Mxu4LU
         RBbTYoxc0bFPKuPAR7949UZwgsa6gszAP15WuQzk8RT/ihJ7VRCNbPtn/WcVNaRmhEij
         ZKsVUtBtehlj/fwJbwa2sNyCQYSRFKOMdk1yF9JdhpMMTPKclmCNprIdGcHuTwTX+1WS
         cvx++p2uYQzgOOjhDlUU7vHljwl+arOUxYKvQ9Ycc4oLlTndxYU4eKh/KH1G2qTxJNRQ
         Kcjg==
X-Gm-Message-State: AD7BkJLWhSeAC3JB4e+KWT8m9WAmf8rq5M76m/TofdNu4hOgnNySKQkBRSrSEZcDSnIL6A==
X-Received: by 10.98.16.202 with SMTP id 71mr723523pfq.138.1456479700702;
        Fri, 26 Feb 2016 01:41:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r80sm17952120pfi.9.2016.02.26.01.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:41:40 -0800 (PST)
Date: Fri, 26 Feb 2016 15:12:17 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 4/5] staging: rtl8723au: hal: Remove useless return
 variables
Message-ID: <20160226094217.GA10622@Karyakshetra>
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
 Changes in v4:
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


