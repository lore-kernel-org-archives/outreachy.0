Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.47
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793262088;
	b=q3HXCGpMDQ3YaEUmCleMKS/nJ42VT3CSJyIlSasHt86MPY/vGBNJv32j7aA4Cxyyv99J
	 NK59KmhDWzuAMekntivGur+vfSRrj/FBkO9Av0n3Ak3iuH+frT7wKughltt6LMHI94Qh8
	 fs/rpsCjPTxXdumNy2MKfVcHPkYxeMbnyXIbKpxa56fMgbGXCNTD3Quc/sToUN+6V6IZ+
	 WCO76Ojm/YZQyKThqE6eOst8XCYqzBlNzXXFXvDzRQ1yhHy4eDFh0TmEqytLo2gngd89L
	 Xb5LxPXwtcW0CLhZJkXxjtDYunoaOdEoMHgxRhyU6DIbStztozonejrA4rcwUTG6NBw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793262088;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=puY72/5JwKkNkBg76VY0/qmKirHlDOTWSxkSECZdTUQ=;
	b=c4s1C8z+f6ROdg9m6XxDFHGNlOYPO+b+RNOxU/OWFYVce6FHoixS6bKrTzvQrTNOCOKZ
	 z7u7Tb8i/14KSqo0z9k2x/wwBWHd6bYHPEjydh7dzdZLBEkGbzG0yBcIk3hZi87BwK80i
	 Vu29j1XYVW+/3HvkRuq2d2cOQAXTsBk1bj0ApDAQ3DeG5hqPUiOs+sF86GOFCY13FjSQO
	 yX9grcBf2Q01qxGMpGS+Tv4VEpXkTrjHqcHqio9W8MLqgYBANPlNFQsFLPfvN6UzrNz3l
	 ehxDNFQzksbW/djncch9nFbOn6OJViSnHGFAMoasXiqciBVNl38zsDhpKasMtmaCsag==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vdw28sDE;
	arc=none smtp.remote-ip=209.85.128.47
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945ED606A31C
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 08:21:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 945ED606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vdw28sDE
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a5177d78c7so17851015e9.2
        for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 01:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793262086; x=1793866886; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=puY72/5JwKkNkBg76VY0/qmKirHlDOTWSxkSECZdTUQ=;
        b=vdw28sDEzp5a6PzkvYC8+w7aCb2X2VQ6L6q0lSb5jAoA6BAHBMSYDv5RdpDBBbLwV+
         LQjozrEvdgecYwoYE4HmT6xnmf36nH0XnV25Q6TX9TvBi4MUPPBaCE/BS2SjoZ4HhESg
         sTfpe9G9nT5xy62tXx2DE33wnZaBfDR0akwP6x8O/LL4rL+EpQCY4knSxFMWCIdNipeV
         xwDCgvAKHdmz56O1eZNZJBOucTZhpM553V5Pt3x2MUu9CQ/y9IzNZ/8st452r9alORo5
         KhnQ5SG5fJPnHdoLvsarBvyIJt2naENadQfsnlwsKajPpix5NWr6jWAnAi8umAOS1sWb
         mgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793262086; x=1793866886;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=puY72/5JwKkNkBg76VY0/qmKirHlDOTWSxkSECZdTUQ=;
        b=HL7h23UVkTgvQGfxCeEv7tS9bdixmFlEpK8MG5xXDGJkl/f0kacCdrDG8vmijyyANH
         TfLyB9ybuBpiCoH7NR1igXNL0g17stVX+RR2s1VW0x7OrJkasz/ULT28ZkhCePDZjm7s
         qwMirfHEQQ5Tfum2oJmeo00PyphnWh7xTM1pIs0K7oIUGfyOW7EvsN9mFkVgnpbnEaqs
         1wdeduDiV/ey1WuT4e8uSF1FVWzDGsov/lhp7ckBDvOR1vED7N8PuPoDk+X4qZEP+uK/
         7pMSBo12KMCK/t61QEwFVn/N6RO1Y63vO92A7eCpwMa4ZYLjAA9hwkG+Mpu50dkPuAP6
         tqKQ==
