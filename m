X-GM-THRID: 6205566056947253248
X-Received: by 10.66.219.2 with SMTP id pk2mr3976048pac.16.1444846275892;
        Wed, 14 Oct 2015 11:11:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.135 with SMTP id fg7ls142698obb.54.gmail; Wed, 14 Oct
 2015 11:11:15 -0700 (PDT)
X-Received: by 10.182.24.42 with SMTP id r10mr3746413obf.42.1444846275626;
        Wed, 14 Oct 2015 11:11:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si1046973pbb.2.2015.10.14.11.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id p3so12933045pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cmJHZ8G8n+RwBwU06QSIJDyJatxqFoBPiPaThwdwPJg=;
        b=BmWdLEFuSipGq6n/d3YbM+2MEg56gvxim1pAhgJ+pwdV7rAU+8vJQoMgY9zhkfYMNy
         x/L4k3hAduMxlt2rLm3dpCIoZanC0vxGHOpjx5iEIgUKh43W2p/g3Daa6TeOZfxQFGP4
         0rFbXh+Gz84oWYhcYH0JpbRzO9eZYR539Zg/3VYUTM2BD/jZgs3dhYsLTH2gdoYegmWX
         g97pLmmT8BYdrfasefr5tGCXfr0K/QXG+nYK/DuuLEOxQ31UVx6Jb3qPOo6UZUoAnjbR
         C1w+UdDqzZKHkoaCad1I4WKATDkHj3NXVZnUCgkdwwQ/mNUmLsfKP9uB1r7izC8uLF0/
         weqw==
X-Received: by 10.66.250.197 with SMTP id ze5mr5099153pac.50.1444846275430;
        Wed, 14 Oct 2015 11:11:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id iu2sm8507899pbd.16.2015.10.14.11.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:11:14 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:41:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: lustre: ptlrpc: Remove useless cast on void
 pointer
Message-ID: <2129dbf675b1cd7e1c8bee23a6127559d168fc73.1444845733.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/ptlrpc/sec_gc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
index 520329f..e570359 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
@@ -148,7 +148,7 @@ static void sec_do_gc(struct ptlrpc_sec *sec)
 
 static int sec_gc_main(void *arg)
 {
-	struct ptlrpc_thread *thread = (struct ptlrpc_thread *) arg;
+	struct ptlrpc_thread *thread = arg;
 	struct l_wait_info lwi;
 
 	unshare_fs_struct();
-- 
1.9.1


