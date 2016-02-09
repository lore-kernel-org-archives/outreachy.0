X-GM-THRID: 6249004522009526272
X-Received: by 10.107.133.10 with SMTP id h10mr32294323iod.8.1455019605368;
        Tue, 09 Feb 2016 04:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.200 with SMTP id j66ls3545597qgd.92.gmail; Tue, 09 Feb
 2016 04:06:44 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr17808711ywc.54.1455019604440;
        Tue, 09 Feb 2016 04:06:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id tn7si5055307pac.1.2016.02.09.04.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:06:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 71so4882051pfv.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UWQTX1DsOZW3/EJUU4l/KzX1TabERjqhn6EumTnP+MA=;
        b=AyCd1Y4RwVGdP9WzoUGXKhqzXeCyS8dIY/T5t4NMDxkSz9/AzSsZvEBTa3Dn1+3Ucs
         /TWlLI37vfEmcNSqb5upgA84WTX1blpPIwn+jkYSknaay3apPAnIB9WIW1YwZDpuolED
         uqrJ6jr+0ZsN52WO05lbM451EV6UX4WYn1oT3vV1H5OpB9TzW/WR2YJWNlc05WvCwVi6
         t0NpBm0BErFl/zdlnJJ4U9zfsB9clcr+vkm6qDQqR1NMPEExdhH/70KKgVNRexPwfYub
         pVvdYPBLnItQ9kOsYIaaurrTXRFUkzUCgZvrdCMHw+vBatr32c+fJPyGc/vQRoE832qJ
         cOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=UWQTX1DsOZW3/EJUU4l/KzX1TabERjqhn6EumTnP+MA=;
        b=VX7OAmZBQl4xhpN/BMjBri3p2il65Pj8FMwFFNXN4Hn7IBAZDFZ+7xDKpf7IvZIikq
         YFnBiokApVPX4EJx5shDzn7ML5hMqeGPkOl4TXIPbCeKskVyjbG+h0rEWq8irsCkuZyX
         EY7wVwpRLMccd8uqU6A/37SmLAlBIYQcC2fI7t9traf5u3Tsi/9Vg1bZrG7DXkvjjDDu
         xcq84uBiGLVH5pEIV3+35isnxqhwxo/l/YRBjQNV5GVdf/43WaxMmblVt8CVJtH2JW4H
         zrrVAJWzer7KBF8sfuimpwCjhqNUMC3XcqWqKtIHr7XSBl5qkJKJKNX2keQe3mA1u+pZ
         x/yQ==
X-Gm-Message-State: AG10YOROEETtu6Kpevw/lzYq96puNvCaitb1jqComO+nj5efcylwhiFzuNNCqPknQEkgkA==
X-Received: by 10.98.18.8 with SMTP id a8mr49869853pfj.41.1455019604291;
        Tue, 09 Feb 2016 04:06:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.131.122])
        by smtp.gmail.com with ESMTPSA id k65sm47811972pfb.30.2016.02.09.04.06.39
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 04:06:43 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 17:36:34 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3] Staging: wlan-ng: Merge two lines into one
Date: Tue,  9 Feb 2016 17:36:32 +0530
Message-Id: <1455019592-29178-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455010952-24672-1-git-send-email-bhumirks@gmail.com>
References: <1455010952-24672-1-git-send-email-bhumirks@gmail.com>

The last two lines of these functions are compressed into one.
Also removed the variable result  as it is now not used.
Found using coccinelle:
@@
expression e, ret;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
Acked-by: Julia Lawall <julia....@lip6.fr>
---
Changes since v1:
* Improve subject line.
Changes since v2:
* Add acknowledgement.
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 682de77..fda8a95 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1012,7 +1012,6 @@ int hfa384x_cmd_initialize(hfa384x_t *hw)
 ----------------------------------------------------------------*/
 int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
 {
-	int result = 0;
 	hfa384x_metacmd_t cmd;
 
 	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_DISABLE) |
@@ -1021,9 +1020,7 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1048,7 +1045,6 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
 ----------------------------------------------------------------*/
 int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
 {
-	int result = 0;
 	hfa384x_metacmd_t cmd;
 
 	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_ENABLE) |
@@ -1057,9 +1053,7 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1093,7 +1087,6 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
 ----------------------------------------------------------------*/
 int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
 {
-	int result = 0;
 	hfa384x_metacmd_t cmd;
 
 	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_MONITOR) |
@@ -1102,9 +1095,7 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1148,7 +1139,6 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
 int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
 			 u16 highaddr, u16 codelen)
 {
-	int result = 0;
 	hfa384x_metacmd_t cmd;
 
 	pr_debug("mode=%d, lowaddr=0x%04x, highaddr=0x%04x, codelen=%d\n",
@@ -1161,9 +1151,7 @@ int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
 	cmd.parm1 = highaddr;
 	cmd.parm2 = codelen;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.1


