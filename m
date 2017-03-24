X-GM-THRID: 6401092541833281536
X-Received: by 10.99.137.66 with SMTP id v63mr2696972pgd.171.1490370496813;
        Fri, 24 Mar 2017 08:48:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.11 with SMTP id s11ls2312322iod.14.gmail; Fri, 24 Mar
 2017 08:48:15 -0700 (PDT)
X-Received: by 10.98.141.69 with SMTP id z66mr2233157pfd.16.1490370495850;
        Fri, 24 Mar 2017 08:48:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si587210pfa.6.2017.03.24.08.48.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 08:48:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so1177173pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 08:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KyZhknm6IyZKZ2GR/xqseovS9YoRjK0FfyDFROPcRCw=;
        b=vLIF33nQYpN5DRpdtkj3f8Q8l1OkySf8BHQNmn2jOUXuAeGtNC3/teCceKV8j++2lr
         o0E8/8Cj7ZhQ0t3Hi/iPpMSzxNQmxbXxaJP93CqUCS++uQWcUK6+pAMRrcdjeFjIw9zJ
         33KnpdHWpoC2QZkzT48atQnbWSHVgHK327hvk9zbRPx1+KXqzLmbrtogJ3bJt3gVHy+V
         cf7ZWeVXAMfFvTE2LstZkKR02cHvZ9nTGMHEWteuebVhZ6b09fb4oEb4lciFM3dn5jFt
         a/fn5EUBU3cethh6ncEbvNDjmLFk53+q0n3bdD1fTmJNwQZlPVWGKrNPFESlzEGit24F
         yoag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KyZhknm6IyZKZ2GR/xqseovS9YoRjK0FfyDFROPcRCw=;
        b=HCIs9BFkEi/aD0ra89o/tvAKFhYgn9itEZQJM65ws8lHnKYx2GZU7o+8VUkTmWLD3i
         ceJySEqnhPVZXVXovFJo5F5qly9iFtyCCd1EKaNwpIoxo+Hco/dgrTyBCj5eXnyUBWZ3
         8+vgLvP6jOBU69cs/JBeYq+BQZZCb485NX/+hf4Pdk3WpvAXt4ay+fk7B/eqpzY6R+34
         d7EOWTnTAPgAaADDZ3n8oCDjI4aNQ4rN6w5wnckmDwm6++OEM9G9DUyfgBICfYLn1DpY
         2uYHnETFUN705NKPjyIXgS4hBQUj7PifkAx8IB0rsqtd8Z0dOtyk1KfUcZhIetYAtFB3
         534A==
X-Gm-Message-State: AFeK/H1eOIjXfmaPF8Hk4uP8t+yyBTOYusXD9kQ/VCbINWwCA2r06RRObjUYt9eVDDZ3WA==
X-Received: by 10.98.30.199 with SMTP id e190mr2069650pfe.205.1490370495599;
        Fri, 24 Mar 2017 08:48:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a5sm5522219pfh.124.2017.03.24.08.48.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 08:48:14 -0700 (PDT)
Date: Fri, 24 Mar 2017 21:18:09 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: mchehab@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: atomisp:Replace a bit shift.
Message-ID: <20170324154809.GA12158@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -remove the unnecessary parenthesis.

 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c  | 12 ++++++------
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c | 10 +++++-----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
index 94bc7938f533..8edcde282ec9 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
@@ -194,7 +194,7 @@ static int write_target_freq_to_hw(struct atomisp_device *isp,
 	if (isp_sspm1 & ISP_FREQ_VALID_MASK) {
 		dev_dbg(isp->dev, "clearing ISPSSPM1 valid bit.\n");
 		intel_mid_msgbus_write32(PUNIT_PORT, ISPSSPM1,
-				    isp_sspm1 & ~(1 << ISP_FREQ_VALID_OFFSET));
+				    isp_sspm1 & ~BIT(ISP_FREQ_VALID_OFFSET));
 	}
 
 	ratio = (2 * isp->hpll_freq + new_freq / 2) / new_freq - 1;
