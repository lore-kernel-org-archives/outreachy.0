X-GM-THRID: 6673442126229929984
X-Received: by 2002:a25:3bc6:: with SMTP id i189mr2922304yba.59.1553922789465;
        Fri, 29 Mar 2019 22:13:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c6:: with SMTP id 189ls1304876ybz.3.gmail; Fri, 29 Mar
 2019 22:13:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqym4cgUu74EnZRNAPYxS3Lqrt0oFNF8iBj1S+tbaj+RfaAV+O8O3v7SKFwIe9QA0Pp5mLNR
X-Received: by 2002:a25:72d4:: with SMTP id n203mr3315180ybc.43.1553922788562;
        Fri, 29 Mar 2019 22:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922788; cv=none;
        d=google.com; s=arc-20160816;
        b=Bz2NCGGkcTJDqGvXfeiYa8mDJ8VLuJk3ucfstM0W4nsQPTpVNnizlG8GGiKzPLrnDY
         DJdnw89cIcGhh8DdywpK37ojqiTuELg4Z8MIOFf5TjCwjGiAhdzXKeBdMTpsY3V1I7ie
         bXRYuG6lmlYmywo+qXb1oJjgr3iWFxMI597ZcvVZRPEX4L/EaI/qiZZ23ayxgS876tiP
         nyukwJ2CtE4QnpTMDLclurf93ZszsP9/h9/MhAT4K0rUNz7HJFu4L6ZkvJrecPH8tbwo
         Hjh98aaITeW4Xw7hk8Zf3RuwsqpYKHEA5kxFoRM4rE+ibvhsW8Y8meU6nuVZC8jwM0yl
         y2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=WtrhA74AKgaTmg5AgHGmGD4dr9ahXWBcVkBnkfzci7r/O9AF/uuNIR242/RhwSZvcQ
         5EEqoTU+5jVEDTkJAdndebiHTu0FkBpDgnKB0Q7y784xw3BUEFCR61tmb5YllO+Mlkn0
         BBrA0SCeKVRk25dRQScIpTqIyi2KRKF9vDG4ggeuY6ElAAShFI+ChyJjhvjrgE/xqdDS
         YiPAEEyCMJO6VxhSRIaTaNO3I3vwzrfOzu4EIsKQl7NvMps+D7uJFPkziYh8RwAPL0uR
         dOPEVLhCS7j8DUPRQ/YKONfcFcJ196i4W+JBUVZ8EnP/y0ZBZeKkHqFIxL1bQ9vRQI5c
         fWFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GETVO9XO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a184si175249ywa.5.2019.03.29.22.13.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GETVO9XO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id g8so2176501pgf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=GETVO9XOWmQQrzEgvCfMCJh+9VIUP9+lDA73xdX4GUqbatmE1VfGiK4SnL0DyA2OFY
         Sfc3HeY5fAxHh9G0Gsgs2piVCHtgbEkDetjnGlsGdXLLaCpfTi+xk+w0i7Rn5+Dx5Bpf
         jZDbunakWQMk+WClzAASD4sDQ+8hEbYkS/2CRKGmNxXFo4QIFVtV7DK/n0OkYDkLjLi7
         V90eonJLwf6j4Qv0W2qbxG1LwA01rc9MUepzuubDJRPfAgYBUnPCy3wLZTCKvsvZqL35
         ZBV6kC6/deckhndK3q3PsFBIksbI9iVyW630QQee/8Ccpgu7lJR6rCOUrtzGtlDQ98us
         Y0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=HJehuuV0OIMKRHy3z2XpnQCsHLGkAQTLBon4xfn+xe7SZ53pys0p0cr3j6at2iuOaz
         FJ2iOFeG4ci1xuwC9BG4tYA6tx7Az6YQ4rEs3w5chIe2fvU06LPFSzRjykpi7mBVHhuB
         q4wVSrUcbAqEoXhAArNfR9iagPK4PcfFLqzWfWfD0+/GpXXVGFD8nZBp73Be0wBVu3LT
         L1N9aC3YUWQYcrcBswgvBPL7DuOZzUxu0BLy753ZV+XkzEFMFXZRC3rfd2002RlnlZmM
         ldI05xahAmHCRLgLuC3n4S6qLmW1oj+nLslT2CZeg72elQ0xHTQD0cZLls/YIDYn75KY
         FOXg==
X-Gm-Message-State: APjAAAX0F5LQMSP8//eSOhfq3oLy0ptZWxcV4bcBBLxXAeLhmLZirOov
	AnbdAt+doUtsK1AdvUwR8pKcBuHj
X-Received: by 2002:a63:7153:: with SMTP id b19mr43393455pgn.289.1553922787514;
        Fri, 29 Mar 2019 22:13:07 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:06 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/8] staging: rtl8723bs: hal: sdio_ops.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:40 +0530
Message-Id: <3edb3e5edc4afff83a6106488888d7c2cc636870.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 3fee344..f5f7f36 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -560,7 +560,7 @@ static s32 _sdio_local_read(
 	n = RND4(cnt);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	err = _sd_read(intfhdl, addr, n, tmpbuf);
 	if (!err)
@@ -601,7 +601,7 @@ s32 sdio_local_read(
 	n = RND4(cnt);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	err = sd_read(intfhdl, addr, n, tmpbuf);
 	if (!err)
@@ -646,7 +646,7 @@ s32 sdio_local_write(
 
 	tmpbuf = rtw_malloc(cnt);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	memcpy(tmpbuf, buf, cnt);
 
-- 
2.7.4


