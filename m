X-GM-THRID: 6608456604457107456
X-Received: by 2002:a02:9ba7:: with SMTP id p36-v6mr7745840jak.9.1538724734412;
        Fri, 05 Oct 2018 00:32:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2e83:: with SMTP id i125-v6ls272525ita.2.canary-gmail;
 Fri, 05 Oct 2018 00:32:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61dp3PxMBpXlrCZNOEnFfPu1+cGC2N/pu1fCYXTGqdg4OX6E+sfZaCKEMp7M9WHBUu+Pokh
X-Received: by 2002:a24:4243:: with SMTP id i64-v6mr7698861itb.8.1538724733629;
        Fri, 05 Oct 2018 00:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538724733; cv=none;
        d=google.com; s=arc-20160816;
        b=VdmWvlXuAgmoNfaEUvkPOFkK7tz33pVzj65f+Oukx47uuThk94Lu5yTHyvYyCI6aFH
         HUcefOr25wyEN404Fl1Ry2fu6P5P8B3EfYSeqlN8urYJb/R2VbaNZSljcX7ocv7IbG7w
         VxECELqviRybztSCYzPLhl/FzCEaokiSQULvG98jmiQYrpwgJ5lonXRsvFKZqiLqcgpC
         EQKNebOukpDaDhCBI7hW9Hxd61HF/AM0g7I8XWl4F3L4kNJfxXj/gSCchIONDZ64GGAS
         /KNhwtBwRHR/ibF6rUqificywDI1wJp9W8GcqZwR4nE6xq2510i3mbkEPu64OpBwTLIJ
         80Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BYbV5aIkX+PAbtlBw3gMfA91STJrhUMMge2+kUX5wD8=;
        b=vIqif02wxhXYNrdKAItLun6v/+cCc7JpRtBNQwr9QH2FVfZihoa839pzfiTvmTFCfJ
         d2PmrWyYDH7lF9UQB96SUJCMG3BZmFbfSzw79ESgmfyYgAeSRbZd78QCLmwmxmoIyuRT
         zW3p0GqZBg4ulFb9+15ro/XtPNxAV3Ozl7QwrPHMrPoLZ2EQ7cC3r+ut9YVW0H2M5VkD
         NPxLGssnhXRVjK8SrIPzeshqn6+W874BSVJhD73QPRlX2B0SDgbHlPrrKaSd586Pw9Li
         uq4+nLGfhJ7NjTr4Toa8XNawFh0Og9U22fzD9FMtOlaRqUk4PRP/1tNXZ8VpeB1Kd+s+
         WvhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whecy1yu;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id l71-v6si141505itl.2.2018.10.05.00.32.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whecy1yu;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id c10-v6so4356751pgq.4
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BYbV5aIkX+PAbtlBw3gMfA91STJrhUMMge2+kUX5wD8=;
        b=Whecy1yu9Us7svcJF8yATKd/E2Qtxfth9ktEsFpeQyeb28pY+SXs/DyM4eBjH1MMP6
         /XH61zTlfnxQMY9of9Hjb/F0I4u07gzGz4KV0upcZZ2z1LiSex1U7KKxUP47Xvt4ESBX
         s61auOEPhn6aDVwt9xhhbFcyijNkB0b8acLkwZhxGlGPEnKruVHvETSdWuhjd4dhLlXj
         7vr/r0wtq+zz1qDB5BOhZFzqbeARX6TCrl3r5bS9A4456yw61h7es9yE9ObWd2huZdlw
         RupjT1NUmnvVKIeBH9l4DK3e6e4t76n5Ba4MWAYjqnXNhrCcZYU5yTwNSQn1/nd/JAUP
         rbkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BYbV5aIkX+PAbtlBw3gMfA91STJrhUMMge2+kUX5wD8=;
        b=acM1htnpBWZSRUWkCM4cO4LobzYidoEop6vC+t+tHBwM8tjjte0l4lBxIRsgekYm1S
         JKcDZ7WIaKpvqpSq5SXU+STbMiWo9PJcjwld1VHnmsFRV7hQI8Swip0Z42O0vldUJ6Y1
         oaD+Hpgxx5ROjdUSHYJBqp3qWlL/vPVgtU8tFvxB2HbunouJYf5T7Oyah01MN1aIoe1E
         KXcT1SUaV6Up0Fw0UYw5e5TdLqbl5EeG6x1U2bXNmjNgZv1FbYTMAWlIOIDq2ATGsMtK
         q6VeFSSYJG0N5R8oWY5H/9/FKzQdFmm8tWrQ69C4HK2Q0VtsDTa4dlFP0uFv2dPQhQEy
         moCQ==
