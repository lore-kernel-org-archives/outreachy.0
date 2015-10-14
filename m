X-GM-THRID: 6205566056947253248
X-Received: by 10.66.197.136 with SMTP id iu8mr3888959pac.47.1444848328269;
        Wed, 14 Oct 2015 11:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.56.12 with SMTP id w12ls194108obp.5.gmail; Wed, 14 Oct
 2015 11:45:27 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr3906645obb.31.1444848327869;
        Wed, 14 Oct 2015 11:45:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si1064340pbb.2.2015.10.14.11.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id p3so13666321pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DyVxmZS8vZEqILNUqdsC9HQtk/Idaetj9wZqAi2hGzo=;
        b=soofXjcw7RAIHRJzM68qFUvWVlKhss60z917B/7Z1+9ppYzI5AFCbyOR1YYrpAtuXt
         43B3Vb0BqNMRP8kLo/zLA/T5A6l3LOjieEuaEBGWXRTXck6HfxxqpNaDBIz1n9ENXb/G
         kZgplSq8z7P2CkoXtLyfmvSExPE0ZiWGFzID4zYpDBcyg3RVS1d5sjs3R7Xk/tSYx0hZ
         QUVGkSo+yprFU7FsQwf+sBB+Xzi8PA2ztt8X+HPA9PhGIRCnRQT3QukqYxIhg94K48xB
         RmXc4/ghgflEm8EHMYa3gT+qtumcHbu4MLA5TUtHPYofYKyt3CPaFheihLM7MDVE3Itm
         Epow==
X-Received: by 10.68.227.227 with SMTP id sd3mr5244452pbc.116.1444848327537;
        Wed, 14 Oct 2015 11:45:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id st5sm11030819pab.42.2015.10.14.11.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:45:26 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:15:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: lustre: ptlrpc: pinger: Remove useless cast
 on void pointer
Message-ID: <f118886cda0e61b78c587818048774584ca94702.1444847780.git.amitoj1606@gmail.com>
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

 drivers/staging/lustre/lustre/ptlrpc/pinger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index a608165..31b197a 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -219,7 +219,7 @@ static void ptlrpc_pinger_process_import(struct obd_import *imp,
 
 static int ptlrpc_pinger_main(void *arg)
 {
-	struct ptlrpc_thread *thread = (struct ptlrpc_thread *)arg;
+	struct ptlrpc_thread *thread = arg;
 
 	/* Record that the thread is running */
 	thread_set_flags(thread, SVC_RUNNING);
-- 
1.9.1


