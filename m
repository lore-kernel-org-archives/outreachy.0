X-GM-THRID: 6809167002234519552
X-Received: by 2002:a37:a543:: with SMTP id o64mr3016168qke.460.1585382744588;
        Sat, 28 Mar 2020 01:05:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls5594773qkf.9.gmail; Sat, 28
 Mar 2020 01:05:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtUaWPPosjLBBvfzN+lu0MR7QrhTKuPijba3gLfP+RL+81bqz8zMJznJ/uAhLy+6ImUS1S0
X-Received: by 2002:a37:b4c1:: with SMTP id d184mr3103784qkf.452.1585382743293;
        Sat, 28 Mar 2020 01:05:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585382743; cv=none;
        d=google.com; s=arc-20160816;
        b=q3J3H2EetFwpxOzAs/hPu2YGwAiljGNlvKQa+WO1olad5z8U5GOpDyOcbLkFbEL2iU
         DaSRhoD7+M19DRBb1J/97M+K22AHaKyKzJvGvMSuLB1NmJ3IXxC0hwBM6AdzrbI/sAC3
         o1all0WUVH/Wgj/kkSUcBWzlvq6lc37Rb6aiH7Q5a4Q+34oL7bc2PS3XFw1IlikOIugi
         38gsXKZYe8RczjIr8Xfwa8C2ix0aRE0mAi9LdNfrsMee960gf5N5W8oELQMmMT1sgjze
         wnxRgNeBQZCvAtF63TwiTAeMKlG7alIx9YKUUl+E0sUmO228HerMUF5DArqiLtQ6t9Xv
         h5gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=fYDWVfS31TyhDMDjZRDkIMZV/6rbo79Mkq61DpRoPOI=;
        b=Q06Q9hKHBtrNeY9c1Dkb/XwHVrqYC2J9a9/4OKjlIxjZufITPIHg/LvpEc0BKoetvO
         hieSHWSUtovOq/imz2oEEjvXVhxWXQdWpElnXfZAOnfucfLcUJddjIlUJL5OW0AtWPS8
         QKNn2q8sjK8JhQsDWgF+S37zDyMxspV2U0obSNkRaFc1VcfaSMWNE+1sx9Vtimnt3KRh
         jc8ltzpR+3AVlY+V/Yi/SK05aapaeoA5CmEyQdYhnygXYD3IpD2YNfekMTeLRJN8eMss
         Fulj2yQSo9bRJOd06sW+pYoUg6vVFwKl6fh/KhKJS7cIJJ6HWsfWNv3wlb9EzACvYMoH
         +KiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2tyelzj;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x11si484383qka.4.2020.03.28.01.05.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 01:05:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2tyelzj;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j29so5845543pgl.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 01:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fYDWVfS31TyhDMDjZRDkIMZV/6rbo79Mkq61DpRoPOI=;
        b=g2tyelzjCwLU9LhN2aNwI6s1ANuRClAUltQM2tZ6/Pp98J4eqcGZVLI1rFbe9ApJFW
         4rMNWYKVrj1sY9kZTNIH7RjAT1SJxgrHFVQEUjgYvQSiF80wspWoXUjlCAhKjL8wm6Mq
         Y5vx1VlYdlTUoQyK6j3PIisKT92h0G5IIs1D0/zYP2FD+EP9wizb3ax5hyJbRpkGdYGB
         wz3hPpeD4Is7JaMAUZ4EqnGpcuTpPgnZEUSQSK14jCMCIaCDS6OuaQIGianhGwbplcqX
         w40h8RpSx7+s0eepxtuLXuKYY5YnuooE5Cso92YUz77PuW5atwHK8fFJtdZi8WF11G0A
         YIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fYDWVfS31TyhDMDjZRDkIMZV/6rbo79Mkq61DpRoPOI=;
        b=olRtaf7qHSW8FgqYuOo2ds+FYXYers2ZVp2OVUYRbrfo67+0uiRl3w4Uz30oCx230O
         LPdayGGyi49mApizzCL2pPVmMTWqCHhSBiXWY1mkYOVpZTPRkWHA4jtoPpcXRzPI6Jts
         soWFYvCVIAoapL+g6Q8Z6i4NgptqXStExnyEeMJ1Dw6rumJCFckiIzqU1Bb0IJPD0Kpc
         4VAZv0tRt7c6mMGk7oGi1kYSFQ3jf83tTnI/odkRTdir4TuUZ8pt9RG29WXpbBoBW96N
         3RaFI9pmx4wmBHeslBanDaCGKTK3D4OhCIrZIsqfLI04iRR6x4nI6qRFaUVTAGrd+zAY
         QWQg==
X-Gm-Message-State: ANhLgQ3eGotGnEgtNDaBKKkGFemHG9nhAAc/R/ozMDTV8pN/C0NVr2jV
	ubQbMEQDaTNZsIFPRHj3DLJfTYKPEfkB7g==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr3399016pgt.355.1585382741977;
        Sat, 28 Mar 2020 01:05:41 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.239.176])
        by smtp.googlemail.com with ESMTPSA id c207sm5671124pfb.47.2020.03.28.01.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 01:05:41 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 1/3] staging: qlge: Add space around operators
Date: Sat, 28 Mar 2020 13:32:52 +0530
Message-Id: <20200328080254.6692-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200328080254.6692-1-debsoumyajit100@gmail.com>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>

Add space around various binary operators to improve code readability
and to adhere to the Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c92820f07968..36f8d2890f9a 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -702,7 +702,7 @@ static int ql_get_8000_flash_params(struct ql_adapter *qdev)
 
 	size = sizeof(struct flash_params_8000) / sizeof(u32);
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -765,7 +765,7 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 		return -ETIMEDOUT;
 
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -1543,7 +1543,7 @@ static void ql_process_mac_rx_page(struct ql_adapter *qdev,
 			struct iphdr *iph =
 				(struct iphdr *)((u8 *)addr + hlen);
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1650,7 +1650,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *) skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1939,7 +1939,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *) skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 					     "TCP checksum done!\n");
@@ -4563,7 +4563,7 @@ static void ql_timer(struct timer_list *t)
 		return;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
 static int qlge_probe(struct pci_dev *pdev,
@@ -4635,7 +4635,7 @@ static int qlge_probe(struct pci_dev *pdev,
 	 * the bus goes dead
 	 */
 	timer_setup(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	ql_link_off(qdev);
 	ql_display_dev_info(ndev);
 	atomic_set(&qdev->lb_count, 0);
@@ -4769,7 +4769,7 @@ static void qlge_io_resume(struct pci_dev *pdev)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Device was not running prior to EEH.\n");
 	}
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 }
 
@@ -4831,7 +4831,7 @@ static int qlge_resume(struct pci_dev *pdev)
 			return err;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 
 	return 0;
-- 
2.17.1


