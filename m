X-GM-THRID: 6337667792896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d1e72ee22ef5686c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr133560wjb.6.1425416805420;
        Tue, 03 Mar 2015 13:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls82128laj.27.gmail; Tue, 03 Mar 2015
 13:06:44 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr136217laa.2.1425416804915;
        Tue, 03 Mar 2015 13:06:44 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id el6si187900wib.2.2015.03.03.13.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 13:06:44 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id l61so5472703wev.0
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 13:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=562NldbAEpmUN7683mSS8zuxuuNh4KcMHU0XTEDtlbY=;
        b=ONsuk0jELHjXeSk3p0KJFoSLBdb4zIjJidtXVXHWwM3X564d29OtYdAZDJqfbYVU4V
         OamuFi21maALW1azi5p4qFLYU756XUGvXd9oHv2zKC1GgKdrpWyv11eSjGrTV4zRE6hq
         jHG7UEdq4Elesqb/lH8pJGg/Ub2/kQTJREqssCh+Bup6H3dq43hGbrOFV3Rk4Uh/0O/Y
         wxiFe3vkH//amWlKQrz0UPMwnUAP481OFyrQwgW9KsrQi8SxPvjkE/9UQlTkDaoQJxq4
         /dQrhY9L5PKERhbc9qkqETfwY2ZgvPj73wFVGcXGZL3NETf8ujPLjf3Bxion9VodVJGq
         Lt5w==
X-Received: by 10.181.25.232 with SMTP id it8mr6322027wid.63.1425416804800;
        Tue, 03 Mar 2015 13:06:44 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id u18sm2924771wjq.42.2015.03.03.13.06.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 03 Mar 2015 13:06:44 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Change from // to /* */
Date: Tue,  3 Mar 2015 23:06:32 +0200
Message-Id: <1425416792-8138-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the all '//' and instead of '/* */' put.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_firmware.c | 38 +++++++++++++++---------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index c230be2..b1f11bd 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -37,7 +37,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 	bool		    rt_status = true;
 	u16		    frag_threshold;
 	u16		    frag_length, frag_offset = 0;
-	//u16		    total_size;
+	/* u16		    total_size; */
 	int		    i;
 
 	rt_firmware	    *pfirmware = priv->pFirmware;
@@ -48,7 +48,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 	u8		    index;
 
 	firmware_init_param(dev);
-	//Fragmentation might be required
+	/* Fragmentation might be required */
 	frag_threshold = pfirmware->cmdpacket_frag_thresold;
 	do {
 		if ((buffer_len - frag_offset) > frag_threshold) {
@@ -107,19 +107,19 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 
 }
 
-//-----------------------------------------------------------------------------
-// Procedure:    Check whether main code is download OK. If OK, turn on CPU
-//
-// Description:   CPU register locates in different page against general register.
-//			    Switch to CPU register in the begin and switch back before return
-//
-//
-// Arguments:   The pointer of the adapter
-//
-// Returns:
-//        NDIS_STATUS_FAILURE - the following initialization process should be terminated
-//        NDIS_STATUS_SUCCESS - if firmware initialization process success
-//-----------------------------------------------------------------------------
+/* -----------------------------------------------------------------------------
+ Procedure:    Check whether main code is download OK. If OK, turn on CPU
+
+ Description:   CPU register locates in different page against general register.
+			    Switch to CPU register in the begin and switch back before return
+
+
+ Arguments:   The pointer of the adapter
+
+ Returns:
+        NDIS_STATUS_FAILURE - the following initialization process should be terminated
+        NDIS_STATUS_SUCCESS - if firmware initialization process success
+----------------------------------------------------------------------------- */
 static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 {
 	bool		rt_status = true;
@@ -222,7 +222,7 @@ bool init_firmware(struct net_device *dev)
 		/* it is called by reset */
 		rst_opt = OPT_SYSTEM_RESET;
 		starting_state = FW_INIT_STEP0_BOOT;
-		// TODO: system reset
+		/* TODO: system reset */
 
 	} else if (pfirmware->firmware_status == FW_STATUS_5_READY) {
 		/* it is called by Initialize */
@@ -291,8 +291,8 @@ bool init_firmware(struct net_device *dev)
 			 * will set polling bit when firmware code is also configured
 			 */
 			pfirmware->firmware_status = FW_STATUS_1_MOVE_BOOT_CODE;
-			//mdelay(1000);
-			/*
+			/* mdelay(1000);
+			 *
 			 * To initialize IMEM, CPU move code  from 0x80000080,
 			 * hence, we send 0x80 byte packet
 			 */
@@ -330,7 +330,7 @@ bool init_firmware(struct net_device *dev)
 	}
 
 	RT_TRACE(COMP_FIRMWARE, "Firmware Download Success\n");
-	//assert(pfirmware->firmware_status == FW_STATUS_5_READY, ("Firmware Download Fail\n"));
+	/* assert(pfirmware->firmware_status == FW_STATUS_5_READY, ("Firmware Download Fail\n")); */
 
 	return rt_status;
 
-- 
1.9.1


