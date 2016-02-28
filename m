X-GM-THRID: 6256042901730492416
X-Received: by 10.140.29.75 with SMTP id a69mr26261382qga.0.1456666971743;
        Sun, 28 Feb 2016 05:42:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.229 with SMTP id bb5ls848036obb.54.gmail; Sun, 28 Feb
 2016 05:42:51 -0800 (PST)
X-Received: by 10.182.19.164 with SMTP id g4mr8956466obe.42.1456666971487;
        Sun, 28 Feb 2016 05:42:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id y20si970292pfa.2.2016.02.28.05.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:42:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id yy13so76689480pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0v8Qxl0u44b4Hb5SWvbTbaICjIm+yMcXinhptIbFk9A=;
        b=JCnWBuOLwgzRU1biz39f6EKBJ1wfvO55ZQ6Yq6b3V9Jgq1EUFjqASq03kXw02BWq4v
         mgG29wNrjVshU7E3cVVpITIJnFO93EZPlSwPwjcu1yHZ8dlt+iTb1ozYFcjs1sm9Z+EL
         xYzzm7jfz/kiAEfssgbH42eu+kE6JM200V8eY6LLrJUc2HuJs8idxTo62OhDTpMha6Ve
         VxCzS2RxbdyxJxN9+gyOZo5rhMkqavKlJS4n3ooTeRgcUkku+ilLL9KnvdqgcbWAMRhf
         uoffIFKSHAiXgfJE47N6J1KR/hTKAty1QEh624WKJ7ezWs3JZpUOJc9Jx9hLVYweZ/Lg
         Np2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0v8Qxl0u44b4Hb5SWvbTbaICjIm+yMcXinhptIbFk9A=;
        b=XTeFG34mUaB9piMO9K0jYpVI/DxF0SQ9PKH0FFzTVYTBRGdQPy3z/NdBESAZCNM4Tg
         SqJHhbdLmtQs398+i2yCL2VOcUhnV05jYs5bY6BMfspebuaHzmXIdExJkceK71QPbs15
         1n1v34xt9tNnJ6C6ElGsR0d4LVuwW9KuemKx0VEqXgGt+yh8Y/aX//K/CDsrtMwNeJk2
         UkatU8fzOMrIuR8IPEYz3TarjDNCJ9w32nzrSrGFh8307ldAQNl6bUZI78DHizYxfyqa
         MuuJEjieEN2Msn6jc1rj3lXZL7xG44O6/sJHu01wkLA1EaTWu6SBS1modRZsdQGCbnsW
         meqA==
X-Gm-Message-State: AD7BkJKc6PFyWriU/OdwQskAPPZ7zoOi2OEYkExz0ssqdNrXwxiZHJQbcwUhReLT1BfGLw==
X-Received: by 10.66.222.199 with SMTP id qo7mr15543470pac.38.1456666971308;
        Sun, 28 Feb 2016 05:42:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p8sm31496432pfi.34.2016.02.28.05.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:42:50 -0800 (PST)
Date: Sun, 28 Feb 2016 19:10:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Use list_for_each_entry_safe
Message-ID: <20160228134003.GA18773@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/api-ni.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 3ecc96a..e688c79 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -1084,18 +1084,17 @@ lnet_clear_zombies_nis_locked(void)
 	int i;
 	int islo;
 	lnet_ni_t *ni;
+	lnet_ni_t *temp;

 	/*
 	 * Now wait for the NI's I just nuked to show up on ln_zombie_nis
 	 * and shut them down in guaranteed thread context
 	 */
 	i = 2;
-	while (!list_empty(&the_lnet.ln_nis_zombie)) {
+	list_for_each_entry_safe(ni, temp, &the_lnet.ln_nis_zombie, ni_list) {
 		int *ref;
 		int j;

-		ni = list_entry(the_lnet.ln_nis_zombie.next,
-				lnet_ni_t, ni_list);
 		list_del_init(&ni->ni_list);
 		cfs_percpt_for_each(ref, j, ni->ni_refs) {
 			if (!*ref)
@@ -1145,6 +1144,7 @@ static void
 lnet_shutdown_lndnis(void)
 {
 	lnet_ni_t *ni;
+	lnet_ni_t *temp;
 	int i;

 	/* NB called holding the global mutex */
@@ -1158,9 +1158,7 @@ lnet_shutdown_lndnis(void)
 	the_lnet.ln_shutdown = 1;	/* flag shutdown */

 	/* Unlink NIs from the global table */
-	while (!list_empty(&the_lnet.ln_nis)) {
-		ni = list_entry(the_lnet.ln_nis.next,
-				lnet_ni_t, ni_list);
+	list_for_each_entry_safe(ni, temp, &the_lnet.ln_nis, ni_list) {
 		lnet_ni_unlink_locked(ni);
 	}

--
2.1.4


