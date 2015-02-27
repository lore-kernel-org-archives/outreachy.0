X-GM-THRID: 4475579269120
X-Received: by 10.112.40.81 with SMTP id v17mr2045169lbk.5.1425041722572;
        Fri, 27 Feb 2015 04:55:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls156354lae.93.gmail; Fri, 27 Feb
 2015 04:55:22 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr2043696lah.8.1425041721892;
        Fri, 27 Feb 2015 04:55:21 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id ta1si109948wic.1.2015.02.27.04.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:55:21 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id u56so20215561wes.10
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=bI1dN/pIH7m5+2e5LHvyj4ozfpwueEsYhleL3ueCyKk=;
        b=K4MuAmIN3MUv7xQifC+5JjaDuFCk9F7XkgFFFKRKt1pxh+hTnemSy0aBUxC9g6iojs
         0pqij5K4ly389Is1gWySiqW9BjvmP0IUFIKkGlVMaKRuK+Rd14Bdp5GDiAs5ii7JHtxM
         0r/FL47Pql3Mpnuk4sK5BQwJUmDNkTKqTwWBHKBETEnxXVWA+dgD4c54adZtyDCL3moL
         1gFWyei3HZ76RwG96ZzJyhY/hnA9QCuYQg5TmxYq1YmJc26lkq8fSyLbKwIWqLvGhLjd
         HuHOLby7dgDfgJjcmW8K7g+MA7HHwnOkPhQjQIVSb75yQIOUpoDq2wflVvck/yQwnP5G
         LMpw==
X-Received: by 10.194.87.100 with SMTP id w4mr26473553wjz.65.1425041721794;
        Fri, 27 Feb 2015 04:55:21 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id j7sm2736533wix.4.2015.02.27.04.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:55:21 -0800 (PST)
Date: Fri, 27 Feb 2015 14:55:16 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/24] staging: lustre: ptlrpc: remove unused variable
Message-ID: <f26743a394565f746359bb1b3c83cde220c2aa2a.1425035005.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/nrs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/nrs.c b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
index d5fd721..371af9c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/nrs.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
@@ -912,7 +912,6 @@ static int nrs_register_policies_locked(struct ptlrpc_nrs *nrs)
 static int nrs_svcpt_setup_locked0(struct ptlrpc_nrs *nrs,
 				   struct ptlrpc_service_part *svcpt)
 {
-	int				rc;
 	enum ptlrpc_nrs_queue_type	queue;
 
 	LASSERT(mutex_is_locked(&nrs_core.nrs_mutex));
@@ -930,9 +929,7 @@ static int nrs_svcpt_setup_locked0(struct ptlrpc_nrs *nrs,
 	INIT_LIST_HEAD(&nrs->nrs_policy_list);
 	INIT_LIST_HEAD(&nrs->nrs_policy_queued);
 
-	rc = nrs_register_policies_locked(nrs);
-
-	return rc;
+	return nrs_register_policies_locked(nrs);
 }
 
 /**
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

