X-GM-THRID: 6955401561206947840
X-Received: by 2002:ac2:5e39:: with SMTP id o25mr13579264lfg.619.1619462571909;
        Mon, 26 Apr 2021 11:42:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5f9a:: with SMTP id r26ls1223131lfe.2.gmail; Mon, 26 Apr
 2021 11:42:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxWX1eqyndldnqbl+/VCKSBhSftGsZgZYLVFBVH4lFnN3b1zsEmjVnKxyqRek3BC3i5A+qP
X-Received: by 2002:a19:ec03:: with SMTP id b3mr13773671lfa.563.1619462570270;
        Mon, 26 Apr 2021 11:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619462570; cv=none;
        d=google.com; s=arc-20160816;
        b=j6/qIgm60v1+lLKMjdoT6OGVwayNJNyCplu+WssvZDTjfLJ5ifIlZTMvotxn29ZFC5
         X5vYVY1bdoCsqxsEk1q/XhS56EQBlkBcfYTbNG1lqHXp1nVd8wU+0H8HwuY2g+YczQ4A
         QQkLlXOcoq0s8P67SlOY+n+wfZefNcJc4X6sULGCnvEWNjMn5alTDKo/YAdFpytVFJC/
         MetvH7mSMct6dgHNsG3oNxsr7i00BxPLmcw+i34CxzqKCjQMf4aiNgn/wdLi7LTF3lli
         udJX9q5N5rW/zh6mAcf/Ls6Dj1rdKhPd2ZdGsioqys4LrNSk7WwJCWVGLqYEBBCcubOY
         iRAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/oHzY7EFmjXmbACcqlKjXXYBIu0vYraMFUksRGGqX5E=;
        b=QEdDFxTSN/ThVKAmY365rcwxQlR4k/PwEplI2x2FiNU5VgSNbERi0B/n4rduOZabrx
         ZFpJvMk1oWZ8urXQYtQcZ0U4TN/FQYn8Bj5x4eiR1StZQD5UcFLfaJuA6XakLqWnu40Q
         RTODrJbco8ezPlCuEih/5108W0EuHKbIfl6ZUB19OSJMNpxgl29Uw0mJWtKtO92/Rr6y
         lfeB7lshyRcj0S6ZWOscxaLAlpVcJTt5ymo3tNa5uJtd3csICnruQ+TL3q+RLiWJfrlD
         uUWvk0JsMBzLY2B+snX2guBTXJ1IIjQvDt/UQ+NdhAIVx4QBCZIvKN1NZq5/yOkT2TSm
         caZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7dc2KZc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id a10si1133915lfs.11.2021.04.26.11.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 11:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7dc2KZc;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x630.google.com with SMTP id w3so85999572ejc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 11:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/oHzY7EFmjXmbACcqlKjXXYBIu0vYraMFUksRGGqX5E=;
        b=o7dc2KZctRLIt6MSgzsov3bvXxNCEw9okaGaWSiX1juvDf0KRbwD6SKGy/NjBbNWhD
         oKUfynXkYHC0+tU4Ti4+OtWg85aiI9hQy5hm+lupD93K96MHfOzr3g8//Bzv1AwtsRxf
         MK5IgFjT8VDunSN94j4bdZvZHQ/JDd3pvDy1D3cWxAAZKVfe1I2EopEbRkmMEDMyiwGf
         1o93sVlVbYNeR6BmpMxrR9GeGl6mHnO2boSDmwPqeJmebhFJfeT24PNGjqFPPiwRCpSh
         uAjNFfqXVfSI5tlClZ2SjJOtT/p3Vtk9ooiMWdjocm4Y+R2kMwFVFeqRd6RIjGAri7en
         juKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/oHzY7EFmjXmbACcqlKjXXYBIu0vYraMFUksRGGqX5E=;
        b=gtIjliME3b32XfRl3t4PVtYlSQeTt4aLKh6n65fRmFbNUw1e5G8SW2s9iEM0GBIFuq
         V2XTaAueA+D/KzSdD8CUs96XWZ2G3tPf7MR65ch48qkvjBE7ZnbZVKZv4zkuiXAHgsHO
         zrNI/XCwr+6WYLlKEyF1oZueGFCKgFpzYNO0cbfZXRQja9GL/o70goWZlAc6EEEFcIM/
         uewMHBUJ93GQJARvvPkGnkBiADI+YhqSUbHF0BYIsxfqzEhp+kW9KnO7yPMsSZ213QtN
         jRYRbHX8qGXzgksLQOIDV+UuEj1Ao4kGBuBBNjTfMg8IX47IhsOwptZalKHGoV2/n8yw
         xU4w==
