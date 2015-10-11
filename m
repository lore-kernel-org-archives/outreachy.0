X-GM-THRID: 6204433488482926592
X-Received: by 10.50.62.49 with SMTP id v17mr8910240igr.1.1444582307674;
        Sun, 11 Oct 2015 09:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.233 with SMTP id 96ls2710609qgl.15.gmail; Sun, 11 Oct
 2015 09:51:47 -0700 (PDT)
X-Received: by 10.13.216.77 with SMTP id a74mr22365903ywe.9.1444582307127;
        Sun, 11 Oct 2015 09:51:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si1271181pbb.0.2015.10.11.09.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so132360784pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+h+pgFTssBSw1BVT8jyBsLgQ6Ba0+DS8Gu1R5XmHgDM=;
        b=G0ers2L5HfeBQCQgZCnXJ25Bw+Osu0irJs6mv2dUGUcWRvMu93I9zvaNassXBi/Z/X
         uDUd3lf0f3QuxCgmuVjPXRLLG5u7cv4EDNdWxL8eLRuM4Vw7gmsQxA0J5OiKaDqLjns2
         O6VKTrNF1Myz30LohhuQfhN+osxYUzAJZ+m86PgUwY0RvWbkxeGjl/g6nig0QuL2gWaM
         lhMfLpWYaKoLMttyARjrFWvFZ0mpF1c/aA434xId3xkZ7F7rXXxzWc5ej5Uun6VP9tSZ
         GiDa4m2663SPHnUTVtGAqJtva+uKkLxH2Y7yez76rb9uu8xRk7zDmZjMAaxbCQb/P6iW
         nFmQ==
X-Received: by 10.66.240.37 with SMTP id vx5mr28953112pac.76.1444582307006;
        Sun, 11 Oct 2015 09:51:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id lo9sm13656160pab.19.2015.10.11.09.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:51:46 -0700 (PDT)
Date: Sun, 11 Oct 2015 22:21:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: vt6655: mac: Remove unnecessary braces
Message-ID: <61026f5b40b79babe1c459e2cc7b6ec8f611214f.1444581984.git.shivanib134@gmail.com>
References: <cover.1444581984.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444581984.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary braces for an if statement as it comprises of a
single line.
Fixes checkpatch warning: braces {} are not necessary for single statement blocks

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/vt6655/mac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index f6774d3..88dbc6d 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -692,9 +692,8 @@ void MACvSetCurrAC0DescAddrEx(void __iomem *dwIoBase,
 		if (!(byData & DMACTL_RUN))
 			break;
 	}
-	if (ww == W_MAX_TIMEOUT) {
+	if (ww == W_MAX_TIMEOUT)
 		pr_debug(" DBG_PORT80(0x26)\n");
-	}
 	VNSvOutPortD(dwIoBase + MAC_REG_AC0DMAPTR, dwCurrDescAddr);
 	if (byOrgDMACtl & DMACTL_RUN)
 		VNSvOutPortB(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN);
-- 
2.1.0


