X-GM-THRID: 6205566056947253248
X-Received: by 10.182.106.228 with SMTP id gx4mr3911297obb.34.1444848433720;
        Wed, 14 Oct 2015 11:47:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.170 with SMTP id g39ls420040qge.9.gmail; Wed, 14 Oct
 2015 11:47:12 -0700 (PDT)
X-Received: by 10.129.113.10 with SMTP id m10mr3899619ywc.36.1444848432871;
        Wed, 14 Oct 2015 11:47:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si1021901pab.1.2015.10.14.11.47.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:47:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so61647508pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Omcx/a0LGFYwIKzCzIXGXnS8MRWxEhS7neVALFK9BuE=;
        b=tWYd6MH2zIMU0IVY555I7o3jUXgtTbjvE8OFSRaheQyUuviP5RkQA4QXppqTpc4cH7
         xT0xpGs4GojxRwplQ0C+9P4y55O6OPxN/XiJmYdW5EMhZJmMKMQJrbKtYT/l3g2K6vdP
         mpGZEMnIvyHH7YJQvoaffrvXNwIgF6CG0aq30GyoK0g9gb2f6U3AJ+FgGsxc91HmSRIT
         wBMm2x5u4cHHGA5aDv4hGPEiWhGvWnNtw7myPrW8T6O3Jb7b5eOVXdgkqUTDKzyEM88O
         vN+OP2LXLkLpPKiEpiEHXZpMMg3kCdLUuvbDCP9HLKC/fxRedQ0aPyNJ7lgM7my/GQ5o
         hsxA==
X-Received: by 10.67.22.34 with SMTP id hp2mr5120406pad.92.1444848432696;
        Wed, 14 Oct 2015 11:47:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id ti10sm5645743pbc.59.2015.10.14.11.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:47:12 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:17:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/6] staging: lustre: ptlrpc: sec_gc: Remove useless cast
 on void pointer
Message-ID: <70e3a75a71e11e5bde53cbb87178f14d4245f9f7.1444847780.git.amitoj1606@gmail.com>
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