X-Gm-Message-State: AOAM532as1Uy/UECmv6lTZ3pmFZUmV0+rujcZtDZ+haSHa/vqkS7Yt1A
	ofThe6GXx/wzjH5ELrYE28T5xAMHitdIVA==
X-Received: by 2002:a17:906:37c9:: with SMTP id o9mr19716700ejc.285.1619462569599;
        Mon, 26 Apr 2021 11:42:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id l15sm417273edb.48.2021.04.26.11.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 11:42:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 26 Apr 2021 20:42:45 +0200
Message-Id: <20210426184245.12269-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Converted visorhba from IDR to XArray. The abstract data type XArray is
more memory-efficient, parallelisable and cache friendly. It takes
advantage of RCU to perform lookups without locking.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: Some residual errors from v1 were not fixed in v2. Now
they have been removed.
Changes from v1: After a first review by Matthew Wilcox, who found a
series of errors and gave suggestions on how to fix them, I rewrote a
larger part of the patch.

 .../staging/unisys/visorhba/visorhba_main.c   | 89 ++++++-------------
 1 file changed, 25 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 4455d26f7c96..938a5081b835 100644
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
@@ -82,7 +82,7 @@ struct visorhba_devdata {
 	 * allows us to pass int handles back-and-forth between us and
 	 * iovm, instead of raw pointers
 	 */
-	struct idr idr;
+	struct xarray xa;
 
 	struct dentry *debugfs_dir;
 	struct dentry *debugfs_info;
@@ -182,71 +182,40 @@ static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
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
@@ -273,8 +242,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 	if (devdata->serverdown || devdata->serverchangingstate)
 		return FAILED;
 
-	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
-					   NULL);
+	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE, NULL);
 	if (scsicmd_id < 0)
 		return FAILED;
 
@@ -284,8 +252,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 
 	/* issue TASK_MGMT_ABORT_TASK */
 	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
-	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
-				   &notifyevent, &notifyresult);
+	setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp, &notifyevent, &notifyresult);
 
 	/* save destination */
 	cmdrsp->scsitaskmgmt.tasktype = tasktype;
@@ -311,14 +278,14 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
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
 
@@ -654,13 +621,12 @@ DEFINE_SHOW_ATTRIBUTE(info_debugfs);
  * Service Partition returned the result of the task management
  * command. Wake up anyone waiting for it.
  */
-static void complete_taskmgmt_command(struct idr *idrtable,
-				      struct uiscmdrsp *cmdrsp, int result)
+static void complete_taskmgmt_command(struct xarray *xa, struct uiscmdrsp *cmdrsp, int result)
 {
 	wait_queue_head_t *wq =
-		idr_find(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
+		xa_load(xa, cmdrsp->scsitaskmgmt.notify_handle);
 	int *scsi_result_ptr =
-		idr_find(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
+		xa_load(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
 	if (unlikely(!(wq && scsi_result_ptr))) {
 		pr_err("visorhba: no completion context; cmd will time out\n");
 		return;
@@ -708,8 +674,7 @@ static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
 			break;
 		case CMD_SCSITASKMGMT_TYPE:
 			cmdrsp = pendingdel->sent;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
-						  TASK_MGMT_FAILED);
+			complete_taskmgmt_command(&devdata->xa, cmdrsp, TASK_MGMT_FAILED);
 			break;
 		default:
 			break;
@@ -905,7 +870,7 @@ static void drain_queue(struct uiscmdrsp *cmdrsp,
 			if (!del_scsipending_ent(devdata,
 						 cmdrsp->scsitaskmgmt.handle))
 				break;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
+			complete_taskmgmt_command(&devdata->xa, cmdrsp,
 						  cmdrsp->scsitaskmgmt.result);
 		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
 			dev_err_once(&devdata->dev->device,
@@ -1053,8 +1018,6 @@ static int visorhba_probe(struct visor_device *dev)
 	if (err)
 		goto err_debugfs_info;
 
-	idr_init(&devdata->idr);
-
 	devdata->cmdrsp = kmalloc(sizeof(*devdata->cmdrsp), GFP_ATOMIC);
 	visorbus_enable_channel_interrupts(dev);
 
@@ -1096,8 +1059,6 @@ static void visorhba_remove(struct visor_device *dev)
 	scsi_remove_host(scsihost);
 	scsi_host_put(scsihost);
 
-	idr_destroy(&devdata->idr);
-
 	dev_set_drvdata(&dev->device, NULL);
 	debugfs_remove(devdata->debugfs_info);
 	debugfs_remove_recursive(devdata->debugfs_dir);
-- 
2.31.1


