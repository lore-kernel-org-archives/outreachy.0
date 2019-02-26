X-GM-THRID: 6662401888511590400
X-Received: by 2002:a25:4e88:: with SMTP id c130mr10165534ybb.94.1551211319343;
        Tue, 26 Feb 2019 12:01:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:330a:: with SMTP id z10ls477626ywz.0.gmail; Tue, 26 Feb
 2019 12:01:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZrwu0mZtqOuSzrAQKrTAqQM7TRSn+hvTAJHLDrfopSy5YTDgCIsfaHZTD+zQc+LCcpvYaU
X-Received: by 2002:a81:3102:: with SMTP id x2mr9905666ywx.0.1551211318407;
        Tue, 26 Feb 2019 12:01:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551211318; cv=none;
        d=google.com; s=arc-20160816;
        b=w9BgdSElnVIg2+fD8HeKUfFkn0Vj37BEmbMAC5TnsywEY64jIe0t5WKeFpOFTJiUyM
         ZENBeHM+JIhEred0pQF/+fbVY+OKufM8AH7jbwobFC+DHH5BI9CGtzlbtHa+Jk+9Ssfn
         eJdfbZOnqIuaG/8TuvnnzoQYYCd2yo55qVWq4F8tuMzwzxZjn/7nMSp2/vZwABeQSeY2
         tsRlv7NWOvNk2P2K6ksuoIalHu+yBHI1w6BD55UwSirBINkF+gC99pYHOXXfCBfFdrfJ
         Kvv2DWVhlS1ncqU8RaaH9binIZ9m2uXb75zIi51enYoSgCVzU94KoUxbTHElAxQjqGRd
         RlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HxPKxb36JvNl4+pHoxNpLNhTWTu0TVwe8NjVRsZ7xyw=;
        b=zJrh7oECXqlCxJ+dxrb4rUmK+w9/onuyEYw6ehjduQgChMV7BxMCFFHu1SZAe7FgMj
         hVSXCJaRusjxXo64wJZZmIUh4sznELjyUSylzkLR4tGV8FWuSnd+TZ7o3W/mUggY7YBy
         BYa1itqj0KFJVbyqvInNE/xigiE8KVtWpxVs2QeZ/dUzJJJHj9J9kD3f/Jf56VKtMozk
         Y4JsMIHBPpyQRBHGmgsEDdL3tMb4BvD5LNxA4ze8GI4wgSKh6YNi8MQ/+oiA8AeyMDz/
         Pl09SGHrGVROAoiqctbNfD3SD0IFFSu0FPSEYNK3E9tCsst9TO/1JWgv8fRd2CuRJLGq
         WyTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=riNBgOUN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id z185si603547ywa.3.2019.02.26.12.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 12:01:58 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=riNBgOUN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id t82so11379270oie.12
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 12:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HxPKxb36JvNl4+pHoxNpLNhTWTu0TVwe8NjVRsZ7xyw=;
        b=riNBgOUNTT5N2iJDh/MH88BxaDbu26J8Qg1H/NwygDrloUdtRffkLPSBOzNg+HX9Z4
         ZjSXsakHY2j03IAPTcBjj5oCj1qkHgrJL5J21Nwdlj+kTU0eKWq99GmUCwcgr/fSTx5n
         VOu8dtNSB+a4rAsbm1EG3kL9nLxvYiCzrPG8VxXKqwfUj5gCsdJ8RFG/t2t6rHZDhsAr
         F0czOeblPyuqInM0cjGRLR8j/jycDKwgllEGaajxQUKCLd48rsfgLbxas866wXE53gev
         dX0hGwUWUOTEUvI7RMXhIwESKyhBiMRD7ddi9hymfCruAuwA5eac8TUFEh4aNDGMK7QD
         5/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HxPKxb36JvNl4+pHoxNpLNhTWTu0TVwe8NjVRsZ7xyw=;
        b=Mz7ebzs3g9T6+inp0RRcE78YAmVDQFjWWDAw8H+1rINTLQa3rLJC6+wM0s0z9KOi0J
         b4Fj1GYOjg67RPBI17SUHUr26x2Cqi293W6eoWh+vQPHYZizboAkL3y4Evq3HtdERN3R
         Vh8mJOTdjkTTBQFKOR6GGLYTjEHQs5/Jyk9owkk1gds2VdLUjddV3BdvTxKyHP46knZt
         d+RGgWmwujoGLnz9H9yugIwFRSpI54RotfbmuioJpo6gjtsZ3dwU0gcU+QpdDHR8I4Jk
         RkVEPTr9nue9ThK4AM8pCU2wN6toHKDDNPGeMs1+lQrp1ub79W/P86i+NiW+T9wlRTx6
         vmjA==
X-Gm-Message-State: AHQUAuZg8wuV3ViFv9eL8jiy2BQJdR2ludbQhTtk83MXH7gbuPU31UGc
	7KxW13UV6R7eTbflQ0maa6EOeTmmh6lhJA==
X-Received: by 2002:aca:ed06:: with SMTP id l6mr3525635oih.7.1551211317833;
        Tue, 26 Feb 2019 12:01:57 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id k100sm7412600otk.5.2019.02.26.12.01.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 12:01:56 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: vt6655: Alignment of function parameters
Date: Tue, 26 Feb 2019 14:01:50 -0600
Message-Id: <20190226200150.2708-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch align the function parameters to improve readibility.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2
-Make a commit message imperative
-Use multiple lines to improve readibility

Changes in v3
-Commit message and subject line are modified
-Alignment of function parameters
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 35bbff807df9..e3fecd732c88 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1705,9 +1705,9 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  *
  */
 unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-	unsigned char byPktType,
-	unsigned int cbFrameLength,
-	unsigned short wRate)
+		unsigned char byPktType,
+		unsigned int cbFrameLength,
+		unsigned short wRate)
 {
 	unsigned int uFrameTime;
 	unsigned int uPreamble;
-- 
2.17.1


