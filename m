X-GM-THRID: 6955401561206947840
X-Received: by 2002:a19:484b:: with SMTP id v72mr14158044lfa.429.1619461775118;
        Mon, 26 Apr 2021 11:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1872133lff.3.gmail; Mon, 26
 Apr 2021 11:29:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOmMwMQVy7+DGtFWfWkgFqTIMyjfjJ/hKAP0CLXZRtlivtMAYChWlk5Yic59iafUL+XRa4
X-Received: by 2002:a05:6512:3c8e:: with SMTP id h14mr13976594lfv.26.1619461773483;
        Mon, 26 Apr 2021 11:29:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619461773; cv=none;
        d=google.com; s=arc-20160816;
        b=ozDzoXH53ty4M4rZ1tcCGd5fqlJyPJZgw+/ej4FPAAD1VtAFcVuKoKig5XXkXx0KuP
         aZnH/0pC+ZZO29kYN5eZ6V59xWz6wlrGikDVK4hUPozRk4R4nxEaQb7Pj2vf2k/ulLGK
         em/Q8/Qx0naGT24C+K03KM1IDnSG/4+xGN14ixXtUez9GDt7PvovjJM2kD+sremqhpfe
         P9C9CUVFvg6qvUA6AxhoRPaYnyxm1abQBLtyG4XS5dKxF3J1AJ86Py7fhNSyGCbFSupo
         nUVkYazM7ZERfnKDTbMTWLSN8TNeqDUQOmOHI0SK+h287hDN3eF/ahkyW1oCBHsrdAju
         pH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=f7ZXVzn+VwWaqoOcZCoYEc2Yu6e50odlU9CTClFPTX4=;
        b=bJ7mnVABAYD/dj09GFWU7YipxuHDIUJ2HveDCisoGjdlD5FX4rHOztVfsS19V7nbbR
         jtkeliWPJlB33v28HNFruEgIMACaCvqBY3iXFo9fqZL4wfbXJrZ19Iqp6xroCTHqK4pP
         wmgA2PKgueypxn4jHZK8OiQ1Dauv4W+OgpgPhFRUcEx2jC7QTBQYfULo7In/sMsudvTz
         anRs+oxYGQwTTRMgClk6Un2HA3L4uWrcbPOyl0TIIwPWjcqF/axwt8aHlRY21V6rqqOD
         IbAuaJGuHi7SLRYqw5vy9NBtRRaKCEbk6OHmQoc88XM8ONFgxwmsRblzNyLiZpncWcCj
         y6TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZtyyIHo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id v3si1444978lfp.0.2021.04.26.11.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 11:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZtyyIHo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id g14so7221430edy.6
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 11:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f7ZXVzn+VwWaqoOcZCoYEc2Yu6e50odlU9CTClFPTX4=;
        b=ZZtyyIHo2gn0Hqp+W9ywQtOJmX6cs6GomQUwy2RJ72c/8v2QLcm+EkcsY41riJOjWR
         FzzQpxLdX5RCz1T9nQ//4T7DsNrKOqDG+cWUjmS+quUl/EyK2mTeAhLx+wJn7L9k3JKL
         nwH60egoPVAW0FCPnfbMopB3g23RwSoQKhoc7iBZVbisP5HY0q9VTK+vert9gqQ46g8P
         K9dIwJ8DqxKiTKghVVBlbfcBKF8tkzemt4nyPckfaFhX1G5pnwbFh6RVTDG0XVY2qd4l
         qVLu20EMdupt/HGuV4XRn4wOnkyCCA/6Vpfg9bn+KTvmJGO4US/qF3iXfbnnKWw7Xth4
         LSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f7ZXVzn+VwWaqoOcZCoYEc2Yu6e50odlU9CTClFPTX4=;
        b=ZSJaipQ6951rt9zjXxwfehycAMZICYrHYs4Yje/MkkpPKSsV31GQgtezZIEzEUQhjn
         gIPnOs3a22eR78sI4m7ww9myU9SewrX/pRuS/0aHHF16GLadn1+Dr5D3Sr+iHnEvYBC3
         +ogMJ8G2Jcr0VDSrHgd98rX097fvkNX0/p3fcWBvJgAtLpPy/ujp/Z1TlfiyfAlM0nRv
         VebwoSSZS4MmWGDPHxYivgxKgzjTlQ0AGmHpNLa8IypFASnyPpZzGopfMIst3XnyG7I3
         gnuxW4zMsyKnB5nd0S+B4AfNJpPqqvimjLKiXI++BCeuDUWnAfEnJWAQWOwhPIM0fM5p
         Gt4Q==
