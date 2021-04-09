X-GM-THRID: 6949121443555704832
X-Received: by 2002:a6b:5905:: with SMTP id n5mr11034872iob.90.1617968418143;
        Fri, 09 Apr 2021 04:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1d04:: with SMTP id i4ls1917095ila.0.gmail; Fri, 09
 Apr 2021 04:40:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhtzoF/IayRaN0FbUITIabZFaqFWMjBiIrvpuiroFg8HKFECwrgGVex67ars45P9y2/Hzv
X-Received: by 2002:a92:c0c7:: with SMTP id t7mr11196006ilf.302.1617968417551;
        Fri, 09 Apr 2021 04:40:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617968417; cv=none;
        d=google.com; s=arc-20160816;
        b=0M4vZEC47J+uuT2ZR+cYO2yoSVWzFyNkvh2dmx0CvSOFzeW4eEYr4QxY7NoeY7WWks
         vTyDJDh4P4WGWbzfrEU4jEJI8qQV+YA4mRrTkdb47Y1UtFh0JK1unMwgV4F0iZOECgbt
         RE2AqpVd1Oqhee0/FbavY6XEbSHFMZzRw3Q5cff9bS5sXBdDbcKEHylU464MEBTuCHWu
         9PpvToUYtvxthlnCr5JYxD+l6Mw7CZUwwZidPsNE2I2IOLFzfd8fApO3moEuCmHfymMG
         FW0CH1MO8x0ZpuU1qeL+NGGP6tzX1LujRwbPREE/6A8OVdBMbnbKuPWc4VxwEylUKzok
         3Tew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NZw4NFmYLCrGc5aV3J0vJb8Lp57C7Yd+gPIf9yWrJX0=;
        b=fUBp6/7AmwbMyUvc3lLU40PIQrdVe9QFoPil+AnUPwDYu0yQSo8Ijgc3Ox7UPnSowL
         /7vWakpttOqPwZ+HYokxDa3raA5gLNg7XI/UTwHNhY5mkjd5U8ElxLHa8UU8n2frtsCn
         2VirXrZdzfFJnhQYd7U5ScMukFMCvJwLFkQUU0Hk7IdpgXEKFIDm3l1XItM6Erl+dOTT
         8n4CpFcDRDhJQA9g4ExhNtqsei6TaNL3lm83EmFmRuTGo1IeC6t1Q4Aybm8PTM2UfRZ+
         e0XvxkO+ObK6NkBFjcF1P/Epi6OEVavheDILQV7KyHJLb4MQj+dX9+h6fA01dZmZs2em
         RmGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHmec72R;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id 12si117849ilz.1.2021.04.09.04.40.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 04:40:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHmec72R;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id d124so4024041pfa.13
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 04:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=NZw4NFmYLCrGc5aV3J0vJb8Lp57C7Yd+gPIf9yWrJX0=;
        b=eHmec72RD9J7Z1L5wZrwKZs3r+i0WFgJUIpnEX2+tnXsZOV/reXykSNlnDAGFb/eAP
         LEq/nBwdvZ6iwVZ5iqRnRLGYRIWPDREUUL5ZvTnc9PpYQyPGH3IRbzls8lvr4W2X0DCw
         ncSxPrAfTnvwVW4Oa1nJeFZPiSnuyM+0qLH2+GH9Cxvk5zxdZAZhJEAP1+OAoWJoSv3T
         PSt6LFTi3+lZYKTjbo4Zn1AmZFGvQpUMDcu/dl2f9HbAJk+TTDn0Jb9qMxKTatLQTx+3
         VCMX+QMh0v3GBTisnuZX4K37zbD00vz9AUoD/3UdxAT35Ze4RQfV1Qv5W6PdASsc0Jcx
         /C3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=NZw4NFmYLCrGc5aV3J0vJb8Lp57C7Yd+gPIf9yWrJX0=;
        b=RMFKANWEweD9GQXe7pKcOVFyszmgdMC7dBeKQ0HyN/jgY9daePFrBnSzKxcMknSWDp
         V4msNDzNek2BRmFh0q/YR+KWrjXnhQZMWx97ifOn1kwtw8FWix7pR1/+AyKggn0OyHf3
         QpiLwvwe/M1xT803kCPZQg9ZmrC8iFldVNNdqBjF4Ya7jOAeQqIfCjN8bSuUrkP4TC7w
         cpRZiamhmOjMK4JF9cH4yIFVB94YZGejbaIzVUW6d/mZhiNaKRop9WopkqNCAbh4MtLt
         JWmSKhmu1AD5RjDgyru5WeZi2Htpy1txEtcRRwW7KwtDxwk4Ur4CbfiWxK7K7Ln1AqAS
         FhLA==
X-Gm-Message-State: AOAM53331GZqSVL0AcfUICgQBz5mNrEAnwQYDh8bK1Yulr5BQoduVB/R
	4cGHJu8pvLFg5Hzq+8bBTh1cHU5I1V6SOw==
X-Received: by 2002:a63:30c1:: with SMTP id w184mr12534931pgw.230.1617968417154;
        Fri, 09 Apr 2021 04:40:17 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id e6sm2573864pgh.17.2021.04.09.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 04:40:16 -0700 (PDT)
Date: Fri, 9 Apr 2021 17:10:10 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2] staging: media: zoran: moved statement to next line with
 '*'
Message-ID: <YHA9Gsc2pmmtmlNA@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Moved the statement to next line and added '*' before it to meet
linux kernel coding style for long(multi-line) comments.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- made style changes according to linux kernel coding style
for long comments.

drivers/staging/media/zoran/zr36060.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 035634fc1c6d..8c6f4d792a9d 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -249,7 +249,8 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
 static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
 static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
-/* SOF (start of frame) segment depends on width,
+/*
+ * SOF (start of frame) segment depends on width,
  * height and sampling ratio of each color component
  */
 static int zr36060_set_sof(struct zr36060 *ptr)
-- 
2.30.2


