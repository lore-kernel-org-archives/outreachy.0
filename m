X-GM-THRID: 6212428372949073920
X-Received: by 10.66.233.8 with SMTP id ts8mr16406117pac.13.1446443696432;
        Sun, 01 Nov 2015 21:54:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.22.70 with SMTP id b6ls129555igf.16.gmail; Sun, 01 Nov 2015
 21:54:56 -0800 (PST)
X-Received: by 10.50.30.37 with SMTP id p5mr9616518igh.11.1446443696106;
        Sun, 01 Nov 2015 21:54:56 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id sm2si1673571pab.0.2015.11.01.21.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 21:54:56 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ec8so28613549pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 21:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=dT0mP3wiwWFdwcQ+171FpLP8NXVaG7LyifaF/2HstO0=;
        b=TGx+CwnMpyOdgoCOorMmtq8ZXzkfYyplWsC2b6IlxfHEJbqaKQfHh0DBCsdl6ZExPR
         alR3woOTN/9LFMDPnp3pZkLnTcdkknGlsiSNqRbKk4sJx6jPPPatYnTmnoqTPXhMuS2c
         zKENqbErsQmAU675AeBkxYjCHpFkUimwejhSWTdzFTfuRrbSj0bW8F/q0iSLGlweHYDg
         wuJmQupOL68zw9t3d+lS1RflW/SrzXT6URdsRUo9dJnrfTo+zHiSxHFh8YGDwjRQ3DUN
         9xVOwcAVE7wqKknBTA6Y2ElEMqcScS3G0lvBkQDo19QpZBTOioFBrgAmqlGIn3PGnuHh
         Q0ZQ==
X-Received: by 10.68.217.41 with SMTP id ov9mr25267702pbc.118.1446443695937;
        Sun, 01 Nov 2015 21:54:55 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id xe9sm21572485pbc.4.2015.11.01.21.54.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 21:54:55 -0800 (PST)
Date: Mon, 2 Nov 2015 11:24:51 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: amso1100: c2: Remove wrapper function
Message-ID: <20151102055451.GA1326@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the c2_print_macaddr() wrapper function which calls
the pr_debug standard kernel function only. 

c2_print_macaddr() has been replaced by the pr_debug() call and
comment has been been added to ensure readability.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/amso1100/c2.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
index 7f1e794..04d7afd 100644
--- a/drivers/staging/rdma/amso1100/c2.c
+++ b/drivers/staging/rdma/amso1100/c2.c
@@ -87,11 +87,6 @@ static struct pci_device_id c2_pci_table[] = {
 
 MODULE_DEVICE_TABLE(pci, c2_pci_table);
 
-static void c2_print_macaddr(struct net_device *netdev)
-{
-	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, netdev->irq);
-}
-
 static void c2_set_rxbufsize(struct c2_port *c2_port)
 {
 	struct net_device *netdev = c2_port->netdev;
@@ -908,7 +903,9 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
 	/* Validate the MAC address */
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
 		pr_debug("Invalid MAC Address\n");
-		c2_print_macaddr(netdev);
+		/* Print out the MAC address */
+		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
+						netdev->dev_addr, netdev->irq);
 		free_netdev(netdev);
 		return NULL;
 	}
@@ -1142,7 +1139,8 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
 	}
 
 	/* Print out the MAC address */
-	c2_print_macaddr(netdev);
+	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
+								netdev->irq);
 
 	ret = c2_rnic_init(c2dev);
 	if (ret) {
-- 
1.9.1


