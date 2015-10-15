X-GM-THRID: 6205817882698317824
X-Received: by 10.182.120.3 with SMTP id ky3mr6767669obb.6.1444904572142;
        Thu, 15 Oct 2015 03:22:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.56.111 with SMTP id z15ls421164igp.35.gmail; Thu, 15 Oct
 2015 03:22:51 -0700 (PDT)
X-Received: by 10.50.41.7 with SMTP id b7mr26278210igl.12.1444904571763;
        Thu, 15 Oct 2015 03:22:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ce6si802908pad.0.2015.10.15.03.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:22:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id p3so36226677pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 03:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6vm0hmbtrpCuV2t2NS1YHCFciNqAaXTVB+M7Uifl6yE=;
        b=DqY5DxdEJgeS7kWSY3iHbIErBV8E6H/8DQq5q6opzX1wg9ZTsZTSvl+ME+0tEpef91
         bRETxZpNVL7YwMV306SI4ayoBe+KKPtSaYi6IGPXNQweQpU3eJpRFrcteTAmmM7Gvuw1
         C/eedNsrkeryLcIPeZGBjE7WpqvFg7Pa2knSIA7/Q3qVuV35oyPGXqwmRVhmsSe5BEfs
         POTwR4pndbhNFpeS+fpyMQuxUnTFdVTFDXoAvkYzNGC/zUEzAqcYezxLF1RdYjWT2PKc
         zXM5cfGuxVjitnEIY7MRrn/wn3QaIrHrpYuCDSLEl3qbxJjZ4WVtNYH1KKN2LHkOF9gt
         +yHg==
X-Received: by 10.66.144.199 with SMTP id so7mr9251171pab.42.1444904571663;
        Thu, 15 Oct 2015 03:22:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ot8sm14564406pbb.26.2015.10.15.03.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 03:22:51 -0700 (PDT)
Date: Thu, 15 Oct 2015 15:52:40 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: most: cdev: Remove unnecessary check
Message-ID: <20151015102240.GA17961@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable mbo is already NULL tested so, check on it should be
removed.
Semantic patch used:

@@ expression E;
statement S1, S2, S3; @@
if(E==NULL) {... return ...;}
else S1
- if(E==NULL)
  S2
- else S3

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/most/aim-cdev/cdev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/aim-cdev/cdev.c b/drivers/staging/most/aim-cdev/cdev.c
index 930ada0..5dc5608 100644
--- a/drivers/staging/most/aim-cdev/cdev.c
+++ b/drivers/staging/most/aim-cdev/cdev.c
@@ -207,8 +207,7 @@ static ssize_t aim_write(struct file *filp, const char __user *buf,
 	}
 	return actual_len - retval;
 error:
-	if (mbo)
-		most_put_mbo(mbo);
+	most_put_mbo(mbo);
 	return err;
 }
 
-- 
2.1.0


