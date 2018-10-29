X-GM-THRID: 6617138679585439744
X-Received: by 2002:a19:d8da:: with SMTP id r87-v6mr1118801lfi.7.1540816949562;
        Mon, 29 Oct 2018 05:42:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:a692:: with SMTP id p140-v6ls578874lfe.24.gmail; Mon, 29
 Oct 2018 05:42:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eof6eVLT5kRAAibRAI3pllH04doRJLs93JlqfOF4ftMK3Azuyx+FZD9rOW9Dy34OPi/RWf
X-Received: by 2002:ac2:410b:: with SMTP id b11-v6mr556614lfi.11.1540816948387;
        Mon, 29 Oct 2018 05:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540816948; cv=none;
        d=google.com; s=arc-20160816;
        b=kfsl3YinlLZ/6rVSLPNZ/I9a26lcxyKm1/5SZvaHXPk9BUCeLRb1U9/VGFXg+ytCNh
         l5+zkOKKHuAALdirlAtrz522zhDhOY1hwIQUgbH0IEW1NH09EEBg2hpRgoG6X9b417a7
         +R1GbGYM708i9RXQzT3aCblxWnsjiewQOLa9n6M8Q8yt5Pj1WrRn9HDHJiff4VDIGaKN
         /rI9OK7rx5dnZHhQN7cNTReV+hAxJ8b2QqlgEEsssoZgNTYF93xaWCmM+DSfd9S3LNN7
         BbdtxOx/FYI0jFXbsz/6DeR3/wIPMWmAc12mlJ2DbpjQS3PwrU/Dr4Kq6Prz0ARdYQ+i
         K41Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4erUbHI+GeXHEWRoH6cU7CHPqzu2jkWoDUY7bFL/bb8=;
        b=JI8/0scTdvLnb6JhYsxGNeiC1g6UJvsFmCXgVwMgWbH7Adk761Tl1OFP4dbOZpX02C
         VpeEmExDXjwfwjK7wYIW64b1mnoxP0mug5v9AZvviSnm87sELmd9aQ++54SC7HKD9H/Z
         fzps4w5DcIBCHS2tgYFqgj3mM8Q4yPijUqUCQPnzjvSNeU8u0RYfBDp1jV9PhGj1sEJ9
         iLmrr8nKPS+u6WX4KGZHw3PJy4mZwUfpu0oi1c1vGKxujo9GfIfuT/LpOZeaNDd4dDds
         pmxT3HLN8QLBMxHM0KhUoFpapZmfVcF0i5FZImsfA3U/G4lYPrQfp0L+uIy/zK0usI1W
         uvFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=heSs1Jcv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u142-v6si393765lja.2.2018.10.29.05.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 05:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=heSs1Jcv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id y16so8519619wrw.3
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4erUbHI+GeXHEWRoH6cU7CHPqzu2jkWoDUY7bFL/bb8=;
        b=heSs1JcvOVVzKx492ldqbh9RR5lpEfIFeiEf0dtlYjvgbzQlmDmd5vQcCrUxrAF++z
         neYdz7z9u5IDe5suHNG5HEM60GnMIi87NOJQ51mU55OTbl6iaGHRUKwkfu1uzVsdppk6
         y4Sys7fNLSXp8XEXPljPAsRU1Ax6smzim8fw83NhkAt4z+DyJcrqo4QFU+Hz0WjQWVSM
         W3XtqfntGeYqDtB4/vW/BqE8gLjWaIJFxAF2fhgioI/rWzja4qxxK7hMU+MvhTpVVFQ/
         oVyEm06q6AdKgJcUDCRg2pOvXgz5njW9FJF5gnnbHTT44mjw2UH49mq1hwyVR84F1Q1k
         WX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4erUbHI+GeXHEWRoH6cU7CHPqzu2jkWoDUY7bFL/bb8=;
        b=nZp47onHR8aV2epmAWIgbGECPxb4oq/LcBoNbnZ1kso9wlIZcbWrj3rAs7W9qSXBGo
         2u01aDS14b8NDRpSH22ZxCayLhVylhSP3Wndn7TGSRxVttotKxLqhRHdgmKonwgFoI2z
         2eh6Bcf6ASMwmVcDkugjtp3G2dQdSw1rpVWox4JqSnDwN+/andCg3Kcp8/6JwVYvfaNO
         zbxTl5uwk1yRwUsvSKaq80+VRrprcgHQ0Q4fSkCIR0Y2Cz68TV/AfhFnlb223gnfw2kR
         yPGnM+bJxhZHwS/ucyvs5yM58qWJyocWN1Xm93kKf3MhHTMjRkRmuK0iaMUMff7e1DHR
         YjQg==
X-Gm-Message-State: AGRZ1gIcAvev+qleBAoYztFrtme1Elpa4M7kF4iM6RONLL5eJXNiH4N/
	SYMBuU+moH3HMUW8nn4Y9QXmE36pJ2fIyA==
X-Received: by 2002:adf:b612:: with SMTP id f18-v6mr13374948wre.120.1540816947632;
        Mon, 29 Oct 2018 05:42:27 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id z185-v6sm25152760wmz.47.2018.10.29.05.42.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 05:42:26 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v2] media: vicodec: Add empty callbacks to prepare for the request API
Date: Mon, 29 Oct 2018 14:42:23 +0200
Message-Id: <dec3fa1828acce7720c56a1160d24f327914bf0c.1540816621.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>

Add the callbacks `req_validate` `req_queue` of the struct
`media_device_ops` as empty functions.
Those will be implemented later.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/platform/vicodec/vicodec-core.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
index fdd77441a47b..238a59cdf3d6 100644
--- a/drivers/media/platform/vicodec/vicodec-core.c
+++ b/drivers/media/platform/vicodec/vicodec-core.c
@@ -130,6 +130,20 @@ struct vicodec_ctx {
 	bool			comp_has_next_frame;
 };
 
+static int vicodec_request_validate(struct media_request *req)
+{
+	return 0;
+}
+
+void vicodec_request_queue(struct media_request *req)
+{
+}
+
+static const struct media_device_ops vicodec_m2m_media_ops = {
+	.req_validate   = vicodec_request_validate,
+	.req_queue      = vicodec_request_queue,
+};
+
 static inline struct vicodec_ctx *file2ctx(struct file *file)
 {
 	return container_of(file->private_data, struct vicodec_ctx, fh);
-- 
2.17.1


