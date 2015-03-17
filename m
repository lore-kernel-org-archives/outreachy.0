X-GM-THRID: 8708200333312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d44f7e60dab64738
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr9991651lbb.13.1426570437973;
        Mon, 16 Mar 2015 22:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.132 with SMTP id i4ls726826lab.25.gmail; Mon, 16 Mar
 2015 22:33:57 -0700 (PDT)
X-Received: by 10.152.21.9 with SMTP id r9mr9733270lae.0.1426570437286;
        Mon, 16 Mar 2015 22:33:57 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id i8si55350wif.1.2015.03.16.22.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id p45so27368473weo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 22:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UC3G6X+xLYQWJvcPFsqgr6wKzYLfQWKOUSvqjC13zYU=;
        b=msB76InjdF2QAMoIJkm7WF+fOAtv2u7DKzFCtI7ulT6YuZxa6WimW2pMwQiU+sa+3n
         IZEmvVLD6yn6xX/A8QRBjQAbADbQviITCQ4NPZ4ZMojZTSgyJgQATGR5svN/0UByBIaq
         kK4FJXm4DlG+Ibam+P7I6E7EDSB5fNHJ2iaExSO0hwzrXO8BNG9jHiEwJadD0Nh/BafK
         kqDpM7o2ezEM7ONe2mYDse/sX0q2XzaHwKZLz+p5NHlzey5aDG4lR+F8xmDSuPAWZnQU
         6J2gRpu7vDNAkcuDMKSNaN/p2+fx6lU8vHetcNoaxCP15J/5x1XCehNBTPeidS24eYaN
         u8zw==
X-Received: by 10.194.175.137 with SMTP id ca9mr65392914wjc.67.1426570437176;
        Mon, 16 Mar 2015 22:33:57 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id s19sm1019913wik.18.2015.03.16.22.33.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:33:56 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 4EC90C1F80; Tue, 17 Mar 2015 08:33:52 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/4] Staging: comedi: replace pr_err with dev_err
Date: Tue, 17 Mar 2015 08:33:51 +0300
Message-Id: <1426570431-22341-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err with dev_err, when appropriate device
structure is found.
Issue found using the following Coccinelle script:

@r exists@
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+...
when != i == NULL
pr_err@p(...);
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct device *fld;
	...
};

@@
identifier r.i, rr.fld;
position r.p;
@@
-pr_err@p
+dev_err
   (
+ i->fld,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 2f8257c..8bf57b7 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2700,7 +2700,8 @@ struct comedi_device *comedi_alloc_board_minor(struct device *hardware_device)
 		mutex_unlock(&dev->mutex);
 		comedi_device_cleanup(dev);
 		comedi_dev_put(dev);
-		pr_err("ran out of minor numbers for board device files\n");
+		dev_err(hardware_device,
+			"ran out of minor numbers for board device files\n");
 		return ERR_PTR(-EBUSY);
 	}
 	dev->minor = i;
@@ -2753,7 +2754,8 @@ int comedi_alloc_subdevice_minor(struct comedi_subdevice *s)
 	}
 	mutex_unlock(&comedi_subdevice_minor_table_lock);
 	if (i == COMEDI_NUM_SUBDEVICE_MINORS) {
-		pr_err("ran out of minor numbers for subdevice files\n");
+		dev_err(dev->class_dev,
+			"ran out of minor numbers for subdevice files\n");
 		return -EBUSY;
 	}
 	i += COMEDI_NUM_BOARD_MINORS;
-- 
1.9.1


