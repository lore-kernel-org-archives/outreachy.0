X-GM-THRID: 6253367182220066816
X-Received: by 10.140.240.129 with SMTP id l123mr14562361qhc.8.1455975506285;
        Sat, 20 Feb 2016 05:38:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.36 with SMTP id ij4ls398229obc.61.gmail; Sat, 20 Feb
 2016 05:38:24 -0800 (PST)
X-Received: by 10.182.56.233 with SMTP id d9mr17320945obq.2.1455975504896;
        Sat, 20 Feb 2016 05:38:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si2388226pfa.2.2016.02.20.05.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:38:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so66838463pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 05:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YDC+/ojO/2LCbXdAgdZeE+YBwgvQSa1SbDgK2ziVb6M=;
        b=jt0zroRYz91mtA7/sChHSUIPrmzLUsM8jRHzi4P4KydzyqPnY2yWWdgq387YP/Sffq
         gTxR+vr6Ag0JkyOy2QLEyTfVjvK5eQGxGZh+K1ZoTNp9sn1k0pGLh0HsekZgM/UYemR4
         2QJgJC795vf6Ybkr1GeP2isKx2Y/tuoEefhqjWACFO7dw73drnicG0UzNdRDVzxefNyg
         SUcE4dpjKdULcKESmIBB9YuQXlGSm983VAufHF/eKc0HqMwn5GQpZf4crlM8BxpUgoPS
         lKzauCjoSrAUa80KSwItiVwXizrbzCgHgllRbWOpMKxviQLWKriWYkymzHkKpimxTj+k
         LT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=YDC+/ojO/2LCbXdAgdZeE+YBwgvQSa1SbDgK2ziVb6M=;
        b=DLZo2ECISICDjD124MlU1rnuvpS6Z7mSCqNb6e2slxUU5ob4vZHkmHcJjtO3yaHqtO
         t1bhwRIAFFfSsJXCTYjECT0UNOrISqk5//xswm+TWl6po43OOthEf91qPL6cEgluUyXf
         /fVItdHIx87yQ08Icq5zDxU35vZJ3egXeeofKEddBZsISa3Jnb76ctDb6/9w5gd7a7Vk
         hXboamGXhl42ttiZIVmAmb8pQRcX2DjnUhj5PTUbStRHiCVjxjaLbOmldqcVOfwNBSr4
         7R3dFUjLcBzF0tHz5QQUGzTvHKbvhEJGSypsgIbwdDPYP4hJtmZRJFjbkmSL86TaetaH
         Df5Q==
X-Gm-Message-State: AG10YOTiIbK8uTHKG3VkDimXQNQGJWbTa3NtG78AYpcriqD6tYY8EOCFe+eQPN4/J7ApTQ==
X-Received: by 10.98.68.86 with SMTP id r83mr25552436pfa.12.1455975504679;
        Sat, 20 Feb 2016 05:38:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id o184sm24794154pfo.36.2016.02.20.05.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 05:38:23 -0800 (PST)
Date: Sat, 20 Feb 2016 19:08:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Use offset_in_page macro
Message-ID: <20160220133802.GA23298@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use offset_in_page macro instead of (var & ~PAGE_MASK)

The Coccinelle semantic patch used to make this change is as follows:
// <smpl>
@@
unsigned long p;
@@
- p & ~PAGE_MASK
+ offset_in_page(p)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/user_sdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index 4f55950..feb2069 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -925,8 +925,8 @@ static int user_sdma_send_pkts(struct user_sdma_request *req, unsigned maxpkts)
 			unsigned pageidx, len;
 
 			base = (unsigned long)iovec->iov.iov_base;
-			offset = ((base + iovec->offset + iov_offset) &
-				  ~PAGE_MASK);
+			offset = offset_in_page(base + iovec->offset +
+						iov_offset);
 			pageidx = (((iovec->offset + iov_offset +
 				     base) - (base & PAGE_MASK)) >> PAGE_SHIFT);
 			len = offset + req->info.fragsize > PAGE_SIZE ?
-- 
1.9.1


