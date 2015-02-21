X-GM-THRID: 1709174685696
X-Received: by 10.112.174.36 with SMTP id bp4mr239721lbc.15.1424516893134;
        Sat, 21 Feb 2015 03:08:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.24.165 with SMTP id v5ls257824wif.25.gmail; Sat, 21 Feb
 2015 03:08:12 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr212622wib.3.1424516892821;
        Sat, 21 Feb 2015 03:08:12 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ew5si289739wid.1.2015.02.21.03.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:08:12 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f169.google.com with SMTP id em10so10914391wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=svLDccDlpvu8WaRbAYlLLVC4ZCbuwt4XoDNwT17G6Ds=;
        b=Cd7JTdhE+hhMlmTK6jWr8aF+qNczKkWzPli9GJpDEpH9vRZwuLjhJ4EK5DQe3agxbQ
         UTOp4HAaMnnVW1LCljqHghCHtpMfe26tJGIO9zB9UOBWq/ZClrQmjh706K0cRDmRrQYP
         Y34mRezM+tR1lwDTIRdTV6ehza6uagwd5n+MP6eYc7r3fAT+It35+fI4icgLQ/28VTah
         P5y/hGpirIEsjapvDQf/hGA8TBAi+35L9tblwv3m1RJ6NuXR0GoRaq1bSG+pxPywCzY2
         mJWsbH5mN6JUemK7NtDgroENB9gBbrUp9MRw8PSEszVWWwmgVnr6RzQV7VPJ+cAzBp+H
         1Fkg==
X-Received: by 10.194.122.233 with SMTP id lv9mr3597304wjb.95.1424516892733;
        Sat, 21 Feb 2015 03:08:12 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id k6sm6510466wia.6.2015.02.21.03.08.11
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 03:08:11 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Add blank line
Date: Sat, 21 Feb 2015 13:08:14 +0200
Message-Id: <1424516894-4970-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 1f2c78c..9fdb171 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1166,6 +1166,7 @@ typedef struct hfa384x_usbctlx {
 	CTLX_STATE state;	/* Tracks running state */
 
 	struct completion done;
+
 	volatile int reapable;	/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
@@ -1376,6 +1377,7 @@ int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len);
 static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
 {
 	int result = 0;
+
 	result = hfa384x_drvr_getconfig(hw, rid, val, sizeof(u16));
 	if (result == 0)
 		*((u16 *) val) = le16_to_cpu(*((u16 *) val));
@@ -1385,6 +1387,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
 static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
 {
 	u16 value = cpu_to_le16(val);
+
 	return hfa384x_drvr_setconfig(hw, rid, &value, sizeof(value));
 }
 
@@ -1402,6 +1405,7 @@ static inline int
 hfa384x_drvr_setconfig16_async(hfa384x_t *hw, u16 rid, u16 val)
 {
 	u16 value = cpu_to_le16(val);
+
 	return hfa384x_drvr_setconfig_async(hw, rid, &value, sizeof(value),
 					    NULL, NULL);
 }
-- 
1.8.3.2


