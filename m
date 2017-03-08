X-GM-THRID: 6394971085965623296
X-Received: by 10.99.123.24 with SMTP id w24mr1923660pgc.108.1488945234860;
        Tue, 07 Mar 2017 19:53:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls2209475oth.45.gmail; Tue, 07 Mar
 2017 19:53:54 -0800 (PST)
X-Received: by 10.157.60.147 with SMTP id z19mr1677067otc.10.1488945234501;
        Tue, 07 Mar 2017 19:53:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si392175pfd.3.2017.03.07.19.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 19:53:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so2231457pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 19:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8lqe8TXux90jM1FyMIJeZeHkk5wz6IgiqdPNAwyPrt8=;
        b=LbyPvHqninveJ+RAvv5OUyn+HlAdX8oHmwXgvIdOwpGzZWafhI8WZ2NoHZAIcuu8ko
         x8Gh9Mux5hYFGRYklft8MhFVmTqhExtD6XJoSDDQWQ06sKMLeufsfu1An/iidFZNXn4B
         IDnYlledp2Ss94bDIr+y8pc7FCd8NwOC3kY6WI0OQlMRFIWAEHCn+qOfUSpd9tCNIjTI
         U1g0ylNkbnVp+Dh49CFAmX/t0WC85uGW/C2CyaCAKfC1PCVfmi7ZdJ7iLM9iFm2EVJJI
         YpYRgXqWfyWOj/sXSn/GLBTDocJfVvCX+aTMeno5uObvBVVqDHtQtJDNY4B7JXZvJDS9
         yKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8lqe8TXux90jM1FyMIJeZeHkk5wz6IgiqdPNAwyPrt8=;
        b=pt8SqGkeABJRbn6V2cCxUG5LseYiQPQN91guJGGjphgKKBuHhjP1uYPg7A8B7MvVLz
         q4rJKVrzuqCvQPgIaKdNIQMSjAH5iGyJQ59yV8BbUx+2u2HCrMTp8Ko7ySbO6CMpC1Uu
         o8fSI2/1dS5eCkLJU45JeLROZGOMA26ypW9jaH4yJGmgruzCUPTHCB3CmzlZqo+4ARcC
         df7pjurAV9wHYAMnJ2AvcZB0uP0jzHbr8rw7v6sZJCMuOpWkExO9HpWPC15paFnE1QgX
         R2RAW0C4y/xOjRSCjpVLAKXWTZLla0QFQ1Qu8mKJgehWKjAtE4gKTVZn723GfPVlL7CN
         Eq3Q==
X-Gm-Message-State: AMke39mvPV1v9UfpUFos2WdGC45NkEi91BQ4W/ic8m4CJ7i6sLw/7beKe4GboL3MkaraFA==
X-Received: by 10.98.33.129 with SMTP id o1mr4450668pfj.5.1488945234271;
        Tue, 07 Mar 2017 19:53:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.151])
        by smtp.gmail.com with ESMTPSA id a8sm2458267pfa.30.2017.03.07.19.53.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 19:53:53 -0800 (PST)
Message-ID: <58bf8051.081a620a.e7433.8064@mx.google.com>
X-Google-Original-Message-ID: <20170308035345.GA6124@<rvarsha016@gmail.com>>
Date: Wed, 8 Mar 2017 09:23:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: atomisp: Remove useless cast.
References: <cover.1488944614.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488944614.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Explicit type casting of variable, with same type as that of variable,
is not required. The following coccinelle script is used to remove it.

@@
type T;
T *ptr,p;
@@
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)
+ p
)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c    | 2 +-
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c | 2 +-
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c           | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index f39d6f5..0bb6fa0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -1335,7 +1335,7 @@ static int pc_monitoring(void *data)
 {
 	int i = 0;
 
-	(void)data;
+	data;
 	while (true) {
 		if (sh_binary_running) {
 			sh_css_metrics_sample_pcs();
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
index 00b2d16..e274950 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
@@ -1155,7 +1155,7 @@ sp_init_stage(struct ia_css_pipeline_stage *stage,
 	}
 
 	err = sh_css_sp_init_stage(binary,
-			     (const char *)binary_name,
+			     binary_name,
 			     blob_info,
 			     args,
 			     pipe_num,
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
index 358d340..a32c981 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
@@ -553,7 +553,7 @@ int hmm_set(ia_css_ptr virt, int c, unsigned int bytes)
 		vptr = hmm_bo_vmap(bo, true);
 		if (vptr) {
 			vptr = vptr + (virt - bo->start);
-			memset((void *)vptr, c, bytes);
+			memset(vptr, c, bytes);
 			clflush_cache_range(vptr, bytes);
 			hmm_bo_vunmap(bo);
 			return 0;
-- 
2.9.3


