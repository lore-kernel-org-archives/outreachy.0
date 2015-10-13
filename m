X-GM-THRID: 6205156993637810176
X-Received: by 10.182.20.195 with SMTP id p3mr29824427obe.28.1444750702238;
        Tue, 13 Oct 2015 08:38:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.71 with SMTP id y65ls1803853qgd.35.gmail; Tue, 13 Oct
 2015 08:38:21 -0700 (PDT)
X-Received: by 10.140.235.131 with SMTP id g125mr29281341qhc.4.1444750701843;
        Tue, 13 Oct 2015 08:38:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id uv4si435122pac.0.2015.10.13.08.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ve7so24956321pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ugJzFj2m25RBfrxTi2p4z6Y16iNRbKSVcPQWFQhDlJo=;
        b=mWUoJepcN2JEkHu0hc86Nh+Xvf4tOTVfPND/l/mq4Uf96mxgHp6BHEKOjDcskbkBmK
         Zcq7jVyhGpKxFBEeED8R9Om7W4ymR9lw7/+fYkPAoODo6qjkbkATmXGBKw+rU6qDG0xN
         bZv+fRnVGutHPZ+/otkQ+p9aYCDjvlwtUN9JdoHz6mhwbreu46s6fniDTj4AHD5LQD0c
         k+aPOHnCqrKO7HahdsWvQHdBHMe9d8kPe49G+AXIAABRwYxflubk7+LHH6B7xbEXfzjT
         VrBCFWGzTZrJcbwZnuxUQUgNG7FCoR3fNYk4rASv9txF0rpfOLUJUvtYa55JQOQNolXo
         ipxQ==
X-Received: by 10.68.204.37 with SMTP id kv5mr41317658pbc.64.1444750701593;
        Tue, 13 Oct 2015 08:38:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yz3sm4562390pbb.37.2015.10.13.08.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:38:21 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] Staging: comedi: Remove exceptional & on function name
Date: Tue, 13 Oct 2015 21:07:47 +0530
Message-Id: <1444750669-13552-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
References: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.561D256C.00A5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

n this file, function names are otherwise used as pointers without &.

A simplified version of the Coccinelle semantic patch that makes this
change is as follows:

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index ef4b58b..f341421 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -1341,7 +1341,7 @@ static int parse_insn(struct comedi_device *dev, struct comedi_insn *insn,
 			goto out;
 		}
 		/* This looks arbitrary.  It is. */
-		s->busy = &parse_insn;
+		s->busy = parse_insn;
 		switch (insn->insn) {
 		case INSN_READ:
 			ret = s->insn_read(dev, s, insn, data);
-- 
2.1.4


