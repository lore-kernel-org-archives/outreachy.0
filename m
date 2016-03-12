X-GM-THRID: 6261096246524510208
X-Received: by 10.129.88.136 with SMTP id m130mr11048903ywb.9.1457775069150;
        Sat, 12 Mar 2016 01:31:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.133 with SMTP id jg5ls355248igb.11.gmail; Sat, 12 Mar
 2016 01:31:08 -0800 (PST)
X-Received: by 10.107.15.91 with SMTP id x88mr10582783ioi.3.1457775068750;
        Sat, 12 Mar 2016 01:31:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ui7si1935150pab.0.2016.03.12.01.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 01:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id td3so91494936pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 01:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VRUEbgr8mHzH5WzE5Y0rMc3aMW35datW6a3O1pIhbZo=;
        b=FUj9/4w/nNNZW1gMNFwHIo+93wOadYJSLv1LcrNNQP8IbEqBnIhU+RQHByj7tz9mKd
         8nJC+tuT63az3kNVIBhSXJUcY8TZ+H3Tw5EvlyCU1olqamBUVYJ/AgCjlpzS1CMfkE6O
         FSzPVeVB5cehSp7vPSST3zvKe9onIPa6Lbr9j6ZwZHljJCPshEoC1S/bco5+9iB0z0/E
         YkIYJFEvJUdX+fIvgOM5sCBsOVF5PpP6PXsflzlnYZ7wvxNJ4fBuEeJeJgLKQNxvf6Db
         gMynd+Tpbo/v41+qt9IDP5wwLAsn+PPTxGYfnn8ojgorrP+rvK2IbWblNJ9HqxBkAZdg
         wEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VRUEbgr8mHzH5WzE5Y0rMc3aMW35datW6a3O1pIhbZo=;
        b=EVvV4WncsVRnxhjZwDhdrhHAh2HADK9AsF2hvCCzQx/nIDeHWjBraU+pUSlghpgD/N
         OpQA4zYAsfcBLIE1Fdn607vF/aazNx2t1wufPaHCFtfM29kK9837fYzzsJepiYghIQTE
         m7z5utadtMMHtU/wYkqLbc9qeJfnywOmntB2hPgWxFZ+3x0V6e9staQ4ZyTlIi59QyVi
         1FHoxSSLHOWcgZvHJ5V/GICfpZyGzbfbX266SbMdj1+8ts2LA7IZoVGfEDCtuCsGsDob
         9toSDrYPzOzJe/Tz3kHZ8qhsJTwWc8uzUjeW4Ns+ij70opEzwPyRsy3aF3PBQWSf1teZ
         AD0g==
X-Gm-Message-State: AD7BkJKuRj64UJnWMkt50c2a3Z7W7te8JFrhzo9af1SKEspzGlVRhrjiGhcP2fB7Zbi5SQ==
X-Received: by 10.66.233.131 with SMTP id tw3mr22754481pac.89.1457775068525;
        Sat, 12 Mar 2016 01:31:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.35.144])
        by smtp.gmail.com with ESMTPSA id r68sm18437224pfa.33.2016.03.12.01.31.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 01:31:08 -0800 (PST)
Date: Sat, 12 Mar 2016 15:01:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: slicoss: Add error check for pci_map_single
Message-ID: <20160312093104.GA6937@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Currently, DMA mapping failure is not detected, causing the hardware
to attempt a DMA from an invalid address.

This patch adds the corresponding error check for pci_map_single i.e.
pci_dma_mapping_error.

Problem found using the following Coccinelle semantic patch:
// <smpl>
@@
expression e1;
identifier x;
@@
 x=
(
*dma_map_single(...)
|
*dma_map_page(...)
)
... when != dma_mapping_error(e1,x)
@@
expression e1;
identifier x;
@@

 x = 
(
*pci_map_single(...)
|
*pci_map_page(...)
)
 ... when != pci_dma_mapping_error(e1,x)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 6d50fc4..fa61e8e 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1855,6 +1855,11 @@ static void slic_xmit_build_request(struct adapter *adapter,
 	ihcmd->u.slic_buffers.totlen = skb->len;
 	phys_addr = pci_map_single(adapter->pcidev, skb->data, skb->len,
 			PCI_DMA_TODEVICE);
+	if (pci_dma_mapping_error(adapter->pcidev, phys_addr)) {
+		kfree_skb(skb);
+		dev_err(&adapter->pcidev->dev, "DMA mapping error\n");
+		return;
+	}
 	ihcmd->u.slic_buffers.bufs[0].paddrl = SLIC_GET_ADDR_LOW(phys_addr);
 	ihcmd->u.slic_buffers.bufs[0].paddrh = SLIC_GET_ADDR_HIGH(phys_addr);
 	ihcmd->u.slic_buffers.bufs[0].length = skb->len;
-- 
1.9.1


