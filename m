X-GM-THRID: 6263480963249995776
X-Received: by 10.182.142.8 with SMTP id rs8mr13236553obb.33.1458330396781;
        Fri, 18 Mar 2016 12:46:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.134 with SMTP id 6ls1236oto.64.gmail; Fri, 18 Mar 2016
 12:46:36 -0700 (PDT)
X-Received: by 10.182.92.226 with SMTP id cp2mr12932817obb.19.1458330396430;
        Fri, 18 Mar 2016 12:46:36 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id h69si2212892pfj.0.2016.03.18.12.46.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 12:46:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id u190so180723665pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 12:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6YREJ6j/9G0A5M1sYZdYU7aMWw/+6tpOsXq3rdyZwzU=;
        b=tWlAeKPyLUfY9oiP3OzSGPizPoc9fWXKGsqawgAh0Jl0eSxz/Rri0j6lhchiXSciOq
         OtnmkkXiY1SADiID9wQXRGAMGM9udwE/+UkwbWEctMS1c8OiOgtb4eNjDqC+jTxFnFF6
         ULMqbm0GD7gtDFxrRIXqEwgv+2cWxxH21UnWyvvJyIKsPYYm0szaK12C1DSj4P/0aRsb
         n13H/mDPl9jrJ6Bulnsz/9SS6f1n2LX7Fuf6XC4q24iHcLFyFN41rEafRZRlt6SMKUKj
         asANKoEPmeO6epsg8SOfMvmXLd2TAiOHIzlkV2shzVprQh5tq+ZYkADVhCqsRPZ3Xani
         fXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6YREJ6j/9G0A5M1sYZdYU7aMWw/+6tpOsXq3rdyZwzU=;
        b=BYoyqfvGjoeKoshfacBrsZMnNq1eequENXTz7JZEQ9Gu9aYLRV9/Q6YMHi4MH89ldi
         74NQeWX1vhVooV5KKjymW2Tpe2HtVsCK4q5+b1FCZeGd66ICv/9kUYsg4a7D3etbBSsL
         D1CQK++sBJ165+AseMncuxQKcQmdz4y971gDHbyybGx4+qPPd3SMfzDjYuIWuME0MWZZ
         rSujGnZnggR1OYwOBP/APKv1aLrPeljiF4mNZ6QunvFjY/+RFTZm0FpaVGS45h6Tdhxo
         v5Jv+F5rlhwJTHTglxoT4gp/oaNqYalI2aoi3ZAofOm1pKr4MlJEOn8J0aAIzeKX/0Mg
         bRVA==
X-Gm-Message-State: AD7BkJIPAxE0s1VJ7xzciURIpPhE0H2LO0J7TUO3de03vEqjWdQU4Bj+vvI/+cgn8MtLtg==
X-Received: by 10.98.12.154 with SMTP id 26mr26295985pfm.20.1458330395948;
        Fri, 18 Mar 2016 12:46:35 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ah10sm22854055pad.23.2016.03.18.12.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 12:46:35 -0700 (PDT)
Date: Sat, 19 Mar 2016 01:16:32 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: comedi: drivers: amplc_pci230: Convert macros
 to static inline functions
Message-ID: <1e269638fb21f156d5f9d2c6af2a6551bb50a2c3.1458330202.git.bhaktipriya96@gmail.com>
References: <cover.1458330202.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458330202.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macros CLK_CONFIG and GAT_CONFIG into static inline
functions as static inline functions are preferred over macros. This
change is possible since the arguments at all call sites have the same
type. Also, both the macros have same type of arguments and return
values. They have been renamed in lowecase.

This was done using coccinelle:

@r@
identifier f;
expression e;
@@
- #define f(chan, src) e
+ static inline unsigned int f(unsigned int chan,unsigned int src)
+ {
+        return e;
+ }

@r1@
@@

-GAT_CONFIG
+gat_config

@r2@
@@
-CLK_CONFIG
+clk_config

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 38 +++++++++++++++------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 907c39c..051787e 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -370,7 +370,9 @@
 #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
 #define CLK_EXT		7	/* external clock */
 /* Macro to construct clock input configuration register value. */
-#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline unsigned int CLK_CONFIG(unsigned int chan, unsigned int src) {
+	return ((((chan) & 3) << 3) | ((src) & 7));
+}

 /*
  * Counter/timer gate input configuration sources.
@@ -380,7 +382,9 @@
 #define GAT_EXT		2	/* external gate input (PPCn on PCI230) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
 /* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline unsigned int GAT_CONFIG(unsigned int chan, unsigned int src) {
+	return ((((chan) & 3) << 3) | ((src) & 7));
+}

 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI230 and PCI260:
@@ -687,7 +691,7 @@ static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
 	/* Determine clock source and count. */
 	clk_src = pci230_choose_clk_count(ns, &count, flags);
 	/* Program clock source. */
