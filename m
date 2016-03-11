X-GM-THRID: 6260889732403691520
X-Received: by 10.98.64.141 with SMTP id f13mr5652113pfd.3.1457726986652;
        Fri, 11 Mar 2016 12:09:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls2452624qgn.3.gmail; Fri, 11 Mar
 2016 12:09:46 -0800 (PST)
X-Received: by 10.140.140.19 with SMTP id 19mr8495873qhm.29.1457726986156;
        Fri, 11 Mar 2016 12:09:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si1602127pab.0.2016.03.11.12.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:09:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so9260763pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FXgRogFOFFeVD3hQSln+MUi3JrAcROO5SKwBbh3kTYI=;
        b=PkFo/aYRpVjJB1EA7ywmp/uJdX/rHI0GCFgu7bO++kgpBr24lqUFgVWUW92cZtdtWz
         OYWxj3n2FCFxBGXUYFBwSueJ1dx/CmuqaOgYN+IjAYGD9l4zI20E2bGSxp20FoCsaTTu
         0nBcFzOs3U1IaiHsR4oZAeDC5HsdMlxm5R3wmWhbfK6ImXS/ZPHEYLmhbVY7SoUS/0Jt
         W7OAPeIvQ5ciMppKY1epGwcbJEdBiEP+bGGwfz/VJI6N8qknO10xJ9id6/O44wdl2npK
         hRh6UHqmFaIKDX3KQSQDkqwdWdGMIxIZ4RUWvWgHUkWLswQ0FjnFqZJ1pLgVm/ytCryY
         O5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FXgRogFOFFeVD3hQSln+MUi3JrAcROO5SKwBbh3kTYI=;
        b=FynQOA3QPyWHzePtJJblW+TS46WWafIZ/pTfmEOjccT3Q935j3I9+dklHe/4BSD2DI
         UXgL1WRyYs3XpI09Hy8bTGYP9I8Pph9xMWUp5AFoAeREgt3Qkt4SaHAQwfXTcOd0hE/d
         jnOD/cwlj8n9CUbEP6J56PSq6oKuGOcjxxuyQCFCzdLJmUaSwnYopqCtwW/oBsh0Sy3f
         6o18/TO40AP/W/aBBq5MajC1A6KsJj4n8qX9tgOrhII29qQIBbn+dC56YVKpUAwubhx6
         SnQs7wfcW7KgFC+u1c05mTDwDqAYZgliUKmLcfI7GlAvLUktTI4qxCN30VCHVydLyvUf
         WlVw==
X-Gm-Message-State: AD7BkJKc4LfjlbHwLbNJWMJvhRnDm7zNPjw5hwqyHzDoXyaHdZqLsZeVYDAVugrwxi+7xw==
X-Received: by 10.66.235.129 with SMTP id um1mr16846843pac.17.1457726985991;
        Fri, 11 Mar 2016 12:09:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e6sm14837856pfj.71.2016.03.11.12.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:09:45 -0800 (PST)
Date: Sat, 12 Mar 2016 01:39:28 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 11/13] staging: lustre: lnet: socklnd_proto: Use
 list_for_each_entry_safe
Message-ID: <20160311200928.GA3051@Karyakshetra>
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

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
index 4499b1b..32cc31e 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
@@ -403,6 +403,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64 cookie1, __u64 cookie2)
 {
 	ksock_peer_t *peer = conn->ksnc_peer;
 	ksock_tx_t *tx;
+	ksock_tx_t *temp;
 	ksock_tx_t *tmp;
 	LIST_HEAD(zlist);
 	int count;
@@ -436,8 +437,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64 cookie1, __u64 cookie2)

 	spin_unlock(&peer->ksnp_lock);

-	while (!list_empty(&zlist)) {
-		tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
+	list_for_each_entry_safe(tx, temp, &zlist, tx_zc_list) {
 		list_del(&tx->tx_zc_list);
 		ksocknal_tx_decref(tx);
 	}
--
2.1.4


