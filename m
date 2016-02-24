X-GM-THRID: 6254957032933163008
X-Received: by 10.182.72.137 with SMTP id d9mr38466207obv.31.1456345672259;
        Wed, 24 Feb 2016 12:27:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.133 with SMTP id g5ls1447405obk.43.gmail; Wed, 24 Feb
 2016 12:27:51 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr38733375obb.38.1456345671879;
        Wed, 24 Feb 2016 12:27:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si707792pfa.2.2016.02.24.12.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so1582910pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=89yJ0E+i7DcCevjmAouawQbjcxU9OECtM+s1hh3v5UU=;
        b=ScHgIYhJqev3Jdwgm+iZM3VmBJgHXYCCWbglLQdtx3jImhWmwadS5G3VRcQPd9WRn2
         qyhCzP6BN5Ct44M2sUOMp9mJChqXp8+u/inDOHcWEIWdoZnbhBgdBBKLaM6iTybYmvqt
         Hf2h0BeFOK66Tno4JlhEovjn6fHbDMz7PoCkCYyHmO0FE+EhLZRD4L6U2JuJJJZc49Ci
         xw+/8I0qBcKGTPQXKzpRKh5uFVZoSq8rI++ZYVsX8hKc8Q8pxIywL/MdXyVORu+yaFIE
         KhDq7iJnakuVdjzzQzi6eJXiAanqaaSoiKl2XKlINFMYG1qP/tAIJu00gO0kCP6ErHD0
         DJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=89yJ0E+i7DcCevjmAouawQbjcxU9OECtM+s1hh3v5UU=;
        b=TkDT53bQ7aLbuV4pN/RPPoot3NOvYpxNjclaXoguz4PcRnlNzGITjdERBagmFIiKU4
         AOEvxUL9flpMCoCAQ0qZXo0WD/lG5AgSEeodJ7RaKxmfi01UUg2qQoxei7piS4wdNYAu
         G72lNww7W1Vj0OrRPVTw3W4SdktZzoCMVgYDOTo7ra98+ryWSwYKFbG0HsMW+BHgcYds
         +fh8Chbw3cqMJmrPwBxC5ITsBsp7mGxbH6FLFk6uI1CWyYtigNfu2/ZNC3/PZvbqlfNZ
         POGKzE1qUvLNjcyoEfqmVvHbg6siSVp6n9Ky5JuxM6MDwh81irblLY+FZxWbfASrs6Ui
         OZ7Q==
X-Gm-Message-State: AG10YOQ90f9aRVpkMwk0Me2VK2RBoNJgKiButibvTgZsnHwD/wpbZDSZXg0iCRQKim0xDA==
X-Received: by 10.98.72.24 with SMTP id v24mr56946483pfa.15.1456345671672;
        Wed, 24 Feb 2016 12:27:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ra1sm6985583pab.24.2016.02.24.12.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:27:51 -0800 (PST)
Date: Thu, 25 Feb 2016 01:58:26 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/8] staging: rtl8723au: hal: Remove useless return variables
Message-ID: <20160224202826.GA23015@Karyakshetra>
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


