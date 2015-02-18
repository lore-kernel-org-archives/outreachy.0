X-GM-THRID: 231908311040
X-Received: by 10.42.96.67 with SMTP id i3mr1397225icn.7.1424287276863;
        Wed, 18 Feb 2015 11:21:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.139 with SMTP id f11ls216326qgf.95.gmail; Wed, 18 Feb
 2015 11:21:16 -0800 (PST)
X-Received: by 10.236.207.230 with SMTP id n66mr847226yho.30.1424287276704;
        Wed, 18 Feb 2015 11:21:16 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com. [209.85.192.180])
        by gmr-mx.google.com with ESMTPS id ki8si2625561pdb.1.2015.02.18.11.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 11:21:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) client-ip=209.85.192.180;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f180.google.com with SMTP id fl12so3222150pdb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 11:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=aAISFTS3Vp9OwDvEcekVxvjOFysJWp0GTqfopFky5JE=;
        b=Shma8njtRXU3V6MGu4tRKZnKF3hH3ze+gSazsS47zBrFAanUtiD1a55S92DYp1Chd5
         VRfJEY2oe0ks/NZ/ODjhdOGPJempwXk5NbOWGpz6ZRZCd7tZ9H2y6OMxlys9xDyzFA5z
         ppzsP15RxPon/icM2EzZ86C16ocYYDH32e3q6otIfOzHRNrF+fLwEebxy2pfE/10feQi
         /22SCtfRvneM8MgSld6M4vDEHpKBxPJmOu5EWTCoGeMco+p+clN+hw9BqlRyLfWDM/77
         b+DmiMd7BXZbV5vIwUt4NoqgYHJfBYeb03rU1vOhPadRFLE9SfHVwf2n0HX3X28jolx4
         bLeA==
X-Received: by 10.66.66.133 with SMTP id f5mr1549507pat.20.1424287276239;
        Wed, 18 Feb 2015 11:21:16 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id xx7sm21687086pab.21.2015.02.18.11.21.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 11:21:15 -0800 (PST)
Date: Thu, 19 Feb 2015 00:51:00 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: Convert comment from C99 style to C89 style
Message-ID: <20150218192100.GA18100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

C99 style comment // should not be used as per coding guidelines.
Usage of C99 style comment // was resulting in checkpatch.pl error.
Hence replaced it with block comment /* */ 

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/debug.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 3e959a4..c8d690c 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -22,17 +22,17 @@ void i2o_report_status(const char *severity, const char *str,
 	u16 detailed_status = msg[4] & 0xFFFF;
 
 	if (cmd == I2O_CMD_UTIL_EVT_REGISTER)
-		return;		// No status in this reply
+		return;		/* No status in this reply */
 
 	printk("%s%s: ", severity, str);
 
-	if (cmd < 0x1F)		// Utility cmd
+	if (cmd < 0x1F)		/* Utility cmd */
 		i2o_report_util_cmd(cmd);
 
-	else if (cmd >= 0xA0 && cmd <= 0xEF)	// Executive cmd
+	else if (cmd >= 0xA0 && cmd <= 0xEF)	/* Executive cmd */
 		i2o_report_exec_cmd(cmd);
 	else
-		printk("Cmd = %0#2x, ", cmd);	// Other cmds
+		printk("Cmd = %0#2x, ", cmd);	/* Other cmds */
 
 	if (msg[0] & MSG_FAIL) {
 		i2o_report_fail_status(req_status, msg);
@@ -156,14 +156,14 @@ static void i2o_report_common_dsc(u16 detailed_status)
 {
 	static char *COMMON_DSC[] = {
 		"SUCCESS",
-		"0x01",		// not used
+		"0x01",		/* not used */
 		"BAD_KEY",
 		"TCL_ERROR",
 		"REPLY_BUFFER_FULL",
 		"NO_SUCH_PAGE",
 		"INSUFFICIENT_RESOURCE_SOFT",
 		"INSUFFICIENT_RESOURCE_HARD",
-		"0x08",		// not used
+		"0x08",		/* not used */
 		"CHAIN_BUFFER_TOO_LARGE",
 		"UNSUPPORTED_FUNCTION",
 		"DEVICE_LOCKED",
-- 
1.9.1