-	outb(CLK_CONFIG(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
+	outb(clk_config(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
 	/* Set initial count. */
 	if (count >= 65536)
 		count = 0;
@@ -1263,7 +1267,7 @@ static void pci230_ao_start(struct comedi_device *dev,
 					       irqflags);
 		}
 		/* Set CT1 gate high to start counting. */
-		outb(GAT_CONFIG(1, GAT_VCC), dev->iobase + PCI230_ZGAT_SCE);
+		outb(gat_config(1, GAT_VCC), dev->iobase + PCI230_ZGAT_SCE);
 		break;
 	case TRIG_INT:
 		async->inttrig = pci230_ao_inttrig_scan_begin;
@@ -1351,7 +1355,7 @@ static int pci230_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * cmd->scan_begin_arg is sampling period in ns.
 		 * Gate it off for now.
 		 */
-		outb(GAT_CONFIG(1, GAT_GND), dev->iobase + PCI230_ZGAT_SCE);
+		outb(gat_config(1, GAT_GND), dev->iobase + PCI230_ZGAT_SCE);
 		pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
 					cmd->scan_begin_arg,
 					cmd->flags);
@@ -1792,9 +1796,9 @@ static int pci230_ai_inttrig_scan_begin(struct comedi_device *dev,
 	spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 	if (devpriv->ai_cmd_started) {
 		/* Trigger scan by waggling CT0 gate source. */
-		zgat = GAT_CONFIG(0, GAT_GND);
+		zgat = gat_config(0, GAT_GND);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
-		zgat = GAT_CONFIG(0, GAT_VCC);
+		zgat = gat_config(0, GAT_VCC);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 	}
 	spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
@@ -1926,20 +1930,20 @@ static void pci230_ai_start(struct comedi_device *dev,
 			 * Conversion timer CT2 needs to be gated by
 			 * inverted output of monostable CT2.
 			 */
-			zgat = GAT_CONFIG(2, GAT_NOUTNM2);
+			zgat = gat_config(2, GAT_NOUTNM2);
 		} else {
 			/*
 			 * Conversion timer CT2 needs to be gated on
 			 * continuously.
 			 */
-			zgat = GAT_CONFIG(2, GAT_VCC);
+			zgat = gat_config(2, GAT_VCC);
 		}
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 		if (cmd->scan_begin_src != TRIG_FOLLOW) {
 			/* Set monostable CT0 trigger source. */
 			switch (cmd->scan_begin_src) {
 			default:
-				zgat = GAT_CONFIG(0, GAT_VCC);
+				zgat = gat_config(0, GAT_VCC);
 				break;
 			case TRIG_EXT:
 				/*
@@ -1950,21 +1954,21 @@ static void pci230_ai_start(struct comedi_device *dev,
 				 * input in order to use it as an external scan
 				 * trigger.
 				 */
-				zgat = GAT_CONFIG(0, GAT_EXT);
+				zgat = gat_config(0, GAT_EXT);
 				break;
 			case TRIG_TIMER:
 				/*
 				 * Monostable CT0 triggered by rising edge on
 				 * inverted output of CT1 (falling edge on CT1).
 				 */
-				zgat = GAT_CONFIG(0, GAT_NOUTNM2);
+				zgat = gat_config(0, GAT_NOUTNM2);
 				break;
 			case TRIG_INT:
 				/*
 				 * Monostable CT0 is triggered by inttrig
 				 * function waggling the CT0 gate source.
 				 */
-				zgat = GAT_CONFIG(0, GAT_VCC);
+				zgat = gat_config(0, GAT_VCC);
 				break;
 			}
 			outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
@@ -1974,7 +1978,7 @@ static void pci230_ai_start(struct comedi_device *dev,
 				 * Scan period timer CT1 needs to be
 				 * gated on to start counting.
 				 */
-				zgat = GAT_CONFIG(1, GAT_VCC);
+				zgat = gat_config(1, GAT_VCC);
 				outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 				break;
 			case TRIG_INT:
@@ -2216,7 +2220,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * Note, counter/timer output 2 can be monitored on the
 		 * connector: PCI230 pin 21, PCI260 pin 18.
 		 */
-		zgat = GAT_CONFIG(2, GAT_GND);
+		zgat = gat_config(2, GAT_GND);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 		/* Set counter/timer 2 to the specified conversion period. */
 		pci230_ct_setup_ns_mode(dev, 2, I8254_MODE3, cmd->convert_arg,
@@ -2234,7 +2238,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 			 * monostable to stop it triggering.  The trigger
 			 * source will be changed later.
 			 */
-			zgat = GAT_CONFIG(0, GAT_VCC);
+			zgat = gat_config(0, GAT_VCC);
 			outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 			pci230_ct_setup_ns_mode(dev, 0, I8254_MODE1,
 						((uint64_t)cmd->convert_arg *
@@ -2247,7 +2251,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 				 *
 				 * Set up CT1 but gate it off for now.
 				 */
-				zgat = GAT_CONFIG(1, GAT_GND);
+				zgat = gat_config(1, GAT_GND);
 				outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 				pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
 							cmd->scan_begin_arg,
--
2.1.4


