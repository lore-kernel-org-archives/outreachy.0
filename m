X-GM-THRID: 6676444636335046656
X-Received: by 2002:a6b:720b:: with SMTP id n11mr2460962ioc.3.1554480901908;
        Fri, 05 Apr 2019 09:15:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:574d:: with SMTP id u74ls2904168ita.4.canary-gmail; Fri,
 05 Apr 2019 09:15:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxeVTggg8S35zQ0qvtMhvGXZ5SMCbRfXRRvsERLDPB5bdvDjsGikk617rM40b6CHxzSP4K5
X-Received: by 2002:a24:9583:: with SMTP id m125mr2692245itd.12.1554480900837;
        Fri, 05 Apr 2019 09:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554480900; cv=none;
        d=google.com; s=arc-20160816;
        b=Nt5Zia15woi9baDrMqi0zBTTQEXPgsOdAotZp+K+E3zrIoHy8nhjh7wMx1cpwD2C3M
         jH+bvELZUQxHb3y0zaCpiSKFbvI+Okd8u1lj2pTiQ9YovPWPvhyYGSFbmPZ6ojGQSTLT
         zf9kmz1kyDIBzzy3KUZ7NhYJeHTm67UyuMERO0hyMaRbMLTaAFuHLl2jgC84Yi43h8IT
         OiMvSewnXwSh+cjSGau2gp82fbeOVr152dwx2e7CeypVTdlUCz52H0SMWXfTloPA0pxP
         XBr8nr/UylKsEHVYlrctX6apuzjKIirXCDD7HRpkbMpGFtQyVxhQgIn1O8f1q5tn+mP0
         sC+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XwL+w0lNMU5nI0U/60ZGD3s6s30l7NnGK54HTvIfD08=;
        b=FRplFqerh1uESlwZNljrxQObf9TMXuA07Nd4K+ehjI6TNZTSGX9vmN8mhNSaDcH7fM
         hOon2cMfykQ1mBOroObDCDlF1opnVOmxNAlL0PjUF3ufKTOXeYgNFOdRGWvVLl6AEx+W
         7D+xDkWtKpYBqa0lVK6BcYxVMh0dJDTwy5580K5DPKcPw8CP51Bl3kYslaOIcofAsj/O
         Hg7aTgFoUCLDW0CDJsdLk5FGbaBtdmpEIgEdRRHljF21spHOps9F5SE3DmuwCBSgpnrO
         8gx5EtpClO1bnEUglvMkgIo0KV662QscETwXBYP5HlQEUVpzcedgp99Rvter9+m9SfLQ
         fmjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWN1p6ZU;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 196si360952itw.0.2019.04.05.09.15.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWN1p6ZU;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 10so3536892pfo.5
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 09:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XwL+w0lNMU5nI0U/60ZGD3s6s30l7NnGK54HTvIfD08=;
        b=lWN1p6ZUAnBrozGvzOtgnOCaxunohEkoZSt2JbZmNHccV035ZWSEjZVIltwuMLT79R
         /CYMLfzkXYfhA9fhioAwm7UPQ5OTdet/104dPbttqjZQoG/949LwYRSqUkaVApnrKWOS
         ZjAdPDED4hJAxBzi9B9al9OZQGd4vwrG6TX4q7tMjN7SUMg5STXKwrwTK3BIiMOTLfhz
         6nE61ZL1eQLB92jD/wa4fo9Wl7XCFHKYMuoH/wGKIeAQB/exMrjHCb53aD0aPWIevQgj
         Oq05n6u/k3jN6eCIoP1yiPyJ0rL9JSdOkgN7Bn17Jl+4f6aGSBL+u/ddJ2DFdzjTtZ58
         FXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XwL+w0lNMU5nI0U/60ZGD3s6s30l7NnGK54HTvIfD08=;
        b=hfkogkDmgOK00VvMEtNRw3TTvsTMF4aIDIr9vzcSn+eUZ9ed11Qa/TBgi5SE3HRZl9
         bRRElxqUrwh5h9zBjTOfi2+f9onoZz0xb99ARPXqKI/UdwTMfGIwyGvCIcfmTd8mzhAW
         Mg/VFYekioCVAal/FDkNQ4P18qjVjNLYX0gu+nRZhG5kJBnIJ5ymqlnilOOx2MbgRkaB
         74VQ1zebD14IKvj4EOyD0hsad+8LzJ0AKa/LlvR3dUKcGp7E28tvs4XC8DPxU4/qy5Ad
         o/CDiwZGP3zgh5aYGeVs3yWfm1gqhyuR1NBXcWpcaO9fr1jiiAqey7BDffEN60M9aPkl
         jIBQ==
X-Gm-Message-State: APjAAAVeCHIFMoqmwsSR0DD5mfXjrUXhOyThcg8PeWhoxPwIjh2kYnCw
	jE0/QM3LgHcvQ9Zcd6jQQKc=
X-Received: by 2002:a62:1b8a:: with SMTP id b132mr13572378pfb.19.1554480900402;
        Fri, 05 Apr 2019 09:15:00 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id r87sm35849643pfa.71.2019.04.05.09.14.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:14:59 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [RESEND PATCH v5 4/4] staging: rtl8712: use list_for_each_entry in function update_current_network
Date: Fri,  5 Apr 2019 21:44:31 +0530
Message-Id: <20190405161431.9046-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

wlan_network is a list structure. We can avoid using next fileds and
comparison to head of the list in order to iterate over it. Instead
list_for_each_entry macro can be used to do this more tidily.

The patch also removes a pointer variable of type list_head as it is no
longer needed while using list_for_each.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V5:
        - Use list_for_each_entry and remove a pointer variable
Changes in V4:
	- Change log message
Changes in V3:
        - Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 6b352f8436ba..e1c58a49da35 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -346,7 +346,7 @@ static void update_current_network(struct _adapter *adapter,
 static void update_scanned_network(struct _adapter *adapter,
 			    struct wlan_bssid_ex *target)
 {
-	struct list_head *plist, *phead;
+	struct list_head *phead;
 
 	u32 bssid_ex_sz;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
@@ -355,28 +355,19 @@ static void update_scanned_network(struct _adapter *adapter,
 	struct wlan_network *oldest = NULL;
 
 	phead = &queue->queue;
-	plist = phead->next;
-
-	while (1) {
-		if (end_of_queue_search(phead, plist))
-			break;
-
-		pnetwork = container_of(plist, struct wlan_network, list);
+	list_for_each_entry(pnetwork, phead, list) {
 		if (is_same_network(&pnetwork->network, target))
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
 		    time_after((unsigned long)oldest->last_scanned,
 				(unsigned long)pnetwork->last_scanned))
 			oldest = pnetwork;
-
-		plist = plist->next;
 	}
 
-
 	/* If we didn't find a match, then get a new network slot to initialize
 	 * with this beacon's information
 	 */
-	if (end_of_queue_search(phead, plist)) {
+	if (end_of_queue_search(phead, phead->next)) {
 		if (list_empty(&pmlmepriv->free_bss_pool.queue)) {
 			/* If there are no more slots, expire the oldest */
 			pnetwork = oldest;
-- 
2.17.1


