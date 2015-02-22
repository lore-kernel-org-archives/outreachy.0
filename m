X-GM-THRID: 2273030701056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1bc0e2b2eb529af1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.168 with SMTP id r8mr4926wiy.6.1424569941517;
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.227 with SMTP id o3ls333726wiv.3.gmail; Sat, 21 Feb
 2015 17:52:21 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr480236wiv.0.1424569941230;
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id el6si402501wib.2.2015.02.21.17.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so13086452wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Bv/FHFpygERCfxwNvgn7gA/Ivc0irfWuVSInJdfudG8=;
        b=Q67ueL5rDnWibMkUq0ai3THbrzje2bby68XvKK5h0qlsoE3HsIt7rYTq4uCOXeWp12
         uJ4+gOSTxPiAac4UcnpFQcFwkDv1HLHjFkQhCVEPwNYZyK8GqvYNsRO/ww25oBcFn4Lw
         9gERQf8159V24DwF1y00iO+VSYZ7cxF48cFgEJVCqQpNem9pS2CG9Zo2PS7Mqyp42nX9
         Y43Okxibfsu3uw01XyjdS7q0nczCcau5G2UhslXoKPaq4dgwPcn50Da9L5XFQn5nIsWO
         LbigiaUcL2JX2RcfQVxeXPfBrF/6NW1CLEd1r++ic1jwu063sDRdIoF5qIwPOvNSnDl/
         oG/A==
X-Received: by 10.180.82.40 with SMTP id f8mr8217167wiy.60.1424569941158;
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:20 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 4/7] staging: ft1000: ft1000-pcmcia: Removed all useless "else"
Date: Sun, 22 Feb 2015 03:52:00 +0200
Message-Id: <f243b649fbe3f6d8de6f65b364995f9e83ff860f.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

Removed all else keywords that used after break or return. Removed following checkpatch.pl warnings:
WARNING: else is not generally useful after a break or return

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 285 +++++++++++------------
 1 file changed, 141 insertions(+), 144 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index 572a07a..a7606fd 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -459,9 +459,8 @@ static int ft1000_reset_card(struct net_device *dev)
 	if (card_download(dev, fw_entry->data, fw_entry->size)) {
 		pr_debug("card download unsuccessful\n");
 		return false;
-	} else {
-		pr_debug("card download successful\n");
 	}
+	pr_debug("card download successful\n");
 
 	mdelay(10);
 
@@ -860,64 +859,63 @@ static bool ft1000_receive_cmd(struct net_device *dev, u16 *pbuffer,
 	if (size > maxsz) {
 		pr_debug("Invalid command length = %d\n", size);
 		return false;
+	}
+	ppseudohdr = (u16 *)pbuffer;
+	spin_lock_irqsave(&info->dpram_lock, flags);
+	if (info->AsicID == ELECTRABUZZ_ID) {
+		ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
+				 FT1000_DPRAM_RX_BASE + 2);
+		for (i = 0; i <= (size >> 1); i++) {
+			tempword =
+				ft1000_read_reg(dev, FT1000_REG_DPRAM_DATA);
+			*pbuffer++ = ntohs(tempword);
+		}
 	} else {
-		ppseudohdr = (u16 *)pbuffer;
-		spin_lock_irqsave(&info->dpram_lock, flags);
-		if (info->AsicID == ELECTRABUZZ_ID) {
-			ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
-					 FT1000_DPRAM_RX_BASE + 2);
-			for (i = 0; i <= (size >> 1); i++) {
-				tempword =
-					ft1000_read_reg(dev, FT1000_REG_DPRAM_DATA);
-				*pbuffer++ = ntohs(tempword);
-			}
-		} else {
-			ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
-					 FT1000_DPRAM_MAG_RX_BASE);
-			*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAH);
-			pr_debug("received data = 0x%x\n", *pbuffer);
-			pbuffer++;
-			ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
-					 FT1000_DPRAM_MAG_RX_BASE + 1);
-			for (i = 0; i <= (size >> 2); i++) {
-				*pbuffer =
-					inw(dev->base_addr +
-					    FT1000_REG_MAG_DPDATAL);
-				pbuffer++;
-				*pbuffer =
-					inw(dev->base_addr +
-					    FT1000_REG_MAG_DPDATAH);
-				pbuffer++;
-			}
-			/* copy odd aligned word */
-			*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAL);
-			pr_debug("received data = 0x%x\n", *pbuffer);
+		ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
+				 FT1000_DPRAM_MAG_RX_BASE);
+		*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAH);
+		pr_debug("received data = 0x%x\n", *pbuffer);
+		pbuffer++;
+		ft1000_write_reg(dev, FT1000_REG_DPRAM_ADDR,
+				 FT1000_DPRAM_MAG_RX_BASE + 1);
+		for (i = 0; i <= (size >> 2); i++) {
+			*pbuffer =
+				inw(dev->base_addr +
+				    FT1000_REG_MAG_DPDATAL);
 			pbuffer++;
-			*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAH);
-			pr_debug("received data = 0x%x\n", *pbuffer);
+			*pbuffer =
+				inw(dev->base_addr +
+				    FT1000_REG_MAG_DPDATAH);
 			pbuffer++;
 		}
