X-GM-THRID: 6212524392435417088
X-Received: by 10.50.30.37 with SMTP id p5mr10673778igh.11.1446466053206;
        Mon, 02 Nov 2015 04:07:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.72 with SMTP id a69ls1285733ioa.108.gmail; Mon, 02 Nov
 2015 04:07:32 -0800 (PST)
X-Received: by 10.107.162.2 with SMTP id l2mr19334710ioe.26.1446466052867;
        Mon, 02 Nov 2015 04:07:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si1964259pbb.0.2015.11.02.04.07.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 04:07:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so147589549pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 04:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=05ST3NVFz/yY7bGcuHcjrVvG8D8d5J0CK2XoiLF7qCU=;
        b=vCnB25yrw/RcXUWcdfrKSwIqYcE7QKWvyA2ePfXQNFI3DoaeVfCN2AN3VeXNahKXHC
         ohFhiAMHvaKjme1uNrrb9KZZFbIbd4Wmk8QunjKk97h82hHhA45g0e3xc5MuVtqRtrS3
         KzPun2kbsxS33hvq3/zZSmbFZrKq/hpcuxkExis6zXARz6jyg0sbL+u8ad5qYlRPDPWv
         APSK5DAo67Hfk2BGVMFNJD36K9eZf0jk2Q6LckOnD6Ttm4IkA4ZZejL4T/mLJuCZFpBn
         vEf6nqCbjhnvTIzqGGMaJpHbHMciOooGAo0+jCDXOpObF7fgzpJNBHZ/pyzeHctuES7x
         lM7g==
X-Received: by 10.68.139.65 with SMTP id qw1mr22029821pbb.34.1446466052515;
        Mon, 02 Nov 2015 04:07:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.183.199])
        by smtp.gmail.com with ESMTPSA id qd5sm23699325pbc.73.2015.11.02.04.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Nov 2015 04:07:31 -0800 (PST)
Date: Mon, 2 Nov 2015 17:37:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rdma: amso1100: Drop wrapper function
Message-ID: <20151102120728.GA3650@amitoj-Inspiron-3542>
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
Changes in v3:
        -Corrected indentation

 drivers/staging/rdma/amso1100/c2.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
index 7f1e794..6688349 100644
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
@@ -908,7 +903,8 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
 	/* Validate the MAC address */
 	if (!is_valid_ether_addr(netdev->dev_addr)) {
 		pr_debug("Invalid MAC Address\n");
-		c2_print_macaddr(netdev);
+		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
+				netdev->dev_addr, netdev->irq);
 		free_netdev(netdev);
 		return NULL;
 	}
@@ -1142,7 +1138,8 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
 	}
 
 	/* Print out the MAC address */
-	c2_print_macaddr(netdev);
+	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, 
+			netdev->irq);
 
 	ret = c2_rnic_init(c2dev);
 	if (ret) {
-- 
1.9.1


