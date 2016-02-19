X-GM-THRID: 6253024178395414528
X-Received: by 10.107.184.195 with SMTP id i186mr14510827iof.24.1455895644965;
        Fri, 19 Feb 2016 07:27:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.90 with SMTP id 87ls183711ioi.36.gmail; Fri, 19 Feb 2016
 07:27:24 -0800 (PST)
X-Received: by 10.107.135.93 with SMTP id j90mr8603514iod.27.1455895644569;
        Fri, 19 Feb 2016 07:27:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si1773774pfa.2.2016.02.19.07.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 07:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id q63so52757172pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 07:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lTb/y/zgPmZzxHNU9uKMuWQ7QiNINAm/2WO3VWoqh8s=;
        b=euEUGgwfNpuPmTTs1SybztIYfGMbz1wO5keye106yNx0yTP5IwNcosKfHW6te0ZWJ7
         NZDBLMhGPYLEB6batnjcgEGmhZjeg9PiMf+WqcamkHrB2YRjp3s1+WmTBiIzZPKjUx+J
         gvEvZv/veX/5gE2LFVRjua2SoKVOsVAgJLGXZVojwqMLiHhICpS8p2VGSABaijkn1LoV
         AnU7brH9NP7O4kx4oZkVEIgTmqhPGif/Ol2H2QBFGVRxlmzEQBzpVLpeGJRUb2XEL4SL
         n20pPieaucSBDo2NuhxotMVyB+54xJG6PHMIHecA4PXWsUtsmcjiXgU87BJGiX/K1iPz
         dvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lTb/y/zgPmZzxHNU9uKMuWQ7QiNINAm/2WO3VWoqh8s=;
        b=KN8o38/s3IfuAFiYdI5WUPN07yEnaUvUWvNlLfNYERlzCrOe9QRlzpsqRPqwmgEMq+
         Kl7ay2oV/pVPVLyxdYkSNGF0rwBioVRtUvqvPf3rtIoJXaRSTT5Iqd9Pgqqrus6G4/Ne
         NL9Tl8eiE0SjwHwnsAH2BkXRYiY/n+BvVqwgz44Aoe3Zh9zNw1Jnyvtl3+/RNMvB+J4M
         sAdag705XBv7Y5fuJpZ0Asxb33koKKQkfr8iCwoup541Uu6Vuk3w2v7VU8PnpC6Ku2xn
         jn/jmwDN9mF/5gIHp9fCbtGxBYGuSpqYE+VHY/JmBXLnB8uFSYCa3mJSN9orsDIC8VMI
         u6Ew==
X-Gm-Message-State: AG10YOSlji/P38NrDpMJMjqMiBBZAmclE63IVp9x+5vR8zAWLZ+OAf1ds7vAUcwnpfV4UA==
X-Received: by 10.98.12.221 with SMTP id 90mr18798383pfm.95.1455895644399;
        Fri, 19 Feb 2016 07:27:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id cq4sm18712339pad.28.2016.02.19.07.27.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 07:27:23 -0800 (PST)
Date: Fri, 19 Feb 2016 20:57:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Use DIV_ROUND_CLOSEST
Message-ID: <20160219152715.GA15635@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The kernel.h macro DIV_ROUND_CLOSEST performs the computation 
`(x +d/2)/d` but is perhaps more readable.

The Coccinelle script used is as follows:
// <smpl>
@@
expression x,__divisor;
@@
- (((x) + ((__divisor) / 2)) / (__divisor))
+ DIV_ROUND_CLOSEST(x,__divisor)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/drivers/addi_apci_3xxx.c | 2 +-
 drivers/staging/comedi/drivers/amplc_pci230.c   | 2 +-
 drivers/staging/comedi/drivers/cb_pcidas64.c    | 4 ++--
 drivers/staging/comedi/drivers/dt282x.c         | 2 +-
 drivers/staging/comedi/drivers/dt3000.c         | 2 +-
 drivers/staging/comedi/drivers/ni_pcidio.c      | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_3xxx.c b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
