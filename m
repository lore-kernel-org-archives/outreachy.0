X-GM-THRID: 6261383436931432448
X-Received: by 10.182.72.137 with SMTP id d9mr13350272obv.31.1457841935535;
        Sat, 12 Mar 2016 20:05:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls2978015qge.39.gmail; Sat, 12 Mar
 2016 20:05:34 -0800 (PST)
X-Received: by 10.129.106.9 with SMTP id f9mr13018296ywc.16.1457841934950;
        Sat, 12 Mar 2016 20:05:34 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id s129si1108276ywb.5.2016.03.12.20.05.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 20:05:34 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id x1so63291716qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 20:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YbCivtiQYj0AZo4MwHnTE+IoYksRcUiaXm0Vj0fs1/A=;
        b=KTafICxMQodWb92S5GsUJHoIV+t85Ydrn3dnAEHX55QShNZrk2ER0gxlwmaFKWhtbQ
         1EdqEv7Yrgz0XdZNBN7JwQdfc96QBsT/MV+AEIv6pnSDBsERIXceY5aLfYRxH9cIhEyr
         jrokrBj3RDJl72aCs+aKNBdnf+XuSssz05pbKzXvILyKblK/IpD3R9UFYjazzR0EWd5a
         PpBMn6IiftvFfrW8TyNeJiQvDTlIQEURYg54q5Y8aPgwRN3QzBKPF0bmNidFigIgtzzF
         7UTYfaWCY2o5qK+ih9lcpwWOedSwUFfZKVgYVn0IQmDFTn3slqTXZfvxOQYoEuuDGfxt
         f/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YbCivtiQYj0AZo4MwHnTE+IoYksRcUiaXm0Vj0fs1/A=;
        b=gVfsMPKA2Pp6CpQx5G0xxqUVo6HvRaCG03K727nbi1FlyDwRcZEY7Wzv9eeUw0D88v
         zCVYXZz6yEJbp3r3bpuTqBKfVBODzNCFnT/13TqaVm6OHiUjvR8PblcoZnGTZV+2+Sh+
         G8bMAPgLHCtZk4SuljiNCwzdo48iXHj7+0FSJdVK3NSrKwi18i1kZpTaV6s0jD/tz/+n
         kjThHfWMKn22m695JrKAFuYYBoFAv0moEoj8pFqSkSl8VZWfkxD5SaGSBFcPtKRUA211
         JeerldSpiQyhHgPap6HI/0mGPVFBrXak0sG2yoUwMW48WATJw2jCLtCfwS3fXrYMpxqJ
         HK9Q==
X-Gm-Message-State: AD7BkJLbeXfavOlUpiJN2Z48DE4iCfYILOS8Dnhbr8t6eKmYR0t373VgeG9uNne6ULfoPA==
X-Received: by 10.55.79.5 with SMTP id d5mr11457706qkb.30.1457841934588;
        Sat, 12 Mar 2016 20:05:34 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id l188sm7408354qhc.10.2016.03.12.20.05.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 20:05:34 -0800 (PST)
Date: Sun, 13 Mar 2016 01:05:29 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH v2] staging: dgnc: fixed multiple blank lines
Message-ID: <20160313040529.GA10236@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes multiple blank lines that caused 
checkpatch issues.


Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v2:
   - Removed file name from subject line.
 
 drivers/staging/dgnc/dgnc_driver.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 6d91abd..d76f91e 100644
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
@@ -415,5 +407,4 @@ extern uint		dgnc_NumBoards;		/* Total number of boards */
 extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board
 							 * structs
 							 */
-
 #endif
-- 
2.7.2


