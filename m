X-GM-THRID: 6251883453427482624
X-Received: by 10.66.160.9 with SMTP id xg9mr21374568pab.38.1455630086523;
        Tue, 16 Feb 2016 05:41:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.240.233 with SMTP id wd9ls241583obc.66.gmail; Tue, 16 Feb
 2016 05:41:25 -0800 (PST)
X-Received: by 10.182.199.70 with SMTP id ji6mr21010453obc.32.1455630085134;
        Tue, 16 Feb 2016 05:41:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id yd9si691424pab.1.2016.02.16.05.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:41:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id x65so105520966pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ui9mzyXcyNi5whngULNVjkl2gja2LnVpUEyRsNSnQvg=;
        b=WarcyQl1TGteUp9VnpmXLhFSp34nqoAOgttNGaV2NEnw8EK9Df0hxQS4UFVa2KHDp3
         LO3nd8JYLCEF5aiTvXm3Qo3G8Hufmuz2qhdpeMHX+HzeW6+iG7HjUPp/i9y4WtjRe8U6
         hqtkWjXDe+HlbLq1EXtg5aPXSKWraQrDTvtOytMdTkYrI0VKx9L7g7VSN2KF3avgAafF
         4wboN+OsTaedQb5ocucdmzQurbgrtU3MWUhC/Xsl17BJQcn8AHmiy4nps8rS1xttyjgc
         g0xDOxDusWpV+l6wT0mIZIKZqeg1lIZjbbL3itTODnW2wSgo5MRobQj5RWEnKajUF/Vl
         Yk8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ui9mzyXcyNi5whngULNVjkl2gja2LnVpUEyRsNSnQvg=;
        b=O+nOTh+nA7CTQ3GQhNLVrsj7uDaXW2owFvRm+syfKiQRoNKxsKDIYdbhrmX3cJRGcT
         QGwTJDeAW3osfNJsQybWSFSxWUy2Pl29vwWSwSuCpmQxP06b2X9V2oZvexgySOoQf/4x
         y1m5V71eovCwqRwpvlXC999qoq/lUyuDynNsVjZOUJrXTO8nil7cE01H7MgY2Q38e4bE
         GyvMpudv/rwFtZrViu0JkBufrUGSpNLeZ0KOKHhIRAvCAQR+xAEWLf5NtUIrc++qNTV7
         xdpWbk+82qpY9Q9gatbamZYIdb4p2binItEAFjvcyJ34YU341n4pwHQRrQQa9VPBSXJG
         Ec2w==
X-Gm-Message-State: AG10YOQSQKgdn+iU5X7Loy0LenvsxZ8b1elX9X8N7z+tmvJV/BXkOnbqjzIW/643bgvDvA==
X-Received: by 10.98.14.149 with SMTP id 21mr30949912pfo.79.1455630085018;
        Tue, 16 Feb 2016 05:41:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.154.9])
        by smtp.gmail.com with ESMTPSA id r80sm46073477pfi.9.2016.02.16.05.41.21
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:41:24 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 19:11:16 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/4] Staging: wlan-ng: hfa384x_usb.c: Remove unused function
Date: Tue, 16 Feb 2016 19:10:32 +0530
Message-Id: <25e210070cd8fe7deb93e70641fa1f20d530b75a.1455629651.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>

The function hfa384x_drvr_commtallies is not used anywhere in the kernel
so remove it.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 31 -------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 682de77..7eda536 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1747,37 +1747,6 @@ done:
 }
 
 /*----------------------------------------------------------------
-* hfa384x_drvr_commtallies
-*
-* Send a commtallies inquiry to the MAC.  Note that this is an async
-* call that will result in an info frame arriving sometime later.
-*
-* Arguments:
-*	hw		device structure
-*
-* Returns:
-*	zero		success.
-*
-* Side effects:
-*
-* Call context:
-*	process
-----------------------------------------------------------------*/
-int hfa384x_drvr_commtallies(hfa384x_t *hw)
-{
-	hfa384x_metacmd_t cmd;
-
-	cmd.cmd = HFA384x_CMDCODE_INQ;
-	cmd.parm0 = HFA384x_IT_COMMTALLIES;
-	cmd.parm1 = 0;
-	cmd.parm2 = 0;
-
-	hfa384x_docmd_async(hw, &cmd, NULL, NULL, NULL);
-
-	return 0;
-}
-
-/*----------------------------------------------------------------
 * hfa384x_drvr_disable
 *
 * Issues the disable command to stop communications on one of
-- 
1.9.1


