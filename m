X-GM-THRID: 6254131672223055872
X-Received: by 10.28.129.210 with SMTP id c201mr1228528wmd.1.1456153502234;
        Mon, 22 Feb 2016 07:05:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.134 with SMTP id j6ls1663069qgj.88.gmail; Mon, 22 Feb
 2016 07:05:00 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr27424395vke.10.1456153500142;
        Mon, 22 Feb 2016 07:05:00 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si3528197pfa.2.2016.02.22.07.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 07:05:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so93979878pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 07:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mJY7fOILSnFwALIQJzJo4nxlinW5vUYGoBn1JinvnAA=;
        b=yHNe36qatTmbgM+Y8Nh22MmYt6eLcKUJEhnHad7A8zYwTm0HAzzj4+K1nUlsaurp3p
         RjClUAgRblwvPe/E5n2tnnUdK5zVJQpyOw5DDVpD0Bu3RtxSI/49E+X1S7ltAhkTWeKi
         d1fP2Ljh2JPHGGi5o+6tClyPg0GUqFbbRaLj84boibdo4xnTP9/KFWRnI72usIEcEPkN
         a8wiKirJf/7Kbonr6FrwuRq9eVNW/fpsJcfsMP/JFjX9DkAYwEDN1W9EOONtXgQ9Vwvo
         /zqPY5/MTSApDFcqabptCDhMQoI0xbOchwf9X6aZ+3bur58h7fHzUZX3nhQ1RNlFDVrJ
         mgvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=mJY7fOILSnFwALIQJzJo4nxlinW5vUYGoBn1JinvnAA=;
        b=iUq/smeBj1e8M3oHLpGByPqqgx8GrK3yTdBHvlo3FaMvGT7aQ/oHC2RLnT1SRcywJB
         T+SPf+jvdrcOxAnoLxE4YeiFGkqMLBdqv1IKiO8X4WpFaPtDwn8437xfYYdBUkf2HTFp
         kCwx3Wnw5gOtDTFrLTMSRLQjuNXpCYKH5lBEk6pgEtnnPg7U43S2YH84Oeii/4F+hvi9
         tj+5OtU9JT2U+4Yw6zDuexYSa+K3OLB8Oi66YJyQsf+Q3mYT5gSte/noCv1CGzuatMSK
         JrsanNZZIHXMDLGt1n24/WPIjuTRhAxqgxVU74YCV6YjtgFqpt/UHhjzImj0iHllaQ0D
         8xTQ==
X-Gm-Message-State: AG10YOQC7tmTYVgm3rlQY3fTZtLiUxZDYF1NYwMQUT5dJSGHle/VeFasZk49SsoXSEgywg==
X-Received: by 10.98.18.8 with SMTP id a8mr38856142pfj.41.1456153499943;
        Mon, 22 Feb 2016 07:04:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id qj8sm37730917pac.40.2016.02.22.07.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 07:04:59 -0800 (PST)
Date: Mon, 22 Feb 2016 20:34:31 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Remove unnecessary test from if
 condition
Message-ID: <20160222150431.GA3811@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary test condition on dev->irq which has already been
tested and returns an error code if it's value is 0.
Subsequently, corrected indentation of code after removing if
condition. Also, removed the else statement since that won't be
executed.

This also fixes the following smatch warning:
drivers/staging/comedi/drivers/ni_mio_common.c:2473 ni_ai_cmd() warn:
we tested 'dev->irq' before and it was 'true'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 82 ++++++++++++--------------
 1 file changed, 37 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 1c2abb3..bc23ef7 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2296,7 +2296,7 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	int interrupt_a_enable = 0;
 	unsigned ai_trig;
 
-	if (dev->irq == 0) {
+	if (!dev->irq) {
 		dev_err(dev->class_dev, "cannot run command without an irq\n");
 		return -EIO;
 	}
@@ -2470,63 +2470,55 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		break;
 	}
 
-	if (dev->irq) {
-		/* interrupt on FIFO, errors, SC_TC */
-		interrupt_a_enable |= NISTC_INTA_ENA_AI_ERR |
-				      NISTC_INTA_ENA_AI_SC_TC;
+	/* interrupt on FIFO, errors, SC_TC */
+	interrupt_a_enable |= NISTC_INTA_ENA_AI_ERR | NISTC_INTA_ENA_AI_SC_TC;
 
 #ifndef PCIDMA
-		interrupt_a_enable |= NISTC_INTA_ENA_AI_FIFO;
+	interrupt_a_enable |= NISTC_INTA_ENA_AI_FIFO;
 #endif
 
-		if ((cmd->flags & CMDF_WAKE_EOS) ||
-		    (devpriv->ai_cmd2 & NISTC_AI_CMD2_END_ON_EOS)) {
-			/* wake on end-of-scan */
-			devpriv->aimode = AIMODE_SCAN;
-		} else {
-			devpriv->aimode = AIMODE_HALF_FULL;
-		}
+	if ((cmd->flags & CMDF_WAKE_EOS) ||
+	    (devpriv->ai_cmd2 & NISTC_AI_CMD2_END_ON_EOS)) {
+		/* wake on end-of-scan */
+		devpriv->aimode = AIMODE_SCAN;
+	} else {
+		devpriv->aimode = AIMODE_HALF_FULL;
+	}
 
-		switch (devpriv->aimode) {
-		case AIMODE_HALF_FULL:
-			/*generate FIFO interrupts and DMA requests on half-full */
+	switch (devpriv->aimode) {
+	case AIMODE_HALF_FULL:
+		/*generate FIFO interrupts and DMA requests on half-full */
 #ifdef PCIDMA
-			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF_E,
-				      NISTC_AI_MODE3_REG);
+		ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF_E,
+			      NISTC_AI_MODE3_REG);
 #else
-			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
-				      NISTC_AI_MODE3_REG);
+		ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
+			      NISTC_AI_MODE3_REG);
 #endif
-			break;
-		case AIMODE_SAMPLE:
-			/*generate FIFO interrupts on non-empty */
-			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
-				      NISTC_AI_MODE3_REG);
-			break;
-		case AIMODE_SCAN:
+		break;
+	case AIMODE_SAMPLE:
+		/*generate FIFO interrupts on non-empty */
+		ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
+			      NISTC_AI_MODE3_REG);
+		break;
+	case AIMODE_SCAN:
 #ifdef PCIDMA
-			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
-				      NISTC_AI_MODE3_REG);
+		ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
+			      NISTC_AI_MODE3_REG);
 #else
-			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
-				      NISTC_AI_MODE3_REG);
+		ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
+			      NISTC_AI_MODE3_REG);
 #endif
-			interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;
-			break;
-		default:
-			break;
-		}
-
-		/* clear interrupts */
-		ni_stc_writew(dev, NISTC_INTA_ACK_AI_ALL, NISTC_INTA_ACK_REG);
+		interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;
+		break;
+	default:
+		break;
+	}
 
-		ni_set_bits(dev, NISTC_INTA_ENA_REG, interrupt_a_enable, 1);
-	} else {
-		/* interrupt on nothing */
-		ni_set_bits(dev, NISTC_INTA_ENA_REG, ~0, 0);
+	/* clear interrupts */
+	ni_stc_writew(dev, NISTC_INTA_ACK_AI_ALL, NISTC_INTA_ACK_REG);
 
-		/* XXX start polling if necessary */
-	}
+	ni_set_bits(dev, NISTC_INTA_ENA_REG, interrupt_a_enable, 1);
 
 	/* end configuration */
 	ni_stc_writew(dev, NISTC_RESET_AI_CFG_END, NISTC_RESET_REG);
-- 
1.9.1


