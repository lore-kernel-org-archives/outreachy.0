Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7383446E008
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 12:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792152521; cv=none; b=oMk/ycEYMh6ayPoxpbcf8gmmq225876wUlD6aTCYlXq3KybTjG6/Ey+JGQmYRHweMhRhOYwcE4K/+ZO2Z5kfw3YzKiOEu7AdQx/wcIWt2SIZCPCie22RoCdzPy0pyQ0wev/YbAUqr8oygrk0h/5wbCQgW110f0vxXsBzZhvdLCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792152521; c=relaxed/simple;
	bh=A+sswS6q0EjZ4IF3rgNgWRNDNT50fkvXyfajFuBM/Zc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GZZZn4JHnKy16eM9O9MYbMzCLvfmubfq/l5DjDGnz4FIMCSAmv0+CQmqYXJ6PMrTBdZWMpsaJLKUSH3d2g6lud6xtc4UK0IFqczKO/lnyMFBkQFYEIQJLY9hmce4lgW6JiYFJX0t5IOBPRihKUepnvD8Oj1xXGB5w/OiAHF4EV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g86Ir0mz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g86Ir0mz"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a16aaf2067so38100435e9.0
        for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 05:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792152519; x=1792757319; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=S5MuLj9xJyRiQ+pSD/HllDDNqx9XycPOWxLYE88yFZE=;
        b=g86Ir0mzdWr/LmU0OIkstx0hSZ+RWbmhpGvhJdGCkI7Cou7r/0A3ocl99u4yPXb8MY
         wZWuYtREvPuCPVUnWVrKYYNebiVouo0k/a3OqQA51psqsTaD2lgYdN3w17dTlYrvfUQL
         I+JkTd7bmLg5wTbRZBqhgkersRYN1IHITfdLM/SSzko+JUxZ7auy7+JiGpDpO0T7KwR5
         dm1rYihq0Qletf79KsWQpK+GLlm3LCPkozkFW8WziAjl8uEGjbmN9EdBrTShCp4T2LNW
         AxdN4HbygQfGMF1nFryTk5w+5jnzMcbl8Xdq3xXFsvZutvNukZp1Ldy7/WCDizzsVbyC
         U1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792152519; x=1792757319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S5MuLj9xJyRiQ+pSD/HllDDNqx9XycPOWxLYE88yFZE=;
        b=el+f7CuyHtRVTo1IGU7rN6Yb5qgAw2SNGdl52j6PY1PBsCIlyJn+DXqdE7oP5fmqvT
         x2XB3Kfm658mzFLicqOyjcNACReGuJCmoqkhoZTrhgts9gcN2U9Cud7Xu1syBrwrkDKW
         c/KWT6Ep79MX4XzHxv/m1ZAn6qyjxs2YwAPl4JXAGhHQQcybylqBsPH6HUtGyWztH3Rf
         sNPcrYdDXnaKA+hqwvH9B3322kYu5ahP/2hNz2VXA91HvGWILg+yS2Cehlx3uVNbZ9KI
         NEBcawq3PI9QG7YZcLHxQsydsB0KtoMPhvWHeKeKRhHsj9r8B5M2f4CEVaQcP4oWAXhc
         eGjQ==
X-Gm-Message-State: AFq9FYLi0qpToZ8wXSJdSqHBweW3weguFTyur0XAhtiKRcYkuTAGhhKd
	HV5BK33vgdlSCVr13YO1FAGW2esbn6gwa+JhH3TidCqX8WCDoSnjApdqtoANQQ==
X-Gm-Gg: AYBFou0b1i0PUczasxa22ORFCwh5maAOZFJwMrE3IoTvXQDSTOGaFj5rsEX85uKy1r7
	m6xz8wUxRdlnKM85gR1R9umFcn9Qn59lLox7N2dbRcaRpgXiMa23gaG+2wgd7VnOMnl9AJ7fzem
	Sk8wbju6uRpj3Nq1tFGwi+7P4aSQs2O7sz7fHnFoK5lolsiLfB28n2arl+fqhxEhm8drFmJCzTK
	pMuxNIl6AS/bgept5EY1FNBmk0u7ylMiFAwk/kpCoWrz8FBWTSIV1CP9nPyMFgkmviNHFrdgQMR
	Wh6J+8xnqMbicv06EiqPxgNj6p12+vsyNkY3UKP1oI/ya2Ncix84oHl6Uk3QLquY2a83pchVoAw
	ve+yZQoMOa1S96nLYGnDqksph7/rrOs2ol+Lk//aMk2v2JGlzfnAJeYPBRsrknBjVQR+G7kGD4p
	a+TzSsGIelNwmqpoPfrZlYcM9Eg+CKZPraRgpCHLVP87TSb3UbJY+NOYp7wogtPtmBJwy7FznJP
	tpYeKJYePmK5b0O9couq3lEOoA=
X-Received: by 2002:a05:600c:5489:b0:4a0:1c94:7042 with SMTP id 5b1f17b1804b1-4a18e4a5244mr435584895e9.8.1792152518571;
        Fri, 16 Oct 2026 05:08:38 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd9b35a6sm138424555e9.6.2026.10.16.05.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 05:08:38 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH v2] staging: fbtft: Fix alignment in tinylcd driver
Date: Fri, 16 Oct 2026 15:07:45 +0300
Message-ID: <20261016120745.3134-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the continuation line with the open parenthesis.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
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

