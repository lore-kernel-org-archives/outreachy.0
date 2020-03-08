X-GM-THRID: 6801909209397985280
X-Received: by 2002:a92:8f91:: with SMTP id r17mr11270995ilk.97.1583692899461;
        Sun, 08 Mar 2020 11:41:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls1039027iog.6.gmail; Sun, 08 Mar
 2020 11:41:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRfk4AO50wwz2q/Y1FaUmYhfIBaeeO3xaOxQ41+LAU6YdtwzLszvn14wp1YOd93RiPqhoA
X-Received: by 2002:a6b:d207:: with SMTP id q7mr10777779iob.49.1583692897987;
        Sun, 08 Mar 2020 11:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583692897; cv=none;
        d=google.com; s=arc-20160816;
        b=ChfxdZeeTu3tpAaD8opiPm0QpdUmcUUorCzMPZ246olIZ9gLV5vdtywCif0U6mnoz8
         55J5pXP4OY8Qo4v6VKo1yCvH+PwFOkro/W+xC8Rni2YniftNKUCTHd5wj6pBUg9U8G9m
         07xyxvaq/Jm2SbVhJa2Wv89PW3pmZnx4B5quzUNtK4iyHag2jwed2lPGt0AOVdxl0jiI
         DuzjPvEJTs4Q74R77pBUSCW4H3sz3T1TGAi7q4wOk/f5ExO7GCFJE7vv7PJFNuq+L+FM
         zy0MKIEvWm9nJXptKrQycopVFz7h4dJSV0HEFEHlH4DRt9ilEdNINsVsp60zRgtqXVXl
         eRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=NTtsRv8XU4HmcP97wT8e5Jt0yi91tdHUmtQQ3B/qQ0YkiOUvXGte/ShJtonJqLN3KL
         w3CNUEzfKuYzU4VXgRQouk93V2z80Cp86z7ZeBWWoP09aWcKym37VNHl272r+PafwT7E
         gIxVMTzq+KigJIxRdalEJZq96SUktQR5sSjk6LQWmnsPYBHbl4bJyZj3GPC6b3GAaPu8
         LtwdarGt991Lj2mtTVLn7BOCVzKauxP9wHklkAKhqwyw5WrfhMT/ZH7GVGlNALOEo4Vu
         Z4DojqGqee0zfPOn2239qIc8F8MQRpMziJjiVB9qFB2LUk7JefOSNTugwrPVfORzP2DI
         GPGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m1J9tNBD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t10si459180ilf.3.2020.03.08.11.41.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 11:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m1J9tNBD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id n24so3656781pgk.11
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 11:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=m1J9tNBD+4aG5x4Ikm8+NrNiE1tpx1/8VtY1nolEYYn3UGJaN/KKVH+e7zqE0roCfo
         nPesHDlwYHdFJz+crBpt01x0xmWX2Mo87G7Py+y1GfSdyDl0sTPF1JJdCKZexlO1MFz0
         gfAGFl0wUR0E+wVxRmO30w3Ae3UCAYqKRccnmbkC0UXdbl5CuPZ7vCtqib3TVKvCh6yP
         2M2Hag7gn8Vh1HG6R0CPXw5l86D8do8NBx4MxzObxAoylRPQrinUcDtL0mRFJB1bnKAd
         LQfD5qm6xTd6BQAjJolCEjFgsUzUmmevRDZUXhwEuxDCG/R1zx3gTw0sGfyfvkq5QKiw
         6GxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=uIQdY3olVEgTvbvjpuvIdwlcW1sGEShnrn8Kq+pNYkHFs83AqsU0UT1T+khK+/Dp5M
         jplSlHLsOdr5fnck+23Iwr480R5q8hUhQc+dYJx1uus7afzpXa2hGVl9eZQaJNyW/Zl0
         utFz00I/8uvG2kGFhb7KxheIzdfhUj1scJPtBcfOmqeMjQ55mOT3sUM5vhlyPjoa+m4o
         06uy/W7rruppB8PwruHIz9Ds7p+rY9/mVCZqJs9PLsevEfS/MJ5PtDuk4CqH5A7YSmkJ
         08Y5fbfSX5QcXMMBDFi3ekzwtjZAEqaryb1YvZOQfgu5kCsvqp8Wvmp7j6eqo9DCDOW/
         mK7w==
X-Gm-Message-State: ANhLgQ0wvmGXjdj5QIxwOyujoKCaW9U5CH3YuvG8aKOxQPmXDEvtPUxM
	Hji1ntmPQ5Eemq9gKaUGrz8=
X-Received: by 2002:a62:195:: with SMTP id 143mr13454560pfb.17.1583692897252;
        Sun, 08 Mar 2020 11:41:37 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id x16sm15408649pfq.40.2020.03.08.11.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 11:41:36 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: wfx: remove blank line
Date: Mon,  9 Mar 2020 00:11:30 +0530
Message-Id: <20200308184130.5458-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Blank line is not necessary before a close brace '}', remove it.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/wfx/data_rx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 5d198457c6ce..2a09f6b978c3 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -62,7 +62,6 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev,
 	memmove(skb->data + iv_len, skb->data, hdrlen);
 	skb_pull(skb, iv_len);
 	return 0;
-
 }
 
 void wfx_rx_cb(struct wfx_vif *wvif,
-- 
2.17.1


