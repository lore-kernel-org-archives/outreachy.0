X-GM-THRID: 6949513279876104192
X-Received: by 2002:a17:90a:a103:: with SMTP id s3mr19050984pjp.158.1618059650452;
        Sat, 10 Apr 2021 06:00:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8748:: with SMTP id g8ls3158203pfo.8.gmail; Sat, 10 Apr
 2021 06:00:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvVOifRAiuA4vw7/pARNekSnmfn5WclP8W+WuJaOUJyvtxchDtwIcli1MtVJhyqIQSat57
X-Received: by 2002:a63:1a50:: with SMTP id a16mr18376011pgm.92.1618059647571;
        Sat, 10 Apr 2021 06:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618059647; cv=none;
        d=google.com; s=arc-20160816;
        b=lhHoq1AiYw4E+2JKFzFgHmXbtGwBN9MrqhFhkMUq8HNAkfG4F7R3XFcokKOnjy1c5i
         fuR0mBwzmAHsGTbMkqjadYbfIObyirUgGG+MZKfUkDqmW78euyeHkYy+vWvVmi3+vuDP
         DJEmqDT6zekiFrDbOA7yA/PR+a7prBSh5jUD6x0r7+kGg6OElU8gdCl92EGeK7Gnpaqw
         xGnOwZiUyH7nbkxugvoUsb+OcfXK5vKLmlnGDkyrGK5AhuFRYzRTpQKab/MaHoWBWTf/
         A5GTEXT/8Qj+dywZBkBOIlPLQaZ9JEHjmUQbNT43e7OJctz3+mkZ15548TPrtNFh9c/h
         VQlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UGb+/+QBTdjcmOPBbleKfKtPLJksnQcPm+n3W+gASt8=;
        b=POst8AD3v2/9wzPo0ucJ7K7NInofR8QmgHY2QqIH4pfrBFxACEIvKvsAI8tH8awEwn
         GPIoqpB/YKYbO+M2lJx45eXR1UoXqi6fajfCwry+6jwLeDYZPeN1C6iGSNCD5PxY2d4A
         9ZxLi6KrPf9+PLGNpTP9EZ09TIwxckT1/rwQ9zalGZ5BJ7Fu/XNc4fP9BOOh3VruWJhy
         jgnkYBOk54B4yQDeZ7p9FaApvQawLHOF+8oLoOXLth4AsjtJUPaM0ZrzkZZr8+QB1+Ol
         IEjR7t5lpZS/9QXgqDnPwnw0ENNXsY2Az8p4CQfeo5486fKPC/X+Eb2AxhGWEMXO+mLD
         9aXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNlJKk2Q;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id k3si411004pll.1.2021.04.10.06.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNlJKk2Q;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id p67so1124054pfp.10
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 06:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=UGb+/+QBTdjcmOPBbleKfKtPLJksnQcPm+n3W+gASt8=;
        b=TNlJKk2QHf6DUMp1ExtSa9uXzuPXSFsvUI9AIaxi0RSotv+edjw4EGp2O2eWCE0oPj
         /LPgHODBcQAisZRiC5RED/ojXSmMfIMNe7hUTeDeFF5aSHOs2dzW/aVWT2ziTXOVwccf
         zKobpEx50W4hK9CacwVdZpXVDsZSiifnLbhbzKP5n5ExBeM9zGVQxgnLuI2o1vpzJoNB
         WilMwRTNfeIr0uqY3RvKuHY4BRY7Y8Zs0n59P9C03385+fgVHUxkCpOum1fEXwq9/zx8
         s+h0+UroOX1gOV7BR/OSsy+57K6/ttdxXte0qcyH6ItEoiIlfoai8+ufOgOxoiACG70K
         3s6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=UGb+/+QBTdjcmOPBbleKfKtPLJksnQcPm+n3W+gASt8=;
        b=nOzvveHa05hBjPCcM67GdMNgpLxJjgkqIKr7lKTEUkKBxXGCUKISpW8h7b6Aisj+1g
         PEP3CjSdfKbnYl31a8jn9GH7+l6yiFxC++UcreqmGpi3fD4uqXFYQszDVng6Co7eqVQG
         fPg9htsg5K1E+foEkuxsjb6SF0PKfMX7EV4Jnoo1prP1u2q3v4fwtZs9FMfm1+AF4xIH
         Z2KKZP/BiA5BEaVmEXMFdHS7X9cGzUW18LwF5NtQzL0k2E+gZ+wgHaZ2InCKcQp4pQhb
         eK8BT6qrxwNwb1xwotRVJ0VpGilgtJmf+c4LA76sKYnATogo56zwhpWBm4+tg3qCP6hE
         ZMGQ==
X-Gm-Message-State: AOAM5338/K+Xgj5MxSF+yiJO3z2A5d4Cv3eii4ovsJGKHDu4+rDi8DaX
	cmbE7eFhSvvl2m16fIFqtUk=
X-Received: by 2002:a63:3649:: with SMTP id d70mr17542761pga.1.1618059647127;
        Sat, 10 Apr 2021 06:00:47 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([106.195.15.71])
        by smtp.gmail.com with ESMTPSA id 12sm1694822pfi.204.2021.04.10.06.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 06:00:46 -0700 (PDT)
Date: Sat, 10 Apr 2021 18:30:38 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHGhdtldqAlRsPHT@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed Comparison to NULL can be written as '!...' by replacing it with
simpler form i.e. boolean expression. This makes code more readable
alternative.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v1:- added pointer to the function, which was missed during
fixing v1.

 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 4457c1acfbf6..78b5b4eaec5f 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 	}
 
 	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
-	if (ppTS)
+	if (*ppTS)
 		return true;
 
 	if (!bAddNewTs) {
-- 
2.30.2


