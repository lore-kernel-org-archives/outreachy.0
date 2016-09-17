X-GM-THRID: 6331374049308966912
X-Received: by 10.66.164.8 with SMTP id ym8mr1991861pab.54.1474137895305;
        Sat, 17 Sep 2016 11:44:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.79 with SMTP id c76ls2479563ioe.7.gmail; Sat, 17 Sep
 2016 11:44:54 -0700 (PDT)
X-Received: by 10.107.174.135 with SMTP id n7mr12412188ioo.20.1474137894811;
        Sat, 17 Sep 2016 11:44:54 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si4083889pab.1.2016.09.17.11.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so1896948pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 11:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z6wf2JidIN79yU3bIix+a65rYn7zG3cS5jrlA6q+6sU=;
        b=R1L+AyoGRtBgl5SVGaQnoJ/oZqGKsirrLqmpgHx9islTA3Oc7hmCJwmn7x9JDSN9LE
         4wjawoLbPNt6vPtka69PUoI+igeFR3k7MsGnmT9nBa6Zs+yIICvap4ExxZwIRTar38c0
         ERn0PiD77gx7uhjLJRbm3nyCPtfS9i4tG+1TtuaOYRZa1KG4OEUSMJPayR1JQ+6Pb7gZ
         s/OouJKWUD4oLhd+GakJiGUggYErA/I0mwO+3oCfXo7bG8B1ieB18cxDUCqnKZvNLLDh
         s3OBvP41X4wGAfBGAvOHWtiVjvY2REVEUj2/r8T4iaIdIBXC0FSd9nN1AnjfOdSUKzLF
         Ve6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z6wf2JidIN79yU3bIix+a65rYn7zG3cS5jrlA6q+6sU=;
        b=Sw2dvVqWy4HvqE8xHP40rGXVkTGCYLQiIJ23CggG+XgE9qSBomHVOJuu+A5LjS2DZY
         8pmpcgFx+Heek6Oi2AY626Ec1ls5gX8av7kKtsX/7o8EdqNOQK8QW89/yshKfLPEm9Zb
         Uz0FS7DLLEnbKhQgei2pMGMF6FHZuvqzGPeHp8Ch4Q6iznhErWycGB/ghUv8nZcjCj68
         hrFDc5mBsqQgR8+H5WGYtjqEjja6PpqdHMFLQekCbaco/FPofrn6F0FZklzLbr4hjjtH
         A15mBuKAUv06R8ZPSzufidYOpteU9vNgY4d2KzAwKZmULlxBnH5BYvTba8ktBzKKYd1z
         G/Ug==
X-Gm-Message-State: AE9vXwOf1AuaMODNEx61DNmBuZYc9LF63p2YdaXnUR/ZkAEBjULox3ozP7FjORD3Td+uQA==
X-Received: by 10.67.23.4 with SMTP id hw4mr33491119pad.7.1474137894450;
        Sat, 17 Sep 2016 11:44:54 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id q14sm41519301pfg.63.2016.09.17.11.44.51
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 11:44:53 -0700 (PDT)
Date: Sat, 17 Sep 2016 13:14:11 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: lustre: lmv_obd: Remove redundant if-statement.
Message-ID: <20160917074411.GA16391@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove redundant if-statement.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index dc752d5..955cc01 100755
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -949,10 +949,8 @@ static int lmv_hsm_ct_register(struct lmv_obd *lmv, unsigned int cmd, int len,
 
 	rc = libcfs_kkuc_group_add(filp, lk->lk_uid, lk->lk_group,
 				   &kcd, sizeof(kcd));
-	if (rc) {
-		if (filp)
-			fput(filp);
-	}
+	if (rc && filp)
+		fput(filp);
 
 	return rc;
 }
-- 
1.7.1


