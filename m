X-GM-THRID: 6205566056947253248
X-Received: by 10.107.149.4 with SMTP id x4mr1700265iod.20.1444848214853;
        Wed, 14 Oct 2015 11:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.53 with SMTP id 50ls317672qgc.26.gmail; Wed, 14 Oct
 2015 11:43:34 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr4204697ywf.7.1444848214286;
        Wed, 14 Oct 2015 11:43:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id el2si1056490pbb.0.2015.10.14.11.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id cn9so30434762pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5v1tutNIpng6BQJRCVab0qaQ2CAbzitNf6L8sbwQnKU=;
        b=JarfEezLDaadh+488h6Ms6rNf1tlHX7ncReIHw6PBlASNW50a91sMeOTyJe/QmnmhN
         UIDKVFhRScwIZ3iUB2fKqh0malx1chJFjPTVdr/cBZ4zYxRBVLBptAG6spSGVvwX120D
         PQejBIcg6V1rN21LqXU2Um+q+x6H9fl2XXjr+CRSJnJsU4BqME3CUM/EKoQsF4FxFWhV
         d7ddszEysc83B0RwkHCvU+iLa7OlTTZ+H+PKQa8O8gzlYRBUc7o2aTAZy7rlqbcB3sxb
         cu0j/E+8Opvm7dTXiP+CWfTZfSE5TP5G30POmlIZFDCz4Uk30d093HpbKH1FNKoAQQaz
         Tm9g==
X-Received: by 10.68.105.164 with SMTP id gn4mr5158799pbb.44.1444848214137;
        Wed, 14 Oct 2015 11:43:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id db8sm11036068pad.43.2015.10.14.11.43.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:43:33 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:13:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/6] staging: lustre: ptlrpc: service: Remove useless cast
 on void pointer
Message-ID: <b4ea4d1318ac5cd107a5d73f6280e64e2c20afb6.1444847780.git.amitoj1606@gmail.com>
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


