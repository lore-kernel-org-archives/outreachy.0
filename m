X-GM-THRID: 6341087993048072192
X-Received: by 10.13.255.69 with SMTP id p66mr1786801ywf.118.1476526380926;
        Sat, 15 Oct 2016 03:13:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls9721083ota.19.gmail; Sat, 15 Oct
 2016 03:13:00 -0700 (PDT)
X-Received: by 10.129.78.77 with SMTP id c74mr4282457ywb.50.1476526380556;
        Sat, 15 Oct 2016 03:13:00 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f3si297907pfa.0.2016.10.15.03.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 03:13:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r16so8945034pfg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 03:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Q1GBcJy4/PRZsMEq7PyMnL4Xs3y7HRKzQcpL8Mljf00=;
        b=WAZwT8zYMZANk9+TaZ9Z+raBdCb4sSa+ioiKks/2Opw55WD7Z7LzfsrJjGpZ/xNt6r
         HR8C3BgtHMaXcOfHuIYPVzSaYzS4/XoZ6WGkz749DPFI0PcefjzGzEpqQZ9ZufHGwIO/
         I94Ppl8xuL0HUI/cf7EYz4yhFok0Wj71QqX5cpU3K5H86NPBZM7ORx0rJH4SL5OkUnpV
         s2LcBNOliT4GjAxPS3UrUbU1RA1SaTSpLocGZNeD07C3QN3hGPh6hOiS9gBjbI6VyIcv
         haBxeXMBANS8aU0j9LQrCM5fQJj/0Q3SZltoDIXOzJxT/lMjYyF0EcQQ/3q4FaicTPbj
         ikDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q1GBcJy4/PRZsMEq7PyMnL4Xs3y7HRKzQcpL8Mljf00=;
        b=XnvAGcRbiAcoIKyFAWoEnr/kFbyjbp6Sz8p73TgZTBqgGSi8SIW17CUvLQFIHTI2zF
         NXR8X5D+iEFIbgwnCurcWWDDQ4kLelswuG6BXKaB3tk+su36wOmFzI90dewb52//Lhmq
         +auFts1bI3AwHWWbFkp5Sfwijszn1bYKwiorfU5Qtu6KcFJCg486KS/fBJlL06dAzOTL
         h1ckAQxLDb/hlcrC7gB9XW07+USE0wZtmHZJR6nwpyhUEQNoTVOMF8z3JX13INP/UNeB
         It4Ru6l/d5RQH3yP8j9LMBH/cHFNqgOHi651XD44qyCFdQM8zEPmJhPNeSlJc8qpqYip
         hJBg==
X-Gm-Message-State: AA6/9Rl6xx4wVKNA8pshvTfb4sa6FFB+OdNkvEr71Vph87TmmTB2lpzah6xNrlJ9lnGPrg==
X-Received: by 10.98.94.7 with SMTP id s7mr24454719pfb.37.1476526380374;
        Sat, 15 Oct 2016 03:13:00 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.243.11.213])
        by smtp.gmail.com with ESMTPSA id w70sm33709201pfa.89.2016.10.15.03.12.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 03:12:59 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: Varsha Rao <rvarsha016@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Removes unused macros.
Date: Fri, 14 Oct 2016 04:22:06 +0530
Message-Id: <1476399126-20282-1-git-send-email-rvarsha016@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes the macros BBvClearFOE and BBvSetFOE. As they are not
used anywhere else.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 Changes in v2:
  -Both the macros are removed completely instead of solving camelcase issue.

 drivers/staging/vt6655/baseband.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 412537e..8a567c9 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -55,12 +55,6 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-#define BBvClearFOE(dwIoBase)				\
-	BBbWriteEmbedded(dwIoBase, 0xB1, 0)
-
-#define BBvSetFOE(dwIoBase)				\
-	BBbWriteEmbedded(dwIoBase, 0xB1, 0x0C)
-
 unsigned int
 BBuGetFrameTime(
 	unsigned char byPreambleType,
-- 
2.7.4


