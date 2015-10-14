X-GM-THRID: 6205566056947253248
X-Received: by 10.140.146.134 with SMTP id 128mr3802391qhs.12.1444846086351;
        Wed, 14 Oct 2015 11:08:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.98.33 with SMTP id ef1ls1812908igb.5.canary; Wed, 14 Oct
 2015 11:08:06 -0700 (PDT)
X-Received: by 10.68.184.35 with SMTP id er3mr3781565pbc.2.1444846086020;
        Wed, 14 Oct 2015 11:08:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si956706pac.2.2015.10.14.11.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:08:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so60730119pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BA+VteZHBpt0d9r+LqYBlzK/qQsQEmVn1xj56Z7S5Gc=;
        b=pzaQ6hKj6fk8yfEY4OtDYPaRF8iMRaQOcRSLt98CPaHQiZ68X1bi+aegnhiiP34sfN
         0dT1wHCQYSJczPbxs4entyAZBRbgGDVf6xAFoDaW7+H/e7gfXAxEjKZ/puthyLHViKK+
         v0aMa2yiGp+AWJ/9ZFGCkjWesC01uFYJVu7sRbhgIkyiv1gbgDEb39uOjVP2P+zr7rba
         ai/jzBfTG+LCiAh8lwmXdwvALuB7hdjmHoxKg6VjDcIjqYjVVGnGWeqcZYibvcIkHSRK
         M4wJGdCQomXuVwsWDxcDq+eDSZPGtyhoB0BHMvhGui2lNFj5gM/aZNzfhGK/KR/xkg1Q
         tLdw==
X-Received: by 10.68.109.2 with SMTP id ho2mr5027433pbb.158.1444846085901;
        Wed, 14 Oct 2015 11:08:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id dy8sm10936068pab.38.2015.10.14.11.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:08:05 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:38:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: lustre: ptlrpc: Remove useless cast on void
 pointer
Message-ID: <52788bdf7e05a33e7b651fb297d483abee67401e.1444845733.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/ptlrpc/service.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
index 0131361..22b89c7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/service.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
@@ -1873,7 +1873,7 @@ ptlrpc_check_rqbd_pool(struct ptlrpc_service_part *svcpt)
 static int
 ptlrpc_retry_rqbds(void *arg)
 {
-	struct ptlrpc_service_part *svcpt = (struct ptlrpc_service_part *)arg;
+	struct ptlrpc_service_part *svcpt = arg;
 
 	svcpt->scp_rqbd_timeout = 0;
 	return -ETIMEDOUT;
@@ -1980,7 +1980,7 @@ ptlrpc_wait_event(struct ptlrpc_service_part *svcpt,
  */
 static int ptlrpc_main(void *arg)
 {
-	struct ptlrpc_thread *thread = (struct ptlrpc_thread *)arg;
+	struct ptlrpc_thread *thread = arg;
 	struct ptlrpc_service_part *svcpt = thread->t_svcpt;
 	struct ptlrpc_service *svc = svcpt->scp_service;
 	struct ptlrpc_reply_state *rs;
@@ -2182,7 +2182,7 @@ static int hrt_dont_sleep(struct ptlrpc_hr_thread *hrt,
  */
 static int ptlrpc_hr_main(void *arg)
 {
-	struct ptlrpc_hr_thread	*hrt = (struct ptlrpc_hr_thread *)arg;
+	struct ptlrpc_hr_thread	*hrt = arg;
 	struct ptlrpc_hr_partition *hrp = hrt->hrt_partition;
 	LIST_HEAD	(replies);
 	char threadname[20];
-- 
1.9.1


