Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.218.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793429248;
	b=BLh9kbg6rK5qT0tAObZm2jCvczpF8Xg3ODAWNquxERcfdJHJooTvlU9fSvDxwmGtst3v
	 G9u+CdTywZxRSA1fESczQgg+ab57h/ZZUCy4dSgAxhNhT+ZI01H8XOk5ctkz3yLThNyli
	 S+8sd2umIXw3hv8oMoIwJjVgvgjOag8DI06PjPTUVRVOby6ROoLpBTSY0TOEznQWbn1jx
	 l52Wu6KL4TQPLHwJk/n1KnxgV+RsK09CLy4rFtwHnjoUtzcOVEqC1lDJ4mV1dazW3f71i
	 rB80SSGTbZP8Pl6JZQ6ZLDlqQbVh1a9paa03W2pQmb8YmjON79o2h2xyYey8CDJTrdw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793429248;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=9U3dWfP9wuIKNIASQMC6j7LlTeXrOraHdMR5EURM28M=;
	b=eatxFObC6W72Fv5LmL8PIqr7gyhUNFFyMDfEl1MY7NUcWnDWrWXkkJ0aL4tOmCkF+Gob
	 5ZDYzAqkjCmO5urCCXhjOJoav//hPgcAqiBipBDSY/raYZlR6qc0p/s/orT0kiOz1Z30c
	 zB/yV+y59wN7oFkyuX84rCJtbHpWV/qchwnX74LAKUnpyzKCHJ+GzesZG3gNDAEcEA0IU
	 Ls+exAgKSDJUYjqm54tLR0zov4i6Xfab/6Ziu6V9youW129xUGlBgaHWWLzpzG8bOLwTJ
	 AkSB6+utNb8DCpWews6Zto37LL2z3jFPzzpFD28kmclWltDqAem7rgb3Ea5viAlBF+A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="CextaM/u";
	arc=none smtp.remote-ip=209.85.218.50
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5BD606A31D
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 06:47:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7B5BD606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=CextaM/u
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c49c32650adso173883066b.0
        for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 23:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793429246; x=1794034046; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9U3dWfP9wuIKNIASQMC6j7LlTeXrOraHdMR5EURM28M=;
        b=CextaM/uhnUhvU0XgqLXLOrm2KorM3IwDgZWKwZiNyfa4i2aod8ZsQliiK5NH8bsQl
         +a6/Jek5nehbMgfl5Tq6O+vifjzRQ7Fb5lKZljR/aJfaaLO9xBiJqrTCBWukbgEfj88u
         yrDwgS/WJ9y1cMFYyZqFgvF/6JeRdyoI9O0aq8uNRlai4fk2IBTDzIVZWc4Png5wddqV
         hvJ5L1FdmysOZorNoqRHEY+NKseILhXixTKc635Fx6XHgVHMFCUpAn+S+X1P7bwGv8t1
         VeuswA8AfUnBTUqaYsauBbjWnqEC5PHTzqYnVUXR7BjVzojgwVkBFIzneTJpZSyBXChl
         TIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793429246; x=1794034046;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9U3dWfP9wuIKNIASQMC6j7LlTeXrOraHdMR5EURM28M=;
        b=dbKIAPCI0o2hRvCYmuApnCEsms9GczQi/Gf3AlVMOpmHA73eFDZBFY/On193fFJgyt
         xtuqq2col5TDHFXwN3mLNU8ePtU5+5sDCzyd0MugERqMPjke8LpgmrsPI0Cqju2BvN0Q
         qg1AuFqyW4iwSL+ApwOfr9d1BgTYsaOU4zGcgOvbL8hpmFA1gZAsdzQpKkME94txSBPt
         u4JfaQ8D9olbJijIIwOtJfZuTfDsnYUpzWKlgUwbDDWTldS6vqeHBQ5eD7qO4ZbD7Wsk
         HG/8Jkj5RgKL8dnnaa96pcIxRgbUslBMuR3qmLtzeLcwlHxqf1h3vdazdEyGht4jvgx7
         U+7A==
X-Gm-Message-State: AFq9FYLg8NBCP+zR14HM6JAV+U4hp3La3SIWW4rAFwQMeJM1OwYPjXed
	cETDzd98oVclAHGGO43e4JIap0ji90APmYctd1gwD72mCaYQjsDgfXTS
X-Gm-Gg: AYBFou3DyULVLlCx9Qnqxuib2vo90IQG/4pAJcCuTYjDHg2WBHBW4Doyxw48BCZYJMm
	lPcYzJ4sdb5n8B8thXCIiF4VycOUGYvepyymwLAG946D74ZlzuRVa7xy0wrspNH81iaiqMo2yH3
	EanYdpmCYyHKRE9DNgOLipk2bvXE0hoaMePVl5Kijbh96/kWQ+aeoTdL6Yj8aO8wfE8+ixbgSp/
	pphpjWMa/FF2Gg9NqEtQ5wSKk2/57AnFxcKLKMvFX43R4WH0yhgnM8xr90ZpULMF8sRq5X/wieb
	+shyomURf3ViCY45r4e1Fc8DDZWyvU/S9SxDyLR6iNTRWRqi2Nwl+c7a+zlarmUrapqmpRCvyJ9
	gqQf3mcCDgVPqBE5HkaC5KmBkOueaLUR3uV6TB37AFu5jqU1SPBnoWOBtdhvByPMBL/6AnjkuMV
	NH9ytWwpxvmH5x9u3NsthNo112sOEtyxiYDoPbkqOPmeMFj5/QQcTtPL2KfbqjL7tbG1Ek4cah4
	BswvVUwYxBlmcezz71LT2xUpMTPt+0c4vdthhLJtAKr4BJbU8C5gqXyQVEEAhPpLmHtA1ZCLyu6
	MxiqgFRSuNbKvG1Bl7UqlIVY7DSczcfe3PUcafZDiY54SEjNN5zn3S19A50Sh130opxbRSIPfZr
	YFVUbuIzVIxCXQ42sKNVKJ2XeYB0iIrR0b3jgsSWAsHzG6fZk0W7Jdf6brBKPjZQnKa8=
X-Received: by 2002:a17:907:9346:b0:c49:b9b6:4b5e with SMTP id a640c23a62f3a-c4ca7b1f727mr373328966b.20.1793429245709;
        Fri, 30 Oct 2026 23:47:25 -0700 (PDT)
Received: from maria-VMware-Virtual-Platform ([182.186.37.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4cabf43b19sm145030266b.87.2026.10.30.23.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 23:47:24 -0700 (PDT)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	andy@kernel.org,
	gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] staging: fbtft: fb_tinylcd: align argument with open parenthesis
Date: Sat, 31 Oct 2026 11:46:59 +0500
Message-ID: <20261031064705.9513-1-mariasheikh812@gmail.com>
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

Align the continuation line of the write_reg() call with the open
parenthesis to fix the checkpatch.pl check "Alignment should match open
parenthesis".

Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
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

