X-GM-THRID: 6665257385329688576
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr251219ljl.6.1551876167247;
        Wed, 06 Mar 2019 04:42:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4788:: with SMTP id u130ls207900lja.14.gmail; Wed, 06
 Mar 2019 04:42:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqxWtZu/Fbu4L/hYZOKCRPnimomWa9KD9SNVU0oaG8jwa7spwATYxxxLTu2I8FuDTkVm6xLS
X-Received: by 2002:a2e:5d8b:: with SMTP id v11mr251095lje.4.1551876166295;
        Wed, 06 Mar 2019 04:42:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551876166; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+J+pVVCN8/wDaNNgaK8yuaZQLWeylgEqUXyeD0qWHr+C1oqO8O6Af0Tx/3KtRa10D
         CH6nbti/3jiSi5iVCkYG4u4q6Jr44RlS7gx8ZythgMsdtiz8LOAl9WXtfZM/TR6GZobb
         lFuxziRdiDpIz4jw+5qfINIeQSvOIJdHh/pZgEV/LU60fP4cBZilewgMw4Tw7PEO9KeZ
         GekMGfEokHYeFjYKBDsovjPHt8qwkDxdUhwOaSUsofnQN9aiujAzxkVV0Ns/Rh99AYqF
         cnf3qnjWtL79xuGsPj34yFgeOO8Xfbh4N7XaEhqpVOhdpPQ5AYjqBEgP2gXnsqz6GYV1
         mMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WyqHV19CD3zxuGTNorsBs9ZQNWze18oD+j3t3nkGpyg=;
        b=0vPOrD9KfjDIyNMB+e8knpQsXRJxxvA8W9Izo/J3ndIDrhQ3XahHwKdUQODGSaItL2
         vMV/FM01bTu9bh0VCpIyZcpPGevBTsvCzojIS+3bBYWHiEwlKHImRigXCnNHU0As39z6
         tyAZ5id/Gf0VHbcXXy712OYlgoJOMHytsq9hRTticlueaUN3XcnP4F0MF3F/8X8yrmCd
         ZK5ef8SGMbUPdEZD/ErxI0IMnY5zxaR56QNQmnGNE+l65bHAD9l87aLSE1T2qgFWs8Zf
         vB2Jsu6AgRZdBGSp0HD8ekudzyd0eTApj3ivt7Vjrf0JO4WoL0Kh8BSfVP7ixKdn3f0X
         aOxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRpLEBl6;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v27si72124lje.0.2019.03.06.04.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:42:46 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRpLEBl6;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id o10so4350548wmc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 04:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WyqHV19CD3zxuGTNorsBs9ZQNWze18oD+j3t3nkGpyg=;
        b=fRpLEBl6fUdxSf0tjnI0BxtuNBfkHFIWBvfItgWpdzD2ohW4MWMSrhXCuoP/GcdVwM
         ObnxU5mBbE6Opiu7HHTNVO9FqcU2TNVcLfwYqz/XQXznnV5posatXQT4H8EneLAYj3Av
         oHlSzrGu3lxCewoh03N92Z6IW+chHFDInxRbFybNhcTfefLruIyfj6dDrD8Etx68UkSH
         nhnL36gLTJHrqC0SUqTYowoI2v+fZkdVVwQ+uBVxPsWFt/klXGLcmXS4qx1QNylJtXY6
         Ctd37c0FT2MMBV36dgWly7xiDaLmUrt8JugZr1qjKdQacs2dLttcQ+gChsCV8XJ7Ag+s
         xuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WyqHV19CD3zxuGTNorsBs9ZQNWze18oD+j3t3nkGpyg=;
        b=PhYL/XcFzT7MV77HEPns+JeSlFjQeboUiugIwvYXQAFo4K94yHL0bYQt4TgFguWbeM
         or9jN2X64AzNutTe0UOKdLmqoYOfW63BpuVZ3TIlIYsyhm4UfEYh0klEFiB2CfrJN4kl
         MzVfhYXBnmrFVwMNnkAz4qqUBQGt5YQH/5a/EfALII2v0j4ilVptlJvlPFq+EstVXFA/
         GMAX9qz/PD+6NZqNUGiWHKYXwVV3+bK1inF711alh27y35m2svoW3BXj4v4Yo+KgBLz3
         13YJCISRJG5wrGfH8aSHXP11WDnOznzz6ARHjc4gycc7o3VmffmaovThmX13q0kK7Fui
         DtkA==
X-Gm-Message-State: APjAAAW1iHAG5WEHy9UsOaFF4X61IGLG3gfvpgOGBrpfMwfiqdm0aBaf
	rDqU3+u+tINS+fJcj+nuDtAeCQtal30=
X-Received: by 2002:a1c:1fca:: with SMTP id f193mr2176122wmf.65.1551876165515;
        Wed, 06 Mar 2019 04:42:45 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id m189sm2290588wmf.7.2019.03.06.04.42.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 04:42:45 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH] staging: speakup: Fix NULL comparison warning
Date: Wed,  6 Mar 2019 14:42:42 +0200
Message-Id: <1551876162-1333-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace NULL comparison with '!' operator as indicated
by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 0057eb9..5a9eff0 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -47,7 +47,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 {
 	struct spk_ldisc_data *ldisc_data;
 
-	if (tty->ops->write == NULL)
+	if (!tty->ops->write)
 		return -EOPNOTSUPP;
 	speakup_tty = tty;
 
-- 
2.7.4


