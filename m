X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.216.150 with SMTP id m144mr49108262qhb.9.1426263400949;
        Fri, 13 Mar 2015 09:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.137.167 with SMTP id qj7ls747962obb.67.gmail; Fri, 13 Mar
 2015 09:16:40 -0700 (PDT)
X-Received: by 10.182.251.231 with SMTP id zn7mr52393671obc.24.1426263400768;
        Fri, 13 Mar 2015 09:16:40 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pc4si467597pac.0.2015.03.13.09.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id et14so30677103pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MeGEYewEGNJjrIPnXSc4XXy4E6s3R8xA6RQewbhhrC4=;
        b=hOYl0z7tf2wRDzxz5LATxrC7UGT6lukrq5wqmE27ylDr7yk3VlMfsvl2RYiA0OxcvW
         9CLC3wNK9N5gWHAVrHL4SSD3IRZhzBSqO7elAsLqkG1WJNWI+49E0qmsSU4ukNTe1hMS
         va+R7eqFXKtNrUnpAwRbeq4I3CuoZgPumi5pb+/OpFzIUSpiy8DlUeJS4QjF+1MQovMj
         VcobUKbzpAxHzv30bN5JSpQsI3x7mM3G+8uG+9KSjraQf5G0wHXu0cs+ao294wOyu4gs
         CgIYYxZ3hpNNmxp9PUE8HI7PUt7eBmC064ae0eMEIdfUvA3rezDJMUIs/j3Gfih0zVWg
         /Yqw==
X-Received: by 10.70.88.137 with SMTP id bg9mr81288706pdb.92.1426263400505;
        Fri, 13 Mar 2015 09:16:40 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.124])
        by mx.google.com with ESMTPSA id 7sm4255579pdj.16.2015.03.13.09.16.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 09:16:39 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/4] Staging: ft1000: Iterate list using list_for_each_entry
Date: Fri, 13 Mar 2015 21:47:31 +0530
Message-Id: <1426263453-26331-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
References: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>

Code using doubly linked list is iterated generally  using list_empty and
list_entry functions, but it can be better written using list_for_each_entry
macro.

This patch replaces the while loop containing list_empty and list_entry with
list_for_each_entry, making sure to keep the logic of code intact. This
transformation is done by using the following coccinelle script.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0) {
+ list_for_each_entry (I1, &E1, I2) {
        ...when != T *I1;
-       I1 = list_entry(E1.next, T, I2);
    ...
}

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 11 +++--------
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c |  9 +++------
 drivers/staging/ft1000/ft1000-usb/ft1000_hw.c    |  4 +---
 3 files changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index bc959ff..eed8863 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -373,9 +373,8 @@ static int ft1000_reset_card(struct net_device *dev)
 	/* del_timer(&poll_timer); */
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
+	list_for_each_entry(ptr, &info->prov_list, list) {
 		pr_debug("deleting provisioning record\n");
-		ptr = list_entry(info->prov_list.next, struct prov_record, list);
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
@@ -963,7 +962,7 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 		case DSP_PROVISION:
 			pr_debug("Got a provisioning request message from DSP\n");
 			mdelay(25);
-			while (list_empty(&info->prov_list) == 0) {
+			list_for_each_entry(ptr, &info->prov_list, list) {
 				pr_debug("Sending a provisioning message\n");
 				/* Make sure SLOWQ doorbell is clear */
 				tempword =
@@ -975,9 +974,6 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 					if (i == 10)
 						break;
 				}
-				ptr =
-					list_entry(info->prov_list.next,
-						   struct prov_record, list);
 				len = *(u16 *)ptr->pprov_data;
 				len = htons(len);
 
@@ -1979,8 +1975,7 @@ void stop_ft1000_card(struct net_device *dev)
 	ft1000_disable_interrupts(dev);
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
-		ptr = list_entry(info->prov_list.next, struct prov_record, list);
+	list_for_each_entry(ptr, &info->prov_list, list) {
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index 0f776d0..7440cf7 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -259,8 +259,7 @@ void ft1000_destroy_dev(struct net_device *netdev)
 
 		/* Make sure we free any memory reserve for slow Queue */
 		for (i = 0; i < MAX_NUM_APP; i++) {
-			while (list_empty(&dev->app_info[i].app_sqlist) == 0) {
-				pdpram_blk = list_entry(dev->app_info[i].app_sqlist.next, struct dpram_blk, list);
+			list_for_each_entry(pdpram_blk, &dev->app_info[i].app_sqlist, list) {
 				list_del(&pdpram_blk->list);
 				ft1000_free_buffer(pdpram_blk, &freercvpool);
 
@@ -270,8 +269,7 @@ void ft1000_destroy_dev(struct net_device *netdev)
 
 		/* Remove buffer allocated for receive command data */
 		if (ft1000_flarion_cnt == 0) {
-			while (list_empty(&freercvpool) == 0) {
-				ptr = list_entry(freercvpool.next, struct dpram_blk, list);
+			list_for_each_entry(ptr, &freercvpool, list) {
 				list_del(&ptr->list);
 				kfree(ptr->pbuffer);
 				kfree(ptr);
@@ -763,9 +761,8 @@ static int ft1000_release(struct inode *inode, struct file *file)
 	if (i == MAX_NUM_APP)
 		return 0;
 
-	while (list_empty(&ft1000dev->app_info[i].app_sqlist) == 0) {
+	list_for_each_entry(pdpram_blk, &ft1000dev->app_info[i].app_sqlist, list) {
 		pr_debug("Remove and free memory queue up on slow queue\n");
-		pdpram_blk = list_entry(ft1000dev->app_info[i].app_sqlist.next, struct dpram_blk, list);
 		list_del(&pdpram_blk->list);
 		ft1000_free_buffer(pdpram_blk, &freercvpool);
 	}
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
index f0ac438..a4c5ccc 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
@@ -457,10 +457,8 @@ static int ft1000_reset_card(struct net_device *dev)
 	ft1000dev->fProvComplete = false;
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
+	list_for_each_entry(ptr, &info->prov_list, list) {
 		pr_debug("deleting provisioning record\n");
-		ptr =
-			list_entry(info->prov_list.next, struct prov_record, list);
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
-- 
1.9.1


