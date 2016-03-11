X-GM-THRID: 6259698705969971200
X-Received: by 10.13.226.212 with SMTP id l203mr8536065ywe.42.1457726874005;
        Fri, 11 Mar 2016 12:07:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls2996938qge.71.gmail; Fri, 11 Mar
 2016 12:07:53 -0800 (PST)
X-Received: by 10.13.226.212 with SMTP id l203mr8536025ywe.42.1457726873620;
        Fri, 11 Mar 2016 12:07:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h69si490013pfj.0.2016.03.11.12.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hj7so9259306pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SJyY6VEpACcAHoWJqJScsYJ0A9E7KEGGBS/CL9AQrAM=;
        b=yxjtthV7XQxyZJW6jZR2V7LKI1aSM2AZUt1ZyB/conYe7CRh8leEnwsxmPJjIdssT1
         JcySv+WTNOOX4vxtxlVEW9MpCAe5JEwwNIOkiWe2JwbuZND4GIV6UrB2ltD9Vnxnt8bk
         t4oZKAMmUk6Rheb739nn230JYvf+5teogI/zoC1GWH7VNUjT4k7l5Fs/ySefCfk2MXlH
         rzNpVvdfgeC9eoajRlrNewgsvhtvNHYmE1/KWrWUUy+fLYLFkVmO9OZ0NuCatOgV6uJ7
         XbCdPr2CCPeh19kKtmarp13lMaPsalKWOjqJYb+MN/DfPbMjY8E2/Yhuzag0P41JFL8n
         wHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SJyY6VEpACcAHoWJqJScsYJ0A9E7KEGGBS/CL9AQrAM=;
        b=dyK0KK0qyjZHOgVgqLQb9PA88569ZSerDkHxHgCJMLOUj+kAk5EeGefHa0MGpc3Fgj
         h6Y3Ex0U4w2EWnfdwbbnQi5bWzkJVUULcRfliIdAFnTu/JdDR4lkW2i+8W1H4H07/Wj0
         ZCk2jB/13oYEifBAynKqv7ZpsFZ3i0bO8xhDskg3JXEqF9bmCLdEiMd13vsnz8QdyqjB
         ko2Px0lFFnIpyRJw1dTq2UVqdIoDT/eFfL86pxjpgg8SiM/ADUD4pM9wvzGDy/uNVzEH
         V+nrUHYZ7Ol48vLOIxvHiytNJH1nwynrjPI/6IShCp7wiO0tTYKOQ2k6hmRA2j5EdPAX
         phEw==
X-Gm-Message-State: AD7BkJJRX5nKANfoEsv38tGgqhVDjv68SC2FNDDN7IAiVU1M7TXBk5FLP3A30R7ifiC55g==
X-Received: by 10.66.160.7 with SMTP id xg7mr18411140pab.10.1457726873431;
        Fri, 11 Mar 2016 12:07:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 19sm14833763pfp.66.2016.03.11.12.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:07:52 -0800 (PST)
Date: Sat, 12 Mar 2016 01:37:35 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 09/13] staging: lustre: osc_cache: Use
 list_for_each_entry_safe
Message-ID: <20160311200735.GA3023@Karyakshetra>
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
 Changes in v3:
	-Combined all "Use list_for_each_entry" lustre patches into a patch-set

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


