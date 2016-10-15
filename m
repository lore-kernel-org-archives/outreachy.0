X-GM-THRID: 6341635056758423552
X-Received: by 10.194.96.177 with SMTP id dt17mr492375wjb.21.1476526972681;
        Sat, 15 Oct 2016 03:22:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.206 with SMTP id r197ls358295wme.19.canary; Sat, 15 Oct
 2016 03:22:52 -0700 (PDT)
X-Received: by 10.28.207.135 with SMTP id f129mr110133wmg.7.1476526972178;
        Sat, 15 Oct 2016 03:22:52 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id t63si123971wma.1.2016.10.15.03.22.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 03:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z189so1994017wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 03:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JcjPRWgtEapPhN9RV+TdfRja2pgxTPKDEzlATJtBA8U=;
        b=ODss3DMdefvPbMeQAsMc9Grn+04auTF/BryXLMlREIyyYU2A929wkyI0FcWPYATu37
         9/B009pAMdPpqOHl63znHG0YNE5ENV1+jMDFPbO0Fj0PxR1r+HqffuDJ/DTa7p/MMq89
         rcY6PYsvgh2GPIesvIU+2aOwYU5culpj9Z1AwOb4spI5t0Q+tWb86ZRbGXayvHwhDB37
         wb7PgaDGRq+mUfTbPZJYfV8CreMC+1wE88qbuSXriY8nICNjQzShHlGBU2n8xX11ylpE
         BlyuOyjdYOpGF5Ill6VOENwu2nVRPYbLjuCTAGAYLco6Prwe2rUFFo0Hn5zCPhppOEYB
         3sjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JcjPRWgtEapPhN9RV+TdfRja2pgxTPKDEzlATJtBA8U=;
        b=lCR7dklFxPw17Ni+xzS6anrIvUH1Ewngq/qiBjVZimUgJ0hfqvkYSX+iv5eKdj6hly
         pA9Hq8ig1s/3Nmhx6WIc4D6JKjDiMQIbkTDDl8D0dCOpL7gFtU3hgSSO8UOaZRJWyBnX
         W+0/jiq67P6+R8DfeLQBTDzxgrS9T7xKRmIAINIeECs0oeyu5lp6w3KGvV01WMjfaDZD
         NBtxhdH5cT5/3YGrIWx9rS5mjeKFFeVumIRK9TDSBWEPpd+sP/6Oxs7TG9wKufaGAjd6
         WLttlOMVW2IPLqPjbaqmigJq91jJlyGoG9hs4J0fs/5324GnlTnvFJ1dLDovz46QGU3D
         wMHQ==
X-Gm-Message-State: AA6/9Rm3gv1bpjf3wwpICj2ucryVsPwyTepW+zveWPz4F9oSBCxclVeZiXYpTBP5jwjPeg==
X-Received: by 10.28.49.9 with SMTP id x9mr1426421wmx.105.1476526971757;
        Sat, 15 Oct 2016 03:22:51 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id u77sm2774762wmd.18.2016.10.15.03.22.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 03:22:50 -0700 (PDT)
Date: Sat, 15 Oct 2016 13:22:49 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Sean Hefty <sean.hefty@intel.com>, Doug Ledford <dledford@redhat.com>,
	Hal Rosenstock <hal.rosenstock@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] infiniband: core: No assignment in if statements
Message-ID: <20161015102249.GA11314@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Does the assignment before the statement  'if'.

Found with Coccinelle:
@r1@
identifier ptr;
expression fn;
statement S;
@@

-if ((ptr = fn)) S
+ptr = fn;
+if (ptr) S

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/infiniband/core/addr.c | 3 ++-
 drivers/infiniband/core/cma.c  | 3 ++-
 drivers/infiniband/core/mad.c  | 9 ++++++---
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/infiniband/core/addr.c b/drivers/infiniband/core/addr.c
index 1374541..bc32ba1 100644
--- a/drivers/infiniband/core/addr.c
+++ b/drivers/infiniband/core/addr.c
@@ -445,7 +445,8 @@ static int addr6_resolve(struct sockaddr_in6 *src_in,
 	fl6.flowi6_oif = addr->bound_dev_if;
 
 	dst = ip6_route_output(addr->net, NULL, &fl6);
-	if ((ret = dst->error))
+	ret = dst->error;
+	if (ret)
 		goto put;
 
 	rt = (struct rt6_info *)dst;
diff --git a/drivers/infiniband/core/cma.c b/drivers/infiniband/core/cma.c
index 5f65a78..324ca48 100644
--- a/drivers/infiniband/core/cma.c
+++ b/drivers/infiniband/core/cma.c
@@ -383,7 +383,8 @@ static int cma_comp_exch(struct rdma_id_private *id_priv,
 	int ret;
 
 	spin_lock_irqsave(&id_priv->lock, flags);
-	if ((ret = (id_priv->state == comp)))
+	ret = (id_priv->state == comp);
+	if (ret)
 		id_priv->state = exch;
 	spin_unlock_irqrestore(&id_priv->lock, flags);
 	return ret;
diff --git a/drivers/infiniband/core/mad.c b/drivers/infiniband/core/mad.c
index 2d49228..76dee32 100644
--- a/drivers/infiniband/core/mad.c
+++ b/drivers/infiniband/core/mad.c
@@ -1466,13 +1466,15 @@ static int add_nonoui_reg_req(struct ib_mad_reg_req *mad_reg_req,
 
 		/* Allocate method table for this management class */
 		method = &(*class)->method_table[mgmt_class];
-		if ((ret = allocate_method_table(method)))
+		ret = allocate_method_table(method);
+		if (ret)
 			goto error2;
 	} else {
 		method = &(*class)->method_table[mgmt_class];
 		if (!*method) {
 			/* Allocate method table for this management class */
-			if ((ret = allocate_method_table(method)))
+			ret = allocate_method_table(method);
+			if (ret)
 				goto error1;
 		}
 	}
@@ -1561,7 +1563,8 @@ static int add_oui_reg_req(struct ib_mad_reg_req *mad_reg_req,
 				vclass]->method_table[i];
 			BUG_ON(*method);
 			/* Allocate method table for this OUI */
-			if ((ret = allocate_method_table(method)))
+			ret = allocate_method_table(method);
+			if (ret)
 				goto error3;
 			memcpy((*vendor_table)->vendor_class[vclass]->oui[i],
 			       mad_reg_req->oui, 3);
-- 
2.7.4


