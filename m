X-GM-THRID: 6205587481887244288
X-Received: by 10.129.87.21 with SMTP id l21mr4051319ywb.13.1444850942684;
        Wed, 14 Oct 2015 12:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.103 with SMTP id s94ls447697qgd.75.gmail; Wed, 14 Oct
 2015 12:29:02 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr4123191vkp.0.1444850942184;
        Wed, 14 Oct 2015 12:29:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si1003741pbc.1.2015.10.14.12.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ur7so13418818pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=5CtkMBshJlAzzY1OyHBwSg3Av3JzPLARY2Fqs9BT/e4=;
        b=vrqiirM0l2jFjTXa1yNJ6IymanKUNB/y5rVB8Rec+P1D8Z6yoWzrUuILNGjbce9/P4
         Vx8liLpCYDx402C26+Z8m1+hSxlBQ9K7bM/VW2D+l7q7MSNbmN1oL4rVNw1xAGOwjTxp
         +H58nakooSCsru/iGI1Z/NbNtSyk+Qa9g3NEANHy9MUPjbMmuQkSgcIId+yq/VYvZY11
         QJ3FXKTPNlUUQ51IdGssxZbmyouDqYQVAhqIe54E8YDh8l/qs0cBdW51V8K0GVlGjj2T
         hnG+0/5NPtv33rAveGBNP7e1aIX9I/r+KOKVnOJ0L8xWGU8fpcFj/WOfFgn2w8ts6BzV
         wFjQ==
X-Received: by 10.68.191.200 with SMTP id ha8mr5361665pbc.72.1444850942050;
        Wed, 14 Oct 2015 12:29:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 05/12] Staging: unisys: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:23 +0530
Message-Id: <1444850910-11408-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACFC.0096,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/unisys/visorbus/visorchipset.c  | 2 +-
 drivers/staging/unisys/visorhba/visorhba_main.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
index 94419c3..07594f4 100644
--- a/drivers/staging/unisys/visorbus/visorchipset.c
+++ b/drivers/staging/unisys/visorbus/visorchipset.c
@@ -696,7 +696,7 @@ struct visor_busdev {
 static int match_visorbus_dev_by_id(struct device *dev, void *data)
 {
 	struct visor_device *vdev = to_visor_device(dev);
-	struct visor_busdev *id = (struct visor_busdev *)data;
+	struct visor_busdev *id = data;
 	u32 bus_no = id->bus_no;
 	u32 dev_no = id->dev_no;
 
diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 41a7bca..c119f20 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -695,20 +695,20 @@ static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
 		pendingdel = &devdata->pending[i];
 		switch (pendingdel->cmdtype) {
 		case CMD_SCSI_TYPE:
-			scsicmd = (struct scsi_cmnd *)pendingdel->sent;
+			scsicmd = pendingdel->sent;
 			scsicmd->result = DID_RESET << 16;
 			if (scsicmd->scsi_done)
 				scsicmd->scsi_done(scsicmd);
 			break;
 		case CMD_SCSITASKMGMT_TYPE:
-			cmdrsp = (struct uiscmdrsp *)pendingdel->sent;
+			cmdrsp = pendingdel->sent;
 			cmdrsp->scsitaskmgmt.notifyresult_handle
 							= TASK_MGMT_FAILED;
 			wake_up_all((wait_queue_head_t *)
 				    cmdrsp->scsitaskmgmt.notify_handle);
 			break;
 		case CMD_VDISKMGMT_TYPE:
-			cmdrsp = (struct uiscmdrsp *)pendingdel->sent;
+			cmdrsp = pendingdel->sent;
 			cmdrsp->vdiskmgmt.notifyresult_handle
 							= VDISK_MGMT_FAILED;
 			wake_up_all((wait_queue_head_t *)
-- 
2.1.4


