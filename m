X-GM-THRID: 6259686876654862336
X-Received: by 10.140.93.199 with SMTP id d65mr20805610qge.30.1457446924109;
        Tue, 08 Mar 2016 06:22:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.73 with SMTP id dy9ls167931obb.35.gmail; Tue, 08 Mar
 2016 06:22:03 -0800 (PST)
X-Received: by 10.182.246.73 with SMTP id xu9mr12757223obc.4.1457446923790;
        Tue, 08 Mar 2016 06:22:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r75si507131pfr.0.2016.03.08.06.22.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:22:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x188so1337809pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aiLW9LapeNkaKlQvrVltC64jbRWDG2Lev8zXWW8q2/w=;
        b=gLi6sYWKxKIt1Rq7Gazhx/RVaxQ4c/ffnqj0cvkEsgHHkur6Ide95cTgLF9upllHBk
         a1K+g828LkaAU/Kw4QsEnd4uSG9F0xQlCuLBc+dGrTIety71GdCddPICO0FfmireCBYH
         lV6Hm20BSDmwGgDLT7qqEHCGIFmhLjuxfhllGH4KynhzFLOPXatNsvtWMdGm7oNe8TNk
         F3rvuHQ93jF6tWTvC/OjmYoLjihxiyXxmVTXJ6L3v//z2rv9w3xTLOqCBzmzc9xAj4kG
         LG5nDEcQSkwQQJqa1cuQof9gZy34/fdyEqr14AKyro6GjNfF4qnVXr9dsILZdB/d4k/8
         j4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aiLW9LapeNkaKlQvrVltC64jbRWDG2Lev8zXWW8q2/w=;
        b=Yu32y5qibHRk8L0DuG2cXxL8o8oV8JIZSAmSAf7V0pJezIl4Whby+e1h8yA7sa26SL
         7W/PA47PKgTv1FG2nTYfT28iVMefgnpJUcOGLlQeGi2hgwrD5lm5RbTNlX4hRBAjqk62
         NLYbs+7ru43Wk+gE7pd72FpxRO+5KzdAZT3SZqBbMo9/NWz+tWNvTj3Ap1ozlJjsR5ww
         X4NdNkVNnfqwq8mxKBG/hF8EQNy5KRHYpTami6fVVFuHJjG2JVSW/0TuLGjuDnq2U8vo
         aFrudJIxi0If2Hq4zhsRQQMjAun4HyHiwiOJPYreEdVPQwTfkB+votlpKrtIpOsQASpW
         lN/Q==
X-Gm-Message-State: AD7BkJKBxp+j460rncL/szwO0VPy2xqj4jLT3ujBK4OF3vVbKoogEEBw6M+d7Y9Gh8z1Rw==
X-Received: by 10.98.10.69 with SMTP id s66mr4374961pfi.85.1457446923636;
        Tue, 08 Mar 2016 06:22:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o7sm5479825pfa.37.2016.03.08.06.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:22:03 -0800 (PST)
Date: Tue, 8 Mar 2016 19:39:50 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: lnet: lib-move: Use
 list_for_each_entry_safe
Message-ID: <20160308140950.GA30168@Karyakshetra>
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
	-Fixed typo in the subject ("taging" to "staging")

 drivers/staging/lustre/lnet/lnet/lib-move.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index b821704..0009a8d 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -50,6 +50,7 @@ int
 lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -88,9 +89,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
-
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);
 		LIBCFS_FREE(tp, sizeof(*tp));
 	}
@@ -101,6 +100,7 @@ static int
 fail_peer(lnet_nid_t nid, int outgoing)
 {
 	lnet_test_peer_t *tp;
+	lnet_test_peer_t *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -147,8 +147,7 @@ fail_peer(lnet_nid_t nid, int outgoing)

 	lnet_net_unlock(0);

-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
+	list_for_each_entry_safe(tp, temp, &cull, tp_list) {
 		list_del(&tp->tp_list);

 		LIBCFS_FREE(tp, sizeof(*tp));
--
2.1.4


