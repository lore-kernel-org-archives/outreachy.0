X-GM-THRID: 6263480963249995776
X-Received: by 10.50.111.101 with SMTP id ih5mr13856120igb.2.1458622735079;
        Mon, 21 Mar 2016 21:58:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.139 with SMTP id e11ls4215059qgf.48.gmail; Mon, 21 Mar
 2016 21:58:54 -0700 (PDT)
X-Received: by 10.140.221.134 with SMTP id r128mr11935065qhb.0.1458622734287;
        Mon, 21 Mar 2016 21:58:54 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h69si3877475pfj.0.2016.03.21.21.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 21:58:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u190so33747442pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 21:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xmz9UfgAQeWcJGR47XljS34KvdYaPzs0G+HfvpthZzs=;
        b=hQ2enEexfvH0sENQDnBMwE5t72MqHPy5T7qAJOZQifVzjg5pDvLq1erUyKWD8MhDfI
         Mo/+OpKuPiNP0LB8Ou3J7zsLJTabGAsLCF0pVpQWRNFxxxqPzXyhhW6MV56VHIqTMfdd
         LERKGKboYhmpZwz+3rLwHydQEeN5tiuAeLnmTqGoEmZg2oVe5XlB7QCgVm9PuKBtHDtO
         EYq1rYWuy2OoJay8N/e/2iCToRu5fB+a32rl6fe3+cnkL4K5dVbN2/MTbryg8Vd8xP0S
         hM7TMiotfGNR3qeb7nP5GOigJUnY6dpEwdo+CUiTtb6TTEB8maTom6mCg1NWuqHhVhC8
         tSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xmz9UfgAQeWcJGR47XljS34KvdYaPzs0G+HfvpthZzs=;
        b=bPRBwr4g/dAkE+n8OjhTLlJbpR7JWlg7zNP6TMZzhGaZUZArHajrr2CbSdvptAp6S+
         3MpyLj6KWy12Wa8iks4MS2FhIK3VZjXdOIKHfxuPmplwqhHB/iLspMtiyZTzbmO8FYdH
         IBzGPzeaYE13996kbZG0u1N6TD76WSRdGDu1wLTU1yPGPQMvE8Gc7LuFnQDvAVZB1Ja/
         GRpKKqb8JPXGezEF8I824gllH+9OvVz+/eTwvts1lGNsFeHiHcff6F1oxnX6lDdyV8Cb
         4aToCtrRNmZdMOWxEhERYavVfs5yoD0WkIb8HbpOTayWQ8teTB2RQrlrPMo5bQ35/uiT
         xnVw==
X-Gm-Message-State: AD7BkJLxhlg+RGqPfJiac20GI8QWUojFjDFPrhMzWpjKT8H94mUwEHhWeNMb4SzIPyxpFg==
X-Received: by 10.66.248.168 with SMTP id yn8mr50787926pac.24.1458622733479;
        Mon, 21 Mar 2016 21:58:53 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id rw2sm44521182pab.30.2016.03.21.21.58.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 21:58:53 -0700 (PDT)
Date: Tue, 22 Mar 2016 10:28:51 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: comedi: amplc_pci230: Convert macro GAT_CONFIG
 to static inline function
Message-ID: <20160322045851.GA27915@Karyakshetra>
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
+                                              unsigned int src)
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
 Changes in v4:
	-Rebased the branch and then applied the changes.

 drivers/staging/comedi/drivers/amplc_pci230.c | 38 ++++++++++++++++-----------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 907c39c..cf5ac8a 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -379,8 +379,12 @@
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
@@ -1263,7 +1267,8 @@ static void pci230_ao_start(struct comedi_device *dev,
 					       irqflags);
 		}
 		/* Set CT1 gate high to start counting. */
-		outb(GAT_CONFIG(1, GAT_VCC), dev->iobase + PCI230_ZGAT_SCE);
+		outb(pci230_gat_config(1, GAT_VCC),
+		     dev->iobase + PCI230_ZGAT_SCE);
 		break;
 	case TRIG_INT:
 		async->inttrig = pci230_ao_inttrig_scan_begin;
@@ -1351,7 +1356,8 @@ static int pci230_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * cmd->scan_begin_arg is sampling period in ns.
 		 * Gate it off for now.
 		 */
-		outb(GAT_CONFIG(1, GAT_GND), dev->iobase + PCI230_ZGAT_SCE);
+		outb(pci230_gat_config(1, GAT_GND),
+		     dev->iobase + PCI230_ZGAT_SCE);
 		pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
 					cmd->scan_begin_arg,
 					cmd->flags);
@@ -1792,9 +1798,9 @@ static int pci230_ai_inttrig_scan_begin(struct comedi_device *dev,
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
@@ -1926,20 +1932,20 @@ static void pci230_ai_start(struct comedi_device *dev,
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
@@ -1950,21 +1956,21 @@ static void pci230_ai_start(struct comedi_device *dev,
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
@@ -1974,7 +1980,7 @@ static void pci230_ai_start(struct comedi_device *dev,
 				 * Scan period timer CT1 needs to be
 				 * gated on to start counting.
 				 */
-				zgat = GAT_CONFIG(1, GAT_VCC);
+				zgat = pci230_gat_config(1, GAT_VCC);
 				outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 				break;
 			case TRIG_INT:
@@ -2216,7 +2222,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		 * Note, counter/timer output 2 can be monitored on the
 		 * connector: PCI230 pin 21, PCI260 pin 18.
 		 */
-		zgat = GAT_CONFIG(2, GAT_GND);
+		zgat = pci230_gat_config(2, GAT_GND);
 		outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 		/* Set counter/timer 2 to the specified conversion period. */
 		pci230_ct_setup_ns_mode(dev, 2, I8254_MODE3, cmd->convert_arg,
@@ -2234,7 +2240,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 			 * monostable to stop it triggering.  The trigger
 			 * source will be changed later.
 			 */
-			zgat = GAT_CONFIG(0, GAT_VCC);
+			zgat = pci230_gat_config(0, GAT_VCC);
 			outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 			pci230_ct_setup_ns_mode(dev, 0, I8254_MODE1,
 						((uint64_t)cmd->convert_arg *
@@ -2247,7 +2253,7 @@ static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
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


