X-GM-THRID: 6263480963249995776
X-Received: by 10.66.246.170 with SMTP id xx10mr19614365pac.13.1458501628339;
        Sun, 20 Mar 2016 12:20:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.44 with SMTP id sv12ls1333710obc.24.gmail; Sun, 20 Mar
 2016 12:20:27 -0700 (PDT)
X-Received: by 10.182.110.163 with SMTP id ib3mr20475835obb.43.1458501627957;
        Sun, 20 Mar 2016 12:20:27 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si3435297pac.1.2016.03.20.12.20.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:20:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so26463522pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O9Tc22hMa2geZjmuA8c8qy/4fTQbFDVgoBZmATqHHow=;
        b=o8LQ+pCu2mWPvtuag1Rc+Ne7RrKAdT83HPWUhwTqEk3v2B0pTLfciezBKUaL2klF0b
         b32stpi1BMbesXIl7cncYGhZ6Wq/ccRp9ik95fXGmEUDN998VCF+v9w1pYX53ci0dPve
         WRUMcHDLb1l1jA46nN/YIQQjY2sZw/w2jVB21IKy5ni8OBQFQPNplAODH+IyKUvwK29D
         P+TLUlH+cj761CotITl9HzkZj/ukBWI0XZoXMACkwi6CT7T6EdKKkI24p1bISN7CFJ7b
         5CuRPvOu/S1VNByY33A3DW8TH1NQLgUyu0ngwZNaLEpr3T7TwItAslXnk072TqVZJYY5
         zgHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O9Tc22hMa2geZjmuA8c8qy/4fTQbFDVgoBZmATqHHow=;
        b=HpuqAOLEE5VF/OCAK9pMiO15sEESW59ztxBqmzsrxoZIVcl7zSMlAIDkZ+1f5g2wl6
         9/IEe+BwesbQ3K2fBH3C4H07OdgD8Gyxx93cVs/LxNEijUbYguZrN+g5+9WCFDnuhxw0
         P5djHsoPhIQgAtO+nwhch0JzOE+Y4Bk/68+p+P5KFu56ZRe/rH6QppGa5m/Iw9igkXed
         05iZZqi3yk/bj4SRaxPYIjglyrrjN7MPUn/Gn5Mjc+37C3RmbJz6zVUd24ObpR77rWGp
         4G+8escWGMAfcDR1O2eG7nvvhan/Or5kshEncgz/4pxxoHOcXG/af2MMfm7OJ6xVJAv6
         IAsQ==
X-Gm-Message-State: AD7BkJKV2jlGPfOv95VfgthXnDzE7mS4MF//nBE01w45toOuFuM5YnA4b1ndDhavnKPjtQ==
X-Received: by 10.66.220.66 with SMTP id pu2mr40030326pac.115.1458501627735;
        Sun, 20 Mar 2016 12:20:27 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g74sm35080590pfj.1.2016.03.20.12.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:20:27 -0700 (PDT)
Date: Mon, 21 Mar 2016 00:50:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: comedi: amplc_pci230: Convert macro
 GAT_CONFIG to static inline function
Message-ID: <58c5d0b92cb0a0e421ea913418919184174caa4f.1458500647.git.bhaktipriya96@gmail.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macro GAT_CONFIG to static inline function as static inline
functions are preferred over macros. This change is possible since the
arguments at all call sites have the same type.

This was done using Coccinelle:

@r@
expression e;
@@
- #define GAT_CONFIG(chan, src) e
+ static inline unsigned int pci230_gat_config(unsigned int
chan,unsigned int src)
+{
+       return ((chan & 3) << 3) | (src & 7);
+}

@r1@
expression dev,reg,chan,src;
@@
-GAT_CONFIG(chan, src)
+pci230_gat_config(chan, src)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	- Removed the extra () around the arguments.
	- Renamed the function and made the changes consistent

 drivers/staging/comedi/drivers/amplc_pci230.c | 38 ++++++++++++++++-----------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 635cd46..6117fb7 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -383,8 +383,12 @@ static inline void pci230_clk_config(struct comedi_device *dev,
 #define GAT_GND		1	/* GND (i.e. disabled) */
 #define GAT_EXT		2	/* external gate input (PPCn on PCI230) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
-/* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+
+static inline unsigned int pci230_gat_config(unsigned int chan,
+					     unsigned int src)
+{
+	return ((chan & 3) << 3) | (src & 7);
+}

 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI230 and PCI260:
@@ -1267,7 +1271,8 @@ static void pci230_ao_start(struct comedi_device *dev,
 					       irqflags);
 		}
 		/* Set CT1 gate high to start counting. */
-		outb(GAT_CONFIG(1, GAT_VCC), dev->iobase + PCI230_ZGAT_SCE);
+		outb(pci230_gat_config(1, GAT_VCC),
+		     dev->iobase + PCI230_ZGAT_SCE);
 		break;
 	case TRIG_INT:
 		async->inttrig = pci230_ao_inttrig_scan_begin;
@@ -1355,7 +1360,8 @@ static int pci230_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * cmd->scan_begin_arg is sampling period in ns.
 		 * Gate it off for now.
 		 */
-		outb(GAT_CONFIG(1, GAT_GND), dev->iobase + PCI230_ZGAT_SCE);
+		outb(pci230_gat_config(1, GAT_GND),
+		     dev->iobase + PCI230_ZGAT_SCE);
 		pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
 					cmd->scan_begin_arg,
 					cmd->flags);
