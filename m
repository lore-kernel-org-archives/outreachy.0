X-GM-THRID: 7913154281472
X-Received: by 10.182.5.104 with SMTP id r8mr50653341obr.19.1426275237047;
        Fri, 13 Mar 2015 12:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.197 with SMTP id n5ls361932igv.26.gmail; Fri, 13 Mar
 2015 12:33:56 -0700 (PDT)
X-Received: by 10.66.147.39 with SMTP id th7mr38284217pab.40.1426275236509;
        Fri, 13 Mar 2015 12:33:56 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id gb13si515283pac.2.2015.03.13.12.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:33:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lj1so31700883pab.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=slZTaug3WS/7QYYY7/4MtRpeatR/O4Pk9NpBP92rKu8=;
        b=J5h7sNlWPXgzC9JQBxB/IImeqWdmGbSAvV2KSDwzcRPrgOyAXZFGj4+xOETd9M3oFI
         gmU7hIg005DawgXPJ+doKlHY32ZRB2IU7QpXOPWc4JU15lxtOiyQHdDMf4cmrw83xAYj
         1orktzAKVPLEm9J4U6tzbaTocF8fbVERt+k1N1R7W31uacm3D2qZXwZwywSSXBv/18Wp
         kBdhT9pO/CGtPD/FVc+r+KXrsL7ZyfwrlGXt9t4e694ZaPUinXuz1iLnIh8josLxlsLf
         npnPg+LovAqwm3OEBPRhh5Xkj3VHSBJ5bqLeUe3JxHFATSq2GHfOf6WWRqakd4n/akmf
         B8BQ==
X-Received: by 10.70.136.202 with SMTP id qc10mr104218892pdb.117.1426275236149;
        Fri, 13 Mar 2015 12:33:56 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id j5sm4777540pdo.60.2015.03.13.12.33.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 12:33:55 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2  1/4] Staging: ft1000: Iterate list using list_for_each_entry
Date: Sat, 14 Mar 2015 01:03:07 +0530
Message-Id: <1426275190-9883-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

Code using doubly linked list is iterated generally  using list_empty and
list_entry functions, but it can be better written using list_for_each_entry
macro.

This patch replaces the while loop containing list_empty and list_entry with
list_for_each_entry and list_for_each_entry_safe. list_for_each_entry is a
macro which is used to iterate over a list of given type. So while loop used to
iterate over a list can be replaced with list_for_each_entry macro. However, if
list_del is used in the loop, then list_for_each_entry_safe is a better choice.
This transformation is done by using the following coccinelle script.

@ rule1 @
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0)
+ list_for_each_entry (I1, &E1, I2)
 {
	...when != T *I1;
- 	I1 = list_entry(E1.next, T, I2);
    ...when != list_del(...);
       when != list_del_init(...);
 }

@ rule2  @
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@
   T *I1;
+  T *tmp;
  ...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
 {
	...when != T *I1;
- 	I1 = list_entry(E1.next, T, I2);
    ...
 }

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * used list_for_each_entry_safe where list_del and list_del_init is used.
 * used improved coccinelle script.
 * reword commit message.
 
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 8 ++++----
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c | 4 ++--
 drivers/staging/ft1000/ft1000-usb/ft1000_hw.c    | 5 ++---
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index bc959ff..9fecd26 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -364,6 +364,7 @@ static int ft1000_reset_card(struct net_device *dev)
 	int i;
 	unsigned long flags;
 	struct prov_record *ptr;
+	struct prov_record *tmp;
 
 	info->CardReady = 0;
 	info->ProgConStat = 0;
@@ -373,9 +374,8 @@ static int ft1000_reset_card(struct net_device *dev)
 	/* del_timer(&poll_timer); */
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
+	list_for_each_entry_safe(ptr, tmp, &info->prov_list, list) {
 		pr_debug("deleting provisioning record\n");
-		ptr = list_entry(info->prov_list.next, struct prov_record, list);
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
@@ -1971,6 +1971,7 @@ void stop_ft1000_card(struct net_device *dev)
 {
 	struct ft1000_info *info = netdev_priv(dev);
 	struct prov_record *ptr;
+	struct prov_record *tmp;
 	/* int cnt; */
 
 	info->CardReady = 0;
@@ -1979,8 +1980,7 @@ void stop_ft1000_card(struct net_device *dev)
 	ft1000_disable_interrupts(dev);
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
-		ptr = list_entry(info->prov_list.next, struct prov_record, list);
+	list_for_each_entry_safe(ptr, tmp, &info->prov_list, list) {
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index 0f776d0..0b69156 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -742,6 +742,7 @@ static int ft1000_release(struct inode *inode, struct file *file)
 	struct ft1000_usb *ft1000dev;
 	int i;
 	struct dpram_blk *pdpram_blk;
+	struct dpram_blk *tmp;
 
 	dev = file->private_data;
 	info = netdev_priv(dev);
@@ -763,9 +764,8 @@ static int ft1000_release(struct inode *inode, struct file *file)
 	if (i == MAX_NUM_APP)
 		return 0;
 
-	while (list_empty(&ft1000dev->app_info[i].app_sqlist) == 0) {
+	list_for_each_entry_safe(pdpram_blk, tmp, &ft1000dev->app_info[i].app_sqlist, list) {
 		pr_debug("Remove and free memory queue up on slow queue\n");
-		pdpram_blk = list_entry(ft1000dev->app_info[i].app_sqlist.next, struct dpram_blk, list);
 		list_del(&pdpram_blk->list);
 		ft1000_free_buffer(pdpram_blk, &freercvpool);
 	}
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
index f0ac438..520a981 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
@@ -451,16 +451,15 @@ static int ft1000_reset_card(struct net_device *dev)
 	struct ft1000_usb *ft1000dev = info->priv;
 	u16 tempword;
 	struct prov_record *ptr;
+	struct prov_record *tmp;
 
 	ft1000dev->fCondResetPend = true;
 	info->CardReady = 0;
 	ft1000dev->fProvComplete = false;
 
 	/* Make sure we free any memory reserve for provisioning */
-	while (list_empty(&info->prov_list) == 0) {
+	list_for_each_entry_safe(ptr, tmp, &info->prov_list, list) {
 		pr_debug("deleting provisioning record\n");
-		ptr =
-			list_entry(info->prov_list.next, struct prov_record, list);
 		list_del(&ptr->list);
 		kfree(ptr->pprov_data);
 		kfree(ptr);
-- 
1.9.1