index 995096c..b6af3eb 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3xxx.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
@@ -496,7 +496,7 @@ static int apci3xxx_ai_ns_to_timer(struct comedi_device *dev,
 		switch (flags & CMDF_ROUND_MASK) {
 		case CMDF_ROUND_NEAREST:
 		default:
-			timer = (*ns + base / 2) / base;
+			timer = DIV_ROUND_CLOSEST(*ns, base);
 			break;
 		case CMDF_ROUND_DOWN:
 			timer = *ns / base;
diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 4b39f69..d1fe88a 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -637,7 +637,7 @@ static unsigned int pci230_divide_ns(uint64_t ns, unsigned int timebase,
 	switch (flags & CMDF_ROUND_MASK) {
 	default:
 	case CMDF_ROUND_NEAREST:
-		div += (rem + (timebase / 2)) / timebase;
+		div += DIV_ROUND_CLOSEST(rem, timebase);
 		break;
 	case CMDF_ROUND_DOWN:
 		break;
diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index d33b8fe..e918d42 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1376,7 +1376,7 @@ static int set_ai_fifo_segment_length(struct comedi_device *dev,
 		num_entries = fifo->max_segment_length;
 
 	/*  1 == 256 entries, 2 == 512 entries, etc */
-	num_increments = (num_entries + increment_size / 2) / increment_size;
+	num_increments = DIV_ROUND_CLOSEST(num_entries, increment_size);
 
 	bits = (~(num_increments - 1)) & fifo->fifo_size_reg_mask;
 	devpriv->fifo_size_bits &= ~fifo->fifo_size_reg_mask;
@@ -2004,7 +2004,7 @@ static unsigned int get_divisor(unsigned int ns, unsigned int flags)
 		break;
 	case CMDF_ROUND_NEAREST:
 	default:
-		divisor = (ns + TIMER_BASE / 2) / TIMER_BASE;
+		divisor = DIV_ROUND_CLOSEST(ns, TIMER_BASE);
 		break;
 	}
 	return divisor;
diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 5a536a0..6c26e09 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -371,7 +371,7 @@ static unsigned int dt282x_ns_to_timer(unsigned int *ns, unsigned int flags)
 		switch (flags & CMDF_ROUND_MASK) {
 		case CMDF_ROUND_NEAREST:
 		default:
-			divider = (*ns + base / 2) / base;
+			divider = DIV_ROUND_CLOSEST(*ns, base);
 			break;
 		case CMDF_ROUND_DOWN:
 			divider = (*ns) / base;
diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
index ab7a332..19e0b7b 100644
--- a/drivers/staging/comedi/drivers/dt3000.c
+++ b/drivers/staging/comedi/drivers/dt3000.c
@@ -361,7 +361,7 @@ static int dt3k_ns_to_timer(unsigned int timer_base, unsigned int *nanosec,
 		switch (flags & CMDF_ROUND_MASK) {
 		case CMDF_ROUND_NEAREST:
 		default:
-			divider = (*nanosec + base / 2) / base;
+			divider = DIV_ROUND_CLOSEST(*nanosec, base);
 			break;
 		case CMDF_ROUND_DOWN:
 			divider = (*nanosec) / base;
diff --git a/drivers/staging/comedi/drivers/ni_pcidio.c b/drivers/staging/comedi/drivers/ni_pcidio.c
index ac79099..67b9f22 100644
--- a/drivers/staging/comedi/drivers/ni_pcidio.c
+++ b/drivers/staging/comedi/drivers/ni_pcidio.c
@@ -525,7 +525,7 @@ static int ni_pcidio_ns_to_timer(int *nanosec, unsigned int flags)
 	switch (flags & CMDF_ROUND_MASK) {
 	case CMDF_ROUND_NEAREST:
 	default:
-		divider = (*nanosec + base / 2) / base;
+		divider = DIV_ROUND_CLOSEST(*nanosec, base);
 		break;
 	case CMDF_ROUND_DOWN:
 		divider = (*nanosec) / base;
-- 
1.9.1


