X-GM-THRID: 6608456604457107456
X-Received: by 2002:a63:4c9:: with SMTP id 192-v6mr3849121pge.75.1538724495491;
        Fri, 05 Oct 2018 00:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab88:: with SMTP id f8-v6ls3045576plr.1.gmail; Fri,
 05 Oct 2018 00:28:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Kh8dueFZB2alJtBOSClb5JzrXhEW/a+meS5KY3PaumCsv/ik1kuyAxHIim9RNcxiGug4v
X-Received: by 2002:a17:902:468:: with SMTP id 95-v6mr4976636ple.26.1538724494746;
        Fri, 05 Oct 2018 00:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538724494; cv=none;
        d=google.com; s=arc-20160816;
        b=hq2l9g4Qa8D+cpWfwJ7ACEBAm2A856CH92z9tWWMotnGA8oRVXGEgNkbtwWqJD8EbC
         zakS2DKBlcaLIDmfZAtzIL0Am03cRp7dXu5u6YnZsLwRhlrWsZtmnbE0/+0ZCv7nwK/E
         3bzktz8xX9ZCcKp9lZhedUhaf5YSlG1C1kVOkjAsFAOswsSgN22kMSQOyZck1zUTb40D
         g9BZ+q5Bmz+tfNou82y3XoDkj9tjZV/QCNiT0UnFF6TMSnnAtEYOtDtYxJTbHpCDG9JH
         f8NuVLAfEMM0HVwRKluYIBTjrxIqzaKqRnWQAEkMvdXl79awdm+mGXAOmL1Jg5E1YorR
         Jj9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JzfHFtFAjv9u7EHvbFROzGHsS8VY4fdhDgyPuGfneQQ=;
        b=Gjz5zOPv9hFG2nir6hFDutR12d6SYYnPJo7TaUS3t/mld0bmKbpJD64nBypHrBMmJB
         35MkuKk0T4u89OKTXgnrhX6I9Lk2PfR+sr9kcGca5L0duw6ayCQZ/RjrIANAFvq+8ZnR
         Oj9hCQ0i0rTHrIEeJStjYIm53QTrgghCpuzgY+Tp5x5hlc8RBuBMQ9fPxXP/NbpbR8iZ
         pY7fsQH/ljrdSzmdXRcbZekFU28oBpcuhmCdjtXhjcdoAGZon+ZiEBEREgz2D77WZdjx
         ViHnXlkUXO+Sp2p8H0EDsqn51CvCMPdpZCdbCBBvQFXCISyDw9CR1G3gE+1VDGsBwQdm
         ZZyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VC3mPyDw;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 7-v6si306029pga.5.2018.10.05.00.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VC3mPyDw;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id r64-v6so4637373pfb.13
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JzfHFtFAjv9u7EHvbFROzGHsS8VY4fdhDgyPuGfneQQ=;
        b=VC3mPyDwoIyAs26JFztlEDGhuVHA13UrpZFPkM99gLX6RfshD2oaQV2EA+V9Wjr44p
         VQpJpn8jP9l+w7teRRwiPB846ubClDH47La8jI1jw9B1fWGSAHHRkFdVXzb+TWjQNyOc
         2RmeFpVsOZDudxL64Cw1CYnHLVZJf81BQ2jhn+h4VSQL2xrjZfILwMvXv3IbJe7eBW0O
         dJDA64T6fqKoAIvGri1l9O9elCgTCXHoDxLxbDD7oLYpaxNx+u6d5qYhYPHdwLXqEDxH
         c4AZGSyqeQP/OqXg5xSsc2SRoNIVB1NvdUc2ztP+5cv68xFKOtVgSxcs25ZiT+at+TNJ
         zIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JzfHFtFAjv9u7EHvbFROzGHsS8VY4fdhDgyPuGfneQQ=;
        b=DZhE9krJkfTCN1JbY2UdZhoCpSTfBP28JIn6QmNTPOzQkPo1Gqa749jiGZqKCxCYOY
         9Da+zsPcdH2XUUJl0Zs6G4sA4m4ABISwx2BxW3xAg74kfKaaemrTNrCFW4UZsntCiaj1
         MRa/R3PJPSP+VQTHGYZb63m3akTgcHctS8hs/OTbWhu8+caBN/xKvq5zZkK5WNLlSn6q
         VgZwNjIJBAOB9CyQ4Co16O+SKSPgFUFe7jZS5aRxrrn6q033sl6WjNqFoJyQcPrBpmy+
         Gfso4wihTXh8QwFxZFycizrUF9KNAFfT/12kOxSzflWmcsiihjTk+ZZjmb1mgINMUvyf
         X/Jg==
X-Gm-Message-State: ABuFfoiC1bJ0QkbVQHG+15tTYkiWmHOZXyyTJmYmhauc3+aJu5tRHY6a
	+426WN0G74sacOdl2NR+a0sztG/Ec8I=
X-Received: by 2002:a63:4243:: with SMTP id p64-v6mr9086945pga.127.1538724494338;
        Fri, 05 Oct 2018 00:28:14 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.221.57])
        by smtp.gmail.com with ESMTPSA id t4-v6sm8680829pfh.45.2018.10.05.00.28.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:28:13 -0700 (PDT)
