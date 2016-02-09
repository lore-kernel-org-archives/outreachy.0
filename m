X-GM-THRID: 6249004522009526272
X-Received: by 10.31.160.209 with SMTP id j200mr31497078vke.6.1455010974086;
        Tue, 09 Feb 2016 01:42:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.76.3 with SMTP id g3ls1924447obw.60.gmail; Tue, 09 Feb
 2016 01:42:53 -0800 (PST)
X-Received: by 10.183.11.71 with SMTP id eg7mr30788021obd.1.1455010973599;
        Tue, 09 Feb 2016 01:42:53 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id tn7si5002274pac.1.2016.02.09.01.42.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 01:42:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so54976pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 01:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EMdpPcKnhvEL5bukC5Ud1thFMszO+So09nCFPg7QlsM=;
        b=yGjqwnGpwewW/oh+Je09meREFdk210Vf0ehuzWDfFrme+vBYB5WHyjU+AJO2LJ653N
         27X1+C2FGB3Pryd2jwN2Rf/Xs7cF1ZwCWcb1rMdYNibHdBVUKhTjrx4h8KggVdCDdSTA
         XfC5FW6aCR3bh/vZ/KbZDJfs50XsdJxzQ0uYZZ/lE1auZO0lWuuf6y39J0W2eiWmyrgS
         NzkJTiPeiKX70p8A/BlIWJxw8fJls+C7Xf3r0YhDCMsQO9XNHi1FpxCiu7uhSSC7efI7
         +njJ47v5WtsDYCBPw6Ux1L3r6F/70MF9tjk4608i7EBkKA/+5J/ZjhPw/bmaa8ZJcb/S
         3aWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EMdpPcKnhvEL5bukC5Ud1thFMszO+So09nCFPg7QlsM=;
        b=b7cwQiZ5Blnty2i2C5iKH5GivUOKBt7BzhcYAcHx0eZXH2FEFmXcEIA/2A4yLD6aFk
         FBE+4gi2TlGpe9IJnx9xmvHMkUd+LctU80SnzzV1rLEwg1wcmU3IaVQsJvkQnFQQ2j/x
         cZWFB48SkWGBs9l6LYneZ/NHzlSgUsNPayyyA7QneqOdBrAiMSmeT6/X6uj6mOrrguet
         bBMIaBfQV/PMyujwyjjPEyR/p+jMcqdeaa5Dn31ZqKXKazkKL5LGs57XMq2i97lD/Eoc
         cztT9OI1iSay1r9EuSx/r92nEbhDQAuvzewk5lSng99fGvscciyMqfsyjQgljqEkAX7y
         KcVA==
X-Gm-Message-State: AG10YOTfxbyVDvx0J2QHp05ClfbAHrLi8k+nVL+xziw0R4wZ2fXB+N/+vbOMekjiiPQItQ==
X-Received: by 10.66.191.104 with SMTP id gx8mr48666402pac.21.1455010973411;
        Tue, 09 Feb 2016 01:42:53 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.182.78])
        by smtp.gmail.com with ESMTPSA id 17sm22319499pfp.96.2016.02.09.01.42.49
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 01:42:52 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 15:12:33 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: wlan-ng: Merge two lines into one
Date: Tue,  9 Feb 2016 15:12:32 +0530
Message-Id: <1455010952-24672-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>

The last two lines of these functions are compressed into one.
Also removed the variable ret as it is now not used.
Found using coccinelle:
@@
expression e, ret;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
* Improve subject line.
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


