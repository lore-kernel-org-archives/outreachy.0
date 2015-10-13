X-GM-THRID: 6205040264708358144
X-Received: by 10.68.165.5 with SMTP id yu5mr28658231pbb.1.1444742474780;
        Tue, 13 Oct 2015 06:21:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.67 with SMTP id j64ls1744215ioe.3.gmail; Tue, 13 Oct
 2015 06:21:14 -0700 (PDT)
X-Received: by 10.66.162.7 with SMTP id xw7mr28218081pab.25.1444742474269;
        Tue, 13 Oct 2015 06:21:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si300462pbc.1.2015.10.13.06.21.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:21:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so21513187pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=VHurdu/I6DdHUQoUb+gwxfYBk9E5+GD0X2Lqf5vs4+g=;
        b=CtyMmnHB4baOmyt2NZ27Tb0JRXtd463jiyBoTzytEnGXOqMTeCPO1iPLzFAn6110Hl
         3c4tHa8pS7PU6S/pIButtS3GUax7Tb/15Y++ODj0p3zyrFHxV1WaNNfXOiLIbdbUtEzd
         zLKW+T5FpeD8MnDyev7Z9AUdJAXzbjkrVIxe2GEGCqqI2ovSc0sjutFeiInAvxVXY92M
         wd8azHmUV32HIA8o+YKoDMMVrR+KxTA/dLX+2ktQsZkRc06d3VoAk6oBJglpjptFN/L1
         6IT1CVUUYFPpUeRjMzK4vHlG+URLZOjpB3XtIDyVTeEGxSfv15LTgg1t41dQ3Fh3VfOq
         FSBQ==
X-Received: by 10.68.105.193 with SMTP id go1mr40265233pbb.59.1444742474136;
        Tue, 13 Oct 2015 06:21:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.164.27])
        by smtp.gmail.com with ESMTPSA id yg2sm3954643pbb.79.2015.10.13.06.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 06:21:13 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:51:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: lustre: llite: Remove useless cast on void
 pointer
Message-ID: <7cddd50510a80e5a7a48b1f6cb04ccc8a910d5a8.1444742061.git.amitoj1606@gmail.com>
References: <cover.1444742060.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444742060.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
index e051dcc..4b7eb33 100644
--- a/drivers/staging/lustre/lustre/llite/xattr.c
+++ b/drivers/staging/lustre/lustre/llite/xattr.c
@@ -519,7 +519,7 @@ ssize_t ll_getxattr(struct dentry *dentry, const char *name,
 			goto out;
 		}
 
-		lump = (struct lov_user_md *)buffer;
+		lump = buffer;
 		memcpy(lump, lmm, lmmsize);
 		/* do not return layout gen for getxattr otherwise it would
 		 * confuse tar --xattr by recognizing layout gen as stripe
-- 
1.9.1


