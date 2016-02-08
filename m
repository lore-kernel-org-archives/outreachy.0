X-GM-THRID: 6249004522009526272
X-Received: by 10.129.32.68 with SMTP id g65mr27840805ywg.3.1454959745343;
        Mon, 08 Feb 2016 11:29:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.213 with SMTP id j204ls1562271ioj.42.gmail; Mon, 08 Feb
 2016 11:29:04 -0800 (PST)
X-Received: by 10.66.102.68 with SMTP id fm4mr29411096pab.3.1454959744783;
        Mon, 08 Feb 2016 11:29:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id tn7si4617084pac.1.2016.02.08.11.29.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2016 11:29:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id c10so47458830pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Feb 2016 11:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zW1dysQU616Vec7JDgWZGdLy69i5QA8Bi0IR+h4jGxk=;
        b=rG0BR5yD9kHSL58gnUEK1tsURp4N+55EbJVa4NfQ6o+CKclG+MQMvOedQc0+MSS0hb
         Ap3uY4Oqdk4tjnKTL1rCgnwatr06izgFHL4/4vhUv5camUzVfMM8uLTOFsaPXINWcUaV
         xmSYTAVXRnFC3363Gu9sbGR19bAJca8QROjKKW9gEdIXJHrN3KjaxSPB72lc2049lgr9
         biiHCuxnTEKu3oB83PsoQoqqqeOT3+YyKdLl9OKMhFsCSKFErhU4pUUaDz9l+BwBYXay
         y554qbKVnKA0ylL1ki4N4EgLLXcF9WPdbxi+D1YtJ/rbEuePJPjrT0EQhVBXoIA6ITzB
         CMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zW1dysQU616Vec7JDgWZGdLy69i5QA8Bi0IR+h4jGxk=;
        b=gkkF3FEy43oknsHT6j4TC+EwyV9TyfzVrYqT+iCX+UnNWID6d1DfJfp+mU8XkL3+MT
         73hLChByXv9AgT/lhiH7LMFIUEGaxMQljNAQTC69opEOHnwZtBhHsr0kLekQsfqjChWT
         wPyWKvIRECUpLvPm5l6G+xo0WYh85All1kPMN3f8v89fVr3XCZm7i9WVqLczo0XkEWL9
         g9HtUwTpVex8O/97ZM8oI7FlT7k8U91mr4RZYzwIEtZySfS9hRFjdL3Ru4z328llFdKu
         K0XV3JMgkCS+iWe9eriQbow3TTMOpYYoSDDm/yiiBBOlK4BVEtjNOyhF+Gb7ATqpDaRN
         JUMA==
X-Gm-Message-State: AG10YOS7hC3sACnpoNcXM16Ss9bStzbarWsLxWlNpVEyFIlKkYeXALkq7f7gKVNNc+lSJw==
X-Received: by 10.98.17.208 with SMTP id 77mr44096025pfr.37.1454959744656;
        Mon, 08 Feb 2016 11:29:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.157.246])
        by smtp.gmail.com with ESMTPSA id v86sm45153670pfa.83.2016.02.08.11.28.59
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 08 Feb 2016 11:29:03 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 00:58:53 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging:wlan-ng:Merged two lines into one
Date: Tue,  9 Feb 2016 00:58:51 +0530
Message-Id: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

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


