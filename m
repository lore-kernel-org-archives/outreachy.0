X-GM-THRID: 6261397198909472768
X-Received: by 10.66.122.101 with SMTP id lr5mr13643334pab.3.1457845344073;
        Sat, 12 Mar 2016 21:02:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.162 with SMTP id j31ls3610340qgj.88.gmail; Sat, 12 Mar
 2016 21:02:23 -0800 (PST)
X-Received: by 10.141.7.2 with SMTP id j2mr1591048qhd.10.1457845343240;
        Sat, 12 Mar 2016 21:02:23 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id w69si989413ywa.3.2016.03.12.21.02.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:02:23 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id y89so129943143qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 21:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DsCCJ5PL6q4THnunLUqaPvWwcag2PfO7oKDwJ3G0QmY=;
        b=vrJRThYOtHqWAacE+zGGgYrTF5RtS5FgixwrcH/299iDHPcA7vmD++S02OtGo2D4fN
         xpC81Jvi9DkDrXG26uwN2mQvppA2Ak7HuxcL9va9nE65EAahn1lYsqO85Jz6NyPkX2h3
         FpMs7Es1ibBP4yJtim6WWy1cG9Jwafy50n7pTS6htfTMcFfgQNzlqvfCPhIMuLHDwxsC
         0NZ5LdNbRjdTuGWWT0B/+3z/sX2zBX8otx6IQwkDNrduU03JqqLG6F9DpBraiMaBSceh
         aqDcnaFWu+HN2skYXqNdL7YhffdugYD/mJ8k7opIKpw4kChN/0OSaBdcUQM1LLD6dGM5
         Ducw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DsCCJ5PL6q4THnunLUqaPvWwcag2PfO7oKDwJ3G0QmY=;
        b=gPUrdQwC2Lma0LhDA9EnWXjM/w9/Djt9qTMZxAlzBqvzMsaIP6lbZ52RbRgBQrsLxL
         dPopqGDJODkexHG9syIqsZ4MD3cFcCshr9jj9P6aafkZmdzAOOZI4p5Q8sN+KqIXSYur
         cVvEQT0SsPyT1LIE2brywBt8E1AAJDGxPfeTA897ECW+IWSjE/gWriI8rp3YCI53CkLE
         DSKmL9uyN+4VsntWXMXy1rFWkRsG+dov+NP4Iez7ZGH8ORCq+FvphvObrmff6pzd4ydo
         6QiowrE1wj33p0tdlm1yBs16ohqHX7c4M3hJ1rvsXiu+p3g6IJdJ2ZrlGiPpLVd6trei
         qhwg==
X-Gm-Message-State: AD7BkJKUmDAgj4Oj0bPBiadNm/B/Aqc43oZGxbgqIxBmAUfMYvIbIQPR8UL7+iP88HX5XQ==
X-Received: by 10.140.93.247 with SMTP id d110mr21769971qge.28.1457845342894;
        Sat, 12 Mar 2016 21:02:22 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id 123sm7478262qhu.22.2016.03.12.21.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 21:02:22 -0800 (PST)
Date: Sun, 13 Mar 2016 02:02:17 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: dgnc: fixed variable call
Message-ID: <6934e05075713df777373675e2c8263d7f0a4808.1457844581.git.juliana.orod@gmail.com>
References: <cover.1457844581.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457844581.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes dgnc_major_transparent_print_registered
in dgnc_tty.c that was previously camelcased.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index c723fab..da2c7ed 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -273,7 +273,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 */
 	tty_set_operations(&brd->PrintDriver, &dgnc_tty_ops);
 
-	if (!brd->dgnc_Major_TransparentPrint_Registered) {
+	if (!brd->dgnc_major_transparent_print_registered) {
 		/* Register Transparent Print devices */
 		rc = tty_register_driver(&brd->PrintDriver);
 		if (rc < 0) {
@@ -282,7 +282,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 				rc);
 			return rc;
 		}
-		brd->dgnc_Major_TransparentPrint_Registered = true;
+		brd->dgnc_major_transparent_print_registered = true;
 	}
 
 	dgnc_BoardsByMajor[brd->SerialDriver.major] = brd;
@@ -420,7 +420,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 		brd->dgnc_major_serial_registered = false;
 	}
 
-	if (brd->dgnc_Major_TransparentPrint_Registered) {
+	if (brd->dgnc_major_transparent_print_registered) {
 		dgnc_BoardsByMajor[brd->PrintDriver.major] = NULL;
 		brd->dgnc_TransparentPrint_Major = 0;
 		for (i = 0; i < brd->nasync; i++) {
@@ -430,7 +430,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 			tty_unregister_device(&brd->PrintDriver, i);
 		}
 		tty_unregister_driver(&brd->PrintDriver);
-		brd->dgnc_Major_TransparentPrint_Registered = false;
+		brd->dgnc_major_transparent_print_registered = false;
 	}
 
 	kfree(brd->SerialDriver.ttys);
-- 
2.7.2


