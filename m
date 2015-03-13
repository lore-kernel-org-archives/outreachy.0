X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.168 with SMTP id mz8mr52372458obb.9.1426263405355;
        Fri, 13 Mar 2015 09:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.33 with SMTP id c33ls1144695iod.44.gmail; Fri, 13 Mar
 2015 09:16:45 -0700 (PDT)
X-Received: by 10.66.233.5 with SMTP id ts5mr32453217pac.27.1426263405157;
        Fri, 13 Mar 2015 09:16:45 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gu4si454545pac.1.2015.03.13.09.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rd3so30584152pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rZ71cxTctBllbUmNDxe/Eu06Md+dTwwyavEJf/3OL2E=;
        b=PD8Tl5Hk4+kEoLaKqRRmaI4L1CVb/y7iSAki2SQZcuDStUlGFyxg0otddscVaLKEXO
         UMl8Rwul+wx7Qp7qg5tIM5o9Cf8VEJ7ms56UEqmy3AqkIxqjw2UCVauW8OaJoVwaxvZ7
         sQcDG4qUqMQxvxcMlaTubsFENsDgjv/4na/0rpDCVbUYHP2rQsdQz3TYOJzvorLOEM0S
         ycE4Ye6LH2NbCg61gVt+m6XqJ7LpS7dxbc1dHTpU9mm+kAh57y3sRLHqrjYEy667yMxz
         uKrQWvYxbcopqvJ/XJ/v37GfHO2Q9m7/uj3QUaTp2ZztlaqgBdEFTBU3cBB5yQAetEOS
         hZxg==
X-Received: by 10.66.229.34 with SMTP id sn2mr35949063pac.92.1426263405084;
        Fri, 13 Mar 2015 09:16:45 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.124])
        by mx.google.com with ESMTPSA id 7sm4255579pdj.16.2015.03.13.09.16.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 09:16:44 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 3/4] Staging: gdm72xx: Iterate list using list_for_each_entry
Date: Fri, 13 Mar 2015 21:47:32 +0530
Message-Id: <1426263453-26331-3-git-send-email-somyaanand214@gmail.com>
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
 drivers/staging/gdm72xx/gdm_usb.c   | 3 +--
 drivers/staging/gdm72xx/gdm_wimax.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_usb.c b/drivers/staging/gdm72xx/gdm_usb.c
index eac2f34..8bc936a 100644
--- a/drivers/staging/gdm72xx/gdm_usb.c
+++ b/drivers/staging/gdm72xx/gdm_usb.c
@@ -704,8 +704,7 @@ static int k_mode_thread(void *arg)
 
 	while (!k_mode_stop) {
 		spin_lock_irqsave(&k_lock, flags2);
-		while (!list_empty(&k_list)) {
-			udev = list_entry(k_list.next, struct usbwm_dev, list);
+		list_for_each_entry(udev, &k_list, list) {
 			tx = &udev->tx;
 			rx = &udev->rx;
 
diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 9cab54b..b2dce37 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -132,8 +132,7 @@ static void __gdm_wimax_event_send(struct work_struct *work)
 
 	spin_lock_irqsave(&wm_event.evt_lock, flags);
 
-	while (!list_empty(&wm_event.evtq)) {
-		e = list_entry(wm_event.evtq.next, struct evt_entry, list);
+	list_for_each_entry(e, &wm_event.evtq, list) {
 		spin_unlock_irqrestore(&wm_event.evt_lock, flags);
 
 		if (sscanf(e->dev->name, "wm%d", &idx) == 1)
-- 
1.9.1


