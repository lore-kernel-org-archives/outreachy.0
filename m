X-GM-THRID: 6212511830071312384
X-Received: by 10.129.128.70 with SMTP id q67mr18017239ywf.12.1446463128151;
        Mon, 02 Nov 2015 03:18:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.201 with SMTP id d67ls2344936qgd.55.gmail; Mon, 02 Nov
 2015 03:18:46 -0800 (PST)
X-Received: by 10.129.99.10 with SMTP id x10mr17831395ywb.21.1446463126614;
        Mon, 02 Nov 2015 03:18:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si1967961pbc.1.2015.11.02.03.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 03:18:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so152546237pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 03:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wx7TqGCc037KNUrvL9jpR73xIesUKzQtBhxPpUSPzpQ=;
        b=FmiXhUB3mwqmbg2cFWwuuKunbkFSOVkr6HsubVNs66y84WwIVTTqxh0JFqfdETBySb
         C67lryljzMJReDK4be5LnT4G0XS9IykhiPBgHr5wpYjgQkeballffi4YzWblDdE206km
         4fcTYnPWT3UQAq7Ldyb84MKYpTlm+/i6fvdTfJzAHIyVD5ktSAfgG0IoQLxsHNBXhjNZ
         jKxNCwdFLerYe36wtyYCWriju2mQwSXaWdITroQhG0fQp3F/RtAOCVWaQF0fnuK1fIz3
         4PToCi1hElu/ABDQR1B3LlQoWOsYRyywXeoNj4RaOr4KoQk2eEoOP3tLLj0/05iQAh3e
         notw==
X-Received: by 10.66.123.72 with SMTP id ly8mr26416886pab.92.1446463126433;
        Mon, 02 Nov 2015 03:18:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.183.199])
        by smtp.gmail.com with ESMTPSA id we9sm23545837pab.3.2015.11.02.03.18.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Nov 2015 03:18:46 -0800 (PST)
Date: Mon, 2 Nov 2015 16:48:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rdma: amso1100: c2: Drop wrapper function
Message-ID: <20151102111842.GA2845@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the c2_print_macaddr() wrapper function which calls
the pr_debug standard kernel function only.

c2_print_macaddr() has been replaced by directly calling pr_debug(). 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Corrected indentation
        -Removed comment added in previous version

 drivers/staging/rdma/amso1100/c2.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
index 7f1e794..38360b3 100644
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
+		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
+					netdev->dev_addr, netdev->irq);
+
 		free_netdev(netdev);
 		return NULL;
 	}
@@ -1142,7 +1139,9 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
 	}
 
 	/* Print out the MAC address */
-	c2_print_macaddr(netdev);
+	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
+								netdev->irq);
+
 
 	ret = c2_rnic_init(c2dev);
 	if (ret) {
-- 
1.9.1