-		if (size & 0x0001) {
-			/* copy odd byte from fifo */
-			tempword = ft1000_read_reg(dev, FT1000_REG_DPRAM_DATA);
-			*pbuffer = ntohs(tempword);
-		}
-		spin_unlock_irqrestore(&info->dpram_lock, flags);
+		/* copy odd aligned word */
+		*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAL);
+		pr_debug("received data = 0x%x\n", *pbuffer);
+		pbuffer++;
+		*pbuffer = inw(dev->base_addr + FT1000_REG_MAG_DPDATAH);
+		pr_debug("received data = 0x%x\n", *pbuffer);
+		pbuffer++;
+	}
+	if (size & 0x0001) {
+		/* copy odd byte from fifo */
+		tempword = ft1000_read_reg(dev, FT1000_REG_DPRAM_DATA);
+		*pbuffer = ntohs(tempword);
+	}
+	spin_unlock_irqrestore(&info->dpram_lock, flags);
 
-		/*
-		 * Check if pseudo header checksum is good
-		 * Calculate pseudo header checksum
-		 */
-		tempword = *ppseudohdr++;
-		for (i = 1; i < 7; i++)
-			tempword ^= *ppseudohdr++;
-		if ((tempword != *ppseudohdr)) {
-			pr_debug("Pseudo header checksum mismatch\n");
-			/* Drop this message */
-			return false;
-		}
-		return true;
+	/*
+	 * Check if pseudo header checksum is good
+	 * Calculate pseudo header checksum
+	 */
+	tempword = *ppseudohdr++;
+	for (i = 1; i < 7; i++)
+		tempword ^= *ppseudohdr++;
+	if ((tempword != *ppseudohdr)) {
+		pr_debug("Pseudo header checksum mismatch\n");
+		/* Drop this message */
+		return false;
 	}
