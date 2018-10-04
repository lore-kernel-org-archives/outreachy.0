X-GM-THRID: 6608456604457107456
X-Received: by 2002:a9d:ba2:: with SMTP id 31-v6mr5114450oth.49.1538671099120;
        Thu, 04 Oct 2018 09:38:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7559:: with SMTP id b25-v6ls2847849otl.14.gmail; Thu, 04
 Oct 2018 09:38:18 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63NRx32EKAAYsO/Zj8YqSUg8+4u5UTtTp+ReJ8OigyYSJfiWiTJaidM9fRltttVD7gJMKIK
X-Received: by 2002:a9d:738a:: with SMTP id j10-v6mr5008131otk.17.1538671098644;
        Thu, 04 Oct 2018 09:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538671098; cv=none;
        d=google.com; s=arc-20160816;
        b=lEuPRJeTWoaUTdZYRQ2k8tZLot6ttdC9pjRB1UNf00/YZ/4j2oVjG57UVU6GvM93eP
         hX+NKCuWrh4H4S2vVETKQhjWXKejCKNce+Y9CsIUDNjQpmSSq9e8/sc5OdPusKzTbpfJ
         RGErav83asyynL3V5bnh0ZwCf5f8gdHP4onj2fM5wZRQiELJGH/LT+yEMcBLPBPM5vgJ
         fPkPbqMNSejAlz+3r5XRvTXubvRkG1/48GXV+Knnnru9KylqEcWq6TzE+/vEsopC0fi5
         rVQPocwjOfs63T66BiGXxjKGZEs36mdHRn2fhFl+sUyuF82Hy1eLsr0ihr0Wy3S/pvEN
         crBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FUlwA2rrsQfGcZN65aZwRBOmRpZ16vjhqw2zrXiTAgs=;
        b=DCJLqZ9yP+5RQQL19OxL2Gw8O1FdTX2xlt7VZrt4ehVOkONwbSnaMtRR3s2p10zzjg
         qbENBpBUsD5EzabQIQ2dRw3uOfyu1Rxf10krqVAZN/UIOVbGjJKJiV2gcLZ+X3LhUN8V
         kW42Hzwi/0ynQmrxgo5UIEdAvKZV8Kqon9UOJrpVrgOJERp/CY9XMXS4suvROe14zBnh
         q3One/G7I8NZtyUZZ1dA/Abz6QrS2Wv9Oe2wTEtSTH1ISj1WzAdEFkAUPIHApcvn1as7
         jUdMhan8pgt0OLFIA9SPrjmSfVjGGEdYiOWjCelBYgY7to6QJNoNz1Ksbax9v0FY6u98
         AXMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Naihx7Ql;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q24-v6si271602otl.1.2018.10.04.09.38.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 09:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Naihx7Ql;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id a5-v6so3386368pgv.13
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 09:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FUlwA2rrsQfGcZN65aZwRBOmRpZ16vjhqw2zrXiTAgs=;
        b=Naihx7Ql1PHc5izcHIq8P8WlfZCmrpQfb3yKeZqupkmSqkUU9EEsRpqr1FoYdYZKFa
         Oq//P/YilkWRxPrrAVh7y5W9n7mGa37DCZKIeQSmaUzQ8dmP7vM5TDJEdjGlhnVR5XpH
         I1sA/OxKSKZjFUtfsUnPKiqIX4BnOaPnq4LtW87oeywRWIquVNTGB42aNAzuq3/Fbh1+
         GAX1u3E4O/NltNpGeu7H7eLWCfpbcEXipJ+Fp2s7zqBrL+CKz1rJa1Jy7HoKVyBv+dWa
         z9RVWl2bhrW4qby4cDHVpx1gLSSi6TnGgn1kdb25L6CeIH+vrNXLo7SFLKg1f7Ht6vtO
         tk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FUlwA2rrsQfGcZN65aZwRBOmRpZ16vjhqw2zrXiTAgs=;
        b=d9NvsDsmSINiw/q/NV6CaUf8CgYfSDOEzv7VSVH6kO5n4Jucv5dSBH6UWPVbAwqV6c
         GYToceep/I5nxaa3Y2E8FLPCRaFtvpLXCZGbYHHTUgmORV3GYVj9O/FK4FXp3K9rnBY1
         A75Hs/1M7XvOpaOEbRYmfGziZgvzOFksZ7/vPduzTNbHdAMrMvAm5zPyMCXHAIlXxyru
         WCA5UXpPPTQEAa+dS5/BTiHvlVSuUiPkRhJd6Hu7dAgF08uA1kVtRwInwYdA7A6FHm2T
         gP1eFQZbuvwEuoUfAK35wH0bTQaQrn5qEJ4LBLDyLZBvSKdBGsSrvY1KKbLDHmIhnXEu
         5Mmg==
X-Gm-Message-State: ABuFfohIkbrENVxfa8JHWYSC+fA+p+yZXE0bO0y+50LsB/D1Cat+Ed/U
	+Q5WAXVUzTZtJOGbrpHyJvBYXElC
X-Received: by 2002:a63:6c84:: with SMTP id h126-v6mr5553508pgc.237.1538671097854;
        Thu, 04 Oct 2018 09:38:17 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id a5-v6sm1586653pfo.53.2018.10.04.09.38.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 09:38:17 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:08:11 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: mt7621-pci: Prefer using the BIT macro
Message-ID: <1220963c90fd4f2c935c936b6d929946ce79a05e.1538670297.git.mamtashukla555@gmail.com>
References: <cover.1538670297.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538670297.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurrences of (1<<x) with BIT(x).

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
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