X-Gm-Message-State: AOAM533mWv04ZtPTLKlfwEASFnSyPuEjOcP3LLupS6JsqONFI2RgUPgW
	cFyplvXmYp/qEeFlzmFQcyi6m/Zfp8OxhP2k
X-Received: by 2002:a50:ed0c:: with SMTP id j12mr65512eds.12.1619461772851;
        Mon, 26 Apr 2021 11:29:32 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id ck29sm450910edb.47.2021.04.26.11.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 11:29:32 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 26 Apr 2021 20:29:28 +0200
Message-Id: <20210426182928.31004-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Converted visorhba from IDR to XArray. The abstract data type XArray is
more memory-efficient, parallelisable and cache friendly. It takes
advantage of RCU to perform lookups without locking.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: After a first review by Matthew Wilcox, who found a
series of errors and gave suggestions on how to fix them, I rewrote a
larger part of the patch.

 .../staging/unisys/visorhba/visorhba_main.c   | 91 ++++++-------------
 1 file changed, 28 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 4455d26f7c96..426badcffb68 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -6,10 +6,10 @@
 
 #include <linux/debugfs.h>
 #include <linux/kthread.h>
-#include <linux/idr.h>
 #include <linux/module.h>
 #include <linux/seq_file.h>
 #include <linux/visorbus.h>
+#include <linux/xarray.h>
 #include <scsi/scsi.h>
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_cmnd.h>
@@ -23,6 +23,8 @@
 #define MAX_PENDING_REQUESTS (MIN_NUMSIGNALS * 2)
 #define VISORHBA_ERROR_COUNT 30
 
+static DEFINE_XARRAY_ALLOC(xa_dtstr);
+
 static struct dentry *visorhba_debugfs_dir;
 
 /* GUIDS for HBA channel type supported by this driver */
@@ -82,7 +84,7 @@ struct visorhba_devdata {
 	 * allows us to pass int handles back-and-forth between us and
 	 * iovm, instead of raw pointers
 	 */
-	struct idr idr;
+	struct xarray xa;
 
 	struct dentry *debugfs_dir;
 	struct dentry *debugfs_info;
@@ -182,71 +184,40 @@ static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
 	return NULL;
 }
 
-/*
- * simple_idr_get - Associate a provided pointer with an int value
- *		    1 <= value <= INT_MAX, and return this int value;
- *		    the pointer value can be obtained later by passing
- *		    this int value to idr_find()
- * @idrtable: The data object maintaining the pointer<-->int mappings
- * @p:	      The pointer value to be remembered
- * @lock:     A spinlock used when exclusive access to idrtable is needed
- *
- * Return: The id number mapped to pointer 'p', 0 on failure
- */
-static unsigned int simple_idr_get(struct idr *idrtable, void *p,
-				   spinlock_t *lock)
-{
-	int id;
-	unsigned long flags;
-
-	idr_preload(GFP_KERNEL);
-	spin_lock_irqsave(lock, flags);
-	id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
-	spin_unlock_irqrestore(lock, flags);
-	idr_preload_end();
-	/* failure */
-	if (id < 0)
-		return 0;
-	/* idr_alloc() guarantees > 0 */
-	return (unsigned int)(id);
-}
-
 /*
  * setup_scsitaskmgmt_handles - Stash the necessary handles so that the
  *				completion processing logic for a taskmgmt
  *				cmd will be able to find who to wake up
  *				and where to stash the result
- * @idrtable: The data object maintaining the pointer<-->int mappings
- * @lock:     A spinlock used when exclusive access to idrtable is needed
+ * @xa:       The data object maintaining the pointer<-->int mappings
  * @cmdrsp:   Response from the IOVM
  * @event:    The event handle to associate with an id
  * @result:   The location to place the result of the event handle into
  */
