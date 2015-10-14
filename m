X-GM-THRID: 6205587481887244288
X-Received: by 10.13.228.133 with SMTP id n127mr4000017ywe.37.1444850949691;
        Wed, 14 Oct 2015 12:29:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.55 with SMTP id a52ls397541qge.94.gmail; Wed, 14 Oct
 2015 12:29:09 -0700 (PDT)
X-Received: by 10.13.221.143 with SMTP id g137mr4153935ywe.48.1444850949019;
        Wed, 14 Oct 2015 12:29:09 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=/DR43rETbLVkrLrtxypQrz/dOIRYkzdoJ84HAaMQSAc=;
        b=TEJaGc7RD4JIPjhai4ZV2j5mxn5ibaKvDwqVgIeodXx01x40SMb7O0BIKO/PEQrNc0
         YF6alJxgYOVaZ0VJ7BZF1jm1HoJPnXvVPKIZu9Zhr+SNxUPOvxQFdTEDHl6+0GSFvSTu
         FVXhTHlJb7H9/okrofecEDTK2IJseL7xXBXTSR6AjZzfP7FIOIjFOjhQab/6uxcPxWNK
         94WVbiXItS/biA/wihB/zT6pvP7ZbN5WyA2/jH/wucGdnHQCBwS76z3AL9uws2SdnjXh
         X9b7GiRdb1fzYZfLaU47kMCVNWb2zVdWtMWCbpeTPavvN1/RRSskO5f4jJ+g9ZB9+b/P
         Xklw==
X-Received: by 10.68.227.227 with SMTP id sd3mr5436023pbc.116.1444850948863;
        Wed, 14 Oct 2015 12:29:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:08 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 07/12] Staging: gdm72xx: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:25 +0530
Message-Id: <1444850910-11408-8-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD03.0078,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
 drivers/staging/gdm72xx/gdm_qos.c   |  2 +-
 drivers/staging/gdm72xx/gdm_wimax.c | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 72c0f7ef..81feffa 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -59,7 +59,7 @@ static void *alloc_qos_entry(void)
 
 static void free_qos_entry(void *entry)
 {
-	struct qos_entry_s *qentry = (struct qos_entry_s *)entry;
+	struct qos_entry_s *qentry = entry;
 	unsigned long flags;
 
 	spin_lock_irqsave(&qos_free_list.lock, flags);
diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 69f00cc..d9ddced 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -339,7 +339,7 @@ static void gdm_wimax_ind_if_updown(struct net_device *dev, int if_up)
 static int gdm_wimax_open(struct net_device *dev)
 {
 	struct nic *nic = netdev_priv(dev);
-	struct fsm_s *fsm = (struct fsm_s *)nic->sdk_data[SIOC_DATA_FSM].buf;
+	struct fsm_s *fsm = nic->sdk_data[SIOC_DATA_FSM].buf;
 
 	netif_start_queue(dev);
 
@@ -351,7 +351,7 @@ static int gdm_wimax_open(struct net_device *dev)
 static int gdm_wimax_close(struct net_device *dev)
 {
 	struct nic *nic = netdev_priv(dev);
-	struct fsm_s *fsm = (struct fsm_s *)nic->sdk_data[SIOC_DATA_FSM].buf;
+	struct fsm_s *fsm = nic->sdk_data[SIOC_DATA_FSM].buf;
 
 	netif_stop_queue(dev);
 
@@ -378,7 +378,7 @@ static int gdm_wimax_ioctl_get_data(struct data_s *dst, struct data_s *src)
 	if (src->size) {
 		if (!dst->buf)
 			return -EINVAL;
-		if (copy_to_user((void __user *)dst->buf, src->buf, size))
+		if (copy_to_user(dst->buf, src->buf, size))
 			return -EFAULT;
 	}
 	return 0;
@@ -401,7 +401,7 @@ static int gdm_wimax_ioctl_set_data(struct data_s *dst, struct data_s *src)
 			return -ENOMEM;
 	}
 
-	if (copy_from_user(dst->buf, (void __user *)src->buf, src->size)) {
+	if (copy_from_user(dst->buf, src->buf, src->size)) {
 		kdelete(&dst->buf);
 		return -EFAULT;
 	}
@@ -435,7 +435,7 @@ static void gdm_wimax_ind_fsm_update(struct net_device *dev, struct fsm_s *fsm)
 static void gdm_update_fsm(struct net_device *dev, struct fsm_s *new_fsm)
 {
 	struct nic *nic = netdev_priv(dev);
-	struct fsm_s *cur_fsm = (struct fsm_s *)
+	struct fsm_s *cur_fsm =
 					nic->sdk_data[SIOC_DATA_FSM].buf;
 
 	if (!cur_fsm)
@@ -483,7 +483,7 @@ static int gdm_wimax_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 				 * before gdm_wimax_ioctl_set_data is called.
 				 */
 				gdm_update_fsm(dev,
-					       (struct fsm_s *)req->data.buf);
+					       req->data.buf);
 			}
 			ret = gdm_wimax_ioctl_set_data(
 				&nic->sdk_data[req->data_id], &req->data);
@@ -798,7 +798,7 @@ cleanup:
 void unregister_wimax_device(struct phy_dev *phy_dev)
 {
 	struct nic *nic = netdev_priv(phy_dev->netdev);
-	struct fsm_s *fsm = (struct fsm_s *)nic->sdk_data[SIOC_DATA_FSM].buf;
+	struct fsm_s *fsm = nic->sdk_data[SIOC_DATA_FSM].buf;
 
 	if (fsm)
 		fsm->m_status = M_INIT;
-- 
2.1.4


