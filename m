X-GM-THRID: 6260890294895509504
X-Received: by 10.182.236.34 with SMTP id ur2mr8504284obc.10.1457727117779;
        Fri, 11 Mar 2016 12:11:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls2670592qge.62.gmail; Fri, 11 Mar
 2016 12:11:56 -0800 (PST)
X-Received: by 10.140.97.244 with SMTP id m107mr8580859qge.20.1457727116675;
        Fri, 11 Mar 2016 12:11:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si1501796pfa.2.2016.03.11.12.11.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:11:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so8103433pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eN9bV4r3C269wUEDmrfUYhE8zxHESmci1XErhbC3aTU=;
        b=L+DTbXvhMgo/jOnTEMwTVjgnQPonpcrFF2B8+61tPKJqyRo68soIyPhhtq0z4b+OTz
         RLNFJFk1RgiYhlBKdVZBN/xfPLA4JxIjDDXh4f7jDz2yI2zjHYm9uB6tGi/6b3ztivfY
         MnQdoXr9qZloA/4CCNhiN/bgHdFyGsyX2TenZRV4xg89cMfiacOxROpft3xsKT1C63ic
         3vK3JfKERWB6XCGllLltvtNCoaPENUbBTd1CHSxjyDnjZNuvD1gD9Ed+kvNzHlQ+/rdO
         PxSMm+94DSlF2j56qFR9Pzk4jYad/2x57cpbd+wNU8E2D03JecIjtjLeBZaBNkzSnkOg
         GGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eN9bV4r3C269wUEDmrfUYhE8zxHESmci1XErhbC3aTU=;
        b=Oq6bWmatYiDlVKr+PE0LH/6+HFf6PvB1rxs996wrALQdbpu2T43q/83ZGl5bDT1jSd
         tPCyXWAPI3IwOd1szxsLlyJ/yLhQfzDPbXizzdoPQFQgAMZ7xDZ58n0MRUiuwvboosAa
         xwJV5fOuqKPDFtzMIp+buXp28pZJhvdLjPZvBVa5r4/SnNTa7oFy6OcrgCUNQJNqtM6T
         vUVqAF7zEi20jD7Kbe8b0O9Ty89bb48QKwH2+w5S0RROxBL2EadftRnJbLSuJzbzlFev
         lIwEPWy1Myqgc0VHiE1cJV3LyuR9KAAZtHnAUte6NC2ZUfNHlgAM3+6DsK6kH/36wJ4e
         OpHQ==
X-Gm-Message-State: AD7BkJJ1VJm9UOMpP75z+IPi+bM4Phht7rtQnuxYSoQTUAR1PnOhmrgMGVTu4187NQ+rEA==
X-Received: by 10.98.65.82 with SMTP id o79mr10680470pfa.115.1457727116489;
        Fri, 11 Mar 2016 12:11:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cq4sm14863322pad.28.2016.03.11.12.11.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:11:56 -0800 (PST)
Date: Sat, 12 Mar 2016 01:41:38 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 13/13] staging: lustre: lnet: o2iblnd: Use
 list_for_each_entry_safe
Message-ID: <20160311201138.GA3082@Karyakshetra>
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
	-Combined all "Use list_for_each_entry" lustre patches into a
	 patch-set

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index 79051c0..2323e8d 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -3157,6 +3157,7 @@ kiblnd_check_conns(int idx)
 	struct list_head *ptmp;
 	kib_peer_t *peer;
 	kib_conn_t *conn;
+	kib_conn_t *temp;
 	kib_conn_t *tmp;
 	struct list_head *ctmp;
 	unsigned long flags;
@@ -3225,8 +3226,7 @@ kiblnd_check_conns(int idx)
 	 * NOOP, but there were no non-blocking tx descs
 	 * free to do it last time...
 	 */
-	while (!list_empty(&checksends)) {
-		conn = list_entry(checksends.next, kib_conn_t, ibc_connd_list);
+	list_for_each_entry_safe(conn, temp, &checksends, ibc_connd_list) {
 		list_del(&conn->ibc_connd_list);
 		kiblnd_check_sends(conn);
 		kiblnd_conn_decref(conn);
--
2.1.4


