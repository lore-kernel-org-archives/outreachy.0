X-GM-THRID: 6255331031611604992
X-Received: by 10.140.102.69 with SMTP id v63mr15463616qge.14.1456432750194;
        Thu, 25 Feb 2016 12:39:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls603873qgf.25.gmail; Thu, 25 Feb
 2016 12:39:09 -0800 (PST)
X-Received: by 10.140.167.7 with SMTP id n7mr15776000qhn.19.1456432749471;
        Thu, 25 Feb 2016 12:39:09 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id 12si1450014pfb.1.2016.02.25.12.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:39:09 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fl4so37873926pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 12:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zdSln4+9b5kcEh1cjoqLi1+BIYsCi0zKxmEwe89c25g=;
        b=NaIxmT1fnBi0+eLjcpd0mWArvatXMUgSImJ4ofDdcKVYwYJFH1fyaNxghxp21aRhwj
         /GfNUtpErMDTONDjiULD9yV1zLv8KMofSud8Ulbf6EtgPh2u5dql3JEkZ8KIDu7hgPGn
         Ag+qqWHY4gf2d/7ib86Oh8/XPE4UcwMtzg6UoEEXgRE0hgONqdRBABqXUNac9aSnmpiJ
         FwUhG02xvfjqeU8ixLa4XG6ZQdh6kWk+TuT3kIIaSfLXdoXTwV0PdZsokTYcxQRY4Hea
         EZxbWbz3m6BtL9WLAjtqxZVu9xmzl1ySGBh5nQja0cYSWXAiHZ93qTtt2zCVBy99jiQM
         RJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=zdSln4+9b5kcEh1cjoqLi1+BIYsCi0zKxmEwe89c25g=;
        b=RTScjpJNdrwqQOgWBXUe8Wnr/mVhkS9stpXXqeZ236bD2yUsLldrucQ5F7eAyWoBA+
         0o9u1DgtZywnCP13fCffHQRjHvx0OwZI1LcWHLn2hlFbXFsjU69osno60p8VbBUR0EZd
         c5MocfNrQU6/3HVtSRKoSD571NoJWSRTPxMfuDibgYWUgC/bSgfLKwJJWR6EaFLtp8A0
         dR9i3+y7imIa2ywdni7lelmI9hUH2yS4bIACUK9Feg2vJYjnOHLz4EZJ3jxzewKd6W1b
         fAqCOBEEeXu8LfHsyIaFXaZw93oktg0yn9hMxbq2EG3p4MIetwpUpKBXzESl9nJCpWIY
         w1NQ==
X-Gm-Message-State: AG10YOQrAKeU71HvdOEGOfkSHr8M0JsbE1LA+CwAZvScla0ZbnXEGVPy7YO2pVbGmMDwBw==
X-Received: by 10.66.251.194 with SMTP id zm2mr66700871pac.131.1456432749279;
        Thu, 25 Feb 2016 12:39:09 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 79sm14157384pfq.65.2016.02.25.12.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 25 Feb 2016 12:39:08 -0800 (PST)
Date: Fri, 26 Feb 2016 02:09:12 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Avoid multiple blank lines
Message-ID: <20160225203912.GA29556@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the checkpatch.pl warnings regarding multiple blank lines
as single blank line is the preferred coding style.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 8 --------
 drivers/staging/dgnc/dgnc_neo.h    | 1 -
 drivers/staging/dgnc/dgnc_pci.h    | 1 -
 3 files changed, 10 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index ce7cd9b..e4be81b 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -88,7 +88,6 @@
 #define   _POSIX_VDISABLE '\0'
 #endif
 
-
 /*
  * All the possible states the driver can be while being loaded.
  */
@@ -106,7 +105,6 @@ enum {
 	BOARD_READY
 };
 
-
 /*************************************************************************
  *
  * Structures and closely related defines.
@@ -145,7 +143,6 @@ struct board_ops {
  ************************************************************************/
 #define BD_IS_PCI_EXPRESS     0x0001	  /* Is a PCI Express board */
 
-
 /*
  *	Per-board information
  */
@@ -241,7 +238,6 @@ struct dgnc_board {
 
 };
 
-
 /************************************************************************
  * Unit flag definitions for un_flags.
  ************************************************************************/
@@ -277,7 +273,6 @@ struct un_t {
 	struct device *un_sysfs;
 };
 
-
 /************************************************************************
  * Device flag definitions for ch_flags.
  ************************************************************************/
@@ -300,7 +295,6 @@ struct un_t {
 #define CH_FORCED_STOP  0x20000		/* Output is forcibly stopped	*/
 #define CH_FORCED_STOPI 0x40000		/* Input is forcibly stopped	*/
 
-
 /* Our Read/Error/Write queue sizes */
 #define RQUEUEMASK	0x1FFF		/* 8 K - 1 */
 #define EQUEUEMASK	0x1FFF		/* 8 K - 1 */
@@ -309,7 +303,6 @@ struct un_t {
 #define EQUEUESIZE	RQUEUESIZE
 #define WQUEUESIZE	(WQUEUEMASK + 1)
 
-
 /************************************************************************
  * Channel information structure.
  ************************************************************************/
@@ -397,7 +390,6 @@ struct channel_t {
 	ulong		ch_intr_tx;	/* Count of interrupts */
 	ulong		ch_intr_rx;	/* Count of interrupts */
 
-
 	/* /proc/<board>/<channel> entries */
 	struct proc_dir_entry *proc_entry_pointer;
 	struct dgnc_proc_entry *dgnc_channel_table;
diff --git a/drivers/staging/dgnc/dgnc_neo.h b/drivers/staging/dgnc/dgnc_neo.h
index c528df5..abddd48 100644
--- a/drivers/staging/dgnc/dgnc_neo.h
+++ b/drivers/staging/dgnc/dgnc_neo.h
@@ -65,7 +65,6 @@ struct neo_uart_struct {
 #define NEO_EEDO  0x80		/* Data Out is an Input Pin */
 #define NEO_EEREG 0x8E		/* offset to EEPROM control reg */
 
-
 #define NEO_VPD_IMAGESIZE 0x40	/* size of image to read from EEPROM in words */
 #define NEO_VPD_IMAGEBYTES (NEO_VPD_IMAGESIZE * 2)
 
diff --git a/drivers/staging/dgnc/dgnc_pci.h b/drivers/staging/dgnc/dgnc_pci.h
index 617d40d..4e170c4 100644
--- a/drivers/staging/dgnc/dgnc_pci.h
+++ b/drivers/staging/dgnc/dgnc_pci.h
@@ -59,7 +59,6 @@
 #define PCI_DEVICE_NEO_EXPRESS_8RJ45_PCI_NAME	"Neo 8 PCI Express RJ45"
 #define PCI_DEVICE_NEO_EXPRESS_4_IBM_PCI_NAME	"Neo 4 PCI Express IBM"
 
-
 /* Size of Memory and I/O for PCI (4 K) */
 #define PCI_RAM_SIZE				0x1000
 
-- 
2.1.4


