X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.203.161 with SMTP id f21mr5396446yho.49.1424369418245;
        Thu, 19 Feb 2015 10:10:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.88.199 with SMTP id bi7ls231537obb.97.gmail; Thu, 19 Feb
 2015 10:10:18 -0800 (PST)
X-Received: by 10.182.39.169 with SMTP id q9mr5655575obk.33.1424369418050;
        Thu, 19 Feb 2015 10:10:18 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id f2si2989049pdg.0.2015.02.19.10.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rd3so1518242pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fGPkSBn8VpKzF5mUcmZWgmEUd8NY2G6YbAtj/n+G3no=;
        b=i1Pu5HCPCbwSnXBRa5WcNJHnJKaA4jgISMZAmfWT+acwc7ZYtqotOIjGOIsTxOW8QL
         kEGo0CRdh1RXj6rVXCRm7ofz5b4I4dSldiYSAUjqw5MT87+x7UwcDmR9yaEfBV9tlM0z
         FG5+Akhkyec4g3qlXq+CvioGogLYLmdwanNy29TLubs5Pc2LROIaWLxZCUYd0UH+/K+k
         YdE2xE1HZKyYKEUOaPA4Ax0PtPM57N6NjJ4XhmAmu2JxRrov8JB1jKlVJA05uR5/4jSg
         apSZ9yv/mLes3fzqjs3w0j7qxJhvyjoUHYnknTsdcCCTBvqeiY/5UwFwP6aYCC0nINZJ
         5uEw==
X-Received: by 10.70.137.99 with SMTP id qh3mr9881300pdb.39.1424369417838;
        Thu, 19 Feb 2015 10:10:17 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([111.93.6.70])
        by mx.google.com with ESMTPSA id b5sm8660748pdj.88.2015.02.19.10.10.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:10:17 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH v3] Convert simple_strtoul to kstrtoul
Date: Thu, 19 Feb 2015 23:41:05 +0530
Message-Id: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
simple_strtoul is obsolete, use kstrtoul instead.

When the string is not converted(parsing error), the strings pointed to by ep and parport[n] are the same. This parsing error results in kstrtoul returning a non-zero value.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v3:
   -Removed few changes made in previous commit which were introducing new checkpatch.pl warnings.

 drivers/staging/media/parport/bw-qcam.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
index 67b9da1..6c9b400 100644
--- a/drivers/staging/media/parport/bw-qcam.c
+++ b/drivers/staging/media/parport/bw-qcam.c
@@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
 	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
 		/* user gave parport parameters */
 		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
-			char *ep;
 			unsigned long r;
-			r = simple_strtoul(parport[n], &ep, 0);
-			if (ep == parport[n]) {
+			if (kstrtoul(parport[n], 0, &r)) {
 				printk(KERN_ERR
 					"bw-qcam: bad port specifier \"%s\"\n",
 					parport[n]);
-- 
1.9.1


