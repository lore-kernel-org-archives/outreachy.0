X-GM-THRID: 6209555630081966080
X-Received: by 10.182.46.132 with SMTP id v4mr24981450obm.10.1445774846994;
        Sun, 25 Oct 2015 05:07:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls2599758qge.72.gmail; Sun, 25 Oct
 2015 05:07:26 -0700 (PDT)
X-Received: by 10.140.202.202 with SMTP id x193mr25282516qha.12.1445774846393;
        Sun, 25 Oct 2015 05:07:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id sm2si1725929pab.0.2015.10.25.05.07.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 05:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so159950906pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 05:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=FYu0H7pmwp++NhW82VGrPFT0U02OZJ53oxZQxjsTJ3s=;
        b=Ma04pQmMKdrMwIr+HFIxYdB1YqD2xhNTXOUyzj2m2FtCSAOgaHp8jvz+mdwHwFMUFK
         Q47CLGfIkJtz3ZgXSfK9DcAh0EvO9K+aa/51CquIJFLtLnT619GJ/ZLMW7TJhUdR80dF
         iix44Xore6myRh471U6soeAJGw9UQ+tdgj1r9u/imbpzUx5A8udsLSJcNkjT2/C3h2MN
         wkQGhhKQX0RJk5+Hoh1YR9LEk0MFEM1g2eoWEto0O7iDCb+e7NSr5aP4uG010FYEyD/b
         MjtEiIi46VhCV5uzHEZDob7J/s8asRaycwtsjh6iJWJ8OF+Q/bpFCGRo0T+L6u8XIhyA
         4RyA==
X-Received: by 10.68.132.166 with SMTP id ov6mr16559152pbb.124.1445774846263;
        Sun, 25 Oct 2015 05:07:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm28505944pac.16.2015.10.25.05.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 25 Oct 2015 05:07:25 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] Staging: lustre: lprocfs_status: Remove unused declaration
Date: Sun, 25 Oct 2015 17:37:00 +0530
Message-Id: <1445774820-9184-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.562CC5FD.001A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove declaration of function lprocfs_wr_timeouts from header file
since it is not used
---
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 6e41129..f332351 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -594,8 +594,6 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data);
 struct adaptive_timeout;
 int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at);
 int lprocfs_rd_timeouts(struct seq_file *m, void *data);
-int lprocfs_wr_timeouts(struct file *file, const char __user *buffer,
-			unsigned long count, void *data);
 int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 		    size_t count, loff_t *off);
 int lprocfs_wr_import(struct file *file, const char __user *buffer,
-- 
2.1.4


