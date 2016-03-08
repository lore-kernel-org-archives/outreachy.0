X-GM-THRID: 6259698705969971200
X-Received: by 10.140.179.210 with SMTP id z201mr9742943qhz.26.1457449678799;
        Tue, 08 Mar 2016 07:07:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls460941qgp.17.gmail; Tue, 08 Mar
 2016 07:07:58 -0800 (PST)
X-Received: by 10.140.29.75 with SMTP id a69mr21365568qga.0.1457449678350;
        Tue, 08 Mar 2016 07:07:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id yd9si536918pab.1.2016.03.08.07.07.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 07:07:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 63so14712287pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 07:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CUwdBidNkrhlOPg2g3DJgk95bqepVrBd5yaA5mdM31o=;
        b=E9Wdbn65hAN1d2pKks1NFXActq+jAT7iHohOOMX37arIVCKi8Hzy/zAnS5YB/O2kMy
         nLSf1GrbP3ZxhQXqVUxLosUg/AMrndqXoNe0sqExouSmUnX5n6GUxX2Y785o/wkbCedz
         v4dqHh/HLLZ/9rAlB7UrhMV3LHZ4A2we2hLXvLrqr5WuVvJq6IoDoww58lUJq6lsMmHB
         QKGu/6Vhqg4Ca16hGeQk9PPUUGzHIFo8hizbrE3p3yi1i8brzHdHwC6c5anMy2pzHdXj
         +dKX+nby8C3UbzwHJf5b533N6FuSDKVUilRiu0EIo7XyE84JoJFrRjfrA2xvtj4ou78d
         G8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CUwdBidNkrhlOPg2g3DJgk95bqepVrBd5yaA5mdM31o=;
        b=U6d95KiNwXKRWinpQu8lCyw/fp42hlJDDDOQa6Zl8h+qGzTUU1M7f6z3wKUqFq8HgT
         0AJMV0y7q21M/2qWT0s81yO5tEYIgUcsswq7uq9Erv9X+ih2KXyKccwTRLx/xcQ/FZvo
         afzjKaFBy7Ibu8jZbQksYXzwU+M1Fi7/508kd82Q03tYhIZlcvg+aOlW9BTDnRW8+wew
         NQAXBTikD9S5qDndr6rkNPaIKm8ooZ4VrVkiVjFYGj8r/CyGJvVvOFhzS5+1UfQbTwNX
         lXLyRfd9nkFBuIEWqV2fzU39Y6e2SurbJinXMwYYBx4sMJvkFJJ4p7a6iSXI7tzljGHC
         04Ig==
X-Gm-Message-State: AD7BkJLm6Mma3P0OkfuD/kE9gDj5wOUGQhVbZqi6eAvQyADJJhR1/0EdZP1SbgRxOgRL/g==
X-Received: by 10.98.79.7 with SMTP id d7mr6649112pfb.77.1457449678111;
        Tue, 08 Mar 2016 07:07:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dy6sm5725916pab.48.2016.03.08.07.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 07:07:57 -0800 (PST)
Date: Tue, 8 Mar 2016 20:25:45 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: osc_cache: Use list_for_each_entry_safe
Message-ID: <20160308145545.GA31692@Karyakshetra>
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
 drivers/staging/lustre/lustre/osc/osc_cache.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c b/drivers/staging/lustre/lustre/osc/osc_cache.c
index 2e45255..6336311 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cache.c
+++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
@@ -1905,13 +1905,12 @@ static int get_write_extents(struct osc_object *obj, struct list_head *rpclist)
 {
 	struct client_obd *cli = osc_cli(obj);
 	struct osc_extent *ext;
+	struct osc_extent *temp;
 	int page_count = 0;
 	unsigned int max_pages = cli->cl_max_pages_per_rpc;

 	LASSERT(osc_object_is_locked(obj));
-	while (!list_empty(&obj->oo_hp_exts)) {
-		ext = list_entry(obj->oo_hp_exts.next, struct osc_extent,
-				 oe_link);
+	list_for_each_entry_safe(ext, temp, &obj->oo_hp_exts, oe_link) {
 		LASSERT(ext->oe_state == OES_CACHE);
 		if (!try_to_add_extent_for_io(cli, ext, rpclist, &page_count,
 					      &max_pages))
@@ -2667,6 +2666,7 @@ int osc_cache_truncate_start(const struct lu_env *env, struct osc_io *oio,
 {
 	struct client_obd *cli = osc_cli(obj);
 	struct osc_extent *ext;
+	struct osc_extent *temp;
 	struct osc_extent *waiting = NULL;
 	pgoff_t index;
 	LIST_HEAD(list);
@@ -2726,10 +2726,9 @@ again:

 	osc_list_maint(cli, obj);

-	while (!list_empty(&list)) {
+	list_for_each_entry_safe(ext, temp, &list, oe_link) {
 		int rc;

-		ext = list_entry(list.next, struct osc_extent, oe_link);
 		list_del_init(&ext->oe_link);

 		/* extent may be in OES_ACTIVE state because inode mutex
--
2.1.4


