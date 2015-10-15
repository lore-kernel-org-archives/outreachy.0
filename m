X-GM-THRID: 6205970063032320000
X-Received: by 10.66.123.14 with SMTP id lw14mr7512919pab.6.1444942054244;
        Thu, 15 Oct 2015 13:47:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.102 with SMTP id il6ls488478obc.17.gmail; Thu, 15 Oct
 2015 13:47:33 -0700 (PDT)
X-Received: by 10.182.196.71 with SMTP id ik7mr9505835obc.36.1444942053794;
        Thu, 15 Oct 2015 13:47:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1590410pac.2.2015.10.15.13.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id p3so49759063pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/4AUyipktjUWAtU0el5JltEw5nIfT2RscBqQVpjoeF8=;
        b=MuLnTmLAWE3V9w7cNPEcLCYwzX2jhccAkZzkiX9Yk9/VocgB8GeTwz4kPHV56gHycB
         vFqcT1i/p3/CTEkoASlWM9+lpA1mAInyfG8LH7oN2g8eHeCiS0DvDs06PPeTowYGPj0c
         mnTUaesrL0GTi017mHGY18e7QwEzv70Ma0+8K+2VNwLl9UveUWmxlOlBe3RS9LQeaE/n
         gV1/6L6GDQUy7Eot01lbuPntkj+peVRzkDTtB2G8oxT9eStCm00UXjVJZ6fk+FMn1vOH
         RsPaEX8HchI+tN3KD9doBnGXEyFK846V/7kAFQ15Nx1Qx3+R0pnvBxMbaGAXJ1VEhsVn
         UJbQ==
X-Received: by 10.66.165.5 with SMTP id yu5mr12054791pab.109.1444942053576;
        Thu, 15 Oct 2015 13:47:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id b6sm17016831pbu.90.2015.10.15.13.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:47:32 -0700 (PDT)
Date: Fri, 16 Oct 2015 02:17:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: lproc_ptlrpc: Replace simple_strtol with
 simple_stroul
Message-ID: <20151015204720.GA45986@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable inst is a __u32 type and hence the function used should be
simple_strtoul.
Semantic patch used:

@@
typedef __u32;
__u32 e;
@@
e =
- simple_strtol
+ simple_strtoul
  (...)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Make semantic patch correct.

 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index ec44b3c..415817c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1251,7 +1251,7 @@ int lprocfs_wr_import(struct file *file, const char __user *buffer,
 		*ptr = 0;
 		do_reconn = 0;
 		ptr += strlen("::");
-		inst = simple_strtol(ptr, &endptr, 10);
+		inst = simple_strtoul(ptr, &endptr, 10);
 		if (*endptr) {
 			CERROR("config: wrong instance # %s\n", ptr);
 		} else if (inst != imp->imp_connect_data.ocd_instance) {
-- 
2.1.0


