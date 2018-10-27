X-GM-THRID: 6617138679585439744
X-Received: by 2002:a1c:96d4:: with SMTP id y203-v6mr1406563wmd.8.1540672657155;
        Sat, 27 Oct 2018 13:37:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:81e2:: with SMTP id 89-v6ls191670wra.9.gmail; Sat, 27
 Oct 2018 13:37:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fOfh1PWJ6AbwSfZC0oi/jOg1JltjOQ74jNdrPflfxfY1amm4P2340wxVnYQh6rkaAQhbyw
X-Received: by 2002:a5d:4b4f:: with SMTP id w15-v6mr1274178wrs.20.1540672655955;
        Sat, 27 Oct 2018 13:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540672655; cv=none;
        d=google.com; s=arc-20160816;
        b=lb8W4mZqLudhNMp8R8q4bVuVn4yXSE3+ShNISpezs8o8Wcn+900qFvl9syAWRJF9R7
         rF/TOLRS2xIgq4CDKtgq1i6pFnYHTPluwOo/vMqJYRYwQvardZ8yCEfCZ24aZKX4fAbr
         7RSqeCmYfz1D1h54jkZ6vkYxChluDKuRsaP1U37yvpOxPWb6GBtco8hx8dN2gSpqkRg6
         fIqfsU++UIEFqF3dtHL8ISqwh8KoZwoGCyHu/bqsRIBAVkPHbrHCLNCHNZFTh3Nuh3DF
         Ta4qV231Y43M39C4YXld6Glcuc1r8mfynZk0SLNKHPPRg8aLC3Cu7doQ6u9fheTNhTTX
         PPMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YGmSvk01FZ2Ih9MwtKCIpcwZ85PI2UKPRR02qN1eJ0s=;
        b=V20T86jNFo/F7LegLD14LtDD2t1N7jxNo8TbCz0G2jgmv54qX1Ti52UA2R9n5hZw45
         a4lkMukBtgl5brioG59t85OerDOo2XEN45bIF9nrX6NvP3I+QMZ3p3cEs+vUnLDb3ZEW
         9RngpL+naL4pKSZTiUICIaH73+6o9hKrA+IBurlRVjTjUH266EPOxhjL2YG9wOUjQArP
         njTM6BEqBJ6f1cGUqQlRA8wWi82PtMryRv6CoMQOcvlNgX5Djm8PDGpF2j93vvQ+xlYr
         B7XP/9O1bX1+QLxJ+lUooIt6lUcigptbAKZuCV4DqciVMl8sPRzumXPvuMAaKshwLwB7
         12Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOpv0+4d;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id d9-v6si508220wrj.2.2018.10.27.13.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 13:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOpv0+4d;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id u1-v6so4625250wrn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Oct 2018 13:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YGmSvk01FZ2Ih9MwtKCIpcwZ85PI2UKPRR02qN1eJ0s=;
        b=MOpv0+4dy1nBiIfhAZMNwqriUehUv8y6zeJlWhSI4AJm2yvELN+AXbDOqXBsBNee4c
         tQezI7zgCLjxfrzhNMzh4nU8Vkl4XBveUyq4Lt2Vzq6qmJaAVoFghskSEtxCxVjaejp4
         qH8/G38Kv32QWs5CvdHeK25/1i5TYhieNgGMOYO/GItMw5kkf3EyNZwS0JOdiCBKq9Si
         iB3aSsvltERi/jWX6HIPB+j3fDljNFLVQC1dsre1CQmTulWA3hgpj1Ac/sVPhljYE08X
         gypJ44QLChYXpEzEVpSy9NiSo+t2s1m4TxPEc9z6mj1cjDh4v3cYmjOgp3YJnXywStum
         hXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YGmSvk01FZ2Ih9MwtKCIpcwZ85PI2UKPRR02qN1eJ0s=;
        b=TPGFNrgLn2vAmoYKluvVC8dFnbJkRW1wR03+wp0/0FnpT/gJjfB2oilqWz7gnwkx/9
         E2tGpuDu3CBmdF8FUcw03JqC0UGftgxQSgD6YZsRxmXw2jYEtWkJfTGhbhmfqEq+9Aj4
         2amfjMIH5eVWQe3hF73zi2bnmrlcgrUhp417wOr58Rzbk2TlwG4EDL0pVk1/iHq8ZoW9
         08/ZZOa2c7W///NWHjrSDYt0nZrdEoTooLIngrnNPfUg2xkrRBiOgTGNNvQcqaUgPXNp
         VFx6zVTsIHtSwUPBbG3FMzNgV23jd17sSBtMzuymQI/qjgNccvb21aJdU277t7iGqop5
         o/GA==
X-Gm-Message-State: AGRZ1gIRe8GkT7YVmL6QHfDJy357HIilrNCGBbRS6j02OOd1Dt3Xkm/d
	d5FOrcRjnW21m1ayfXTEpI8=
X-Received: by 2002:adf:e391:: with SMTP id e17-v6mr9731851wrm.321.1540672655604;
        Sat, 27 Oct 2018 13:37:35 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.126.109.255])
        by smtp.gmail.com with ESMTPSA id 199-v6sm5462405wme.39.2018.10.27.13.37.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 13:37:35 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec 1/1] media: vicodec: Add empty callbacks to prepare for the request API
Date: Sat, 27 Oct 2018 23:37:19 +0300
Message-Id: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Add the callbacks `_req_validate` `_req_queue` of the struct
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


