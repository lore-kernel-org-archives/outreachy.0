X-GM-THRID: 8920338792448
X-Received: by 10.194.201.10 with SMTP id jw10mr10929828wjc.3.1426673470357;
        Wed, 18 Mar 2015 03:11:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls135845lac.22.gmail; Wed, 18 Mar
 2015 03:11:09 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr5944033lbb.18.1426673469635;
        Wed, 18 Mar 2015 03:11:09 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id cl5si103256wib.3.2015.03.18.03.11.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id j2so34882583wif.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 03:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=S/GytzKQ6Se2zLoEKIPXmqGtmmf7YhxDZkwEqxcU0zk=;
        b=iLSBD8N3+sjSbs+LL3PyiAfMdDR+wwt5+o/+7ZU/aso19DQJC4hd7+oT+UybTpju2d
         2Wm9K0IwqOiKWEAJ2F7W7aOttbnUmGZ9wCABhLLeaofCmyO6JyC2bHOLHw+Q1g0Gv1Xw
         vDHZwk8eLmnoa0xRR+A45ztPjrIO+WQTNprLepahivQ5jxe2RD0j8U1N/zpccDLh31JC
         HgFOfkP0azOn2TaEhP3r/8LzMNUB7gwSwxFKWvpEBAg9ulFI6wKaNvbGGe6WrV3Xnut0
         BJvXXBF9wXnuPQtckquQPlSW2XHYyqQAoFCdzhTAWfSvHuDFVHLWj/ukbhSKX7cr9tnP
         z1WQ==
X-Received: by 10.195.12.97 with SMTP id ep1mr143355289wjd.134.1426673469554;
        Wed, 18 Mar 2015 03:11:09 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([5.41.223.113])
        by mx.google.com with ESMTPSA id v8sm2571787wib.0.2015.03.18.03.11.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:11:08 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id EA887C1F4B; Wed, 18 Mar 2015 13:11:05 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/3] Staging: media: replace pr_* with dev_*
Date: Wed, 18 Mar 2015 13:09:50 +0300
Message-Id: <1426673390-14408-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err/pr_info with dev_err/dev_infi, when
appropriate device structure is found.

Issues found using the following Coccinelle script. pr_err/dev_err was
substituted with pr_info/dev_info in the later case.

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
identifier r.s, s2, fld;
@@

struct s {
	...
	struct s2 *fld;
	...
};

@rrr@
identifier rr.s2, fld2;
@@

struct s2 {
	...
	struct device fld2;
	...
};
@@
identifier r.i, r.s, rr.fld, rrr.fld2;
position r.p;
@@

-pr_err@p
+dev_err
   (
+ &i->fld->fld2,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 2 +-
 drivers/staging/media/lirc/lirc_sasem.c            | 9 ++++++---
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index ceeef18..17e105e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -209,7 +209,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 	/* Combine all the fields to make CFG1 register of IPIPEIF */
 	tmp = val = get_oneshot_mode(ipipeif->input);
 	if (tmp < 0) {
-		pr_err("ipipeif: links setup required");
+		dev_err(&sd->devnode->dev, "ipipeif: links setup required");
 		return -EINVAL;
 	}
 	val <<= ONESHOT_SHIFT;
diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 9944af1..8ba8311 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -172,7 +172,8 @@ static void delete_context(struct sasem_context *context)
 	kfree(context);
 
 	if (debug)
-		pr_info("%s: context deleted\n", __func__);
+		dev_info(&context->dev->dev, "%s: context deleted\n",
+			 __func__);
 }
 
 static void deregister_from_lirc(struct sasem_context *context)
@@ -182,10 +183,12 @@ static void deregister_from_lirc(struct sasem_context *context)
 
 	retval = lirc_unregister_driver(minor);
 	if (retval)
-		pr_err("%s: unable to deregister from lirc (%d)\n",
+		dev_err(&context->dev->dev,
+			"%s: unable to deregister from lirc (%d)\n",
 		       __func__, retval);
 	else
-		pr_info("Deregistered Sasem driver (minor:%d)\n", minor);
+		dev_info(&context->dev->dev,
+		         "Deregistered Sasem driver (minor:%d)\n", minor);
 
 }
 
-- 
1.9.1


