X-GM-THRID: 6754760383787958272
X-Received: by 2002:a1c:48f:: with SMTP id 137mr1709009wme.68.1572915856990;
        Mon, 04 Nov 2019 17:04:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7406:: with SMTP id p6ls1218848wmc.2.gmail; Mon, 04 Nov
 2019 17:04:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjoBftT02K5HfZ6aHSA1ftIgZMQQWZRPSD78RrXdZgonhBVnlJr+oUUi01KvnlT9MZ2vpO
X-Received: by 2002:a1c:a751:: with SMTP id q78mr1684509wme.129.1572915856021;
        Mon, 04 Nov 2019 17:04:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915856; cv=none;
        d=google.com; s=arc-20160816;
        b=u+wbcD4Qd2KcgnWd3YINmuZAofVm/ul4kant7e1H3D9NZQZKNPHPlSF8BRFYgnDWvt
         O0zy+f+f+jBYQlP7dTlc0pJqpKenztpLLMHysV7UHVFvZ9h97UlFEfa1kAxW7ZOgFhM8
         dLzmvr5fHZADAZ+RIuRY8k/YHs+u1jW2hhrki497jViJRg0wAfa1aTV3gEO0A5qJJxd4
         Z9TtVl2e0kNN7WoVZKKdLpegRgeQ5pixAmXBFcrHYYclLmcj+kvcbRm6OqIZdmCsH7b7
         aCht+dpdpSaOzYdw8Zc1QLct7Ld4wrn9GpjDQptnNSHJVs3WVa6adZj7T1R187eTiVqz
         /j3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=kujP9Zm7EF9e2yHyE6lya79kx2UoQ8Y68ZK3g5LPAFKKm+eA0PVIWN5WaHl1+eeABs
         8/Pw63vASf9dnV7hewJ0AbTIN47TuC80IQQ8DvB0IBHB92cZqQU6lUTPvKgckccKoWJa
         I9PbfrOwwslXgKjwMlMrrQ0vNTadmJEkknLkpHZiq+YaPS4wqJaaQdSY2Eftbf3vOZhc
         NAo9A5qXGw0X1IcHqssc1S7nEnN7I/tE+bbe1eUMkhGNkCCOJFdhOji7oqL+T3YTtRlW
         lmS+i5wELsHSP3sMTCGFZJGyMCBZuyn8C31wNKaorSdSYGy3hbbngbaRnOySdHQ9YYUc
         9uTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ek1BuC9i;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s126si1389574wme.1.2019.11.04.17.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 17:04:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ek1BuC9i;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id t1so13363224wrv.4
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 17:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=Ek1BuC9iupUUtMoIeZ/+R+aXBWPIpXAXMJ47xE/s99IxS3bu+4ZAx8Zs1qfvAdAVts
         fHOx9ENj0DT+/gl0Iht+SSdrF9+JOKYlxEQbx5DzLScbzAeq/XCc71cuL9zytKBVFNaa
         tvOTXq7eItqmDr4zpNtBf9WahAinTGOiCCgKrdKwrx3uPtkJtcR+/fvio45ZQYil1Hor
         khVMSbd0ZEdy8V7BeKmTUynsGMXiT7x0yJMUYN8uEy0VRKCJGlXhDkCeWoYNXW2Drr9L
         Yt25NJ0bmyYKIym46LXxAtGhzJv48vipfQQFr703tOOYvsw5sMIlbbhXuDzYdnICYyQu
         RlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=BUBIk7qaZp6WT0JvCjJ1JM6lp3jBwAgnXeptGSL4/63Eiae57vp4YlW3RkwqqP+Gq0
         z50LlD8lGUeg/sgg4epfMjgvvaczwp4AkdWC+HmZ1vuMUswn66YKiI2VmUwPssmPRYzE
         WFZ2pDEj4WaQKkfq3SwJtfnZI6DA8y+76ZwKWh1nmfbK/V4bbEW14Utqlwh/bhZoHQ8t
         i9cTTxMbpTwwFadLcX+T6N/efotLgixTSU/AcInlsFdhTgaOlZpYzMZCDiMX6qU9TBO/
         GireVUn3i95AJl+iglgJJPxiaqZkZkDHTTOg6Y+6GmlfoMCTtgRKmX246AZlQB8AQHVl
         YulA==
X-Gm-Message-State: APjAAAUOjtAXvbYjkggHFFjgJXzsY/Djf8anLURea+6dcRm2OmnQplTN
	WWmyb6YSAO53k9CtNmRxsLZFvw4n3WMq
X-Received: by 2002:a5d:4208:: with SMTP id n8mr22949870wrq.136.1572915855233;
        Mon, 04 Nov 2019 17:04:15 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id t29sm35903399wrb.53.2019.11.04.17.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 17:04:14 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Boqun.Feng@microsoft.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 2/2] staging: wfx: replace 1 by true
Date: Tue,  5 Nov 2019 01:03:52 +0000
Message-Id: <20191105010352.222479-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105010352.222479-1-jbi.octave@gmail.com>
References: <20191105010352.222479-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 1 by true when it is stored in a boolean variable.
Recommended by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 submits change of 1 to true with no accurate log message of what
was done reason.
v2 merges two patches for the same issue into a single one, improves on log message description: rephrase, change the term warning to recommended by coccinelle tool.
v3 gives accurate description on what was changed and reason behind:
change from fixing to replace to indicate what was done.
v4 includes logs of changes done on each version.
v5 shortens subject line to give only idea of what done.

 drivers/staging/wfx/queue.c | 2 +-
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 5d29bce65f71..71e92744fed0 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 			spin_unlock_bh(&wvif->ps_state_lock);
 
 			if (vif_more) {
-				more = 1;
+				more = true;
 				tx_allowed_mask = vif_tx_allowed_mask;
 				queue = vif_queue;
 				ret = 0;
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..ea5707ff8847 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
 			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
 			i++;
 		}
-		wvif->mcast_filter.enable = 1;
+		wvif->mcast_filter.enable = true;
 		wvif->mcast_filter.num_addresses = count;
 	}
 
-- 
2.23.0


