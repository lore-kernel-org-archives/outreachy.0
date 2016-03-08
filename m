X-GM-THRID: 6256340731045085184
X-Received: by 10.98.42.67 with SMTP id q64mr20854581pfq.9.1457446502628;
        Tue, 08 Mar 2016 06:15:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.162 with SMTP id g2ls158129obe.63.gmail; Tue, 08 Mar
 2016 06:15:02 -0800 (PST)
X-Received: by 10.182.53.233 with SMTP id e9mr21014578obp.28.1457446502122;
        Tue, 08 Mar 2016 06:15:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si501417pfa.2.2016.03.08.06.15.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 06:15:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so1254898pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 06:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oud56U+ghvjmTQ5NoXadaNNjMhi3HWGaOUw5fryTd58=;
        b=0ogHOSiSZDSQvt8RU48N/BLwAyEgu5lJxDTxJSlqcNNd77ty3ZhNxMJZGHp2Gmw879
         uWNKgN3fM9hTSpELbUxIikqC7ekggkH1eoKWj3NPZlAQgzyKVAwAZHhI/bNbgYrL6N2c
         j4hCa20ZPQnbQxZF1PzLd6srNVEJGhcmRh8VlUbu/LAQgwJvOBhy9bmkP2ver3MFpYm+
         okAgKQeUrDGpnnLY8cevB6re6vNCNOgl11oICca2gzJzTRnLpNVzPx5UOX0ittIeltsN
         dQfVmZTJwkyYtOfYCWydy6Cn5P3BRt/HCkLvLRFQQYemot+/j6/RUl/NvQ7ee6oIh/0S
         XT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oud56U+ghvjmTQ5NoXadaNNjMhi3HWGaOUw5fryTd58=;
        b=Naqwfs1CcM2NuNOmvAuRW38LN2DFHpNJScGOYJ0r3iRwP4YtCdZekaE3vJ7arALnJs
         HyFKXR3XjEhRXmlKdKz3t9Xd6kSDUknEiV0jgfCIdWYvwXDVuaus2+qx+HQ5OAklHCB5
         PK6Y81f5Sx0YlOdDL6L/VS67VGn4WjGMyZywnRWqcFue8dK1z3dmo8JYxQ6D6LUWAHN7
         fmtbdNdrtAfCSHO6axPt+/IENEo1mrysm2fwbDlvrX8W8a5smzDAes+d419FE7KksVhl
         XsCHNld+16xumS7p98oi2IUV1DGSk55mMdT6PJ8aTs89YosB7OB6WXqppRfD3Kd5WdHt
         5LFA==
X-Gm-Message-State: AD7BkJK1UfFBbtiVgbM2UrsZvMu/Ag4tiROl3KPnwkpEgBIa4BiToHYQw4jLYkaDhPuU/Q==
X-Received: by 10.66.248.168 with SMTP id yn8mr41726796pac.24.1457446501957;
        Tue, 08 Mar 2016 06:15:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 27sm5435260pfo.58.2016.03.08.06.15.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 06:15:01 -0800 (PST)
Date: Tue, 8 Mar 2016 19:32:48 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: obdclass: Use list_for_each_entry_safe
Message-ID: <20160308140248.GA29844@Karyakshetra>
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
 Changes in v2:
	-No change

 drivers/staging/lustre/lustre/obdclass/lustre_peer.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
index 5c38c83..5f81246 100644
--- a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
+++ b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
@@ -150,6 +150,7 @@ int class_del_uuid(const char *uuid)
 {
 	LIST_HEAD(deathrow);
 	struct uuid_nid_data *data;
+	struct uuid_nid_data *temp;

 	spin_lock(&g_uuid_lock);
 	if (uuid) {
@@ -171,9 +172,7 @@ int class_del_uuid(const char *uuid)
 		return -EINVAL;
 	}

-	while (!list_empty(&deathrow)) {
-		data = list_entry(deathrow.next, struct uuid_nid_data,
-				  un_list);
+	list_for_each_entry_safe(data, temp, &deathrow, un_list) {
 		list_del(&data->un_list);

 		CDEBUG(D_INFO, "del uuid %s %s/%d\n",
--
2.1.4


