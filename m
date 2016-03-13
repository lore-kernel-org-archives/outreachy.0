X-GM-THRID: 6261584556721176576
X-Received: by 10.107.6.149 with SMTP id f21mr14948395ioi.25.1457891019011;
        Sun, 13 Mar 2016 10:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.213.233 with SMTP id nv9ls1307364obc.90.gmail; Sun, 13 Mar
 2016 10:43:38 -0700 (PDT)
X-Received: by 10.182.106.11 with SMTP id gq11mr15382336obb.45.1457891018704;
        Sun, 13 Mar 2016 10:43:38 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si1160767ywc.0.2016.03.13.10.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id t4so10776894qge.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aXqqRygP6hwJEmtmEw8dnFcZMXuJIZb3y1A0b0JarJY=;
        b=G9Hjv51fZu5HHbcwwpPqM/qnJUUreDifeWYEdm8hh5n1LO6Jk9GXHvIJVyot8iDpTB
         vZPp4yebVK4mdty/3WwXfnGfKVRBvoQcsSJyuME7sqQGZi7totjRFvVbJ1Qg2/SQiAQg
         4Ae1IXLdHb/1cxq0IB9mU/49lWdEiGMmg/OTkkT1vK+Dm0sdHeH1auciZc94MAlWbpVn
         E6TYqqUDYAnrN1tQgimJQE/uH7rUvH5x5mKLPr8w31n//o3+nvLad1s3P7PXdmlIaIG8
         4jUU1i28htByJc8kF9JDygLA48TPxY8elUNDF9Ud6L+BvOHNjSWKHRZGscG/IjGjTDbP
         mRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aXqqRygP6hwJEmtmEw8dnFcZMXuJIZb3y1A0b0JarJY=;
        b=ZREygPs+SQ1cgPHrvfpBhLV9xxVErmDOL3c35s12gBUcnybZLiXWTueWTd1+AfQ3L9
         hhGfm6QpmHG/IC+iNGmwepnusyRGBg33prqsquYJbvqxlJlE5eR/r08p9pWIFzqSlPc8
         MIe2Qz7PWBtls7+x9IMl30l0tPUiA1aq5Dwr188kMVXjT5iWz2YOnWEI9QpJ8+hSqlF5
         aMDgtctEX6KO2rCSGebn2aVyXqkhh1CIj3Rf28+oeGEOdbQXI1K+LpGZRbisW2lv0Lts
         KBucP5L+UTQpE+Lh6I+PhyaqZ3riwOnAuvSSsDPY4EqqAmzfbAkJZZgrb4UVpwAQMRp7
         kVpg==
X-Gm-Message-State: AD7BkJIwszxFsc4avazGCKrG5KzKHu+PX3Ss3pahQ+Rq6Oqp/BhthL22xPwjbRC5GefNSg==
X-Received: by 10.140.174.2 with SMTP id u2mr25460501qhu.35.1457891018441;
        Sun, 13 Mar 2016 10:43:38 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id e11sm8554993qkb.39.2016.03.13.10.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:43:38 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:43:35 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/8] staging: dgnc: renames dgnc variable to avoid
 camelcase
Message-ID: <55408a83dee1f092960767c1cc1e6e7d6fa0788c.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
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


