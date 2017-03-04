X-GM-THRID: 6393685966647721984
X-Received: by 10.237.42.225 with SMTP id t88mr2627030qtd.81.1488646031270;
        Sat, 04 Mar 2017 08:47:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls11816981ota.4.gmail; Sat, 04 Mar
 2017 08:47:10 -0800 (PST)
X-Received: by 10.129.62.39 with SMTP id l39mr3479272ywa.61.1488646030973;
        Sat, 04 Mar 2017 08:47:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si578718pfk.0.2017.03.04.08.47.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:47:10 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so12928702pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XkRKL1SLEOQLw4p9942X3C3fk3g0LtrC92TdosFEVX4=;
        b=hTkgxcL9UipbcXTaUXH8PNQOj9aioa3nWAqo7DfGTMTxRsaZd3A/gk7J0xA4gb8Uff
         6whszRMtwRSRmMOvDykqKQzZD71csCbWOKipC+EKO0ZpuovfBeI6g36ukvYp9saN/lig
         EY7Q8k9kQd0+6PfoXa1h28HrI5JkoSDIt0fl/dwrKmLaA2LN8BTpda309Qx6Ll5TNJgc
         XPWZPC/vx/l87Wi6ADst88XqcDajGjAKFAjwuXXEIAbep0uvxfKDMYeSqOb6qEOtZmoG
         0zemJ/sMO/Po3mrv3JGnRmZ01L6AcNosmszDp3Vh3T2GWmuDUhqqo9V9b/floG93e2XJ
         rajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XkRKL1SLEOQLw4p9942X3C3fk3g0LtrC92TdosFEVX4=;
        b=BzA4pHTwT8WXLRLAwqFsUH1ActUN3hioFUxHkwUvyky9WHsA+L7LKKI5pgq6QoSep6
         vwb6/Kch7OSYIe1aFDnJfMvY4fMrHhwB2xpB3epRI95624UuiF0Kr3bHYQxq3CQ2RNUi
         objAD5sh83Yy6Ws4m87kMYQvsIgBKPPLmBTRnvSJ/cEkSY6ncXDLQsyubVsJMJ3GS2ov
         gW+0tm+DEHqsMYhD9YwKdmH7pfzfqbEtsELB6HY1HFNqyY/b01kg2ubVdy6BmCppiSPd
         VH6eadrYzrFNJxILxwzx1N9GLQJRj4Wz9hiowzChAEv+TsHCn15da5r+Sb/68wqJW3l6
         3FkA==
X-Gm-Message-State: AMke39law3jsaDTWcfT1Eu8Psz1OXLtatQjm60vS4PXVJ86SJ+R7LPjXV9aLMYp9VrjrXA==
X-Received: by 10.99.115.12 with SMTP id o12mr10203479pgc.165.1488646030732;
        Sat, 04 Mar 2017 08:47:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm30174621pfi.93.2017.03.04.08.47.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:47:09 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org,
	linux-rpi-kernel@lists.infradead.org,
	outreachy-kernel@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] staging: vc04_services: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 22:16:55 +0530
Message-Id: <1488646015-7059-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
References: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index e0ba0ed..7fa0310 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -52,7 +52,7 @@ int vchiu_queue_init(VCHIU_QUEUE_T *queue, int size)
 	sema_init(&queue->push, 0);
 
 	queue->storage = kzalloc(size * sizeof(VCHIQ_HEADER_T *), GFP_KERNEL);
-	if (queue->storage == NULL) {
+	if (!queue->storage) {
 		vchiu_queue_delete(queue);
 		return 0;
 	}
-- 
2.7.4


