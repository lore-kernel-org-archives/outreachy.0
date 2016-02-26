X-GM-THRID: 6255628757507244032
X-Received: by 10.129.92.65 with SMTP id q62mr1603749ywb.19.1456502233537;
        Fri, 26 Feb 2016 07:57:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.167 with SMTP id p36ls1073537qgd.93.gmail; Fri, 26 Feb
 2016 07:57:13 -0800 (PST)
X-Received: by 10.13.202.79 with SMTP id m76mr1622297ywd.10.1456502233142;
        Fri, 26 Feb 2016 07:57:13 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 12si1973447pfb.1.2016.02.26.07.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:57:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id a7so3336748pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GUAx9ecSjxfUxsqpSkgKVCp/UezrLfgCJwRAUNhcoPM=;
        b=etFcrPS1qqvk0lvIn24/WFYrHNQJkSJxp7tZXG9GUScsze2gh0fWAreh/S6FDl5cgq
         IivrxvFH2O7LJYvfBV5FBEYV4sS6QsiZavTgfp2eKeYOMTFAMMGsxfh6XkQe8y/pPtkZ
         fWDtiMwMGcYV1rjUfWu9J+Y6q4/qltYLyN6zoOuLAKmMHtpxO1d2n/GP+yEfI8X64WuC
         8NVc13uBaRKv5zYDs785pmgP/kNIdBe1vZXQ/cwEzqgUE1XOJRyDN8YoJlSwWFeTSHxW
         Sszm3q+ooG0lDwBcU3t2pd3VGTuHqq9qmQWPmfzb7Tgx1ELbnRA0oAuK49jc/O1d74yy
         X6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GUAx9ecSjxfUxsqpSkgKVCp/UezrLfgCJwRAUNhcoPM=;
        b=kk9YxAVANNFkZoYQqJZ8ODa7WJPhsaW6/UExQlVU4yY7yn6bLHgQQ8ELCc6NLb4f75
         syOCxvj8R1ruVAZV79RzaFp2IcVLqQfIboYHmjXV6fnum2kqCFyVslv53beXQe/RfPuV
         mL56JDA0ZqFgQl6bOyvaFzeb2Xd/ryN76jq47BCowhz96vquvyX5cTqca92mN9+NtOIS
         2Y2UJy2lmZhZ0CJuAtGJ6FWKz2rSrFzEWKFwr6zv7l1MkdqQ7mx6weyiaFVoKYzmu9bH
         ad/rfe29rzAcadsvQxBt+G3MwE2jIHwGfp00mEdR95SgHDYc+EuXyt0F9Ckmk+FIaoO0
         fhqA==
X-Gm-Message-State: AD7BkJIAn9fmHW5LcQL4FsNCQz0Xs8bZfhpCDRzSvRAXipD+w6Y1bMo11bOR4Rdik8ZVXw==
X-Received: by 10.66.171.169 with SMTP id av9mr3109573pac.36.1456502232951;
        Fri, 26 Feb 2016 07:57:12 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cs14sm20373458pac.10.2016.02.26.07.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 07:57:12 -0800 (PST)
Date: Fri, 26 Feb 2016 21:27:16 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: dgnc: Avoid multiple blank lines
Message-ID: <079079e1ebd663896dc912f6e106b49fe85e1c86.1456501665.git.aquannie@gmail.com>
References: <cover.1456501665.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456501665.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch.pl warnings regarding multiple blank
lines as single blank line is the preferred coding style.

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


