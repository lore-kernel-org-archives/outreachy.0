X-GM-THRID: 6254179536245620736
X-Received: by 10.66.124.200 with SMTP id mk8mr32255526pab.27.1456250201661;
        Tue, 23 Feb 2016 09:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.5 with SMTP id s5ls2408588qgs.19.gmail; Tue, 23 Feb
 2016 09:56:40 -0800 (PST)
X-Received: by 10.140.242.214 with SMTP id n205mr5866140qhc.14.1456250200936;
        Tue, 23 Feb 2016 09:56:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id yd9si3965396pab.1.2016.02.23.09.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 09:56:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ho8so117080951pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 09:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1MQjAm8Vn0Wl0Tb8cSA+0HQApKELMi9Apei33dl0OEc=;
        b=eSz8gfmmq3dSfGeS3U3+2j4T7FMV/ZH5gE+0wEkt5NNR376brLttU2XXWE2sATBpSE
         +3a9ct1vY4VS/7hu/OvbqOobeTR1HYwwTxsImt+r2gSxCwhvaOv6xzQOXUWITtZTbTpd
         /mZq0GTx/W6QvkFedQyOVqSEoeMXLx0cclCmAf61+SX6IeQw6x9xW1QSIJaVEk9RAK/3
         XCLjmX9zCh2nvpY4sJzBbZbrHHm35ghnIuczJPs55Uxpsiunsvb9c2zkpIwHNpRHfZBb
         qwol8IfZ5kRsqaWzxQ+9P8rfLv4dRGnURIW87+lVayPm5eJkH2BXV8owiahiMAxtUQ76
         UOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=1MQjAm8Vn0Wl0Tb8cSA+0HQApKELMi9Apei33dl0OEc=;
        b=Q9eqOcgfVV7Ol0Lz8A0Zxll8sTxshSyAn2C7x6mvKtsyPc7iBzSUS2UmJJULLC3Tc5
         Lh3vs+pUrjiEG2fyMmhMJu5AJat8BTRFMcg8i3ElA4V/zDkPlHEPDMJZCXiaRcIpO0Sf
         sin2ZL64YRfDEPufvJlxKA+x9scgpw5FypP/f2Vh8PjmLqJzRt/UEJxkxcihQLZw6Td0
         y+WHL48c8BmRaSmGxfBsnPk5TvoYIHDymFv3Bn41/9O2mRiy1EdXHkOBEyAEHPMdvYD0
         Q5RekwiHe9nF8EeTZU1CSJCB6l+e9gNIKYGSPEIgawf2ENiRTTk78dNxA5kPwC6cN8XY
         N7GQ==
X-Gm-Message-State: AG10YOSQUk5IktV33dWfQ3L+W40ur7va1j6sncHRSj7O1w3s+ZiRNDJzi+ohwKVQE4rrzg==
X-Received: by 10.66.222.101 with SMTP id ql5mr48362359pac.144.1456250200729;
        Tue, 23 Feb 2016 09:56:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.207])
        by smtp.gmail.com with ESMTPSA id d22sm45667920pfj.32.2016.02.23.09.56.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 09:56:40 -0800 (PST)
Date: Tue, 23 Feb 2016 15:26:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: Remove trailing whitespace.
Message-ID: <20160223095645.GA3190@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove trailing whitespace.This error is detected by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
*Changes in v2 is :
 Fix unneeded space in front of the else

 drivers/staging/sm750fb/ddk750_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 33e092e..b3c3791 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
 	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
-	if (enable) 
+	if (enable)
 		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	 else 
+	else
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
 
 	setCurrentGate(gate);
-- 
1.8.3.4


