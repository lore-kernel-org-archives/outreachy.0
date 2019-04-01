X-GM-THRID: 6674924693853569024
X-Received: by 2002:a25:1607:: with SMTP id 7mr4819287ybw.51.1554127012779;
        Mon, 01 Apr 2019 06:56:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls3074411yba.6.gmail; Mon, 01
 Apr 2019 06:56:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNzcqEYIZjkCMcUAvvF9ezrcVWt9fljI/cZtngvJHc77Hj/UX3e50VhZiXqAirSw+sot5v
X-Received: by 2002:a25:2511:: with SMTP id l17mr1256408ybl.49.1554127011806;
        Mon, 01 Apr 2019 06:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554127011; cv=none;
        d=google.com; s=arc-20160816;
        b=XYgD7Zr0b66LXSVvGitofBp14RgLa6B2l8B445/E1oe8Di6hyC6Xt2ga0qtZY4qidY
         iJo2HjZRRiUSlOagmZnq67Yu5cRxThj2Z1L5qZBH6XEADwJ+K2WqltTobnqehBEX4jfu
         ewEN5FqZAwsK5efG+kqFBZqL4InlvsBLnhs4S0tyeH09AchUcw5jHTOGSboHarvCLIIP
         uWSVG3wtVuqkLl515COxU0GUt0MPTnZBUEgyrR7DQhn/Q4QfJTqA3VuyXIlsMxCQyuu9
         CyTXyJMOx09IQGw+aBAwZjf/JIHhMiMwMY3N2q3YdIgE1xSxU1UByZoUHwMggGhLuEAR
         /BiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bVYvDorCLKr5s+wDPNLZMYJED/xvcnPiXcb9mAYreYg=;
        b=QgvzBaEQ7nGDw/u3aUb62VOK2/w+doyxbX99IIVS8G27DfpS0RmRJR/euHlKoN0Log
         mwk6aLLWD48yEgKioc3lXAfIA4usTdu1PxnRy2v7JfU+St3ZbDPXsIS5JFBE9MqHjChd
         nrX5M35k9Tnx2X5W5p9QqP5JgKcKDq1VOXqPa7mcbMOr2M0i9Dvsc1cr9S/iKUlzOu3S
         hqmAkZbRguRUlwUjpKZ178a6UQJflKRPwiqhMZ7VIJFauYoIjvcqlKJMGtVKWaSTVp2G
         Gn/c/OLzoiQs7/XvX7xxkhG9EntXXR5DgRRpNFfT/JCDpBZ7YJrZ5u9FfXlqI/J5M90p
         J2vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8IJHbGp;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id r83si282557ywg.5.2019.04.01.06.56.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8IJHbGp;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id i19so4624965pfd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 06:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bVYvDorCLKr5s+wDPNLZMYJED/xvcnPiXcb9mAYreYg=;
        b=I8IJHbGprejx3NnqybDE0GBNhTiGSD802GHNYC7qNQqlIq243LO3Hz4znYsDYAff5d
         jq2p32rJ8sOM1WUWWtMPJfjpEKHpA6Z4sKKxwyhQ2+PVg29xy65SZgWj/iIL6LeTWSw7
         3vuIaxNZQuBl2b2GBDT3JmBGrhglP+/d9k3a10GV3gjckCiw4aanGUgCxYuHeFTD1gsH
         hFcZ55OG0JJCyjULSX1uscP7FAbSHc6IQm68H4/TAnMGDWiGaHIkYmSNFoV/GUyiREFG
         Qj/FOdI/wP1AOarC6X5ekxpyAVMJWwGoX5ArNsP7jzBCfgkN/eSrPkhseYyX9QF0TtM5
         nZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bVYvDorCLKr5s+wDPNLZMYJED/xvcnPiXcb9mAYreYg=;
        b=Ub/V3zFQylTziqDiGE3o5eZfojHdAnYGXlczlsLaybMgLgXGFW7WZSMZh6x6I4D35X
         MD9o8tlM52i1v1ongMepXVoK2jFt5g9tducjodRBDQal7S8KnkQA8bSTZjf1vZ10vYdp
         xE6MfDWF6EAx0CHIw9qQ5tMLNAay6c7oKN45c1tCrQQtet/0F8juxNNMLdORf2zB0NA0
         HEInOPgWimzBfTEdBqP145X94k967Cp2efYgTNzP1EIHndisvGHcRsJvoEiQbOjXgfvx
         xPS4LfpnG7mVk9GgURN88CrTg2djbgM3ORLwUEJDI9xKfB0Pc1GSxpMXYvOzJbxKwswn
         Iwrg==
X-Gm-Message-State: APjAAAVkOiTeovQ84QNTBZKgF3XSlorOz6N9NEyVKTNmokzTu++iHkdU
	mWfa0fZsO+GyKqCAKn0PiFxC92Sp
X-Received: by 2002:a65:6107:: with SMTP id z7mr46971677pgu.313.1554127011532;
        Mon, 01 Apr 2019 06:56:51 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6628:6470:9524:528f:f662:5d77])
        by smtp.googlemail.com with ESMTPSA id 28sm16834623pgq.59.2019.04.01.06.56.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:56:50 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: imx: Replace list_entry with list_for_each_entry_safe
Date: Mon,  1 Apr 2019 19:26:37 +0530
Message-Id: <20190401135637.8459-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Replace use of the combination of list_empty() and list_entry() with
list_for_each_entry_safe() to simplify the code.

Issue found using below Coccinelle script.

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

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 9703c85b19c4..facce18975d8 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -556,6 +556,7 @@ static void capture_stop_streaming(struct vb2_queue *vq)
 {
 	struct capture_priv *priv = vb2_get_drv_priv(vq);
 	struct imx_media_buffer *frame;
+	struct imx_media_buffer *tmp;
 	unsigned long flags;
 	int ret;
 
@@ -570,9 +571,7 @@ static void capture_stop_streaming(struct vb2_queue *vq)
 
 	/* release all active buffers */
 	spin_lock_irqsave(&priv->q_lock, flags);
-	while (!list_empty(&priv->ready_q)) {
-		frame = list_entry(priv->ready_q.next,
-				   struct imx_media_buffer, list);
+	list_for_each_entry_safe(frame, tmp, &priv->ready_q, list) {
 		list_del(&frame->list);
 		vb2_buffer_done(&frame->vbuf.vb2_buf, VB2_BUF_STATE_ERROR);
 	}
-- 
2.17.1