X-Gm-Message-State: AFq9FYLL0OqUB540nzWxVpmtjH1V4dLUDsLdFjNEvYeqkzgzwVb37iVI
	O4cmwwk//iukYz+p2Fh1NjHugL+jg9BnFxikt292WanQAB5eU4y43zNmxiDUQ7xs
X-Gm-Gg: AYBFou1m2rbR4hRBXH2vTWUz8/I00EMQVrgq02Lmdvj7ct+HT/JkGq7kglsbqb4+Y9m
	glCzx5U9nLO0YaADuYbSzyFnLBGTFaDO8MjdyWtSUaYS3KRC2eC8WFSukS3Pgd8KLa5/Q5zHntV
	sQOHPr1xuQJtcDVScgQzz8p1kEdQ7jCFvVmvs4F/Q2clkZfXDvGV7X89bdOdERu/BmmkZMPJguX
	IO9Cq9tcMcMZQEw6ZgEKJCd/Fkf2jpCOqz+p4++yR5kQaQPoNH6nGBr0BjmottdQ6Xopm+IheDw
	QCJpxeKXusPC7tqVVleYPeVE1l8EpFDRpILHIOkRYu+sSbQOPuIfIpWPxORytY2Wdr5GwD9sOrk
	tq8W90SDJrTgF1oH9JLHzbJlbjWJGGmOnO1/bVweIDZ+mP8oMBCyY6oLTNCN1wSQBj5fpk8n8WM
	sRONlyYFERvVMtrjysHNmL+s0kdo8VeI9yq/Sc/XaulntbqArrxSU+e14vQVbEGQn7eVRxKfwID
	LBEYdo9cm3delk1xfVYroSAIHZ7WAZbuQwPDiO+qZjJEa8fAzdTeBOsAzm4PGszkKjDF+oFnYtH
	Lw2HCUQmcadsNxRrnrIay6iFBh6de3TAmlNH6LpVxRpIYPjOU7DOoHwS9w==
X-Received: by 2002:a05:600c:1f94:b0:49f:fdca:c361 with SMTP id 5b1f17b1804b1-4a9663995a8mr109368585e9.12.1793262085727;
        Thu, 29 Oct 2026 01:21:25 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.101.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd8c05sm41603682f8f.49.2026.10.29.01.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 01:21:25 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	obabitemitope765@gmail.com
Subject: [PATCH v2] gpu: host1x: Remove unused host1x_channel_submit_complete tracepoint
Date: Thu, 29 Oct 2026 11:20:31 +0300
Message-ID: <20261029082031.22704-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The call to trace_host1x_channel_submit_complete() was removed in
commit 625d4ffb438c ("gpu: host1x: Rewrite syncpoint interrupt
handling"), leaving the tracepoint definition unused.

An unused tracepoint still takes around 5KB of memory at boot that is
never freed. Removing it frees that memory and helps the system perform
better.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
Changes in v2:
- Explain in the commit message why removing an unused tracepoint is worthwhile

I used an AI assistant (Claude) to help me understand the memory cost of unused tracepoints and to word the last sentence of the new commit message. I reviewed it and I understand the change.

 include/trace/events/host1x.h | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
index 1b6aeb7b177b..143a16e37703 100644
--- a/include/trace/events/host1x.h
+++ b/include/trace/events/host1x.h
@@ -178,27 +178,6 @@ TRACE_EVENT(host1x_channel_submitted,
 		__get_str(name), __entry->syncpt_base, __entry->syncpt_max)
 );
 
-TRACE_EVENT(host1x_channel_submit_complete,
-	TP_PROTO(const char *name, int count, u32 thresh),
-
-	TP_ARGS(name, count, thresh),
-
-	TP_STRUCT__entry(
-		__string(name, name)
-		__field(int, count)
-		__field(u32, thresh)
-	),
-
-	TP_fast_assign(
-		__assign_str(name);
-		__entry->count = count;
-		__entry->thresh = thresh;
-	),
-
-	TP_printk("name=%s, count=%d, thresh=%d",
-		__get_str(name), __entry->count, __entry->thresh)
-);
-
 TRACE_EVENT(host1x_wait_cdma,
 	TP_PROTO(const char *name, u32 eventid),
 
-- 
2.53.0

