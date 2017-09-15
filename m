X-GM-THRID: 6466114198556377088
X-Received: by 10.237.62.138 with SMTP id n10mr13058841qtf.55.1505509583001;
        Fri, 15 Sep 2017 14:06:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls1741420itj.19.gmail; Fri, 15 Sep
 2017 14:06:22 -0700 (PDT)
X-Received: by 10.101.77.197 with SMTP id q5mr16254471pgt.60.1505509582478;
        Fri, 15 Sep 2017 14:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505509582; cv=none;
        d=google.com; s=arc-20160816;
        b=jJHIA6QacDpuYVqAC56jKCWdMzfYrPEB+KxjdAIjv6IETlcB8thzCVLqY7+6c/CIrY
         tdS5XT3bPG3LV0qM4XWbH73erFFnfsf/gAPof8guu+jPxB1qq2HTWOFNXcIkaBfPSP+i
         1ESlv+uDVl/wsxtneoEVp6Jf9qvPaNws5lKrJHOfywTbfK0Bc+kGDOVbw084yAQRCpdA
         lYtHaHfojqEqMhnkhdwSMUXTt1PTxsfimiCD8arLOujHJSqgwF+QagD6+GMe5tztqBvb
         C9Em343g+tSN56tncXXwQOhQjoz+cwaeZDQwimoF2Q687PzWPft2eipXrAOOajcn906D
         QbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=tdKVsE27b+vF5v7LMVKRU5oxTKw/JqS+L9PeU74qano=;
        b=mOE7Dk0dJIEX6ClCGNJGTItdI466igyN549wMV7JDaf4qcgi5nmc4TyGvN3O0q5EoV
         bxGPjY/U5IikczrQ4YjsjOzmbcjAH0XJJJd3pQPd4ERk+bajHvNxIRtS/2DpRaGC3qhx
         zPlWNVk/C3/BBiVKCIlZlWs6VZIXggyde9YnAhpWi/H+xZCu9p2XBxfiz3+PbtCC4uDc
         O/j10o9wzKxrMUEefurKxXhGQkqqGNq9Ginfj7fDbIXMYy9SCgc8S6TX6lev2h9OrRff
         thEe4JmgTK28SqVKCESkIR89KcvbveGgKGgSDP13XNong4JYk7uMCcLWJhhvrNcvsGKC
         pOMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pN4KIoeo;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s81si187454pfg.19.2017.09.15.14.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pN4KIoeo;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so1736662pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 14:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tdKVsE27b+vF5v7LMVKRU5oxTKw/JqS+L9PeU74qano=;
        b=pN4KIoeowdyFvhZRZ7AGE52PAZ6qSZO+Py4HTyjKKcr3MEcCAxSUc9Ys3vAIUr5Cex
         VeJIYxAw+8sa+cioZHkmf0NGn8PVhVRLAK2hLXtS+nkrSRnPNMucB1/2im2IJfo/S0Jt
         qZDZ3WGN5e0LN4iw+w+SQvdpWcheewOd+qnjKl/au5cJF0sy72ZShmUcNf2zHM57VrP8
         P/ri3F3UzLgw2Byt4Tm8n8728m1ceQlYkyIROUWlo4j7PBflM3ONtecAh07QKEbnqiPw
         /qa8uF51ETkItB9Qf+zuNCtTVRlMQNW3fO3NRri6xTOWiJIOfVhXOuTSUHdOTq2H+3ch
         IfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tdKVsE27b+vF5v7LMVKRU5oxTKw/JqS+L9PeU74qano=;
        b=edPyTLnSMHez566U1qUmiagif9hY3c2J/d+vz0Nds3E7Jygii3f8svOksF8EQqyq1f
         yyYjf9ynIVlE7c8nLSJWeIHry4Rt085AgTXjjLn3u8CTQwMkTQfMkK+QINU9tl7cPomY
         JI5AbUDHWltjeMi6fXJKDSZkI8aOCgOXjo/KOk//z37Cet5aK5FUplaN+NQttGBd4HJe
         CWxm9w0EOpnbQfqpJS8TQPRQkbTUAxmozuB1afu2fhARHb1Ty6xNE+NGKExeAgaOdQNw
         CDRNfOqf7ySLbRbKKkkTZOezyevC9Jc1wVL5SCPInbxUey0mYWegkTPvBdualhGYRLQi
         dZhQ==
X-Gm-Message-State: AHPjjUhqqvQfrZWg1BDU4BVgrilULf3pIeol/egt7n9JzPun1ERDEXYo
	TDTXFShtTWtLWwAa
X-Google-Smtp-Source: ADKCNb71Zp/0UfDoWwwv2GN2avKMj6jz48/EEWcQuTDLA8O93rIOdSkKeNmBZZDgoe/FUap59YTZpA==
X-Received: by 10.98.214.17 with SMTP id r17mr26145479pfg.40.1505509581174;
        Fri, 15 Sep 2017 14:06:21 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id u186sm3319459pgb.35.2017.09.15.14.06.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 14:06:20 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 2/2] Staging: irda: Remove parentheses on the right of assignment
Date: Sat, 16 Sep 2017 02:36:16 +0530
Message-Id: <9380189edb2722544981c868699ade29ab5c297d.1505508423.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505508423.git.srishtishar@gmail.com>
References: <cover.1505508423.git.srishtishar@gmail.com>

Parentheses are not needed on the right hand side of assignment
statement in most cases. Done using the following semantic
patch by coccinelle.

@@
identifier E,F,G,f;
expression e,r;
@@

(
E = (G == F);
|
E = (e == r);
|
E =
-(
...
-)
;
)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/irda/drivers/mcs7780.c | 4 ++--
 drivers/staging/irda/net/irqueue.c     | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
index 2b674d5..d52e9f4 100644
--- a/drivers/staging/irda/drivers/mcs7780.c
+++ b/drivers/staging/irda/drivers/mcs7780.c
@@ -605,7 +605,7 @@ static int mcs_speed_change(struct mcs_cb *mcs)
 	if (mcs->new_speed <= 115200) {
 		rval &= ~MCS_FIR;
 
-		rst = (mcs->speed > 115200);
+		rst = mcs->speed > 115200;
 		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
 
@@ -619,7 +619,7 @@ static int mcs_speed_change(struct mcs_cb *mcs)
 	} else {
 		rval |= MCS_FIR;
 
-		rst = (mcs->speed != 4000000);
+		rst = mcs->speed != 4000000;
 		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
index 5aab072..14291cb 100644
--- a/drivers/staging/irda/net/irqueue.c
+++ b/drivers/staging/irda/net/irqueue.c
@@ -217,7 +217,7 @@ static __u32 hash( const char* name)
 
 	while(*name) {
 		h = (h<<4) + *name++;
-		g = (h & 0xf0000000);
+		g = h & 0xf0000000;
 		if (g)
 			h ^=g>>24;
 		h &=~g;
-- 
2.7.4


