X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.42.228 with SMTP id j64mr9584826yhb.36.1424441735655;
        Fri, 20 Feb 2015 06:15:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.131 with SMTP id l3ls1322792qgl.5.gmail; Fri, 20 Feb
 2015 06:15:35 -0800 (PST)
X-Received: by 10.236.229.233 with SMTP id h99mr9440792yhq.42.1424441735520;
        Fri, 20 Feb 2015 06:15:35 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id bx1si2203331pdb.2.2015.02.20.06.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 06:15:35 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x232.google.com with SMTP id z10so7806452pdj.12
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 06:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4D5CpKp46EdcYh4pUZeK0Q9dH9njQXO7Q24pP2N4Tio=;
        b=x1gILICSWLymtRqwn7d/nZwpMv132GntdGuHcuInyEv+VCRyBiFkKiTJelHJ9+rKrP
         jcYxfGmzv6/NgTk3QpKBOqL+FeOgyzQR7hd7aiFFXbCsiIDCL6ZmNEuWg29pkLZrwCtN
         m5RZn49r87xKn1WLCl7s/U49XcTEY/4BzcLucskkjqDFlkC3upJmCyHb4OX6xr5ZNe7+
         uaapbKIjzYXwscefSQnBj4/qUDhadGtYXECBqG4x0SE1lvt51MinQHmISF8oQ0yEtSdr
         V+D3bmc/Xcc23rvqH/Xp8MRtRjIoKEhzCTXULIPj+Rsys+Chj53AJFCTqLfQNToHp4Bw
         zNPQ==
X-Received: by 10.70.126.225 with SMTP id nb1mr17328526pdb.40.1424441735233;
        Fri, 20 Feb 2015 06:15:35 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([61.16.142.166])
        by mx.google.com with ESMTPSA id bs2sm11036178pbd.74.2015.02.20.06.15.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 06:15:34 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH v4] Convert simple_strtoul to kstrtoul
Date: Fri, 20 Feb 2015 19:46:16 +0530
Message-Id: <1424441776-20373-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
simple_strtoul is obsolete, use kstrtoul instead.

Replaced simple_strtoul with kstrtoul as both can perform parsing error
checks on the string to the converted. The parsing error condition for
simple_strtoul is that the string to be converted is same as the converted
string, with kstrtoul the return value is non-zero in case of this error.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v4:
    -Updated commit explanation to be more generic.

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


