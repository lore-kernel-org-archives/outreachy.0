X-GM-THRID: 6205566056947253248
X-Received: by 10.66.182.162 with SMTP id ef2mr3795227pac.35.1444846149608;
        Wed, 14 Oct 2015 11:09:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls263909qge.6.gmail; Wed, 14 Oct
 2015 11:09:09 -0700 (PDT)
X-Received: by 10.140.150.206 with SMTP id 197mr3830469qhw.0.1444846149166;
        Wed, 14 Oct 2015 11:09:09 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si956706pac.2.2015.10.14.11.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so60730119pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BWJCcYaWhl8UE5QvuAmB7ekvwtQJSHuaP/3icGefmbE=;
        b=SmMPqEO0I/DMb+9WcO6Am6BnHB2iEKS//nEPC4juHfi1NqPXHIST0Wtocow99v4OnQ
         XRlX4gxeWldF3qtcZeeuRz+QOPYkB5yhD7dCXWFly7FzTlyt0o+2RgMBZcab3I7Q4SX0
         XjbNLyRJaMf18Cac4cazPO3WLoBTjeyJUwZnjC2ZPwTuB0FprOlz519nw23Pmk4AUuL7
         F8t+6h0ivIRwbvKAqPg6V3dmRnqwgvIOuEHGH2s88KKmWrBX46+ki6wxIRr2MJDKorhX
         t9AS+fVwMoDMZLnR/CZR+T9Qtl9g+DJw6GP6jt/iTKMpAYtDguQTVq6VtMT0OFey02Sd
         KAhg==
X-Received: by 10.66.219.74 with SMTP id pm10mr4893341pac.93.1444846148889;
        Wed, 14 Oct 2015 11:09:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id qv5sm10865962pbc.71.2015.10.14.11.09.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:09:08 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:39:05 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: lustre: ptlrpc: Remove useless cast on void
 pointer
Message-ID: <0cad1204a1da0561cca6af24462c2da2f3122312.1444845733.git.amitoj1606@gmail.com>
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


