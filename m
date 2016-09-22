X-GM-THRID: 6332957936966434816
X-Received: by 10.67.5.194 with SMTP id co2mr8653256pad.131.1474506672208;
        Wed, 21 Sep 2016 18:11:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.7 with SMTP id 7ls4898302ote.37.gmail; Wed, 21 Sep 2016
 18:11:11 -0700 (PDT)
X-Received: by 10.31.61.131 with SMTP id k125mr230096vka.41.1474506671870;
        Wed, 21 Sep 2016 18:11:11 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e66si206085pfk.2.2016.09.21.18.11.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 18:11:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so3044082pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 18:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Wt8KBMa5+cMunjEvwqwxyLVLLx/YtcMUrG6NiE2zEr4=;
        b=yHWxGtF+LtwaNPNraXD2bjZK7/7eE2G0SBszgAt2cx7cNdD19lh5VoF/bDDNdq1lMg
         zX3G3aSqaM+sDvY+rUJ1cEPsEzC377g2n3R2MdoiEK6zo9nH/ffefRYD9/HU/ATlo9g6
         8Lyo5muOp47vNS0+U0u6PYY16oM6tacv+Em4+zL11LQMYhQeGYGX5hZ1H8fA2zNxxoBT
         SQPHoMwT5P9h42mZQNIK/Is6WEkh0rBiJp59AXabMumGCaILsv7ryVGGsQaiKrN3vSKL
         W6SsrI8fIg+fH3xeIdWD7JYrZbsGRRqMTbZarZrwvzypKtHBiw2A2/fNB/RVO4hW9imv
         rpmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Wt8KBMa5+cMunjEvwqwxyLVLLx/YtcMUrG6NiE2zEr4=;
        b=b6q54MJdQcn4dXjJIjVHHEtSIlOR+2s9VlC7iMqGZj7rZa2+N/rr+v9THFLEdUTG4b
         iu2KpEAxzECkSU59YGmOnuTxeGxoppr8K58QQPX5BMHDf74tS9eXmthrVSlWe6pcieYx
         nx09yJcFJb6nKT79tpkvDFXhR0qNZNFsxxZl2NZMkG30wmBHzLkznSPIULCYKI1KAV8Z
         ZoBMOuae8mKmk+RWKiGf08Ruhv7vRWPz88HJMxTSXcG5oeDNvqV+DrScKYQxp5+Eoaqh
         OH9BRc2FFgwGFYlLckxOpKIdZbGZBjBPLhwHhbSHR+K0due7u4SV/XBiW8lYvztNNCj5
         AHNA==
X-Gm-Message-State: AE9vXwOP0gjpYKR8m0FXa+O4aj93o8cr1trLw2wc78qbwuMsP0QDAOLVgb11SjQqQ4sodQ==
X-Received: by 10.98.26.139 with SMTP id a133mr56241025pfa.167.1474506671672;
        Wed, 21 Sep 2016 18:11:11 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:3c2c:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id mk9sm49261939pab.1.2016.09.21.18.11.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 18:11:11 -0700 (PDT)
Date: Wed, 21 Sep 2016 18:10:45 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Alison Schofield <amsfield22@gmail.com>, daniel.baluta@intel.com
Cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org
Subject: [PATCH] staging: dgnc: Break up long comment
Message-ID: <20160922011045.GA3636@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch splits a long comment up into two lines; error found by checkpatch

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index e794056..cb63351 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -996,7 +996,8 @@ static irqreturn_t neo_intr(int irq, void *voidbrd)
 
  case UART_17158_TXRDY:
  /*
- * TXRDY interrupt clears after reading ISR register for the UART channel.
+ * TXRDY interrupt clears after reading
+ * ISR register for the UART channel.
  */
 
  /*
-- 
2.1.4

