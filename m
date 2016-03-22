X-GM-THRID: 6263480963249995776
X-Received: by 10.182.165.200 with SMTP id za8mr25872458obb.38.1458614506967;
        Mon, 21 Mar 2016 19:41:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.66 with SMTP id 60ls120533oti.46.gmail; Mon, 21 Mar
 2016 19:41:46 -0700 (PDT)
X-Received: by 10.182.65.135 with SMTP id x7mr26405812obs.13.1458614506605;
        Mon, 21 Mar 2016 19:41:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h69si3799876pfj.0.2016.03.21.19.41.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 19:41:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so33729440pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 19:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MwScBwOOmYxiCRRgw/qqdRvjlU+29fPcnH+ZK0Uz9p8=;
        b=iq5aHFoitpgekhyw/dnc+2R1CyawRp2jKRnhobrN/9yGLRW+NIC9orryaYYlK35NfW
         uPIo1J/m4/Qmg4lBf/V9gvxq+grJa3SrGEShd0+0RkFrt6rhOHPKW24J0dfx99wD9OFF
         N+ZzSHtUiBHHP0KwTTBBpU2u+Faw6/Eie+sNflSIbPT8hkDJp8heYqxghoJRUeuEfqRW
         mZ9na0WP4hufaEEd9hqOnI4VQmxjb4uO+7pxKBDL8YAGrs3ZlDeQAj1H70SvZ0d4QeqG
         1igRC297/+80UAtuX8nm6cJhJz8NPPhaQQZgG8xOpzgdN22Iw7EexDh+ytkS4fcWZptH
         ixDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MwScBwOOmYxiCRRgw/qqdRvjlU+29fPcnH+ZK0Uz9p8=;
        b=dLQ23bUT5+E5Owmrn/FgCzBEuvaiszi4TK1Y21Sf4tV/5dGVQ7z3uY5FqFn3S/xJi/
         j10yy2SuISqA6i622ANdm+UZxsXm6sb7leWcQDoOU0CPSwjJByn8+h9pmgP9/DgAqd1P
         +ixvmFvw5O9r6W1T5LDnITB/enQjLJQHlNyJKqmMRcqh6K6FHUbfrAYf1ZbRN7V/q5Vo
         fygu8TzNvO9lowdVGP/MOy3DyfxhTHZVN+TR9iRag0iqyAvbA1w2IlQIj4m9H6aFMHKe
         OtZXU5H1YifhysvajHBLDkRuTqNcpusl0q2fnbCOzzLAXxN7BPg+L/3j4ZTzvI6WKtdE
         2RoQ==
X-Gm-Message-State: AD7BkJKrttTHM2fxIfSq8teZx0HIiczC9V0V/Ng2Q0mlCCa5ODPB1NNkVsXhAsi9M1t6jw==
X-Received: by 10.66.244.15 with SMTP id xc15mr49709643pac.97.1458614506337;
        Mon, 21 Mar 2016 19:41:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id kw10sm43826747pab.0.2016.03.21.19.41.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 19:41:45 -0700 (PDT)
Date: Tue, 22 Mar 2016 08:11:44 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: comedi: amplc_pci230: Convert macro GAT_CONFIG
 to static inline function
Message-ID: <20160322024144.GA27136@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macro GAT_CONFIG to static inline function as static inline
functions are preferred over macros. This change is possible since the
arguments at all call sites have the same type.

This was done using Coccinelle:

@r@
expression e;
@@
- #define GAT_CONFIG(chan, src) e
+ static inline unsigned int pci230_gat_config(unsigned int chan,
+					       unsigned int src)
+{
+       return ((chan & 3) << 3) | (src & 7);
+}

@r1@
expression dev,reg,chan,src;
@@
-GAT_CONFIG(chan, src)
+pci230_gat_config(chan, src)

Also, the comment describing the macro has been removed manually.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 -Changes in v3:
	-Separated this patch from the previously sent patchset.

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


