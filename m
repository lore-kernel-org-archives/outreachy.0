X-GM-THRID: 6263480963249995776
X-Received: by 10.129.3.69 with SMTP id 66mr19921034ywd.41.1458501089717;
        Sun, 20 Mar 2016 12:11:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.13 with SMTP id i13ls121610ioo.72.gmail; Sun, 20 Mar
 2016 12:11:29 -0700 (PDT)
X-Received: by 10.66.224.38 with SMTP id qz6mr19583221pac.43.1458501089177;
        Sun, 20 Mar 2016 12:11:29 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si2741977pab.2.2016.03.20.12.11.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n5so26392658pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PbGwmuADhs87r5SIB7Hf80tD0zZqUIHdr+EM0+b1Xww=;
        b=Dir1Qf9soB14zsbl9zWviH8Be7izhvsKV3Eaz1FRegm3GhQpCm37It5sW7+eov9KSb
         OgZWBUaB5S4jhdXF0EG9jshRryB7B5Yzy7pTu4sChmGeioph/2lC3PRZtBfxwVNIoyzp
         HkmMKVN2+G8gtnTqlF0TcvtMXc7Jk0d+FDmQSpYCjTYTjNmqDye/BCZkRQADgp26mDhy
         i5Zl5lwzjE3K6IkMCLzKSXL3vIdeKew9O+AbFdsvMxuODF3HxWzFfJImi+u5tdyEC9bh
         ytr9BAXC/z6oQroL/KPltLHUFoWGybOoPk9VS7kwsg1i2GCMmZuoBU7BImBlmnj2mRaj
         InuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PbGwmuADhs87r5SIB7Hf80tD0zZqUIHdr+EM0+b1Xww=;
        b=fvGKEj2fJmyQG7cQeSFkg4qvB7edBtIfdrASo14xQcxORkksxCJfuLv3cZWwQP48OG
         Y26JMp89LHeWepAUUhxiYzBRKfweZgQCpGngc7ATCNIHiioHYvlOcTMYKa2LA0BiKvI5
         sHsryxXeZluMTTmDrML5wQusXc4YlGLvCjzcjFH8o5hFRgzka8x6Vri3S20vlTAluc+b
         IM43YVsaMEAkIGnfvEu4SEhEB8YZiyb6NOtPs2kt2FNOmjs/uV0z9flgrLq+GZYqcnPV
         KY26Aal8Pc8//JcnaNGvnvzP9xYy6WPNAeill4EtO4RrRIZZlNTAy3SRzYPsno5s84Ho
         p2dg==
X-Gm-Message-State: AD7BkJK5DN2KPANkuI0JGFIPg+ldH5BplHrOiuwVdY5upb88tEhNZGJ0uin5PqCUaZUDWg==
X-Received: by 10.66.119.202 with SMTP id kw10mr39472357pab.110.1458501089034;
        Sun, 20 Mar 2016 12:11:29 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e6sm35022800pfj.71.2016.03.20.12.11.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:11:28 -0700 (PDT)
Date: Mon, 21 Mar 2016 00:41:27 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: comedi: amplc_pci230: Convert macro
 CLK_CONFIG to static inline function
Message-ID: <89df043b193021a979cffa87472398640097fc9e.1458500647.git.bhaktipriya96@gmail.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macro CLK_CONFIG to static inline function as static inline
functions are preferred over macros. Since every single user of this
macro passes the argument into the outb() function, with
(dev->iobase + ...) as the address, the two calls have been merged
into one.

This was done using Coccinelle:

@r@
identifier f;
expression e;
@@
- #define CLK_CONFIG(chan, src) e
+ static inline void pci230_clk_config(struct comedi_device *dev,
+                                      unsigned int reg,unsigned int chan,
+                                      unsigned int src)
+{
+       outb(((chan & 3) << 3) | (src & 7), dev->iobase + reg);
+}

@r1@
expression dev,reg,chan,src;
@@
-outb(CLK_CONFIG(chan, src), dev->iobase + reg);
+pci230_clk_config(dev, reg, chan, src);

Also, the comment describing the macro has been removed manually.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	- Since every single usage of this macro passes the argument into
	  the outb() function, with (dev->iobase + ...) as the address,
	  the two calls have been merged into one.

 drivers/staging/comedi/drivers/amplc_pci230.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 907c39c..635cd46 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -369,8 +369,12 @@
 #define CLK_1KHZ	5	/* internal 1 kHz clock */
 #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
 #define CLK_EXT		7	/* external clock */
-/* Macro to construct clock input configuration register value. */
-#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
+static inline void pci230_clk_config(struct comedi_device *dev,
+				     unsigned int reg, unsigned int chan,
+				     unsigned int src)
+{
+	outb(((chan & 3) << 3) | (src & 7), dev->iobase + reg);
+}

 /*
  * Counter/timer gate input configuration sources.
@@ -687,7 +691,7 @@ static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
 	/* Determine clock source and count. */
 	clk_src = pci230_choose_clk_count(ns, &count, flags);
 	/* Program clock source. */
-	outb(CLK_CONFIG(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
+	pci230_clk_config(dev, PCI230_ZCLK_SCE, ct, clk_src);
 	/* Set initial count. */
 	if (count >= 65536)
 		count = 0;
--
2.1.4