+	return true;
 }
 
 /*---------------------------------------------------------------------------
@@ -1400,105 +1398,104 @@ static void ft1000_flush_fifo(struct net_device *dev, u16 DrvErrNum)
 		info->DrvErrNum = DrvErrNum;
 		ft1000_reset_card(dev);
 		return;
-	} else {
-		/* Flush corrupted pkt from FIFO */
-		i = 0;
-		do {
+	}
+	/* Flush corrupted pkt from FIFO */
+	i = 0;
+	do {
+		if (info->AsicID == ELECTRABUZZ_ID) {
+			tempword =
+				ft1000_read_reg(dev, FT1000_REG_DFIFO);
+			tempword =
+				ft1000_read_reg(dev, FT1000_REG_DFIFO_STAT);
+		} else {
+			templong =
+				inl(dev->base_addr + FT1000_REG_MAG_DFR);
+			tempword =
+				inw(dev->base_addr + FT1000_REG_MAG_DFSR);
+		}
+		i++;
+		/*
+		 * This should never happen unless the ASIC is broken.
+		 * We must reset to recover.
+		 */
+		if ((i > 2048) || (tempword == 0)) {
 			if (info->AsicID == ELECTRABUZZ_ID) {
-				tempword =
-					ft1000_read_reg(dev, FT1000_REG_DFIFO);
-				tempword =
-					ft1000_read_reg(dev, FT1000_REG_DFIFO_STAT);
+				info->DSP_TIME[0] =
+					ft1000_read_dpram(dev,
+							  FT1000_DSP_TIMER0);
+				info->DSP_TIME[1] =
+					ft1000_read_dpram(dev,
+							  FT1000_DSP_TIMER1);
+				info->DSP_TIME[2] =
+					ft1000_read_dpram(dev,
+							  FT1000_DSP_TIMER2);
+				info->DSP_TIME[3] =
+					ft1000_read_dpram(dev,
+							  FT1000_DSP_TIMER3);
 			} else {
-				templong =
-					inl(dev->base_addr + FT1000_REG_MAG_DFR);
-				tempword =
-					inw(dev->base_addr + FT1000_REG_MAG_DFSR);
+				info->DSP_TIME[0] =
+					ft1000_read_dpram_mag_16(dev,
+								 FT1000_MAG_DSP_TIMER0,
+								 FT1000_MAG_DSP_TIMER0_INDX);
+				info->DSP_TIME[1] =
+					ft1000_read_dpram_mag_16(dev,
+								 FT1000_MAG_DSP_TIMER1,
+								 FT1000_MAG_DSP_TIMER1_INDX);
+				info->DSP_TIME[2] =
+					ft1000_read_dpram_mag_16(dev,
+								 FT1000_MAG_DSP_TIMER2,
+								 FT1000_MAG_DSP_TIMER2_INDX);
+				info->DSP_TIME[3] =
+					ft1000_read_dpram_mag_16(dev,
+								 FT1000_MAG_DSP_TIMER3,
+								 FT1000_MAG_DSP_TIMER3_INDX);
 			}
-			i++;
-			/*
-			 * This should never happen unless the ASIC is broken.
-			 * We must reset to recover.
-			 */
-			if ((i > 2048) || (tempword == 0)) {
-				if (info->AsicID == ELECTRABUZZ_ID) {
-					info->DSP_TIME[0] =
-						ft1000_read_dpram(dev,
-								  FT1000_DSP_TIMER0);
-					info->DSP_TIME[1] =
-						ft1000_read_dpram(dev,
-								  FT1000_DSP_TIMER1);
-					info->DSP_TIME[2] =
-						ft1000_read_dpram(dev,
-								  FT1000_DSP_TIMER2);
-					info->DSP_TIME[3] =
-						ft1000_read_dpram(dev,
-								  FT1000_DSP_TIMER3);
-				} else {
-					info->DSP_TIME[0] =
-						ft1000_read_dpram_mag_16(dev,
-									 FT1000_MAG_DSP_TIMER0,
-									 FT1000_MAG_DSP_TIMER0_INDX);
-					info->DSP_TIME[1] =
-						ft1000_read_dpram_mag_16(dev,
-									 FT1000_MAG_DSP_TIMER1,
-									 FT1000_MAG_DSP_TIMER1_INDX);
-					info->DSP_TIME[2] =
-						ft1000_read_dpram_mag_16(dev,
-									 FT1000_MAG_DSP_TIMER2,
-									 FT1000_MAG_DSP_TIMER2_INDX);
-					info->DSP_TIME[3] =
-						ft1000_read_dpram_mag_16(dev,
-									 FT1000_MAG_DSP_TIMER3,
-									 FT1000_MAG_DSP_TIMER3_INDX);
-				}
+			if (tempword == 0) {
+				/*
+				 * Let's check if ASIC reads are still ok by reading the Mask register
+				 * which is never zero at this point of the code.
+				 */
+				tempword =
+					inw(dev->base_addr +
+					    FT1000_REG_SUP_IMASK);
 				if (tempword == 0) {
-					/*
-					 * Let's check if ASIC reads are still ok by reading the Mask register
-					 * which is never zero at this point of the code.
-					 */
-					tempword =
-						inw(dev->base_addr +
-						    FT1000_REG_SUP_IMASK);
-					if (tempword == 0) {
-						/* This indicates that we can not communicate with the ASIC */
-						info->DrvErrNum =
-							FIFO_FLUSH_BADCNT;
-					} else {
-						/* Let's assume that we really flush the FIFO */
-						pcmcia->PktIntfErr++;
-						return;
-					}
+					/* This indicates that we can not communicate with the ASIC */
+					info->DrvErrNum =
+						FIFO_FLUSH_BADCNT;
 				} else {
-					info->DrvErrNum = FIFO_FLUSH_MAXLIMIT;
+					/* Let's assume that we really flush the FIFO */
+					pcmcia->PktIntfErr++;
+					return;
 				}
-				return;
+			} else {
+				info->DrvErrNum = FIFO_FLUSH_MAXLIMIT;
 			}
-			tempword = inw(dev->base_addr + FT1000_REG_SUP_STAT);
-		} while ((tempword & 0x03) != 0x03);
-		if (info->AsicID == ELECTRABUZZ_ID) {
-			i++;
-			pr_debug("Flushing FIFO complete = %x\n", tempword);
-			/* Flush last word in FIFO. */
-			tempword = ft1000_read_reg(dev, FT1000_REG_DFIFO);
-			/* Update FIFO counter for DSP */
-			i = i * 2;
-			pr_debug("Flush Data byte count to dsp = %d\n", i);
-			info->fifo_cnt += i;
-			ft1000_write_dpram(dev, FT1000_FIFO_LEN,
-					   info->fifo_cnt);
-		} else {
-			pr_debug("Flushing FIFO complete = %x\n", tempword);
-			/* Flush last word in FIFO */
-			templong = inl(dev->base_addr + FT1000_REG_MAG_DFR);
-			tempword = inw(dev->base_addr + FT1000_REG_SUP_STAT);
-			pr_debug("FT1000_REG_SUP_STAT = 0x%x\n", tempword);
-			tempword = inw(dev->base_addr + FT1000_REG_MAG_DFSR);
-			pr_debug("FT1000_REG_MAG_DFSR = 0x%x\n", tempword);
+			return;
 		}
-		if (DrvErrNum)
-			pcmcia->PktIntfErr++;
+		tempword = inw(dev->base_addr + FT1000_REG_SUP_STAT);
+	} while ((tempword & 0x03) != 0x03);
+	if (info->AsicID == ELECTRABUZZ_ID) {
+		i++;
+		pr_debug("Flushing FIFO complete = %x\n", tempword);
+		/* Flush last word in FIFO. */
+		tempword = ft1000_read_reg(dev, FT1000_REG_DFIFO);
+		/* Update FIFO counter for DSP */
+		i = i * 2;
+		pr_debug("Flush Data byte count to dsp = %d\n", i);
+		info->fifo_cnt += i;
+		ft1000_write_dpram(dev, FT1000_FIFO_LEN,
+				   info->fifo_cnt);
+	} else {
+		pr_debug("Flushing FIFO complete = %x\n", tempword);
+		/* Flush last word in FIFO */
+		templong = inl(dev->base_addr + FT1000_REG_MAG_DFR);
+		tempword = inw(dev->base_addr + FT1000_REG_SUP_STAT);
+		pr_debug("FT1000_REG_SUP_STAT = 0x%x\n", tempword);
+		tempword = inw(dev->base_addr + FT1000_REG_MAG_DFSR);
+		pr_debug("FT1000_REG_MAG_DFSR = 0x%x\n", tempword);
 	}
+	if (DrvErrNum)
+		pcmcia->PktIntfErr++;
 }
 
 /*---------------------------------------------------------------------------
-- 
1.9.1


