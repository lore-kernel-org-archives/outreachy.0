X-GM-THRID: 6255207810462646272
X-Received: by 10.50.43.234 with SMTP id z10mr2212023igl.4.1456404060904;
        Thu, 25 Feb 2016 04:41:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.36 with SMTP id n4ls180637igy.17.gmail; Thu, 25 Feb 2016
 04:41:00 -0800 (PST)
X-Received: by 10.66.236.199 with SMTP id uw7mr41217742pac.47.1456404060365;
        Thu, 25 Feb 2016 04:41:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 79si1202218pft.0.2016.02.25.04.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:41:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id e127so32373541pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZOSJJqyNs0AdeUEzX8pBz5NclJEyg2ZWmHX+l0HyGtQ=;
        b=uwAAm93KFOWJyHpcekY4tQb5RC4dK7d0Kna+qRWCCNu14dyjLzdcLpFJ7OAqbedNiD
         Iom2c456Uy1537wgIshRBaAkCxWzKJ8DtEkOXyv9TitIKuhj+Q9ZuEIUuxesT7PH+tlP
         dJ/xJXNi3wudp9eOABpeqoRN+rbbZYofjRnte9yKpOFweqN0h5XWR6qz6o/8DjAmCkVf
         G7xADq+6ItC/A5B6Z1m+02K6rcOcFJamflzb4Rv5/hSLftAQrmuA2/Fo0HVnMI5tFGMM
         4EY8drf3EUwIOtokrly92LnS0vkZwNw0mr3R1HcrZGXBz69C7gMX2dxY/DFpsqRtW9qG
         mytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZOSJJqyNs0AdeUEzX8pBz5NclJEyg2ZWmHX+l0HyGtQ=;
        b=Aoj4hzfhySCE2X4kV30BqOyWLm6hzwkzLk4jTYUiw1wl6KuH2bk1JGzevApSgl3j2B
         /ZD8MDlrybG9O+NE3ZfYJLOCmzJ+1MKEioTV2shSmE/FQN64Kyu0R43ZOFOSCtlK7Eur
         LXWd7ZmiMybS6ZcWuXufnRiu84JufH9rdGllpVqrNFYg3uTEC2qXsKG+PWokmlNlPDPe
         cu7A+NwANXjdBQdi2dqim104CZSTPxgC/ssGv1LSNeI76cVHSrQXiOZ/VZPkr1UgKtua
         All+XNf46WC2CZeWW3QB6OW3PrMpFfeuJdH5P2HxM9dzRybfpQw1rAaGpGcYXzwWIQ3r
         5wPg==
X-Gm-Message-State: AG10YOSzQTvQkkH7OK3s9waovLggE/YiixTNUuwaryhRYk5AKP56g5dJfqYfo6K56phcTw==
X-Received: by 10.98.15.19 with SMTP id x19mr62805050pfi.60.1456404060210;
        Thu, 25 Feb 2016 04:41:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d8sm12202544pas.14.2016.02.25.04.40.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 04:40:59 -0800 (PST)
Date: Thu, 25 Feb 2016 18:11:35 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: Remove casts of pointer to same
 type
Message-ID: <20160225124135.GA7636@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Casting a pointer to a pointer of the same type is unnecessary, so remove
these unnecessary casts.

This was done with Coccinelle:

@@
type T;
T *ptr;
@@
- (T *)ptr
+ ptr

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 40b7a30..d3c9ded 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -141,7 +141,7 @@ struct recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
 		}
 	}

-	return (struct recv_frame *)hdr;
+	return hdr;
 }

 struct recv_frame *rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
@@ -240,7 +240,7 @@ void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfre

 		plist = plist->next;

-		rtw_free_recvframe((struct recv_frame *)hdr, pfree_recv_queue);
+		rtw_free_recvframe(hdr, pfree_recv_queue);
 	}

 	spin_unlock(&pframequeue->lock);
@@ -1417,7 +1417,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 	phead = get_list_head(defrag_q);
 	plist = phead->next;
 	pfhdr = container_of(plist, struct recv_frame, list);
-	prframe = (struct recv_frame *)pfhdr;
+	prframe = pfhdr;
 	list_del_init(&(prframe->list));

 	if (curfragnum != pfhdr->attrib.frag_num) {
@@ -1437,7 +1437,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,

 	while (phead != plist) {
 		pnfhdr = container_of(plist, struct recv_frame, list);
-		pnextrframe = (struct recv_frame *)pnfhdr;
+		pnextrframe = pnfhdr;

 		/* check the fragment sequence  (2nd ~n fragment frame) */

@@ -1780,7 +1780,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 	/*  Check if there is any packet need indicate. */
 	while (!list_empty(phead)) {
 		prhdr = container_of(plist, struct recv_frame, list);
-		prframe = (struct recv_frame *)prhdr;
+		prframe = prhdr;
 		pattrib = &prframe->attrib;

 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
--
2.1.4


