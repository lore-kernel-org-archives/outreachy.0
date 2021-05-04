X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:600c:1551:: with SMTP id f17mr3367416wmg.124.1620122871164;
        Tue, 04 May 2021 03:07:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4e87:: with SMTP id f7ls994273wmq.1.canary-gmail;
 Tue, 04 May 2021 03:07:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEyUprqlW95mCh6aJLmSwHJaeQC6UR8+AwWVB3OGXkPqOlk4493pHs5RtMVLCYK+Gi0d7F
X-Received: by 2002:a1c:ba86:: with SMTP id k128mr3108227wmf.65.1620122869673;
        Tue, 04 May 2021 03:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620122869; cv=none;
        d=google.com; s=arc-20160816;
        b=GH83mvdLus7RygRvF+RrpUvcYYtKnsHl42g3GBPfhYlSirAjAdF7V+jpJRO1YuGyj/
         kwwDjpDHEbD4E6ostbjC1O5G2X38/o4yLN5MJo+RCysZHHL5Co3nRoYfFQUGncuMKhHa
         N3PUusuHZ8PPBZT0IprHL1C1QlSXNUCI5BLscmCgO/7wn09etHFBXZoyagtngU8bHxhs
         WbRCMzNvedA/c+49TADhWZ+wZWg/+r+q3FrZoi3UoN0Sm/3qnEsy2bMZLN6rHN7ioHQo
         bNXyiyS4TSufmu+bUe965hjV6p3tTSL2QNYBVoqj+VAl3SalxxXi+CCAdshj7etl+Ty4
         9rXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hWaHcY/oD4mG8LjS3zx0eGvEhaor1HToL4BuW9tQSCY=;
        b=1ISMERKZraWsB7LvpJPV22gi10l95Cvg5I1g/k/9ikHLZMYZAw4i8Q5j/SoW7ekwbT
         8YIUQqZJEY1+jrJtu3v3ucKdYIur0DbYeFjUZIhnCkIGxbxfkmWOh3LgvXA7BMRMAU54
         mNDE+Rx/Z8gbUr9yBF4G6bu38kvTwV00UZd0NggzrIKAHHw11ejos66CMpGPeQ/kSUoM
         SIkrHWjMV6P67c4kQVceNFSMRd2VMmTt0r07HzfKANwG0JiFOdlmzkgtxnofkwIeBgq9
         dMaOfPJ9xh6LnGybvgINQhkW1Op1QVz5XoD6txCtkt4WSbaRW+uzQUre+Gjgn1i/n33a
         qEEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4REsO5m;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id s9si189019wmh.2.2021.05.04.03.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 03:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4REsO5m;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x633.google.com with SMTP id w3so12282510ejc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 04 May 2021 03:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWaHcY/oD4mG8LjS3zx0eGvEhaor1HToL4BuW9tQSCY=;
        b=h4REsO5mv9jTWDtgEvoqYshKWq1cYK1N4ZslndUo8vwgyE0vqQNotEk/RY5sMS8q45
         RDFB6cfiH/CNVgCc+XTSR/BXmR46kXuiIqDr3I7TAlA6HyKtY9hR+tKEXidBlZUgnR6m
         XMFVbXFMjx1NnElgPIpUdxkRkXplJdujTlsnf7R71RwdEb5dcP0GXx1VeFf1rSCs5uMW
         +IK+bxGBXHuCvFAENZIMSt5G6KMporbtDJlok5z94e0ywfS5yRDfaJ5kw8vTyY6GkgrV
         b3E8QBkI1O6J90XyVStHFMuk3EcEeX6W8m1UMJV0/EqRhwWSAoFkSxSOQ4OB/V2TGKpB
         IdjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWaHcY/oD4mG8LjS3zx0eGvEhaor1HToL4BuW9tQSCY=;
        b=Y6ennpVh60wkmb8k9YCk0p8qnXbUmnF7O9/TUiWAhJIzbpNprMx14nKT2OOPt8Rh/X
         1i9BVqJgLADffJtK5r807BK3g9+NdzrKE9svnOqWHHXcwODPH9d+1wVQ8hnAxFTRmLrT
         CqZhFn/wwLLIgpc2RY8EfhW9wIQpZzs9W5ZmQyEulpzMCR4iHr93566vdVFz5ymUDLWZ
         Wr5bJ8LSFpJl8n59A823iPSxFGpf+UH+/TmIlMz+3612QfT3I13+LZkF/Cpu7tF+Qzzz
         QuNzG2V8EZAtEOr5QYDckKDo2SD8bzOIdhgCPZqdDdrvDNwFMe2Ak+WyZsFJJANDGPty
         g0jQ==
X-Gm-Message-State: AOAM531LBppGH18fUz64ADY6ctHrqLk3vr/6BjNoChxASFrhSCaXt06y
	vc2X+z5lzO4J9RI/ggsj5pYJdSL0JZg=
X-Received: by 2002:a17:906:38c5:: with SMTP id r5mr20322345ejd.230.1620122868748;
        Tue, 04 May 2021 03:07:48 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c19sm13978567edu.20.2021.05.04.03.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 03:07:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	sparmaintainer@unisys.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v6] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Tue,  4 May 2021 12:07:44 +0200
