X-GM-THRID: 6261584556721176576
X-Received: by 10.66.122.101 with SMTP id lr5mr15446819pab.3.1457888980945;
        Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.19 with SMTP id 19ls1039897ioe.96.gmail; Sun, 13 Mar
 2016 10:09:40 -0700 (PDT)
X-Received: by 10.66.220.67 with SMTP id pu3mr15068568pac.19.1457888980673;
        Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id w69si1091799ywa.3.2016.03.13.10.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id y89so10722111qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aXqqRygP6hwJEmtmEw8dnFcZMXuJIZb3y1A0b0JarJY=;
        b=zw+JUF8sn8yUII2uPleh1rrj3XUO8u841V24Wh5hx0f/dTVPWe3Ap6GrpofidZr3h/
         wh+RBCEByibBBsoI/Tg1FyzbkhAzIvGY1pL2nKgrxeTtKBEl+9XFgwUA4iGvaLTTSuD4
         lulLts5F7vTiW8HpguQHVrm4eSQRag54m2KeOuUw/M2pZjWFCHLWiibQC6Hvcnew3fFP
         l0gK49vK66AWxhfnsyFpiRttxZ2wuRVdoneyUE1SajqsETJpbi7GgW7UOhMfgowSCKw9
         P4aglVHJBMqtJSj4gocj1zaTet0f//k345zLNUO1kNKOCTjeTmwoHqgLe2nMO05vjLPI
         w5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aXqqRygP6hwJEmtmEw8dnFcZMXuJIZb3y1A0b0JarJY=;
        b=OKKjvJTIPq3lBGLOOwwa5hAuUJbx2oxhef9h2JFQcvqW9YVHv/wkmgp1mwBH7vujm5
         QyOhiqhsHcvMd+yLHbC17aYbb6RIBwTFXNYFUsqrQEYciR/EWvjT7mGwVJMxZY7KZRh5
         5r5Jy3NYUYvWvw3M3bGGjF0kpYfyDA/m7BqttMQ+Q7sxFspx8yFDMgiSh2ROgC+xQdF6
         +NvZCZsleY2HOf2wRf0tO/yqKYEsYoXXJRB6Bn1AWPbqGi4bHLWfPDGXwme8lYo99W6J
         fx+chPOTOJ+1U8mjAQnaxZ0rZjAMuiaXXUe9qXNZd9EMMtYJQiXdO8GLs5SV8tS2FHVj
         D/RQ==
X-Gm-Message-State: AD7BkJJkYzif0vhKxvfV0WU82OHxuRSumxYOyq2K3icMtE75+otLPhqIk8nYUDguNtJnMA==
X-Received: by 10.140.91.106 with SMTP id y97mr25084927qgd.20.1457888980364;
        Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id f66sm8544530qkb.5.2016.03.13.10.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:09:40 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:09:37 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/8] staging: dgnc: renames dgnc variable to avoid camelcase
Message-ID: <55408a83dee1f092960767c1cc1e6e7d6fa0788c.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames dgnc_TransparentPrint_Major to
dgnc_transparent_print_major in order to avoid
camelcase checkpatch issues:

CHECK: Avoid CamelCase: <dgnc_TransparentPrint_Major>
+       uint            dgnc_TransparentPrint_Major;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index c37f84e..f18d40a 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -214,7 +214,7 @@ struct dgnc_board {
 	bool		dgnc_Major_TransparentPrint_Registered;
 
 	uint		dgnc_serial_major;
-	uint		dgnc_TransparentPrint_Major;
+	uint		dgnc_transparent_print_major;
 
 	uint		TtyRefCnt;
 
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index dfbea0ab..8e1f759 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -288,7 +288,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 
 	dgnc_BoardsByMajor[brd->serial_driver.major] = brd;
 	brd->dgnc_serial_major = brd->serial_driver.major;
-	brd->dgnc_TransparentPrint_Major = brd->print_driver.major;
+	brd->dgnc_transparent_print_major = brd->print_driver.major;
 
 	return rc;
 }
@@ -423,7 +423,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 
 	if (brd->dgnc_Major_TransparentPrint_Registered) {
 		dgnc_BoardsByMajor[brd->print_driver.major] = NULL;
-		brd->dgnc_TransparentPrint_Major = 0;
+		brd->dgnc_transparent_print_major = 0;
 		for (i = 0; i < brd->nasync; i++) {
 			if (brd->channels[i])
 				dgnc_remove_tty_sysfs(brd->channels[i]->
-- 
2.7.2


