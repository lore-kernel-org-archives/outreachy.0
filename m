X-GM-THRID: 6253655179876368384
X-Received: by 10.28.45.82 with SMTP id t79mr495194wmt.2.1456042560667;
        Sun, 21 Feb 2016 00:16:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.195 with SMTP id u186ls223333wmd.6.gmail; Sun, 21 Feb
 2016 00:16:00 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr488822wme.0.1456042560063;
        Sun, 21 Feb 2016 00:16:00 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id w10si682386wmw.3.2016.02.21.00.16.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 00:16:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id g62so119334515wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 00:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8bijmGHBi/eVuHqx7sFOarWe1Wl9TwCokWCLEqalCpU=;
        b=RhCdZsOq5ksNlTlvd5q0O2+9hP60ofUMd+5a9RoQmhEh5KzPr16TeitX7iNXpVydqf
         jqjwLPTO6HbYj9k28UrqfuzAWz7CBwyYAZjMGQxbj1nliMHF5h055ev+gY7GJY5zXWnp
         cPk6F7YzbEV5Ovy68vHP1BI18mt2dF2BlFjVO3A2a3Az/UWtQGXQpPhlTmngPhSzWwIR
         hIVEXaB2u3l/sZpelZxd/BVO1MIOXhdGVJyBQyXzp/Iho5wRLGOU/m4b1U4bmWt1mEZi
         y02NjzOcmRC36A0PnG1Cy5KFhDNiJoYCmg0pIeyK5afWz4R5g/H+4BoRJjbxAB2JAlC6
         /r9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8bijmGHBi/eVuHqx7sFOarWe1Wl9TwCokWCLEqalCpU=;
        b=RvnnS5QvqJY6t+sS/nxE84i7gb0eA/rWaLlHpc7WuUzQCSuT4H8NA4GwqxYD/etmFC
         1n+ni08wzrXUHt5L/XJnJwnhvts3crCLfPIfjEmFMnHLWwzyMlrj+prisXdd6ZeBNjni
         8XW9YWivNDM6rl57+/1W6wB+kP1yGGAUcIBxTd6lGAsAUS68pC1W2EBEke1VetdSuj0q
         xv4g36ftnQQ3ZBW2dOiJz5ZeVjGkYGBZnWm1GAfTrx1lBScfUD0hZ7nNdxpTBU8+kl5l
         iiNKZxWkI9gf1Yvlq41lTu2H4iJJTHSXLFPW5/YWPY3+ak2dNbzC2Hr1VsIukJXXOJu8
         uw0A==
X-Gm-Message-State: AG10YOQCUjfvWIy/x1tjw204tNqYGI/4ywPyycompO6KgQ3RxEoehKhCEfDBJn5hd7s3Jg==
X-Received: by 10.194.7.195 with SMTP id l3mr21267341wja.43.1456042559976;
        Sun, 21 Feb 2016 00:15:59 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([213.0.118.98])
        by smtp.gmail.com with ESMTPSA id av3sm18948804wjc.44.2016.02.21.00.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 00:15:59 -0800 (PST)
Date: Sun, 21 Feb 2016 09:15:56 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Avoid the use of BUG_ON
Message-ID: <20160221081553.GA4327@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prevent a kernel panic by avoiding the use of the BUG_ON macro and using the
WARN_ON macro instead. Checkpatch detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..3b5b94f 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -641,11 +641,21 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 			nvec_msg_free(nvec, nvec->rx);
 			nvec->state = 3;
 			nvec_tx_set(nvec);
-			BUG_ON(nvec->tx->size < 1);
+			if (WARN_ON(nvec->tx->size < 1)) {
+				dev_err(nvec->dev,
+					"Invalid TX size\n");
+				nvec->state = 0;
+				break;
+			}
 			to_send = nvec->tx->data[0];
 			nvec->tx->pos = 1;
 		} else if (status == (I2C_SL_IRQ)) {
-			BUG_ON(nvec->rx == NULL);
+			if (WARN_ON(!nvec->rx)) {
+				dev_err(nvec->dev,
+					"Invalid RX\n");
+				nvec->state = 0;
+				break;
+			}
 			nvec->rx->data[1] = received;
 			nvec->rx->pos = 2;
 			nvec->state = 4;
-- 
2.7.0


