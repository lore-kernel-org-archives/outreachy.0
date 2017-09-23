X-GM-THRID: 6469100544041418752
X-Received: by 10.46.85.13 with SMTP id j13mr142265ljb.5.1506204843256;
        Sat, 23 Sep 2017 15:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.143.66 with SMTP id r63ls632294wmd.7.canary-gmail; Sat, 23
 Sep 2017 15:14:02 -0700 (PDT)
X-Received: by 10.28.229.16 with SMTP id c16mr175535wmh.13.1506204842243;
        Sat, 23 Sep 2017 15:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506204842; cv=none;
        d=google.com; s=arc-20160816;
        b=VNcUlX31GeylH6QeFwmLmm3gZNmJug61uIdLDeRFfJleaVxuFVdlNkb4NLRQ3xLdyq
         IknTo9yF+mqFx/k0GUtCLoYqGmBVhiEZ8VsZMsQzAToxgTcfLIZR7b/ji6Nps5nHP6xQ
         fgj0F5pXdXaPXkLQkDVZvR+YfCxnxU80unfGX1WaREOo1mE20X5isqeZP0f3sBjKJZMd
         v4puVuvpNkiUj4k1QCv3whTKp+YavEMQXe0IWavZE5zEiELgZpTiJfPXhD60sYnXzvio
         5gZ/mXnAHVqwTbvAoVJcfHObQOhM7KXkpq2ks3nmnU/pr58T8GmUnGvFGIiswjIkkWiR
         pKWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ZA18o1KZJS+w/COeAGt+qwC6fmh53UHYieHx6CTRgFw=;
        b=E/23ZocUZpMOUEs/BEna4nPVs2HKD5AH8kJB2z5VC5Zri4yaJPwPmAc9QuEveSjHFl
         DWEa0MDY9kYTvgnjwa5DD9r3WN17rLH74QXXNUOiO8jiUDUdx2xkv9F2dJ1DGXwsk3mR
         wHYBZiZsAj2dzxIRtmAqyAdmOgUBXh9K82wcxHJ3Tj6wMS3dOSvs7C+Gdb5YOfcM2sv5
         KqzP0IQqwKDQ4abOu3V5vLni8Aw7JjTjI4KVEp7PAWc/re8SnupxD5bKJvsy1rAfeAox
         r6phLAlQtQXbv0qGWm5ikEvNy7zdi2OzznLuLsl1XOIcq7UIANDCmMgZqanghScBDxcY
         dDVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jBDezf7A;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id m74si187685wma.0.2017.09.23.15.14.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 15:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jBDezf7A;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g50so2291675wra.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 15:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZA18o1KZJS+w/COeAGt+qwC6fmh53UHYieHx6CTRgFw=;
        b=jBDezf7A1MUHKeiIX9WH355ccEvJN9VNK7YiMD01Lp0K4pAS3bWhC5WNeC96qI6Ocu
         DNSpLLrBo0GnfQbLONNDQTm2fmT7Gl1rMvjiNiBk3lbRntiPZsWYPl24EYb7wnb6pKAq
         l+hcmvJXUCHOVXH8BkYcxfYXO6f0HWZxFf/sm0wfzimBbHy+XZqYDlGKRBO50Z//j8Oy
         T5rt/XoWjdS2Esv2G0TuimVURsTfYqQjE9jlYF5dUOyzMxhanpYzMfjcPjEtYCeE8Dr+
         HFnqNIakxoj5UvJiFsJzyejqYU5rtWxIedNhkrkNQFVCcB6t56Z7MyNFe/h0L4tOYv9C
         v+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZA18o1KZJS+w/COeAGt+qwC6fmh53UHYieHx6CTRgFw=;
        b=tO+snNkO3Olb3Y7iec+zEZrjIM1nFLGCLRbwU0XuuH3pAJqItq8y2wNlGQu+ijfoSI
         9FaUaoFvYB6rlvIZudTcM/hLKzStbSlmJmeOCqp5Mk9HdAq93MZwhEd7BBsp2fbMQcyF
         6hpJaKknGW/iZLY6k/WfRRVuZcSbsY5kObTldcSRHHhf/sOI8zGmFYW3l/ageQfnrcu8
         sSYWVwj86YPWHTPHh4BzcOSFcNGst2GC+JROKrVxGB7e2G4JObH0FJu4F32upj+ehUKf
         ab0F/NgiwpTXHbeQJowNFfAm11tDW7MAjCSnEA4RpddmK6LNRqB3bZnHM8bPTTatC2hl
         40lA==
X-Gm-Message-State: AHPjjUgt30WWFo/+ttTfGlVRyYxB2GNAbu2HUobIKURhFXQmXHsd/nb7
	5+SO3Jbh1XJ6U4Co25o/Gxk=