Date: Fri, 5 Oct 2018 12:58:08 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 4/5] staging: mt7621-pci: Add spaces around '<<'
Message-ID: <0e4bd171718b7198fe9bebf2ea9f07a48ad022f9.1538722582.git.mamtashukla555@gmail.com>
References: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538722582.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '<<' to fix checkpatch issue.
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
changes in v2:
-Cleanup for subject line of patch.
-Replace (1<<x) with BIT(x) at possible patch and add as a new patch in
 this series.


 drivers/staging/mt7621-pci/pci-mt7621.c | 40 ++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 780ba56..31b448d 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -474,12 +474,12 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 
 	ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST | RALINK_PCIE1_RST | RALINK_PCIE2_RST);
 
-	*(unsigned int *)(0xbe000060) &= ~(0x3<<10 | 0x3<<3);
-	*(unsigned int *)(0xbe000060) |= 0x1<<10 | 0x1<<3;
+	*(unsigned int *)(0xbe000060) &= ~(0x3 << 10 | 0x3 << 3);
+	*(unsigned int *)(0xbe000060) |= 0x1 << 10 | 0x1 << 3;
 	mdelay(100);
-	*(unsigned int *)(0xbe000600) |= 0x1<<19 | 0x1<<8 | 0x1<<7; // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
+	*(unsigned int *)(0xbe000600) |= 0x1 << 19 | 0x1 << 8 | 0x1 << 7; // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
 	mdelay(100);
-	*(unsigned int *)(0xbe000620) &= ~(0x1<<19 | 0x1<<8 | 0x1<<7);		// clear DATA
+	*(unsigned int *)(0xbe000620) &= ~(0x1 << 19 | 0x1 << 8 | 0x1 << 7);		// clear DATA
 
 	mdelay(100);
 
@@ -510,18 +510,18 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	rt_sysc_m32(RALINK_PCIE_RST, 0, RALINK_RSTCTRL);
 
 	/* Use GPIO control instead of PERST_N */
-	*(unsigned int *)(0xbe000620) |= 0x1<<19 | 0x1<<8 | 0x1<<7;		// set DATA
+	*(unsigned int *)(0xbe000620) |= 0x1 << 19 | 0x1 << 8 | 0x1 << 7;		// set DATA
 	mdelay(1000);
 
 	if ((pcie_read(pcie, RT6855_PCIE0_OFFSET + RALINK_PCI_STATUS) & 0x1) == 0) {
 		printk("PCIE0 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST);
 		rt_sysc_m32(RALINK_PCIE0_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1<<0);
+		pcie_link_status &= ~(1 << 0);
 	} else {
-		pcie_link_status |= 1<<0;
+		pcie_link_status |= 1 << 0;
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1<<20); // enable pcie1 interrupt
+		val |= (1 << 20); // enable pcie1 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
@@ -529,11 +529,11 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		printk("PCIE1 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE1_RST);
 		rt_sysc_m32(RALINK_PCIE1_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1<<1);
+		pcie_link_status &= ~(1 << 1);
 	} else {
-		pcie_link_status |= 1<<1;
+		pcie_link_status |= 1 << 1;
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1<<21); // enable pcie1 interrupt
+		val |= (1 << 21); // enable pcie1 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
@@ -541,11 +541,11 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		printk("PCIE2 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE2_RST);
 		rt_sysc_m32(RALINK_PCIE2_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1<<2);
+		pcie_link_status &= ~(1 << 2);
 	} else {
-		pcie_link_status |= 1<<2;
+		pcie_link_status |= 1 << 2;
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1<<22); // enable pcie2 interrupt
+		val |= (1 << 22); // enable pcie2 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
@@ -646,8 +646,8 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		val = read_config(pcie, 2, 0x4);
 		write_config(pcie, 2, 0x4, val | 0x4);
 		val = read_config(pcie, 2, 0x70c);
-		val &= ~(0xff)<<8;
-		val |= 0x50<<8;
+		val &= ~(0xff) << 8;
+		val |= 0x50 << 8;
 		write_config(pcie, 2, 0x70c, val);
 	case 3:
 	case 5:
@@ -655,15 +655,15 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		val = read_config(pcie, 1, 0x4);
 		write_config(pcie, 1, 0x4, val | 0x4);
 		val = read_config(pcie, 1, 0x70c);
-		val &= ~(0xff)<<8;
-		val |= 0x50<<8;
+		val &= ~(0xff) << 8;
+		val |= 0x50 << 8;
 		write_config(pcie, 1, 0x70c, val);
 	default:
 		val = read_config(pcie, 0, 0x4);
 		write_config(pcie, 0, 0x4, val | 0x4); //bus master enable
 		val = read_config(pcie, 0, 0x70c);
-		val &= ~(0xff)<<8;
-		val |= 0x50<<8;
+		val &= ~(0xff) << 8;
+		val |= 0x50 << 8;
 		write_config(pcie, 0, 0x70c, val);
 	}
 
-- 
1.9.1


