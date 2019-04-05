X-GM-THRID: 6676441168066117632
X-Received: by 2002:aa7:9157:: with SMTP id 23mr426551pfi.13.1554480129142;
        Fri, 05 Apr 2019 09:02:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:838f:: with SMTP id u15ls1230979pfm.14.gmail; Fri, 05
 Apr 2019 09:02:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzdg86aSBkJ+9k8WXUmjFQ0F0wKtXHiZB4jEgwzj+hTXLyyj0bnQQf9d95PXcG9Ca29a2wO
X-Received: by 2002:aa7:8449:: with SMTP id r9mr520656pfn.20.1554480128292;
        Fri, 05 Apr 2019 09:02:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554480128; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVEYuNR4lDluccaseiBCPiAIYfQpNufS7pkR14rrfCXniuFM5H05e7ywnucC4cfNrh
         fjywNCqvTg5wDqDdrCGNv5rOq1fqGrgNH3gXDv4Hw9LY203j/oyubg3eKDQscVRRW1rU
         O9HvlLCMA+1mtM49dOm6RjJuEdPOzG+bo+dvTmqFRksK+bNS896jAQcyOV4/kUT08LwF
         VyC4XFwmODCppx9OkT77SQN7S7+Ov3MHAocugprGhkPTaw14tk8Lice99oZSvlpcGnd8
         6f/KGKgwpuUBOhN8EEeM6eyqZEmGQ7YUyHera1gNM/cBjHqDqBFESzfENn7YZgxUIN0w
         M/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uCL8+WH6fLzofMAQ7gehobWIaIktO0xvoyO2TaRR0c0=;
        b=u6lUkV9rlBATNZN6Rczo0O+OGga+J1rqPdQLPaA0un51L0Jd8OP0Cawd24ie39+wmv
         rT7wwxIeulp6cN0BTGLmugp74h8Q8s6Dj5M1dgyTd6v1+9opAa+8I9ZdNipNRhkptOHj
         rVFvl7izSqRjngOfQEAcbDL7RByF65JKG0XV7QjQm1htXmEicOO9mQibGcOaF9dJtTlr
         iLQt/FwDgFtRyJdcnMdhl4hedlI3wE8eKuZXDGx3scg8DkpvhW5cubps0vuiPR0WAmjH
         Md9VsG7IVERgNGUPvkdlSlJB+96o7E90RAwPJlHoeMjXOYmb6hcpmhJ/uisju3TlCs2v
         qdrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8jhHxBy;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j11si1120883pll.5.2019.04.05.09.02.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:02:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8jhHxBy;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id k3so3302626pga.6
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 09:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uCL8+WH6fLzofMAQ7gehobWIaIktO0xvoyO2TaRR0c0=;
        b=Z8jhHxByfU6LrW7arPh9JArjuuxzI6eDH0pKaUqNaQnHWjywU3ffpA3R79AO5UzcLh
         Yuylp/FDLb4G8oriSQYShl9Y8xa8DBwmZlxfcUeUS2ImAH2XpUYJdIbGmcalzUcXAKLA
         JDhUpYQH/KY2AgRkxXRYax31CtaOuqiWk9W3XA7SCDdnm/RTWx7CWWa6tZxCMGRc4gLx
         XYsWnnX8JcEzYAiScOgnTlMvjFRSoCwKur5i86V50RC942YOUlKik+cRs62m1ON2S5NB
         Iv6BZF1DK7OGcBIMA6zy1BnRJ5n2+XFf4BxJcPzAz1uzoZGxzYA4NDOoyqE8nlE+lLhw
         nckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uCL8+WH6fLzofMAQ7gehobWIaIktO0xvoyO2TaRR0c0=;
        b=Ms/JpphaVuhAph8pEdg54DBRejEU1GI7tFjJok0YCCcCxsTbwaO5D2PODV90wDRz0O
         S94N09KmlJ7xZiV7CVePIufPbAauDFxUne+zwtHP5BEeu6amuJIg0kunOlSpNjJweRS1
         jWLnUfc43KEuXElqOz3PcvjDyMjaJBvuAQb0NXxUsf6glkq+V/iX9GM3AFawD4QUAF5I
         4gmTiDX0uBX3ohR3IQOwohPapa+FmSjocZjwWJfMRnUgtOaNRhXT3XcORmpkG9MrJ0QT
         831ssk1HMSsc/YuBLqRepYfwHicuStFsJ4hV6rLSS0x7dpah2ri4Nqy+FM/SX/fYGLkM
         4DPQ==
X-Gm-Message-State: APjAAAVUFUEUkaNc9JgPGVwzIgptw3vVc51uE1uirWZn1tFm7qkoUHgQ
	4M9rbJgJTgRnMaYM4UNpYQQ=
X-Received: by 2002:a62:388d:: with SMTP id f135mr13318030pfa.103.1554480127945;
        Fri, 05 Apr 2019 09:02:07 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id n1sm25515946pgv.19.2019.04.05.09.01.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:01:57 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [RESEND PATCH v5 2/4] staging: rtl8712: use list_for_each_entry in function _free_network_queue
Date: Fri,  5 Apr 2019 21:30:59 +0530
Message-Id: <20190405160101.8691-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190405160101.8691-1-himadri18.07@gmail.com>
References: <20190405160101.8691-1-himadri18.07@gmail.com>

wlan_network is a list structure. We can avoid using next fileds and
comparison to head of the list in order to iterate over it. Instead
list_for_each_entry macro can be used to do this more tidily.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V5:
        - Use list_for_each_entry
Changes in V4:
        - Change log message
Changes in V3:
        - Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9cf7050e68b1..ad9b1a23abeb 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -152,17 +152,14 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 static void _free_network_queue(struct _adapter *padapter)
 {
 	unsigned long irqL;
-	struct list_head *phead, *plist;
+	struct list_head *phead;
 	struct wlan_network *pnetwork;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct  __queue *scanned_queue = &pmlmepriv->scanned_queue;
 
 	spin_lock_irqsave(&scanned_queue->lock, irqL);
 	phead = &scanned_queue->queue;
-	plist = phead->next;
-	while (!end_of_queue_search(phead, plist)) {
-		pnetwork = container_of(plist, struct wlan_network, list);
-		plist = plist->next;
+	list_for_each_entry(pnetwork, phead, list) {
 		_free_network(pmlmepriv, pnetwork);
 	}
 	spin_unlock_irqrestore(&scanned_queue->lock, irqL);
-- 
2.17.1


