X-GM-THRID: 6205566056947253248
X-Received: by 10.50.134.199 with SMTP id pm7mr6980431igb.0.1444848101784;
        Wed, 14 Oct 2015 11:41:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.97 with SMTP id kd1ls251817igb.19.gmail; Wed, 14 Oct
 2015 11:41:41 -0700 (PDT)
X-Received: by 10.107.159.132 with SMTP id i126mr4423219ioe.23.1444848101537;
        Wed, 14 Oct 2015 11:41:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si1055130pbb.0.2015.10.14.11.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ur7so12483343pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tOU1JwfR+rOHWK1OVK/wTCD+6QDxDwj1G+XHATdKd8w=;
        b=YGrRS58pcTM8+DuY33iQxJg+7YoxN937thRhCm7zJAsTdEptQt0A+MsfyM5xA60O1B
         LcqLh0amB+Mf4B2T1vE7WNuiaTN7CGfgLXF8VEJ0KS+22N8ziV1YUtcWsMkjAGGl0uZR
         rivKPWnQej584Ztbjbq4RlZ/+KEzUNoIbgonGP8+31bulI3frMrNOQIaDoA4SPGEZztM
         R5+JfUh3C5W7zO2XFHrhJMJ2SMooBf4gOsgJegJZ+SKYwzPSbv9oecyvrAOPlEDTxYz6
         Phtyh0lt7Qdka9u6ecNAukh+uodaENpecOMPNQR2aALTGIaILH9L9f1R7EBhFd6KNLyn
         yAdA==
X-Received: by 10.66.124.168 with SMTP id mj8mr4949741pab.45.1444848101385;
        Wed, 14 Oct 2015 11:41:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id sn9sm11025947pac.16.2015.10.14.11.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:41:40 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:11:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/6] staging: lustre: ptlrpc: sec_bulk: Remove useless
 cast on void pointer
Message-ID: <2677b35014b87e86ba81c57049b25ac9f1877e18.1444847780.git.amitoj1606@gmail.com>
References: <cover.1444847780.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444847780.git.amitoj1606@gmail.com>
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
Changes in v2:
        -Fixed subject in commit message

 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
index c89973c..ee82b32 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -541,8 +541,7 @@ int sptlrpc_get_bulk_checksum(struct ptlrpc_bulk_desc *desc, __u8 alg,
 		memcpy(buf, hashbuf, buflen);
 	} else {
 		bufsize = buflen;
-		err = cfs_crypto_hash_final(hdesc, (unsigned char *)buf,
-					    &bufsize);
+		err = cfs_crypto_hash_final(hdesc, buf, &bufsize);
 	}
 
 	if (err)
-- 
1.9.1


