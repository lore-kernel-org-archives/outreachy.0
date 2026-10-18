Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0032A21CFE0
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 12:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792326921; cv=none; b=A5vEu35ry32U5fdRID5DClbs1wokA/5or7Waj8rAr8bVLwlfGuAIQ18rpXBnGK4fFegNNpUPrV8xclhNPRza8Tn3/zCs0vO9IYTQMtwdy9Q2afIzipk5rtCJ5VxeE7bbzIrt0y7VOZw9iB1lt/hNDruC7ftUK7xHZOkRthANbb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792326921; c=relaxed/simple;
	bh=cg0uRSb4UEPzp01kbIS5zd8ide7ZgMWxvA/IgBjUUJg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TVXQBRu0IinhFrAcZLAyodQtIPHcnbrTTr+innwRLxODwr4p65AwEbBy1F8fU1MyeQTVROQovtQ1DPqfCIQLpfzQKWtCeC5yymhS5SiS7L55+yOUxKSBoB1/gVl93gcxyP/yooFw4uUkTdJjpKYaTnHFc80i/N+GzoJ+nRWlC5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZwYExQ7v; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZwYExQ7v"
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-48af4d4e61fso681923f8f.2
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 05:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792326918; x=1792931718; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yZRC1saK2lzqhpBjjhBU/Y8Q9XNxMDtAH2y6pyCBfUk=;
        b=ZwYExQ7vWiDpqrQkH0x15gaC5prsr3Qgx/sDvg/R7TzOi6Dv1ngee0SPP3auH9Txqk
         gQJlj/nGgGaDtWgKE4Ow1aMZhPeIaNBvnkQylhx7LOAYUEsuc7QI+aKlPDhPt8gnjI41
         QESylFxg6NGDq5SjpglFytX62usVbZvetWp7klTxfUmpZm0QodIauZ/6i7b8AmJckhkY
         xDXFOSc/aiVpFj52jPDJm34RbDthpaY7XRvmrvm2BD/5SKGL03MY5NR/QPBqm5GkTjeh
         DTBTckOnbpSiMQMpiCsqZMG4SBL0Luev9QtPNWjdqCYshh9ghRwiNWQS5d8D3q1USAwE
         NCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792326918; x=1792931718;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yZRC1saK2lzqhpBjjhBU/Y8Q9XNxMDtAH2y6pyCBfUk=;
        b=pKHqDldR9b1Wu3DABTHQl3faEPXvGlKyfQVwxHM+nBOkkHnFd7j/oytK9go1l2BQZn
         PuXM2a/i5MyJROAZca4MhWVxMKCgQdeQ4nqLu4Ypno25tYjD4SyR3bkcuIRhxSuHXTDG
         Hw/9jNpA0oX6QIYu8RqBV+mMGH0uWraOBDO9z7u0voCATWNJ/ykQRxEGGYUkF2Vul/an
         MtyfyWNwaLcaEbVWHPzt52pjwB4FlEvyr0o+EsPkHaSum5U8gQmC6q6HOhuUMmU3kJmF
         xP2YNx5awkDVxUfMgVpMBsSP18W34pces1ul8I98VdmsgeMoD3jd4+tae+5aksD8MEgz
         +zuA==
X-Forwarded-Encrypted: i=1; AKwUvByagpOXXS18yF2ZWOYYPgiw7HMz1zajS9rX91No3LOTli/c8Z4h+zww9xlERkCUT97zxVzyBRd+f04=@lists.linux.dev
X-Gm-Message-State: AFq9FYIuTy9uX+Z+BHWZlR8LBrwoXRpPBctHpBHPjA5gv4dr9ufkdpd2
	pMRou3fPXxzBfBIftVF22mMuVMFm1l1RCdxn9HngrULdV2BcR0DYULRL
X-Gm-Gg: AYBFou20d1yL6Pth9uB6mTE3rB1fjixawNHm/Dy3C8uIi8VcmMVAbukVsU77GvsDSr5
	v+Wd6hLAvKuW16erf2nkxqqBuq4rux0Ao5LR+D3GTi1HInc2TXarRIHGCfCHilQM0KtLQzJRb/d
	mjgknMxStbHMiXmRUyIrja++RBjWwFar+/ActnluvFeFdfEOvTlKCUGcPgidJAgL7pge7GdSsyZ
	Mc23KPfF+Foe7awbD7po31MsED41z0LM7GY6KQOQA9kF6rAtILM6syg3Ww3hX1RLjFQzGv7I/Ku
	b/47VDZJKogXN4DDPUigBe8/mMEjqOfYjMqLMmDdsjkC2LEq65P0KtCpg9Zhi0fQ7q5oLcvgQMy
	9vss5d7I68HVR4T3UxqXs8YgR6jl/2apoxWsu0hBqGUW7u7zdsqLQh5SR4KWvxEu3EM3qD75ed7
	arB9JL4p96aCpyCm5Py5LebEqhfsCfXQo0ySE5FegbpGNNajJhOWrodYhKcUhK36IKEr670ou+Y
	IHbJTg2KQ==
X-Received: by 2002:a5d:584b:0:b0:48d:f831:2688 with SMTP id ffacd0b85a97d-48e079767e7mr10390179f8f.3.1792326917977;
        Sun, 18 Oct 2026 05:35:17 -0700 (PDT)
Received: from kali ([102.89.22.178])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd503a0dsm17000429f8f.47.2026.10.18.05.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 05:35:17 -0700 (PDT)
From: Bashirah Lawal <bashirahlawal017@gmail.com>
To: andy@kernel.org,
	gregkh@linuxfoundation.org
Cc: dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	outreachy@lists.linux.dev,
	Bashirah Lawal <bashirahlawal017@gmail.com>
Subject: [PATCH] staging: fbtft: Fix continuation line alignment
Date: Sun, 18 Oct 2026 08:34:30 -0400
Message-ID: <20261018123430.148379-1-bashirahlawal017@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Bashirah Lawal <bashirahlawal017@gmail.com>
---
 drivers/staging/fbtft/fb_tinylcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
index afa8f1c740c5..d58b1247262b 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0xE5, 0x00);
 	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
-		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
+		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	fsleep(250);
-- 
2.53.0

