X-GM-THRID: 6206285490616795136
X-Received: by 10.68.142.196 with SMTP id ry4mr13454678pbb.3.1445013555616;
        Fri, 16 Oct 2015 09:39:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.1 with SMTP id v1ls1499105qge.71.gmail; Fri, 16 Oct
 2015 09:39:13 -0700 (PDT)
X-Received: by 10.31.3.23 with SMTP id 23mr5484010vkd.13.1445013553913;
        Fri, 16 Oct 2015 09:39:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si2091789pbb.0.2015.10.16.09.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so27273801pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Tlm7dd5fo2pFJmWaEvqedQsYsylTZhSg44sjehpsxJM=;
        b=oO8CxRppChha/goOSzrZOt9vu/js8CCgO59RN69YnYQEaGjJ6MJ7kcRbMgzSxm1IQU
         8Eew2ubsSDcqZUSmucjjGAXcwDugDxVuW+WAMINjhqRu0zglqJIUwzHO0YDoJRh83+j+
         K5tBNBfDKBK6Ehhwp8exsh6GuFoWBGWEIliYH/THPujYXFufqQYK0C9E9wEhrXz+kt1g
         S7izEkcydH4JihiVhEnDkgv30RIvZBMV7ylDHr9HGw+7YEcas3v0n8JEC0lfuiD0umAe
         zqETJlxhX2tvrnB9VgqR8W3iPJFg5ypSEaC3QzzXyuXWjkRAoti05iHZ4OmaCSxt8ezd
         quIw==
X-Received: by 10.68.168.97 with SMTP id zv1mr17670459pbb.86.1445013553740;
        Fri, 16 Oct 2015 09:39:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.108])
        by smtp.gmail.com with ESMTPSA id xd10sm22264338pab.25.2015.10.16.09.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:39:13 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:09:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: rdma: hfi1: Prefer using BIT Macro
Message-ID: <90a57729eb9ae87ccc00cfc6290ea691d68ccbd0.1445013271.git.amitoj1606@gmail.com>
References: <cover.1445013271.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445013271.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace bit shifting on 1 with the BIT(x) Macro

The semantic patch used to find this is:
@@ int g; @@

-(1 << g)
+BIT(g)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/file_ops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/file_ops.c b/drivers/staging/rdma/hfi1/file_ops.c
index 7d28680..cbaf4f7 100644
--- a/drivers/staging/rdma/hfi1/file_ops.c
+++ b/drivers/staging/rdma/hfi1/file_ops.c
@@ -508,7 +508,7 @@ static int hfi1_file_mmap(struct file *fp, struct vm_area_struct *vma)
 	case PIO_BUFS_SOP:
 		memaddr = ((dd->physaddr + TXE_PIO_SEND) +
 				/* chip pio base */
-			   (uctxt->sc->hw_context * (1 << 16))) +
+			   (uctxt->sc->hw_context * BIT(16))) +
 				/* 64K PIO space / ctxt */
 			(type == PIO_BUFS_SOP ?
 				(TXE_PIO_SIZE / 2) : 0); /* sop? */
-- 
1.9.1


