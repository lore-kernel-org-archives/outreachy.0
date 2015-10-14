X-GM-THRID: 6205566056947253248
X-Received: by 10.68.222.104 with SMTP id ql8mr3742851pbc.9.1444846025343;
        Wed, 14 Oct 2015 11:07:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.147 with SMTP id 19ls292028qgt.12.gmail; Wed, 14 Oct
 2015 11:07:04 -0700 (PDT)
X-Received: by 10.129.146.148 with SMTP id j142mr3755669ywg.26.1444846024779;
        Wed, 14 Oct 2015 11:07:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si957574pac.2.2015.10.14.11.07.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id p3so12798121pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Qs+suLB6TOuK7+K3dbhNDXyppg3uru0kCnl1wptLrPI=;
        b=KPhutTbeoAGb6NnoHewnCqLMa1KJ42xP71kIcw4b4Ad9+M6XL/9NA6IA/sGto6WI8Z
         Iv84jw6pVteWE5cfAvdJO3G5Vy5n5StCvL65UspMFZ3VjOs5AsgGneluL5ahccS6taXT
         xiRhbVGdmSEDha/vw5Zp2KUPwwTzqM836YOuJhGpa/RaM9Hgg2C7u5Qh6F9HhhdodhIV
         0ggE1fYnLmQVNSXpXMNQV1Y4si0M3g9s2ppfjjQiwK16wfHSxIYby7LtQq52ULRUfXOc
         tfTKHdsEw5G86McvZppdXLbDItpqQiZRp5txa78K8T0S0fX5CI8Y8PGInOCbn2k67qb5
         GLnQ==
X-Received: by 10.68.200.167 with SMTP id jt7mr4941509pbc.83.1444846024606;
        Wed, 14 Oct 2015 11:07:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id ai4sm10851592pbc.67.2015.10.14.11.07.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:07:04 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:37:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: lustre: ptlrpc: Remove useless cast on void
 pointer
Message-ID: <e2b99484a9ae307b27b1b8401e126eb52e5a9c7e.1444845733.git.amitoj1606@gmail.com>
References: <cover.1444845733.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444845733.git.amitoj1606@gmail.com>
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