@@ -207,7 +207,7 @@ static int write_target_freq_to_hw(struct atomisp_device *isp,
 		intel_mid_msgbus_write32(PUNIT_PORT, ISPSSPM1,
 				   isp_sspm1
 				   | ratio << ISP_REQ_FREQ_OFFSET
-				   | 1 << ISP_FREQ_VALID_OFFSET
+				   | BIT(ISP_FREQ_VALID_OFFSET)
 				   | guar_ratio << ISP_REQ_GUAR_FREQ_OFFSET);
 
 		isp_sspm1 = intel_mid_msgbus_read32(PUNIT_PORT, ISPSSPM1);
@@ -417,10 +417,10 @@ void atomisp_msi_irq_init(struct atomisp_device *isp, struct pci_dev *dev)
 	u16 msg16;
 
 	pci_read_config_dword(dev, PCI_MSI_CAPID, &msg32);
-	msg32 |= 1 << MSI_ENABLE_BIT;
+	msg32 |= BIT(MSI_ENABLE_BIT);
 	pci_write_config_dword(dev, PCI_MSI_CAPID, msg32);
 
-	msg32 = (1 << INTR_IER) | (1 << INTR_IIR);
+	msg32 = BIT(INTR_IER) | BIT(INTR_IIR);
 	pci_write_config_dword(dev, PCI_INTERRUPT_CTRL, msg32);
 
 	pci_read_config_word(dev, PCI_COMMAND, &msg16);
@@ -435,7 +435,7 @@ void atomisp_msi_irq_uninit(struct atomisp_device *isp, struct pci_dev *dev)
 	u16 msg16;
 
 	pci_read_config_dword(dev, PCI_MSI_CAPID, &msg32);
-	msg32 &=  ~(1 << MSI_ENABLE_BIT);
+	msg32 &=  ~BIT(MSI_ENABLE_BIT);
 	pci_write_config_dword(dev, PCI_MSI_CAPID, msg32);
 
 	msg32 = 0x0;
@@ -536,7 +536,7 @@ static void clear_irq_reg(struct atomisp_device *isp)
 {
 	u32 msg_ret;
 	pci_read_config_dword(isp->pdev, PCI_INTERRUPT_CTRL, &msg_ret);
-	msg_ret |= 1 << INTR_IIR;
+	msg_ret |= BIT(INTR_IIR);
 	pci_write_config_dword(isp->pdev, PCI_INTERRUPT_CTRL, msg_ret);
 }
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
index 626d2f114d8d..b1f685a841ba 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
@@ -330,11 +330,11 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 	 * IRQ, if so, waiting for it to be served
 	 */
 	pci_read_config_dword(dev, PCI_INTERRUPT_CTRL, &irq);
-	irq = irq & 1 << INTR_IIR;
+	irq = irq & BIT(INTR_IIR);
 	pci_write_config_dword(dev, PCI_INTERRUPT_CTRL, irq);
 
 	pci_read_config_dword(dev, PCI_INTERRUPT_CTRL, &irq);
-	if (!(irq & (1 << INTR_IIR)))
+	if (!(irq & BIT(INTR_IIR)))
 		goto done;
 
 	atomisp_store_uint32(MRFLD_INTR_CLEAR_REG, 0xFFFFFFFF);
@@ -347,11 +347,11 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 		return -EAGAIN;
 	} else {
 		pci_read_config_dword(dev, PCI_INTERRUPT_CTRL, &irq);
-		irq = irq & 1 << INTR_IIR;
+		irq = irq & BIT(INTR_IIR);
 		pci_write_config_dword(dev, PCI_INTERRUPT_CTRL, irq);
 
 		pci_read_config_dword(dev, PCI_INTERRUPT_CTRL, &irq);
-		if (!(irq & (1 << INTR_IIR))) {
+		if (!(irq & BIT(INTR_IIR))) {
 			atomisp_store_uint32(MRFLD_INTR_ENABLE_REG, 0x0);
 			goto done;
 		}
@@ -370,7 +370,7 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 	* HW sighting:4568410.
 	*/
 	pci_read_config_dword(dev, PCI_INTERRUPT_CTRL, &irq);
-	irq &= ~(1 << INTR_IER);
+	irq &= ~BIT(INTR_IER);
 	pci_write_config_dword(dev, PCI_INTERRUPT_CTRL, irq);
 
 	atomisp_msi_irq_uninit(isp, dev);
-- 
2.11.0


