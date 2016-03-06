X-GM-THRID: 6258953898537517056
X-Received: by 10.140.240.11 with SMTP id l11mr13359634qhc.11.1457276264747;
        Sun, 06 Mar 2016 06:57:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.75 with SMTP id d72ls739948ioe.43.gmail; Sun, 06 Mar
 2016 06:57:44 -0800 (PST)
X-Received: by 10.66.181.7 with SMTP id ds7mr13330043pac.35.1457276264284;
        Sun, 06 Mar 2016 06:57:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id ff2si2575542pad.2.2016.03.06.06.57.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:57:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 129so20110239pfw.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dqo8JIPpJREMDmE+qAHJRKSlLR9jD7cIM+lbxagOGuQ=;
        b=l9RFLiEhQKeYjhUvgsz0zy08kSyfuPhKGVxqBCozs6a7UtH0QR7+g+fDkJvq2Ixu9K
         l3lBiAujoCTPw1uTKwFRxTC0/G6WWoK9I4DKJl1oBmREb6ug/Sh8EUwqmY2gvpzap90F
         NofDKm13hZsNGs6t/nnKCRHSBFFXEBj/1giNzYiQrsVF2uvoRC4InISJ94oP4DWkqhkP
         EgvhXN5WJrRgRbAlMmNfKsRLqMBVERklyA6j5YaV893H5Bovs/oFFMw4Ny3/kQDMt7hU
         1iJRETCB0T2mmWZXJBg8rm6zaNnyB8TnA5pphbBcingtgY71RrhyoNL0FwUTWz5XLIhu
         pD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dqo8JIPpJREMDmE+qAHJRKSlLR9jD7cIM+lbxagOGuQ=;
        b=Ge6CI2JWYYyJJ+1RypdBkYWsljDryLi641Pnmvx3XCV37cDO+/BYmI8yeCaQJIp+aB
         wl/Gdj4XfHdRU/tf35lhcO+zwcw5SMwUEIY7GEJFa6H6/LPsZQUT5BdpYk288De0ZHfb
         4L7mfeIXdYiRYyqGpRuL/lP/bNtzWDGvCfwpoCneH5jLKPhw8vMqvl+KuNxw6cCcHl0A
         MWsdM5F4FcaZLmGQSuvKIykNSYsJcJ7vGwfG/lx2GQ1RgRNs+iowyMBtQGTgZpggWfaE
         Lx2Yr2TfGtw/LcI4TfnOhQ5iw3B2N5TJbkYQV3nNxY7GD0p9e0obavMMLggDMecBeMIj
         fgQA==
X-Gm-Message-State: AD7BkJJzyKggqdoQ6TFDpLMBWAp4Gg/pBp1NxKWLzaj3I6y5biHoTKdRKukWFkw13PRM5Q==
X-Received: by 10.98.42.150 with SMTP id q144mr26914702pfq.73.1457276264163;
        Sun, 06 Mar 2016 06:57:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id wh9sm18299650pab.8.2016.03.06.06.57.39
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:57:43 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 20:27:33 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: Use list_{next/prev}_entry instead of list_entry
Date: Sun,  6 Mar 2016 20:26:58 +0530
Message-Id: <1457276218-12139-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replace list_entry with list_{next/prev}_entry as it makes 
the code more clear to read.
Done using coccinelle:

@@
expression e1;
identifier e3;
type t;
@@
(
- list_entry(e1->e3.next,t,e3)
+ list_next_entry(e1,e3)
|
- list_entry(e1->e3.prev,t,e3)
+ list_prev_entry(e1,e3)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c | 3 +--
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c            | 7 ++-----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
index 976a072..4499b1b 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
@@ -60,8 +60,7 @@ ksocknal_next_tx_carrier(ksock_conn_t *conn)
 		/* no more packets queued */
 		conn->ksnc_tx_carrier = NULL;
 	} else {
-		conn->ksnc_tx_carrier = list_entry(tx->tx_list.next,
-						       ksock_tx_t, tx_list);
+		conn->ksnc_tx_carrier = list_next_entry(tx, tx_list);
 		LASSERT(conn->ksnc_tx_carrier->tx_msg.ksm_type == tx->tx_msg.ksm_type);
 	}
 }
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index 488523d..ecd65a7 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -890,8 +890,7 @@ static void search_granted_lock(struct list_head *queue,
 	list_for_each(tmp, queue) {
 		lock = list_entry(tmp, struct ldlm_lock, l_res_link);
 
-		mode_end = list_entry(lock->l_sl_mode.prev,
-					  struct ldlm_lock, l_sl_mode);
+		mode_end = list_prev_entry(lock, l_sl_mode);
 
 		if (lock->l_req_mode != req->l_req_mode) {
 			/* jump to last lock of mode group */
@@ -911,9 +910,7 @@ static void search_granted_lock(struct list_head *queue,
 		if (lock->l_resource->lr_type == LDLM_IBITS) {
 			for (;;) {
 				policy_end =
-					list_entry(lock->l_sl_policy.prev,
-						       struct ldlm_lock,
-						       l_sl_policy);
+					list_prev_entry(lock, l_sl_policy);
 
 				if (lock->l_policy_data.l_inodebits.bits ==
 				    req->l_policy_data.l_inodebits.bits) {
-- 
1.9.1


