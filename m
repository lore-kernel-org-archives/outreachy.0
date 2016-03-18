X-GM-THRID: 6263480963249995776
X-Received: by 10.66.102.8 with SMTP id fk8mr13147339pab.44.1458330353306;
        Fri, 18 Mar 2016 12:45:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls2402016qgn.3.gmail; Fri, 18 Mar
 2016 12:45:52 -0700 (PDT)
X-Received: by 10.129.130.71 with SMTP id s68mr7212887ywf.29.1458330352509;
        Fri, 18 Mar 2016 12:45:52 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id 12si2104599pfb.1.2016.03.18.12.45.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 12:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 4so49502000pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 12:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZF/QOzOWvckVWUcTP0Xzw3geJz+z4nEb9qW2Vwbq+Ko=;
        b=g/F8/zvGfA9onLdngqNFq2WEpXbEiXpGU11UCvP2KCASFFV9TxZsNl4/X7k/A6X0EH
         eyFZ/ocTkdg6X3sG00ncYHjPB/FoKO0zqMmfAiXwoDwvkhliU/i0DKWE7RtZIaV+rxJE
         LxuzGvFvNxPLgeBRojwGC6/hJkGm6NyPD1p+kxTtJoDKGyntyWHnM76G3UkboEukzhZQ
         pOwxrY8sVRw6I+frGmxPWdE3e4c4Nbr7sLTQ/iVA+AvCI5QvJxJ2H7jjlsDa0dOmM2rv
         EAEyeoxXry1jukNyvb58FSeUv6Gff9qhG6tjAerpGp/tAVPESQZTJjLRN57iH3u0PuAi
         emrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZF/QOzOWvckVWUcTP0Xzw3geJz+z4nEb9qW2Vwbq+Ko=;
        b=aHWLGo3l0JCJ23j6BHDb6SPde4//cX8QvEe/0VG/Hlb3SbCBubZswbmF0vhSP4um/j
         fTdD0rJ/pk/dvgc0NhY3zJUmuVfTtmNCHq/g1fvHpbVf1ZhQDGPtLjj2KtGEsd6Exn+s
         0Hap8uNiMUwPMzHZGJ0F3wPRINvRrYYHM8MNdga/wvDyp828Utzk29+y/i8SXfmmvqQ7
         p3TR9XTEWZnuIohh1FbV8Cq4F3Yp1WkwLPdkIKPnkBHqQwWmM3hwlXL9wbXmPOnmG4mb
         yyPQZnRLTiTrFIJX1NjT9rLd0GjyicNdX4fURGJ9feWjP7XOJw1nFliNWEOntQQMOgo2
         ESsA==
X-Gm-Message-State: AD7BkJJE0ht/WoJUpXYJ9ViyaHFvEljmFtwB2tZpTYmrws0ClLXchWgly13Q+wIHfdOp6g==
X-Received: by 10.98.10.25 with SMTP id s25mr25921109pfi.158.1458330352292;
        Fri, 18 Mar 2016 12:45:52 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id vy6sm22853058pac.38.2016.03.18.12.45.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 12:45:51 -0700 (PDT)
Date: Sat, 19 Mar 2016 01:15:48 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: comedi: drivers: amplc_pci224: Convert macros
 to static inline functions
Message-ID: <f394338c8a132d828ee81f06bf3324a321c6e402.1458330202.git.bhaktipriya96@gmail.com>
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
 drivers/staging/comedi/drivers/amplc_pci224.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index cac011f..21bc6b3 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -202,7 +202,9 @@
 #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
 #define CLK_EXT		7	/* external clock */
 /* Macro to construct clock input configuration register value. */
-#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline unsigned int CLK_CONFIG(unsigned int chan, unsigned int src) {
+	return ((((chan) & 3) << 3) | ((src) & 7));
+}

 /*
  * Counter/timer gate input configuration sources.
@@ -212,7 +214,9 @@
 #define GAT_EXT		2	/* reserved (external gate input) */
 #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
 /* Macro to construct gate input configuration register value. */
-#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline unsigned int GAT_CONFIG(unsigned int chan, unsigned int src) {
+	return ((((chan) & 3) << 3) | ((src) & 7));
+}

 /*
  * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
@@ -812,14 +816,14 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
 	 * source.
 	 */
 	/* Make sure Z2-0 is gated on.  */
-	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(gat_config(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Cascading with Z2-2. */
 	/* Make sure Z2-2 is gated on.  */
-	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
+	outb(gat_config(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
 	/* Z2-2 needs 10 MHz clock. */
-	outb(CLK_CONFIG(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
+	outb(clk_config(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
 	/* Z2-0 is clocked from Z2-2's output. */
-	outb(CLK_CONFIG(0, CLK_OUTNM1), devpriv->iobase1 + PCI224_ZCLK_SCE);
+	outb(clk_config(0, CLK_OUTNM1), devpriv->iobase1 + PCI224_ZCLK_SCE);

 	comedi_8254_pacer_enable(dev->pacer, 2, 0, false);
 }
--
2.1.4


