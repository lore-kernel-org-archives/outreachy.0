X-GM-THRID: 6466260847323774976
X-Received: by 10.129.175.70 with SMTP id x6mr17335523ywj.87.1505543675206;
        Fri, 15 Sep 2017 23:34:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.145 with SMTP id e17ls8072000ioj.42.gmail; Fri, 15 Sep
 2017 23:34:34 -0700 (PDT)
X-Received: by 10.176.95.142 with SMTP id b14mr17080198uaj.88.1505543674480;
        Fri, 15 Sep 2017 23:34:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505543674; cv=none;
        d=google.com; s=arc-20160816;
        b=h/yl2P7ADDXyxfvW/WXQ8QYdR2QPpZ4TBgGGm5WWiEnncBMRAS36NCIz+vbL7tiats
         gJun6/ElcaqzXq8gTTTiGr39rmGz37cRlmvSv7pct/Qhac3Fn49+hTBxwZy4kgNqK75r
         jgsv7OE6bgKWMGidogLOuMZ+u4CzeQ55LTu2gLi5k4ByQB3GknTwSMe0q73vD2LXySh5
         b5WttOU37Xdbcb00mASYMHoY+Z4hTRDOhmQ7dqrgVT2smqfggj8AdFCDaTHV+DuZ9Luf
         x//MW4lXoM2nHSIxfy/vwqTUsHt6alV+IratDI0Pn9c617pfdR42qfKdQEpEND8O7L2G
         N5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=CM2ZdDBdB76UCAkE23K1uoSrhBwp++Goba18PRcOCvw=;
        b=U05zR8yEvl5i/54DYk9UEVB0kwag/tdMlJofvkkotE69gwA9EUQ4HQl14n+GZ/4yoI
         DcKtgEzr+LJs24SnW1fPt78dR4LEYSZa4LR6U1ohGGoGqdc7+JeA5nby9Jj+KUB1/0rE
         hZt6bWmJ9C2vuQ8VbH1TyqN7LWzQdPCBZ3QiG/9wgMLJgQtR78bogAqJCgd2SR7p8UbV
         5TXvJeNV5Bkj/B5ZXTLSfQGOJuGIiSHn0tP+w8i0DFs3hfkQb+wfXWow0h0orXzANWj6
         9Tvad8ZB4xAsA0n/lRE7H9nJvCFXcRbiJ2g0ojbvTe3srb9ZYc2MNfqlmlnWFelWXTng
         n76w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lT+Bb/Kr;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 88si244958pfm.20.2017.09.15.23.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:34:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lT+Bb/Kr;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so2381732pgn.5
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 23:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CM2ZdDBdB76UCAkE23K1uoSrhBwp++Goba18PRcOCvw=;
        b=lT+Bb/KrJ1LfiNlQpQVMzbvVjjHbFDpkoxEdGr9yT6/F2gsd2OQ+ek70fgWuJCPbLR
         DSpz9RxWVeETANutv0+n2emmnkIHlbe01X0Nd4KtefDETEQeVPhPsvh2BCBMW2pQua05
         M9gIvDcYlJcvCCD8pAU9Oi1q7BSesMNFKf7oR72Ou9/5PU/G7QC9DYkF0jbzgzSnkfdf
         cud0l53PpPTmJE4Rily7Jj8dZzbdJmWI8wNh2wXoZZtiXdtmf30RZcQvVDEKM+5E/CVL
         WwFbSWBH2fxfEx1ExfERwDKTCL9VsV1XUkVJPKoued9A6RkYATkCq6JMWEreqopDdGFV
         xY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CM2ZdDBdB76UCAkE23K1uoSrhBwp++Goba18PRcOCvw=;
        b=InmncpwCwOlW/+N8BkFVn0WN9PPEaDXNS/2aD3WtzxzLdEAT0vNUAtZelfi8tCM94W
         PAjMfJajDlsqcWoE6yOaxWkvZZeVCaProlmB0STKoqQN8qN7NxB7b7nomZMs4GDfWpDy
         o2oqlqbSLosplAGLwQzCG1TqGsEg9DPAm+lia4LGKBKw8LZ65qKFabzWEkBi7fEVdQ04
         KlCWhxMcROPkMGtXWGF0/ONtVJ/ZM3WQCGKGQlGlqf7RANz63MXenIjgw9puLL7zC92L
         BT2Qa+/Stsw3MBVXZUJAbjPMPNxhtfytMZp13QBzaM/uns84fWgpYixze2r62nQc7l6r
         n2cQ==
X-Gm-Message-State: AHPjjUjZP6NUPg4SzAToiOXwMzOzZ0nDdHZPlcv/T0/r0qp5ndpiTRNP
	MXp4wNee/s0FCQ==
X-Google-Smtp-Source: ADKCNb69/qLtNX+9u+sT1Y8Szii3LiBJHvMHKKnivUz+bSYUVib3o78kCqv/XS40HWFSRaiXH1PTeA==
X-Received: by 10.101.70.138 with SMTP id h10mr26844436pgr.8.1505543674143;
        Fri, 15 Sep 2017 23:34:34 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id i2sm4079131pgq.81.2017.09.15.23.34.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 23:34:33 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: irda: Use !x instead of NULL comparison
Date: Sat, 16 Sep 2017 12:04:27 +0530
Message-Id: <1505543667-4670-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Test for NULL as !x where functions that return NULL on failure
are used. Done using the following semantic patch by coccinelle.

@ is_null @
expression E;
statement S;
@@

E = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

(
if(!E)
   S
|
-if(E==NULL)
+if(!E)
    S
)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/irda/net/discovery.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/irda/net/discovery.c b/drivers/staging/irda/net/discovery.c
index 364d70a..1e54954 100644
--- a/drivers/staging/irda/net/discovery.c
+++ b/drivers/staging/irda/net/discovery.c
@@ -179,7 +179,7 @@ void irlmp_expire_discoveries(hashbin_t *log, __u32 saddr, int force)
 				/* Create the client specific buffer */
 				n = HASHBIN_GET_SIZE(log);
 				buffer = kmalloc(n * sizeof(struct irda_device_info), GFP_ATOMIC);
-				if (buffer == NULL) {
+				if (!buffer) {
 					spin_unlock_irqrestore(&log->hb_spinlock, flags);
 					return;
 				}
@@ -291,7 +291,7 @@ struct irda_device_info *irlmp_copy_discoveries(hashbin_t *log, int *pn,
 				/* Create the client specific buffer */
 				n = HASHBIN_GET_SIZE(log);
 				buffer = kmalloc(n * sizeof(struct irda_device_info), GFP_ATOMIC);
-				if (buffer == NULL) {
+				if (!buffer) {
 					spin_unlock_irqrestore(&log->hb_spinlock, flags);
 					return NULL;
 				}
-- 
2.7.4


