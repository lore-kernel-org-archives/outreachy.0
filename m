X-GM-THRID: 6608456604457107456
X-Received: by 2002:a24:3cc3:: with SMTP id m186-v6mr4241376ita.30.1538651803637;
        Thu, 04 Oct 2018 04:16:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:8979:: with SMTP id u54-v6ls1335313jaj.3.gmail; Thu, 04
 Oct 2018 04:16:42 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60zGuSderlsZ6E2ZIcQW7/MopTYXe0BE9jHj40SqR+gP6c6p7LYzhIaseg17Z3afYLhhQn9
X-Received: by 2002:a02:76d7:: with SMTP id z206-v6mr4587612jab.14.1538651802913;
        Thu, 04 Oct 2018 04:16:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538651802; cv=none;
        d=google.com; s=arc-20160816;
        b=c4YT/Qoz9wVsT0h+hD4Y+gPcS93mr7ZX+wIu2+/M7E2/qQyzD2+dH1hsV4vZKR/LfV
         8H3v3p/xHVqU8ttfh3ruyZZemeEqpUUMzk34Wel/gVMIeD/cRPtauQNBB4uJun2jSktg
         /8gRPlJpVZMk7EajnCQHymANHY3NtgelS0M30sv0ewmI6LKThDi4Abc4K1SdZn/HDjGb
         0fc5UlndSYY6UIzNTfKTzKlk6W3wgeHE0sjg+D6NLXdizeOLBOqMYKrCTofz1eHKo/Y8
         4Uo3tYMkIlwuX1CJOFELcVTFXonD2vNyt8/H2jgqZ/4uELGmOd+Z1TOtGE9JhOHg7MFX
         gnhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=UV7aeAGHIxmLjXXfDN0eoIGAuX9PwzpsjQOrKP1tpXlj2Dji4Ouii3xBDVA+GJvqUc
         /qFD0q7UwaBKjpnBAUGFS2lJ4rSUcpEf0ZFIRB4CSaHN9+hbFDioJv7pxYpw4qq5EUGS
         6Us9lXjeu5vVr3nSqFZfVLrJmb8mlCf4OP5jMU5XYFIIUseF2kYcrsWJLabEVo/3fhMX
         EE7aato5eyvc7ejeVz92Pv2y0JSmBEey9pYW2DOTG1WQdsO9bbInmO10Gxb9c6c+U6KZ
         NcTk4gFMuMyBCjG8be0DTHB6hHihKI6PS7toLY+k5igh8jlFua5JE5vWJ57yMb8Ln97l
         +Dew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4zXXXDO;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 142-v6si283558itl.2.2018.10.04.04.16.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:16:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4zXXXDO;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 80-v6so3001067pgh.10
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=K4zXXXDO2IycNdHHbknzEd7ii0xKbjsE7O2OrKL7DvEggGa/QVE4NNDum9+mj0ZC3G
         2zX3cW6AwGFvmO1DVu7CVNNsmHUhTCtDZKXCRj+KWhVdrSjgNYmGg0w4/oaNBbpcIAEu
         rD4Ms4fSpCTtgjPfu/T5I8LCrdE2QosDmAE6TpY91f1reUruJfpqbzsMTKr0cVUSh+9g
         7hfX8hqDy+SMhkm0IBKy6LypradWAEIuT6uZtCng+8VIWSIDY6e07O7UKhM4/Wpgw7Gz
         09qdtUG1OXVPKE2vHFBGLp9/FJZkTLJCk8OWHvBN1r2DY7rLtjtMN6P5UMfskf7IXf2J
         gS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=s+k+42LVctSlCcmxjfiUt2BgdRoTtObeJ/RazIFgwzyexxUgauNgQ666tdfEBBc92U
         ngqbzlVkycCAQS0vKMSrbb7liTf9wXS+5NW4umfAXdiNENd5qkxa7y3+/2yjvMqYXM2a
         H2oX6tOpXcMjej3mKX/+Jthnfg7LSWvkE2cv7GGnm4WCJzGhktPtWkAQ1uQ6Pg+Yo9PD
         yE0JbTYi04rvb9a6hY4RnFs1t7pcZ7cC1NuenR5S5k2aFMghFC96b77zF0r4S2FodcR0
         Xunh3ecbbh+OAzXR1QhlHGV3sVP/6YgjAPF38W9OAjUCfNMWYPyKnIIqeeFba5+vy5GB
         tznw==
X-Gm-Message-State: ABuFfohrRGulsMQVZ/6uyAULW2gowanx2oWHMZuzIl/P1Z5T8Udl6cW9
	NYedgMYRg33UwC6zGms01/A=
X-Received: by 2002:a62:6786:: with SMTP id t6-v6mr6285807pfj.92.1538651802196;
        Thu, 04 Oct 2018 04:16:42 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id z11-v6sm13610262pfd.99.2018.10.04.04.16.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:16:41 -0700 (PDT)
Date: Thu, 4 Oct 2018 16:46:11 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: mt7621-pci: spaces preferred around that '<<'
Message-ID: <3a8120a36703fc377aad082f139087335dfa62d9.1538646749.git.mamtashukla555@gmail.com>
References: <cover.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538646749.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '<<' to fix checkpatch issue.
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
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


