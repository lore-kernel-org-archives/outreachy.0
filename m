X-GM-THRID: 6255245182874157056
X-Received: by 10.107.133.10 with SMTP id h10mr2715415iod.8.1456412762923;
        Thu, 25 Feb 2016 07:06:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.119 with SMTP id g110ls508776qgf.2.gmail; Thu, 25 Feb
 2016 07:06:02 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr14524000qhi.10.1456412762317;
        Thu, 25 Feb 2016 07:06:02 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ui7si1287908pab.0.2016.02.25.07.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:06:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id q63so34117676pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XYUIh3M8PPDqrBSr8gHqZ+LDO8SndGfVv+NU5WBnyTo=;
        b=vFy8e89wYySKMxDgETKCtvrl01lgq+rT9NCfDhEg1GFpd90s2oLA/nWls0f+M8rz7N
         Qlw9WUgHr2fKGvcm55i9qmwMIoNqNunVv5vd/likJBzhdnri09wqLp+ZMW3x+RcCOcHf
         z7NBr7Wsj7FR6WlLZJVdau56h5xIPKFQlSyGYAHXaZMQ+48eo2A1KiNVmS1oO/IoWQUv
         H9qbI0YL8xRZ8CHRJ6+PQDt1DdGhHODkjfiWoUU4fLHP7N4ppL9sFLtGx86otNZG1Jxg
         Nd8ZW84C+FogvU1ekWzpYZlYv3g6JDKAJeVry/O6bWxVO3BQCTGY8H7LH6vnvoKyqKxB
         L1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XYUIh3M8PPDqrBSr8gHqZ+LDO8SndGfVv+NU5WBnyTo=;
        b=guKDFT77GS39hMUbMHdu+ZHpUpfjrzefrTXayChAMaK+P9FG37KHmUpKxfDLjpZa4Q
         nf7d6cX3qqzu/+pjXmaukwC6KA1WOI5smevj3AMczyrsENxgvpEpTRkLfxXCJNJ3tWpR
         icsHyGkFvlCD8Bh+X0oIGdXFp4EPh0ie1blQzqg40Wulv+KASLdGBVdd4AZVKSFK4HfS
         NqVjyeEqt4jfNtqWzxF6dozy/mQnW8DwvTQGgaj+72kj7CKzsxLwXt8F6bxXBBl1ywmS
         PDxF8KL5IT5mSdcSV5HSCuxNg5QBdhoIwP+GisR97K9nmv9lAgC19fbQ5IS7EKwl19x7
         Nxlw==
X-Gm-Message-State: AG10YORuBkJPsJDIijyM3ENNSqtUL1exSXL54KTAXLHJoqONAV+D9sqsSQVYa+MlpEvdFg==
X-Received: by 10.98.70.211 with SMTP id o80mr62973049pfi.124.1456412762141;
        Thu, 25 Feb 2016 07:06:02 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m87sm12984348pfj.38.2016.02.25.07.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 25 Feb 2016 07:06:01 -0800 (PST)
Date: Thu, 25 Feb 2016 20:36:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Remove 'without comment' warning
Message-ID: <20160225150604.GA26666@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes blank lines between comment blocks and
waitqueue_active calls to remove the following:
WARNING: waitqueue_active without comment
This was detected by checkpatch.pl

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..aacc1b3 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -709,7 +709,6 @@ void dgnc_carrier(struct channel_t *ch)
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
 		 */
-
 		if (waitqueue_active(&ch->ch_flags_wait))
 			wake_up_interruptible(&ch->ch_flags_wait);
 	}
@@ -722,7 +721,6 @@ void dgnc_carrier(struct channel_t *ch)
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
 		 */
-
 		if (waitqueue_active(&ch->ch_flags_wait))
 			wake_up_interruptible(&ch->ch_flags_wait);
 	}
-- 
2.1.4


