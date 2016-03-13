X-GM-THRID: 6261602092574572544
X-Received: by 10.140.227.134 with SMTP id x128mr13189423qhb.20.1457893176433;
        Sun, 13 Mar 2016 11:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.134 with SMTP id a6ls4363539qgf.9.gmail; Sun, 13 Mar
 2016 11:19:36 -0700 (PDT)
X-Received: by 10.140.179.210 with SMTP id z201mr15314878qhz.26.1457893176003;
        Sun, 13 Mar 2016 11:19:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si2735467pac.1.2016.03.13.11.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so7924066pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6d3ZE7KB0kSHc5qZ3Dud8mqP/bb7+2V3AxO21zrrN6c=;
        b=CIykJEseQzCG9drjftgPH/kKL2UFhWxMinmt6JxMix/SxEyqSKkCARJD/R0oAQFfRF
         NAs37jeMTsBONxfB0S3RIC79GtTPllMBnKOog9Mu/6BS3XJUgqIB9gYgggFFDHUdkWbj
         xlkdHBnE3Q6qToZfe8rzEm2uVlJPVp7XdbgAzidXkhzk/5ohnBVlwGiwBYqlAKs3mVm9
         cwn7Zo9BtXjy+jbIwe8oGb2FtC+gMh4EmGivuUDHHD78vCgVN3BJI7/qxtPpk1f3KfSb
         wxC1d0bre4twl+kVFLraoahik7qqIBfYDmB4V4EtF/OAbRx/3ZbbfGczsZPAxCZVjFHo
         IOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6d3ZE7KB0kSHc5qZ3Dud8mqP/bb7+2V3AxO21zrrN6c=;
        b=UZZxcYQnUhe2m5pVn5peTD3NgqO171TCoPaF8786UJj9AuCnPygB2MLGD1OMjvo+vH
         gEkhu+YrsEWmMbzpdazM+Jz6havOlZp+NfFtPtyCc7vwcz/z86QCZHMtxNsenTptEdCR
         GxmXEyzKzK92Qzv6zPJgzSvYa4XsvLUIWpqwQhB1sbUBKGmYPysOEZsFPpS+udqwoOg6
         +Jhrtbq/WLB6PCuxPnb1iHs9CBNeuMbTNnXKEJ/68jqHygQItTVnmQXra/sqVi/DxKRs
         9v2jB97fBXfC3HiME+BXwjbWn3T0fffV+MJ5TYp4JkO/bq07G7BvDEtnQEnQc9Yk30Xy
         ukAA==
X-Gm-Message-State: AD7BkJLuJXnSLUpbJRpjulEcr91QXNhjoW940+XnOCACbLFIc2m/8fqKtMZS2tsF2XjxCQ==
X-Received: by 10.98.13.88 with SMTP id v85mr23743921pfi.150.1457893175808;
        Sun, 13 Mar 2016 11:19:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.34])
        by smtp.gmail.com with ESMTPSA id 9sm26523736pfm.10.2016.03.13.11.19.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:19:35 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:50:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: gs_fpgaboot: Remove unnecessary blank lines.
Message-ID: <ea4bcc1cda8a1b7184fc97678a40e9232c8a0aea.1457863546.git.bankarsandhya512@gmail.com>
References: <cover.1457863546.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457863546.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank lines.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index de1a9a6..1af0745 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -93,7 +93,6 @@ static int readlength_bitstream(char *bitdata, int *lendata, int *offset)
 	return 0;
 }
 
-
 /*
  * read first 13 bytes to check bitstream magic number
  */
@@ -331,7 +330,6 @@ err_out1:
 	kfree(fimage);
 
 	return -1;
-
 }
 
 static int __init gs_fpgaboot_init(void)
-- 
1.8.3.4