X-Google-Smtp-Source: AOwi7QDKzbti0R8firX8dV+ZPNodWC/UwYcZY7SohvyNpHYKvCPu0U91vXvz0V3/V22OvpbregUscw==
X-Received: by 10.223.176.133 with SMTP id i5mr2582092wra.17.1506204841847;
        Sat, 23 Sep 2017 15:14:01 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.127.134.154])
        by smtp.gmail.com with ESMTPSA id j15sm1033804wre.87.2017.09.23.15.14.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Sep 2017 15:14:01 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: irda: drivers: Replace seq_printf with seq_puts or seq_putc
Date: Sun, 24 Sep 2017 01:13:44 +0300
Message-Id: <20170923221344.18632-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace seq_printf with seq_puts or seq_putc when
there is no argument list.

Fix the checkpatch warning:
WARNING: Prefer seq_puts to seq_printf

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/irda/drivers/vlsi_ir.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/irda/drivers/vlsi_ir.c b/drivers/staging/irda/drivers/vlsi_ir.c
index 6638784c082e..3dff3c55ddf5 100644
--- a/drivers/staging/irda/drivers/vlsi_ir.c
+++ b/drivers/staging/irda/drivers/vlsi_ir.c
@@ -170,10 +170,10 @@ static void vlsi_proc_pdev(struct seq_file *seq, struct pci_dev *pdev)
 	seq_printf(seq, "pci-power-state: %u\n", (unsigned) pdev->current_state);
 	seq_printf(seq, "resources: irq=%u / io=0x%04x / dma_mask=0x%016Lx\n",
 		   pdev->irq, (unsigned)pci_resource_start(pdev, 0), (unsigned long long)pdev->dma_mask);
-	seq_printf(seq, "hw registers: ");
+	seq_puts(seq, "hw registers: ");
 	for (i = 0; i < 0x20; i++)
 		seq_printf(seq, "%02x", (unsigned)inb((iobase+i)));
-	seq_printf(seq, "\n");
+	seq_putc(seq, '\n');
 }
 		
 static void vlsi_proc_ndev(struct seq_file *seq, struct net_device *ndev)
@@ -193,7 +193,7 @@ static void vlsi_proc_ndev(struct seq_file *seq, struct net_device *ndev)
 	if (!netif_running(ndev))
 		return;
 
-	seq_printf(seq, "\nhw-state:\n");
+	seq_puts(seq, "\nhw-state:\n");
 	pci_read_config_byte(idev->pdev, VLSI_PCI_IRMISC, &byte);
 	seq_printf(seq, "IRMISC:%s%s%s uart%s",
 		(byte&IRMISC_IRRAIL) ? " irrail" : "",
@@ -274,7 +274,7 @@ static void vlsi_proc_ndev(struct seq_file *seq, struct net_device *ndev)
 	word = inw(iobase+VLSI_PIO_RCVBCNT) & RCVBCNT_MASK;
 	seq_printf(seq, "RCVBCNT: rx-fifo filling level = %u\n", word);
 
-	seq_printf(seq, "\nsw-state:\n");
+	seq_puts(seq, "\nsw-state:\n");
 	seq_printf(seq, "IrPHY setup: %d baud - %s encoding\n", idev->baud, 
 		(idev->mode==IFF_SIR)?"SIR":((idev->mode==IFF_MIR)?"MIR":"FIR"));
 	sec = div_s64_rem(ktime_us_delta(ktime_get(), idev->last_rx),
@@ -305,10 +305,10 @@ static void vlsi_proc_ring(struct seq_file *seq, struct vlsi_ring *r)
 	t = atomic_read(&r->tail) & r->mask;
 	seq_printf(seq, "head = %d / tail = %d ", h, t);
 	if (h == t)
-		seq_printf(seq, "(empty)\n");
+		seq_puts(seq, "(empty)\n");
 	else {
 		if (((t+1)&r->mask) == h)
-			seq_printf(seq, "(full)\n");
+			seq_puts(seq, "(full)\n");
 		else
 			seq_printf(seq, "(level = %d)\n", ((unsigned)(t-h) & r->mask)); 
 		rd = &r->rd[h];
@@ -355,13 +355,13 @@ static int vlsi_seq_show(struct seq_file *seq, void *v)
 			seq_printf(seq, "\nPCI controller down - resume_ok = %d\n",
 				idev->resume_ok);
 		if (netif_running(ndev) && idev->rx_ring && idev->tx_ring) {
-			seq_printf(seq, "\n--------- RX ring -----------\n\n");
+			seq_puts(seq, "\n--------- RX ring -----------\n\n");
 			vlsi_proc_ring(seq, idev->rx_ring);
-			seq_printf(seq, "\n--------- TX ring -----------\n\n");
+			seq_puts(seq, "\n--------- TX ring -----------\n\n");
 			vlsi_proc_ring(seq, idev->tx_ring);
 		}
 	}
-	seq_printf(seq, "\n");
+	seq_putc(seq, '\n');
 	spin_unlock_irqrestore(&idev->lock, flags);
 
 	return 0;
-- 
2.11.0