@@ -1796,9 +1802,9 @@ static int pci230_ai_inttrig_scan_begin(struct comedi_device *dev,
 	spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 	if (devpriv->ai_cmd_started) {
 		/* Trigger scan by waggling CT0 gate source. */
-		zgat = GAT_CONFIG(0, GAT_GND);
+		zgat = pci230_gat_config(0, GAT_GND);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
-		zgat = GAT_CONFIG(0, GAT_VCC);
+		zgat = pci230_gat_config(0, GAT_VCC);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 	}
 	spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
@@ -1930,20 +1936,20 @@ static void pci230_ai_start(struct comedi_device *dev,
 			 * Conversion timer CT2 needs to be gated by
 			 * inverted output of monostable CT2.
 			 */
-			zgat = GAT_CONFIG(2, GAT_NOUTNM2);
+			zgat = pci230_gat_config(2, GAT_NOUTNM2);
 		} else {
 			/*
 			 * Conversion timer CT2 needs to be gated on
 			 * continuously.
 			 */
-			zgat = GAT_CONFIG(2, GAT_VCC);
+			zgat = pci230_gat_config(2, GAT_VCC);
 		}
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 		if (cmd->scan_begin_src != TRIG_FOLLOW) {
 			/* Set monostable CT0 trigger source. */
 			switch (cmd->scan_begin_src) {
 			default:
-				zgat = GAT_CONFIG(0, GAT_VCC);
+				zgat = pci230_gat_config(0, GAT_VCC);
 				break;
 			case TRIG_EXT:
 				/*
@@ -1954,21 +1960,21 @@ static void pci230_ai_start(struct comedi_device *dev,
 				 * input in order to use it as an external scan
 				 * trigger.
 				 */
-				zgat = GAT_CONFIG(0, GAT_EXT);
+				zgat = pci230_gat_config(0, GAT_EXT);
 				break;
 			case TRIG_TIMER:
 				/*
 				 * Monostable CT0 triggered by rising edge on
 				 * inverted output of CT1 (falling edge on CT1).
 				 */
-				zgat = GAT_CONFIG(0, GAT_NOUTNM2);
+				zgat = pci230_gat_config(0, GAT_NOUTNM2);
 				break;
 			case TRIG_INT:
 				/*
 				 * Monostable CT0 is triggered by inttrig
 				 * function waggling the CT0 gate source.
 				 */
-				zgat = GAT_CONFIG(0, GAT_VCC);
+				zgat = pci230_gat_config(0, GAT_VCC);
 				break;
 			}
 			outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
@@ -1978,7 +1984,7 @@ static void pci230_ai_start(struct comedi_device *dev,
 				 * Scan period timer CT1 needs to be
 				 * gated on to start counting.
 				 */
-				zgat = GAT_CONFIG(1, GAT_VCC);
+				zgat = pci230_gat_config(1, GAT_VCC);
 				outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 				break;
 			case TRIG_INT:
@@ -2220,7 +2226,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * Note, counter/timer output 2 can be monitored on the
 		 * connector: PCI230 pin 21, PCI260 pin 18.
 		 */
-		zgat = GAT_CONFIG(2, GAT_GND);
+		zgat = pci230_gat_config(2, GAT_GND);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 		/* Set counter/timer 2 to the specified conversion period. */
 		pci230_ct_setup_ns_mode(dev, 2, I8254_MODE3, cmd->convert_arg,
@@ -2238,7 +2244,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 			 * monostable to stop it triggering.  The trigger
 			 * source will be changed later.
 			 */
-			zgat = GAT_CONFIG(0, GAT_VCC);
+			zgat = pci230_gat_config(0, GAT_VCC);
 			outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 			pci230_ct_setup_ns_mode(dev, 0, I8254_MODE1,
 						((uint64_t)cmd->convert_arg *
@@ -2251,7 +2257,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 				 *
 				 * Set up CT1 but gate it off for now.
 				 */
-				zgat = GAT_CONFIG(1, GAT_GND);
+				zgat = pci230_gat_config(1, GAT_GND);
 				outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 				pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
 							cmd->scan_begin_arg,
--
2.1.4


