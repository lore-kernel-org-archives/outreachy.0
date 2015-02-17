X-GM-THRID: 231908311040
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,72de6bff0b87d0f9,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.124.198 with SMTP id mk6mr26338865pab.22.1424211741891;
        Tue, 17 Feb 2015 14:22:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.134 with SMTP id au6ls1690182igc.34.canary; Tue, 17 Feb
 2015 14:22:21 -0800 (PST)
X-Received: by 10.70.109.129 with SMTP id hs1mr21399005pdb.6.1424211741658;
        Tue, 17 Feb 2015 14:22:21 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com. [209.85.192.172])
        by gmr-mx.google.com with ESMTPS id bo1si2303993pbc.0.2015.02.17.14.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 14:22:21 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.172 as permitted sender) client-ip=209.85.192.172;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.172 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-f172.google.com with SMTP id p10so46864987pdj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 14:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Hz26FEnW2xNR3fKsAI3BEJkBozfZ0yQZKzswhe2hteI=;
        b=f3XTnLRxjIase/X0puG/UWJrz4VuENHpVr9vApBLOLJnhUlQ5Lwd2TPP6pcek1PlHn
         oXvryP/EI1j7tqVhKCFiHl2oJL+XGJpu7ShSnsfcWSHok1g/nfxq0isARXfwOOZiixDT
         GtJ4EX0SLNRDYDt7E1GSfUmU0eVFXlvn5RLwgE7sok/Nzu9NveUu7wcDnh2yc9qaQN8Y
         +3uetpHVExmv6w1YibsM94cTy5T0Y7WWpP7MtcbAsLKj6bas3hnGK7BKY6CNx/SpB4Zo
         iYW9QZkknhEbDRHtYddTxt6Hv70RiXnL6N3iyAma1p2v0D3ZwqH+buBqNm59fITH+9Aa
         bfEQ==
X-Received: by 10.68.195.65 with SMTP id ic1mr51845753pbc.109.1424211741539;
        Tue, 17 Feb 2015 14:22:21 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id hd4sm18491568pbc.86.2015.02.17.14.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 14:22:20 -0800 (PST)
Date: Wed, 18 Feb 2015 03:52:07 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: Convert comment from C99 style to C89 style
Message-ID: <20150217222207.GA4397@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes checkpatch.pl error in debug.c
ERROR: do not use C99 // comments 

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 4f23e3f..534a9b6 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -22,7 +22,7 @@ void i2o_report_status(const char *severity, const char *str,
 	u16 detailed_status = msg[4] & 0xFFFF;
 
 	if (cmd == I2O_CMD_UTIL_EVT_REGISTER)
-		return;		// No status in this reply
+		return;		/* No status in this reply */
 
 	printk("%s%s: ", severity, str);
 
-- 
1.9.1


