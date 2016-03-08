X-GM-THRID: 6259712613604655104
X-Received: by 10.13.203.135 with SMTP id n129mr113439ywd.46.1457452916926;
        Tue, 08 Mar 2016 08:01:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.6 with SMTP id q6ls192735obf.94.gmail; Tue, 08 Mar 2016
 08:01:56 -0800 (PST)
X-Received: by 10.182.47.132 with SMTP id d4mr21594399obn.40.1457452916205;
        Tue, 08 Mar 2016 08:01:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id y20si587233pfa.2.2016.03.08.08.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 08:01:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id 124so15763823pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 08:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hFxcdU/RN3E34PzJY4mEL5OAlSjOyJ5vRx/mEWoR6KE=;
        b=0ms2CWR5EW9AxpT99B2z2EfgyXp0vUR9nmIjOROErq254nmjiQV0M7txPzaLgu6Oez
         ghZDSML9Ya3aNKHXBSInLAAhak31KbGChZ6DhPehwP8sBBs1TV5LtUaN9TkMnbsiWXFN
         OJHP6TasKnBL4xZ/8cvc18HkZah5KcI4D/dB0O1HO5BF3cHZs9OrWZPBfaTq/S0CNqB8
         JdyCvLXIYP7Amm/stteyuqh9i6SOIDaOZdR94h482q6fCu6+MxeUxDIRUDe64kuEnHYd
         bKHWX7qQPSIWw4l1NjIcpoyqUfHdiHItA8DbZhairHPA624YXKTuIuBy4Im552JhbEF1
         BjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hFxcdU/RN3E34PzJY4mEL5OAlSjOyJ5vRx/mEWoR6KE=;
        b=drY//Yy1JpEIzfGe/R191rNiWcRa6OWxIFWvesAKpJvPzbc6RsFqUV8ydaTPK02YfK
         pVZ6XWIbZBKxU7HrqA5xBUMitqT6uIQOhR8oOdeb2kWOZFSlP4onDuMyDqITXyx7gC+r
         n9FxjjKjmt+Ta6qm98srRhwpinaB4560A+rPQIHL+5k9/vrSw0WCcaJE7nc3nS/XTujI
         1ns9Q+AN+5RJqxIi2PVSCKmHkzHfcx5Uym3pDdh+vZK4zqkR1Skj5bKe2Epz74vavXyW
         d+33uBq+QXtFT8AdRIQkWj7+vau3k7yzA7qrTQhNgIVisOTtANkgBa+VMVVgiVqLTb+p
         mEdA==
X-Gm-Message-State: AD7BkJJnYwOFsUDn+g9XYqiAgeu6M1QACd49D+PySeflFM7wnYeEmlOcvTbDbRHnNyvOWQ==
X-Received: by 10.98.0.71 with SMTP id 68mr43177477pfa.156.1457452915954;
        Tue, 08 Mar 2016 08:01:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x18sm5972730pfi.42.2016.03.08.08.01.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 08:01:55 -0800 (PST)
Date: Tue, 8 Mar 2016 21:19:40 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: peer: Use list_for_each_entry_safe
Message-ID: <20160308154940.GA32430@Karyakshetra>
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
 drivers/staging/lustre/lnet/lnet/peer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/peer.c b/drivers/staging/lustre/lnet/lnet/peer.c
index 19c80c9..b026fee 100644
--- a/drivers/staging/lustre/lnet/lnet/peer.c
+++ b/drivers/staging/lustre/lnet/lnet/peer.c
@@ -177,6 +177,7 @@ lnet_peer_tables_cleanup(lnet_ni_t *ni)
 	struct lnet_peer_table *ptable;
 	struct list_head deathrow;
 	lnet_peer_t *lp;
+	lnet_peer_t *temp;
 	int i;

 	INIT_LIST_HEAD(&deathrow);
@@ -210,8 +211,7 @@ lnet_peer_tables_cleanup(lnet_ni_t *ni)
 		lnet_net_unlock(i);
 	}

-	while (!list_empty(&deathrow)) {
-		lp = list_entry(deathrow.next, lnet_peer_t, lp_hashlist);
+	list_for_each_entry_safe(lp, temp, &deathrow, lp_hashlist) {
 		list_del(&lp->lp_hashlist);
 		LIBCFS_FREE(lp, sizeof(*lp));
 	}
--
2.1.4


