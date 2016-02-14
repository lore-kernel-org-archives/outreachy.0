X-GM-THRID: 6250914240431915008
X-Received: by 10.182.56.233 with SMTP id d9mr8872845obq.2.1455404386803;
        Sat, 13 Feb 2016 14:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls2071976qgd.16.gmail; Sat, 13 Feb
 2016 14:59:46 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr9213996ywd.51.1455404386103;
        Sat, 13 Feb 2016 14:59:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id w126si1405476ywe.6.2016.02.13.14.59.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:59:46 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id s68so44074373qkh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=R5HQB38QqyHUVYthjDd0XzOjMKtblGrDQviYgk041RM=;
        b=zD6r6nqc5iWuOVMEcnyZxtNC64SWo/DGMUqPLk6qJH8UrV9smwQbbojn66Z9ie2UFn
         /QS/Nvw/Qaqhl0WnHTRejmrho609LcSPP/4tJb7247m7LjNr9gw+9O14AMKvyYhig8Yf
         nY0R/81oWxzHpnHDlNA9FfiUrI21X2WmNE3bAGkeXLF4+Q4UQGqjPRaaJysC4cdqhLrf
         mlGvZ9PvUWBOl/s78Oel/0xxoV8qK+u/2i36iUmExQhUKlEy8aMSysaS3maXNHWMFA5Q
         ToTo4rMe60Gsg4vGV0upndfbu/6oRdGrBFBZbHN033pStD5pfK3eH9ba40tenqhf9XHR
         Rytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=R5HQB38QqyHUVYthjDd0XzOjMKtblGrDQviYgk041RM=;
        b=cnOd8IXyhkwwNReDX3BTq0IJyiqzZxR5raS+uzdk8yc74wYqwLhhnM0ut5YfqBNlcI
         moO/IIiNE0561WC2NznCeyK99nXaSbntugA/sch+eSLLWhFoCCjN4cU3EoH0HiQyduAz
         rLrb5LWW7ww+2n8077BUM7+3rJNNY4ZFKTz7I8xQLpCsH6eXbs/vQEUHAOaATgBVcQnI
         BtiZqy+BEI6XXIOgMTOCKEDfqdCmaykL+clDnmuSyZIL14mU4t3jjBjll1KP37/u6YLo
         zNQtPDfy8mbTldNbYTQuF7Xym1zrvYjKuw6k3WSa7DCb+U0mSDCZk7YSDA8wnppXA0Kp
         iciw==
X-Gm-Message-State: AG10YOQ4Rg5Tw/jmZLdmgEXu73qKkERtWejTuKvIdOYLGGYWeqJW7O7P4nU45LNwDTLv+g==
X-Received: by 10.55.74.14 with SMTP id x14mr11204366qka.70.1455404385928;
        Sat, 13 Feb 2016 14:59:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id t103sm8261281qgd.37.2016.02.13.14.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:59:45 -0800 (PST)
Date: Sat, 13 Feb 2016 22:59:06 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Fix indentation of if...else statements
Message-ID: <20160214035906.GA25208@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch clears the checkpatch warning about suspect code indent for
conditional statements in the file.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 2b1cb9a..01850bf 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -149,22 +149,21 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 		/* Set up GPIO for software I2C to program DVI chip in the
 		   Xilinx SP605 board, in order to have video signal.
 		 */
-	sm750_sw_i2c_init(0, 1);
+		sm750_sw_i2c_init(0, 1);
 
-
-	/* Customer may NOT use CH7301 DVI chip, which has to be
-	   initialized differently.
-	*/
-	if (sm750_sw_i2c_read_reg(0xec, 0x4a) == 0x95) {
+		/* Customer may NOT use CH7301 DVI chip, which has to be
+		initialized differently.
+		*/
+		if (sm750_sw_i2c_read_reg(0xec, 0x4a) == 0x95) {
 		/* The following register values for CH7301 are from
 		   Chrontel app note and our experiment.
 		*/
 			pr_info("yes,CH7301 DVI chip found\n");
-		sm750_sw_i2c_write_reg(0xec, 0x1d, 0x16);
-		sm750_sw_i2c_write_reg(0xec, 0x21, 0x9);
-		sm750_sw_i2c_write_reg(0xec, 0x49, 0xC0);
+			sm750_sw_i2c_write_reg(0xec, 0x1d, 0x16);
+			sm750_sw_i2c_write_reg(0xec, 0x21, 0x9);
+			sm750_sw_i2c_write_reg(0xec, 0x49, 0xC0);
 			pr_info("okay,CH7301 DVI chip setup done\n");
-	}
+		}
 	}
 
 	/* init 2d engine */
-- 
2.5.0


