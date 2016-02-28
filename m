X-GM-THRID: 6256383631195897856
X-Received: by 10.66.193.225 with SMTP id hr1mr9427017pac.34.1456677827381;
        Sun, 28 Feb 2016 08:43:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.3 with SMTP id a3ls1096129ioe.104.gmail; Sun, 28 Feb
 2016 08:43:46 -0800 (PST)
X-Received: by 10.107.10.217 with SMTP id 86mr14991913iok.6.1456677826936;
        Sun, 28 Feb 2016 08:43:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id iq8si703178igb.0.2016.02.28.08.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:43:46 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x230.google.com with SMTP id g203so165154719iof.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Owxi+Yv5rPKFDM0Znd7IQ8ncf+ed7qTzCk8WKSTrZjI=;
        b=JuS90v0kl/1KcT3ioa8oLIFfbRJ5z1zhHEMXtFLyTYAPLuviQN/XWyYrJAezwWfTOK
         BAvysO2pa3kHG15FBo6pDWT2Qy2gsj2Ka8Hcd5cOAgnDWHUqc56hxb/n/bkQRU5AAjsz
         78x4YmMDmCS9i8U0Djpdm+mE9qK61mt3HqTpJzDipLbf9mRbFufrY1URowOO8mfYPy8K
         5V81OrWZ2amYl4ptLiNpunTX4rB8tgf2fUhyeiAhc0gRlzQI60V/YV5GCoffd6/KS40a
         zLEZiKqidof23rjEiNNc0hvhXspcfjFPonuPMSoMh5ypfc6Ngu7CusvS638k34/zGXuR
         DrzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Owxi+Yv5rPKFDM0Znd7IQ8ncf+ed7qTzCk8WKSTrZjI=;
        b=OjPmPOzNoQ+X7MX0b6ceOelRmWBys0zPSrENcscKIcogLrbXqtWwIrHKulRYOCgLOn
         C0BUcnhQOLSfRFGp1keFB79BvJJdJvlaDOhOVTIvtu30/Sy5btCE5LrUtgBWgyGKTaMT
         ENsTKHcm+3+7IUYVfnGwi+OEpV9fxEg0NnPm9BdfcoMDOqHnf+qlDqRs+YrQtysZwmqN
         UdRrEoOkIpZmjXnPzqOh5OAEpqzSZ8WbfhGnDSmaOYI+38GZ/SgY29SOle/Z1pE1EP9T
         VkUQA+xykdMwK5fR2pYwOYJtK2Tg2X7JXmGAHXYw3zyFFww4FkIL6OcfYT2i/8KEaznJ
         W45A==
X-Gm-Message-State: AG10YOQ8oMdffFDlbgYySFaWNLcG8UOv4WpXp13ldEoajESDVemM/iKAV2ZJ2XtvqqFuFQ==
X-Received: by 10.107.34.201 with SMTP id i192mr16430899ioi.161.1456677826788;
        Sun, 28 Feb 2016 08:43:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n3sm5279558igr.17.2016.02.28.08.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:43:46 -0800 (PST)
Date: Sun, 28 Feb 2016 16:42:56 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: ldlm: ldlm_lock.c: Use
 list_for_each_entry()
Message-ID: <20160228214256.GA8171@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry(). Also, remove variable tmp which becomes useless
as a result.
Semantic patch used:

@a@
expression pos, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, head)
+ list_for_each_entry(var, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index 98975ef..010ae02 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -884,11 +884,9 @@ static void search_granted_lock(struct list_head *queue,
 				struct ldlm_lock *req,
 				struct sl_insert_point *prev)
 {
-	struct list_head *tmp;
 	struct ldlm_lock *lock, *mode_end, *policy_end;
 
-	list_for_each(tmp, queue) {
-		lock = list_entry(tmp, struct ldlm_lock, l_res_link);
+	list_for_each_entry(lock, queue, l_res_link) {
 
 		mode_end = list_entry(lock->l_sl_mode.prev,
 					  struct ldlm_lock, l_sl_mode);
@@ -1053,13 +1051,10 @@ static struct ldlm_lock *search_queue(struct list_head *queue,
 				      __u64 flags, int unref)
 {
 	struct ldlm_lock *lock;
-	struct list_head       *tmp;
 
-	list_for_each(tmp, queue) {
+	list_for_each_entry(lock, queue, l_res_link) {
 		enum ldlm_mode match;
 
-		lock = list_entry(tmp, struct ldlm_lock, l_res_link);
-
 		if (lock == old_lock)
 			break;
 
-- 
2.5.0