X-Gm-Message-State: ABuFfogPUVGWLZPEGD2bkahw3p6VxsLPCTz+zpnE+D7agB4TnwG63XSS
	Zow5ZhoQmeCDS8NLFvbDxkcPjjtIYtw=
X-Received: by 2002:a63:906:: with SMTP id 6-v6mr8855086pgj.92.1538724733207;
        Fri, 05 Oct 2018 00:32:13 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([42.106.242.255])
        by smtp.gmail.com with ESMTPSA id l26-v6sm10829987pfg.161.2018.10.05.00.32.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:32:12 -0700 (PDT)
Date: Fri, 5 Oct 2018 13:02:06 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 5/5] staging: mt7621-pci: Prefer using the BIT macro
Message-ID: <2440a2e023ac132d1cadee78c857cabd0d8f28a9.1538722582.git.mamtashukla555@gmail.com>
References: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538722582.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurrences of (1<<x) with BIT(x).

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v2:
-Add this patch as a new patch in this patch series. 

 drivers/staging/mt7621-pci/pci-mt7621.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 31b448d..8371a9c 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -475,11 +475,11 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST | RALINK_PCIE1_RST | RALINK_PCIE2_RST);
 
 	*(unsigned int *)(0xbe000060) &= ~(0x3 << 10 | 0x3 << 3);
-	*(unsigned int *)(0xbe000060) |= 0x1 << 10 | 0x1 << 3;
+	*(unsigned int *)(0xbe000060) |=  BIT(10) | BIT(3);
 	mdelay(100);
-	*(unsigned int *)(0xbe000600) |= 0x1 << 19 | 0x1 << 8 | 0x1 << 7; // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
+	*(unsigned int *)(0xbe000600) |= BIT(19) | BIT(8) | BIT(7); // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
 	mdelay(100);
-	*(unsigned int *)(0xbe000620) &= ~(0x1 << 19 | 0x1 << 8 | 0x1 << 7);		// clear DATA
+	*(unsigned int *)(0xbe000620) &= ~(BIT(19) | BIT(8) | BIT(7));		// clear DATA
 
 	mdelay(100);
 
@@ -510,18 +510,18 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	rt_sysc_m32(RALINK_PCIE_RST, 0, RALINK_RSTCTRL);
 
 	/* Use GPIO control instead of PERST_N */
-	*(unsigned int *)(0xbe000620) |= 0x1 << 19 | 0x1 << 8 | 0x1 << 7;		// set DATA
+	*(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7);		// set DATA
 	mdelay(1000);
 
 	if ((pcie_read(pcie, RT6855_PCIE0_OFFSET + RALINK_PCI_STATUS) & 0x1) == 0) {
 		printk("PCIE0 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST);
 		rt_sysc_m32(RALINK_PCIE0_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1 << 0);
+		pcie_link_status &= ~(BIT(0));
 	} else {
-		pcie_link_status |= 1 << 0;
+		pcie_link_status |=  BIT(0);
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1 << 20); // enable pcie1 interrupt
+		val |= BIT(20); // enable pcie1 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
@@ -529,11 +529,11 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		printk("PCIE1 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE1_RST);
 		rt_sysc_m32(RALINK_PCIE1_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1 << 1);
+		pcie_link_status &= ~(BIT(1));
 	} else {
-		pcie_link_status |= 1 << 1;
+		pcie_link_status |= BIT(1);
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1 << 21); // enable pcie1 interrupt
+		val |= BIT(21); // enable pcie1 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
@@ -541,11 +541,11 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		printk("PCIE2 no card, disable it(RST&CLK)\n");
 		ASSERT_SYSRST_PCIE(RALINK_PCIE2_RST);
 		rt_sysc_m32(RALINK_PCIE2_CLK_EN, 0, RALINK_CLKCFG1);
-		pcie_link_status &= ~(1 << 2);
+		pcie_link_status &= ~(BIT(2));
 	} else {
-		pcie_link_status |= 1 << 2;
+		pcie_link_status |=  BIT(2);
 		val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
-		val |= (1 << 22); // enable pcie2 interrupt
+		val |= BIT(22); // enable pcie2 interrupt
 		pcie_write(pcie, val, RALINK_PCI_PCIMSK_ADDR);
 	}
 
-- 
1.9.1