-static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t *lock,
-				       struct uiscmdrsp *cmdrsp,
+static void setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
 				       wait_queue_head_t *event, int *result)
 {
-	/* specify the event that has to be triggered when this */
-	/* cmd is complete */
-	cmdrsp->scsitaskmgmt.notify_handle =
-		simple_idr_get(idrtable, event, lock);
-	cmdrsp->scsitaskmgmt.notifyresult_handle =
-		simple_idr_get(idrtable, result, lock);
+	u32 id;
+	int ret;
+
+	/* specify the event that has to be triggered when this cmd is complete */
+	id = (u32)cmdrsp->scsitaskmgmt.notify_handle;
+	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
+	id = (u32)cmdrsp->scsitaskmgmt.notifyresult_handle;
+	ret = xa_alloc_irq(xa, &id, result, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
 }
 
 /*
  * cleanup_scsitaskmgmt_handles - Forget handles created by
  *				  setup_scsitaskmgmt_handles()
- * @idrtable: The data object maintaining the pointer<-->int mappings
+ * @xa: The data object maintaining the pointer<-->int mappings
  * @cmdrsp:   Response from the IOVM
  */
-static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
+static void cleanup_scsitaskmgmt_handles(struct xarray *xa,
 					 struct uiscmdrsp *cmdrsp)
 {
-	if (cmdrsp->scsitaskmgmt.notify_handle)
-		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
-	if (cmdrsp->scsitaskmgmt.notifyresult_handle)
-		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
+	xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
+	xa_erase(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
 }
 
 /*
@@ -273,8 +244,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 	if (devdata->serverdown || devdata->serverchangingstate)
 		return FAILED;
 
-	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
-					   NULL);
+	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE, NULL);
 	if (scsicmd_id < 0)
 		return FAILED;
 
@@ -284,8 +254,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 
 	/* issue TASK_MGMT_ABORT_TASK */
 	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
-	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
-				   &notifyevent, &notifyresult);
+	setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp, &notifyevent, &notifyresult);
 
 	/* save destination */
 	cmdrsp->scsitaskmgmt.tasktype = tasktype;
@@ -311,14 +280,14 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 	dev_dbg(&scsidev->sdev_gendev,
 		"visorhba: taskmgmt type=%d success; result=0x%x\n",
 		 tasktype, notifyresult);
-	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
+	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
 	return SUCCESS;
 
 err_del_scsipending_ent:
 	dev_dbg(&scsidev->sdev_gendev,
 		"visorhba: taskmgmt type=%d not executed\n", tasktype);
 	del_scsipending_ent(devdata, scsicmd_id);
-	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
+	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
 	return FAILED;
 }
 
@@ -654,13 +623,12 @@ DEFINE_SHOW_ATTRIBUTE(info_debugfs);
  * Service Partition returned the result of the task management
  * command. Wake up anyone waiting for it.
  */
-static void complete_taskmgmt_command(struct idr *idrtable,
-				      struct uiscmdrsp *cmdrsp, int result)
+static void complete_taskmgmt_command(struct uiscmdrsp *cmdrsp, int result)
 {
 	wait_queue_head_t *wq =
-		idr_find(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
+		xa_load(&xa_dtstr, cmdrsp->scsitaskmgmt.notify_handle);
 	int *scsi_result_ptr =
-		idr_find(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
+		xa_load(&xa_dtstr, cmdrsp->scsitaskmgmt.notifyresult_handle);
 	if (unlikely(!(wq && scsi_result_ptr))) {
 		pr_err("visorhba: no completion context; cmd will time out\n");
 		return;
@@ -708,8 +676,7 @@ static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
 			break;
 		case CMD_SCSITASKMGMT_TYPE:
 			cmdrsp = pendingdel->sent;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
-						  TASK_MGMT_FAILED);
+			complete_taskmgmt_command(cmdrsp, TASK_MGMT_FAILED);
 			break;
 		default:
 			break;
@@ -905,7 +872,7 @@ static void drain_queue(struct uiscmdrsp *cmdrsp,
 			if (!del_scsipending_ent(devdata,
 						 cmdrsp->scsitaskmgmt.handle))
 				break;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
+			complete_taskmgmt_command(cmdrsp,
 						  cmdrsp->scsitaskmgmt.result);
 		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
 			dev_err_once(&devdata->dev->device,
@@ -1053,8 +1020,6 @@ static int visorhba_probe(struct visor_device *dev)
 	if (err)
 		goto err_debugfs_info;
 
-	idr_init(&devdata->idr);
-
 	devdata->cmdrsp = kmalloc(sizeof(*devdata->cmdrsp), GFP_ATOMIC);
 	visorbus_enable_channel_interrupts(dev);
 
@@ -1096,7 +1061,7 @@ static void visorhba_remove(struct visor_device *dev)
 	scsi_remove_host(scsihost);
 	scsi_host_put(scsihost);
 
-	idr_destroy(&devdata->idr);
+	xa_destroy(&xa_dtstr);
 
 	dev_set_drvdata(&dev->device, NULL);
 	debugfs_remove(devdata->debugfs_info);
-- 
2.31.1


