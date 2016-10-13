X-GM-THRID: 6341087993048072192
X-Received: by 10.107.19.211 with SMTP id 80mr2388005iot.90.1476399598959;
        Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls6573580otb.48.gmail; Thu, 13 Oct
 2016 15:59:58 -0700 (PDT)
X-Received: by 10.31.171.201 with SMTP id u192mr2475972vke.12.1476399598644;
        Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 203si2787605pfw.0.2016.10.13.15.59.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r16so5907838pfg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=V1iB5LT4aBDKqOeRcHWHfMx5u4oi8raNmMMlf6SiUi8=;
        b=uJ1wl3h6KM1t2odkJ1tzCkWI+Adb3nkj2a6hg/GHZ+mLgFP8oArOGWAo05XAMBfO4n
         gYZCB70l7+VT4FpaaSIpvv7g9/odBt4xHTZWl7DphNdZqHk1yyTXd+P2pp+wAYoYbJbL
         L/5Gi64dtpmM03j0mHreXdEC9QJeIQsLX/IOX6S43ml/1wvgpiiztHrMy9D7MQ2QlsDu
         wUQJYPIDCigFyevJse6Nl5JIffCd2RDEnpAz+6xWpQ5h7MnxyULot1QCHdYqef7NI8e9
         BEE86FZxuhWi+jec1PAZxUtmfmmuqJCZ4tiOxrxl3tmnb6SbL2OnvkGDpg3YQjvffseX
         wquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=V1iB5LT4aBDKqOeRcHWHfMx5u4oi8raNmMMlf6SiUi8=;
        b=VH+nDlMlvnKmNGDLvlt8qZ1vqZ/99ejjlSX0MI8Q0UGPFHNiPFQj0zgJp25kwovJYU
         fDHi8JbQMwJ+8gRkd4E9KLX9Xjq1WJG/KUN0x6seLkPDXnwGgCWPE+2ma9VZpRxCiq6Z
         Axicz4PAyd4GTtkSOH34s0qi8q8WBySAq91jO/cxv9u/4iAVO7dbe2Aufj55VeFR3mHH
         y+OjXtkfFMyjzX0Rzq9LuCEZuL1vnDY8+FMOL5Gx1AXWGgNDOshCJN9un+BMpC3l6+yr
         4U0arISb9tR+dgQPEdNoPRj1Kjdf1XDmVGgQ010g5J693HNGHiFENBLB84vrk5d/2qwy
         J5Qw==
X-Gm-Message-State: AA6/9RnVtc50zGCrdqobFnwlyp5AgBPgGFYwQihNGZi/jhIQ4BzdDmUnuZxlHlUGQ+XzTw==
X-Received: by 10.98.80.130 with SMTP id g2mr13381624pfj.179.1476399598454;
        Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.249.209.2])
        by smtp.gmail.com with ESMTPSA id x16sm21674518pff.39.2016.10.13.15.59.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 15:59:58 -0700 (PDT)
Date: Fri, 14 Oct 2016 04:29:54 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: rvarsha016@gmail.com
Subject: [PATCH v2] Staging: vt6655: Removes unused macros.
Message-ID: <20161013225954.GA20687@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch removes the macros BBvClearFOE and BBvSetFOE. As they are not
used anywhere else.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 Changes in v2:
  -Instead of solving camelcase issue, both the macros are removed
   completely.
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