Message-Id: <20210504100744.28073-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Converted visorhba from IDR to XArray. The abstract data type XArray is
more memory-efficient, parallelizable and cache friendly. It takes
advantage of RCU to perform lookups without locking. Furthermore, IDR is
deprecated because XArray has a better (cleaner and more consistent)
API.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v5: As suggested by Matthew Wilcox, reworded the commit 
message, modified setup_scsitaskmgmt_handles() to manage and return errors,
used 'xa_limit_32b' as the range of indexes (because there is no need to
use 0 as a marker of no allocation). 
Changes from v4: Fixed some issues detected by Matthew Wilcox and Fabio
Aiuto.
Changes from v3: Matthew Wilcox found that the XArray was not
initialized: now it is. Changed types handles from u64 to u32 because
they can't work as arguments of xa_alloc_irq() and u32 is enough large
for storing XArray indexes.
Changes from v2: Some residual errors from v1 were not fixed in v2. Now
they have been removed.
Changes from v1: After a first review by Matthew Wilcox, who found a
series of errors and gave suggestions on how to fix them, I rewrote a
larger part of the patch.

 .../staging/unisys/visorhba/visorhba_main.c   | 103 ++++++++----------
 1 file changed, 45 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 4455d26f7c96..9ed2f1afa642 100644
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
@@ -182,71 +182,51 @@ static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
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
+static int setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
 				       wait_queue_head_t *event, int *result)
 {
-	/* specify the event that has to be triggered when this */
-	/* cmd is complete */
-	cmdrsp->scsitaskmgmt.notify_handle =
-		simple_idr_get(idrtable, event, lock);
-	cmdrsp->scsitaskmgmt.notifyresult_handle =
-		simple_idr_get(idrtable, result, lock);
+	int ret;
+	u32 id;
+
+	/* specify the event that has to be triggered when this cmd is complete */
+	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
+	if (ret == 0)
+		cmdrsp->scsitaskmgmt.notify_handle = id;
+	else
+		return ret;
+
+	ret = xa_alloc_irq(xa, &id, result, xa_limit_32b, GFP_KERNEL);
+	if (ret == 0)
+		cmdrsp->scsitaskmgmt.notifyresult_handle = id;
+	else {
+		xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
+		return ret;
+	}
+
+	return ret;
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
@@ -269,6 +249,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 	int notifyresult = 0xffff;
 	wait_queue_head_t notifyevent;
 	int scsicmd_id;
+	int setup_ret;
 
 	if (devdata->serverdown || devdata->serverchangingstate)
 		return FAILED;
@@ -284,8 +265,16 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 
 	/* issue TASK_MGMT_ABORT_TASK */
 	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
-	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
+
+	setup_ret = setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp,
 				   &notifyevent, &notifyresult);
+	if (setup_ret < 0) {
+		dev_dbg(&scsidev->sdev_gendev,
+		        "visorhba: setup_scsitaskmgmt_handles returned %d\n",
+			setup_ret);
+		return FAILED;
+	}
+
 
 	/* save destination */
 	cmdrsp->scsitaskmgmt.tasktype = tasktype;
@@ -311,14 +300,14 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
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
 
@@ -654,13 +643,13 @@ DEFINE_SHOW_ATTRIBUTE(info_debugfs);
  * Service Partition returned the result of the task management
  * command. Wake up anyone waiting for it.
  */
-static void complete_taskmgmt_command(struct idr *idrtable,
+static void complete_taskmgmt_command(struct xarray *xa,
 				      struct uiscmdrsp *cmdrsp, int result)
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
@@ -708,7 +697,7 @@ static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
 			break;
 		case CMD_SCSITASKMGMT_TYPE:
 			cmdrsp = pendingdel->sent;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
+			complete_taskmgmt_command(&devdata->xa, cmdrsp,
 						  TASK_MGMT_FAILED);
 			break;
 		default:
@@ -905,7 +894,7 @@ static void drain_queue(struct uiscmdrsp *cmdrsp,
 			if (!del_scsipending_ent(devdata,
 						 cmdrsp->scsitaskmgmt.handle))
 				break;
-			complete_taskmgmt_command(&devdata->idr, cmdrsp,
+			complete_taskmgmt_command(&devdata->xa, cmdrsp,
 						  cmdrsp->scsitaskmgmt.result);
 		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
 			dev_err_once(&devdata->dev->device,
@@ -1053,7 +1042,7 @@ static int visorhba_probe(struct visor_device *dev)
 	if (err)
 		goto err_debugfs_info;
 
-	idr_init(&devdata->idr);
+	xa_init(&devdata->xa);
 
 	devdata->cmdrsp = kmalloc(sizeof(*devdata->cmdrsp), GFP_ATOMIC);
 	visorbus_enable_channel_interrupts(dev);
@@ -1096,8 +1085,6 @@ static void visorhba_remove(struct visor_device *dev)
 	scsi_remove_host(scsihost);
 	scsi_host_put(scsihost);
 
-	idr_destroy(&devdata->idr);
-
 	dev_set_drvdata(&dev->device, NULL);
 	debugfs_remove(devdata->debugfs_info);
 	debugfs_remove_recursive(devdata->debugfs_dir);
-- 
2.31.1


