X-GM-THRID: 6205970063032320000
X-Received: by 10.66.146.131 with SMTP id tc3mr9506502pab.20.1444940004430;
        Thu, 15 Oct 2015 13:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.180 with SMTP id h49ls344324qgd.88.gmail; Thu, 15 Oct
 2015 13:13:23 -0700 (PDT)
X-Received: by 10.13.214.200 with SMTP id y191mr9151834ywd.10.1444940003902;
        Thu, 15 Oct 2015 13:13:23 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si1623036pab.1.2015.10.15.13.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so49037266pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qBcGGUGiBUXhlEEbOeU37gpfrVqk0oJ35lk0fmTDc7g=;
        b=g8V5T0hdm0OwRs4+PdOdb86tsJFpChE86mvN642VoO/J71KL/he9YcdC/SxVvDw19T
         jpciOJrev+X3dPEdBIhQWgfKgoKlBunMOvwpBjBhXIRtAO1dwEpbnv8pUIQoFcNDIldm
         GLKkSB3C/MzcAlVHYzJsDpzD05v0F014FOZWJeXnTA2MkStN/gh4ACSIHPtH7ey4fhpu
         u666O95QsnEo65Jc80zxIAAzxweqL5Bi6hXEaS6AgkFCtipqJwkJt7a4j80MHvhXci4i
         jbtgs4ERshiXkjyZz4iq9/FFSEajyVzSeYzG48sZMI8Faa8TavwChk+BNPCxjNuLnL4R
         3bzA==
X-Received: by 10.66.102.7 with SMTP id fk7mr11861109pab.119.1444940003757;
        Thu, 15 Oct 2015 13:13:23 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ce3sm16954705pbb.35.2015.10.15.13.13.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:13:22 -0700 (PDT)
Date: Fri, 16 Oct 2015 01:43:11 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lproc_ptlrpc: Replace simple_strtol with
 simple_stroul
Message-ID: <20151015201311.GA45040@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable inst is a __u32 type and hence the function used should be
simple_strtoul.
Semantic patch used:

@@ type T;
T e;@@
e=
- simple_strtol
+ simple_strtoul
  (...)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
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


