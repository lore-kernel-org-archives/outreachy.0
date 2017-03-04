X-GM-THRID: 6393330913423392768
X-Received: by 10.157.14.74 with SMTP id n10mr3119184otd.34.1488641469153;
        Sat, 04 Mar 2017 07:31:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls1426920itj.3.gmail; Sat, 04 Mar 2017
 07:31:08 -0800 (PST)
X-Received: by 10.36.70.212 with SMTP id j203mr1523205itb.16.1488641468692;
        Sat, 04 Mar 2017 07:31:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si546347pfz.1.2017.03.04.07.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 187so1850527pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aTnWxvKrwy1fPBd1oZjW4fkwl6HaOBSCHlUKBo+2zFQ=;
        b=uoFc/F62EwUwa0gqJnjDcTWufMhYmlWE6stIutYdhdu0MO/Lq4pqxzVf4UstQJEesm
         uPKU02dPKaZWWjIb/ANrhDBLEOGWv+GtU2Hd1BWvtkOVB7FoVCUiuHasZAQDghgjCD02
         NJPZP9B8k0b9vAFpRzXHTgwNSqVTIFMuA+wPDNZCv+JsZ0A86x7X7M4vPEuFHXCdx3Ey
         /LL40SZSetNiaquJ8aFhlqmqBEa7mH2qFAWVRcwiU12QziDNGgnwxcYfNYdwrWg8EIUv
         1aC19ce4B3Wg/0vz2tPxCSQ4nVqqn2gIKwMA2rxR8V01MyfUCwlqDrK2lUBCbkclz7Qo
         W6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aTnWxvKrwy1fPBd1oZjW4fkwl6HaOBSCHlUKBo+2zFQ=;
        b=g2f61MuAdIyjzjTgkkSM/22q2yxuaeNoSOVN4aogxgQQ3t/VScgJyBTt0EfNil+UGb
         4RMyVW+OoI7+jTaoS78WbKxQ19IyBxHY0v4rsf3KoOx5QRV2WnWvsThtG4UtaOdcYGFc
         DdjylQM9VAkd2VuFNQiLqtQ+Vqdzpnr24sGjvgZiV2USaHn1TafXzKyrndSRrLzvxeK/
         OKuQa4lFFstIRlBawUv57vC2ExwyXPNtrgzrgTKPBnhrlPa+snz1s0YZpV0wTurXixH2
         HpzCDKXJRYlQHotqKZQmq7wusSrbK+sZTUmrj9vrn5bc0PeP2Ro0g9yboACZ3fS+kVaR
         mfdQ==
X-Gm-Message-State: AMke39mKmZ12t+b1KftQeNL0SWPw7jLNq0WxVTf+JTVt5qwjEN89ynfnawrdkDzsddV0MA==
X-Received: by 10.98.35.9 with SMTP id j9mr10238162pfj.114.1488641468471;
        Sat, 04 Mar 2017 07:31:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l3sm30153206pgn.10.2017.03.04.07.31.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:31:07 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 3/5] staging: lustre: lustre: Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:51 +0530
Message-Id: <1488641453-22575-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v5:
   -Fixed compilation warnings.

 drivers/staging/lustre/lustre/llite/range_lock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/range_lock.c b/drivers/staging/lustre/lustre/llite/range_lock.c
index 14148a0..161391b 100644
--- a/drivers/staging/lustre/lustre/llite/range_lock.c
+++ b/drivers/staging/lustre/lustre/llite/range_lock.c
@@ -174,7 +174,7 @@ void range_unlock(struct range_lock_tree *tree, struct range_lock *lock)
  */
 static enum interval_iter range_lock_cb(struct interval_node *node, void *arg)
 {
-	struct range_lock *lock = (struct range_lock *)arg;
+	struct range_lock *lock = arg;
 	struct range_lock *overlap = node2rangelock(node);
 
 	lock->rl_blocking_ranges += overlap->rl_lock_count + 1;
-- 
2.7.4


