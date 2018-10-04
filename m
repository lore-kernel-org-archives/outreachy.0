X-GM-THRID: 6608456604457107456
X-Received: by 2002:a25:6f54:: with SMTP id k81-v6mr3760719ybc.26.1538671028066;
        Thu, 04 Oct 2018 09:37:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:407:: with SMTP id m7-v6ls1346770ybp.1.gmail; Thu, 04
 Oct 2018 09:37:07 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62NadzbPJZulSHLyhurHw9L9nXmfsNpRTgnvQ2tBXFd47VErRPiJEhoF8Wnj1DvsWCyR5CE
X-Received: by 2002:a25:9888:: with SMTP id l8-v6mr3699714ybo.37.1538671027461;
        Thu, 04 Oct 2018 09:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538671027; cv=none;
        d=google.com; s=arc-20160816;
        b=IpkU+3KdnT5BR73mjsHiFrm9JYyxhjWtxGL11qc+rqSiBHvVob78lMxRhynU/aKbUv
         Y+aAeQg2WKzRLI2t1qQjCysp2lDk0A660q+qGyeU0STUG5mqwFgn4opb2tv5t+2KIFsW
         1Vqucw5d5sCR5memra+cHGfX7NDJzHVRLbNSQJ3tbMgsXyp0Ec3SqJn6yPv+JCzzTQ7b
         JVsY4I36TGzQQZWfL1R6YOvoUoTB8OpUZ9IffbA6hcwCNMz4Bm4CkoEwb82/wD+QP2SW
         0hRTGlEhZKEW7Xsu9H4tZGzijTSJuwJwdNfUAZ2IcZoh3FcEf9wtmh1ekMNGzrHHgdw/
         xPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=Au8pJ2N75kc80xsZC063bOTVtgb+2fdm1AV5tw/vk3p75XuRZmDsKDgO6pa02ikOV+
         dhu8hr6hFFGwCbCEAJL+9bUqvQiIdjq/9qSTZFuzeVbH9+Sj4EnPlXuP3zrOUK7myjS9
         0i06Eleb9k437xb9z2F2E0KypWee2z80+PN5WRKE3wHZox8MneJLKN7mI+c2an08OwfY
         YYjzJzKwe51PV1/iJdKT3uRcdziD4v+NPecs5PUVsWbLhrtb9RJOAOslO9NLM/fOV0s1
         0j8eneylfE5CL3YDrn8sZ354P1q8o8Mb0KkPFvgdC94MUi8G6r+h96Nyl2G9g9k+nDs7
         xijg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dDBiODE/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id f77-v6si193747yba.5.2018.10.04.09.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dDBiODE/";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id i4-v6so3396026pgq.9
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=dDBiODE/0iYK9PJV2WyIwaaIp4uAs/hhYwIwt43RKyQrJS00NWjoS+uyWPlX+PFnjZ
         dMIJnmApagmNaeJ0s7PYvEept2ZYPY+ct2iRi1MkrbGg14WDYP+lZXcyb7WAnUHzaZ3j
         UQtQo2HgTvAMCc4D/M49pM7ha2w0mWnDeR350cZ/PeAJDExWJ9XCK4z2DA0QbyzAm7X6
         O6qR8oXXFqxE6ma3nEH3nlHU+Q/Ra9fY5I7N2Mkwfjx+p6SqxQq7ak+BX8huwUTTQg7y
         N3x+Zl5tNVENehzRVmE6zVwuaCD0Iio8WSaMFiCOn5j8W0/Mmzmux3W9ZmlV0xXJnp/6
         m1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PLmjL6TCChNDLh989bROBmpvgiuU1UIfI7lHM9+XNuc=;
        b=Iv2genzkYUQiNzKRWzFduJwmdBiuC5JnCbgHaICAAq/K/Grz81r6CZpVTKmzQFpUU5
         JWtYPA9yMktSMxTyfixDNh7GrcIaKhr/EfvaDkZOKstUHvkeHQ0fVpyBwr+ocZ+Czhj7
         C7XBxU5N1LKpf8fS7NzPBr/nqDDkk9nSVAPh3mue8WHldL1tuiP/n6W8zCtHLnzTwbm7
         UTGfcutWxiHuMUw4faM/gWAaDZD1vb5Pu22mYT5LkJ+R/OsSUjGxzwZKpkcTCQL2Pyqw
         4CoJ+zeaNxDr0cg4bYwh5+a4/DsmngtORx1dKDtFQV1EM46Z34e5zrvpCYN+cCYwC6ii
         ElbQ==
X-Gm-Message-State: ABuFfoh/EJHBaUO3GRompH3l8XrAzvXHC0WcfZjqhFs96ATWJ+wuJZ/g
	79eGphKxpQ4YV04lkcu/ZOIv/jgY
X-Received: by 2002:a63:3207:: with SMTP id y7-v6mr6502848pgy.101.1538671026931;
        Thu, 04 Oct 2018 09:37:06 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id g17-v6sm8249867pfe.37.2018.10.04.09.37.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:37:06 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:07:00 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: mt7621-pci: spaces preferred around that '<<'
Message-ID: <3a8120a36703fc377aad082f139087335dfa62d9.1538670297.git.mamtashukla555@gmail.com>
References: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538670297.git.mamtashukla555@gmail.com>
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


