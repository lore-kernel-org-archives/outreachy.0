X-GM-THRID: 6259686876654862336
X-Received: by 10.66.224.38 with SMTP id qz6mr6874797pac.43.1457726435746;
        Fri, 11 Mar 2016 12:00:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.75 with SMTP id d69ls2591573qga.20.gmail; Fri, 11 Mar
 2016 12:00:35 -0800 (PST)
X-Received: by 10.129.154.16 with SMTP id r16mr8451770ywg.39.1457726435327;
        Fri, 11 Mar 2016 12:00:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1596140pab.0.2016.03.11.12.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:00:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so8090708pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3lKrKcpAQPfHaQlmN70fcVGsikVjSumlNO879UOYxFU=;
        b=FLmrIv1D7SnWuPfd8iOBifoaPOJhzfMErEtE8VPyNZa1PMOuI+W3cIRuCs2hbhMhtB
         E496RaOTgiKJWdvK706hwsgy0hnHjRTL+raS0O2eWUgmIa84Y/65ZsLELUKG6/BcvqcI
         kaV6IjBcyNKQrVsciFBGHXRKRRZ1tn75HNdarUyteTWOdzd0Ydy6xW/Z1xYKlTrHRhYI
         qP7ufy0GcpmRti+8nD/Xdqpr7pyGVTd9BxOQLRgRHWXcfHc3Fctb14oipv14KyUCmWCs
         35ruH8L4hYHj1eqQIZPcBIgXFT9xkVd3yBUAZXd+MmCxdFfCdzL9u/eXYco+s/Dd81s1
         5onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3lKrKcpAQPfHaQlmN70fcVGsikVjSumlNO879UOYxFU=;
        b=lpk4Odgxmm7YSl4aDqFXcnIzg/F0reV1VhpzHI/OkAJikhxm+AbjtI5PcsIv8c5ZHY
         TE/twUZEvZBJ9vhu7EXgyLRzjM/cJW5wZJ4uAZahQRUz359DuW812HNzm8HDUfFBV6Si
         rOVW/MiWig6zsN9unNh3FkRJgE8wnWWNL/2Vuuzw1pbWOj7TEavCEMvfEJmgqjWDwSiq
         EsZJgFlAT7wWUcaHbwA/b6gEdcZWlviv9BK9eSc/ZeWyiMHjuYoeRXLaOX1wv+mRaCHg
         pQgDXVZKG7ddTKsnhKsJH1CgGc06bxUPCnF1WxkvmKdqcj/D6FsbSLALyOkEZSeIaTXk
         i8GQ==
X-Gm-Message-State: AD7BkJIxCB+OrKftX0MJPJEQ5weky6h7FZSahebvRTSDwBv19plDcQn8SfCBZ07EnW7Bag==
X-Received: by 10.98.87.23 with SMTP id l23mr10727709pfb.101.1457726435142;
        Fri, 11 Mar 2016 12:00:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ta2sm14818510pab.42.2016.03.11.12.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:00:34 -0800 (PST)
Date: Sat, 12 Mar 2016 01:30:15 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 02/13] staging: lustre: lnet: lib-move: Use
 list_for_each_entry_safe
Message-ID: <20160311200014.GA2913@Karyakshetra>
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


