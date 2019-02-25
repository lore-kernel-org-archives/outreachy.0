X-GM-THRID: 6661416853760376832
X-Received: by 2002:aa7:8841:: with SMTP id k1mr7047714pfo.63.1551114849043;
        Mon, 25 Feb 2019 09:14:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:467:: with SMTP id 94ls7271862ple.8.gmail; Mon, 25
 Feb 2019 09:14:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaST7ParozTAvSMCN1wc4em+HEDfuEPE1p8DkdSEUOo5VJa62pBFfXw0sJNd1fjVV7GZ41D
X-Received: by 2002:a17:902:e612:: with SMTP id cm18mr6107949plb.122.1551114848290;
        Mon, 25 Feb 2019 09:14:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551114848; cv=none;
        d=google.com; s=arc-20160816;
        b=T90wvxzvuV/4DvIEqepvLAm8A2D1WwirnJKd8MEbudEgPLh0Kz0HDST3NG8GjBfQ1I
         L1M9NsLA4vkxcfRCacyjlUOufIkwx7hiazlOFp3t1hrIein37Q1NOLyCs0aARlxli2kW
         6ZGoJoRglJf1c5viisdAOSAA7XEdBe6+34ZzqugbG3vkQvAZlwTKp/2bqefTSDOVVJDE
         Tv2HR1aWrNe7N2hXiKvk3XYG4faB3gUaLTnhQenY5e7Y7ktuuSZ/ysh1wEfvVG7yDuDX
         2I03KpGxBihZzgMCk2XpQN4lVHMWpVYhS4QhLD8sST4vEmCiM3fcitaZfLmkDS3Em9fB
         pLVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Z7y1XiqVz7QqMmR0pdw/NPKVsoR9Pj8O62K+i3V47E=;
        b=ljiOlr11xNrhRRrPDZjiqcIzjj2PfWx96zXudHuqNWjCpjG4HP7nLEc5yfOXScVnk9
         p05DQXmdkq0HPM5aIe9l3m36/xNzgTDpUP3ccENImE/Xc7GYHEtu7Ffi+XcEMVhCCMO7
         gbSSAp8q5AP2lTtXZ2rMo59PPBiJvPW55PMbrCe851fXqw2xmozX1Te3/8a1oCmfOA/c
         GK/PwGK/DOCpojaHEYJEoluulbif5mJ8JNcR08kqcCRgtTAHLF50o+mI6r03F9FkJ2BM
         FrWydVi+fHYkKvXPGqDkHC4ZNJyFntnUM2/AglIGHQuPnocMe3IHFpYIRQRCNYinwvZ2
         0u5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NJ3C51z4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id m189si736847pfb.0.2019.02.25.09.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 09:14:08 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NJ3C51z4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id g16so7897827oib.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 09:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3Z7y1XiqVz7QqMmR0pdw/NPKVsoR9Pj8O62K+i3V47E=;
        b=NJ3C51z4/8wzc1ePWK69E17APgR3I45EDyrdjuKVyBM3MCslAHe7Z2xaJ6EyKQNZKh
         eETByfwkACMqR3/1OjVgSAN5TMN1TuYieOmORj1Hfs6kclmJTTZOxSfqfYDPhD1lB8Sr
         ieUB6ewZJlcGPgTfyc3V05XoriAfLAveMI13GTIpCmZbDf55xa4zcY6svJDMBSNOb1QS
         3nH3baxXFlht5guFnoX4MdQjTu9s9mP4T5G3CkpL7Od2V+ogPdpSWHZ2MJDBJ54K9Yf4
         Aia5mimiWK0rGqtRQq4G2o+kQ6ElFK1QJqJfcC7vATIkgX/Pkyx0FRAnos9DmFZhsS9D
         ifjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3Z7y1XiqVz7QqMmR0pdw/NPKVsoR9Pj8O62K+i3V47E=;
        b=oq+xKNqo/TTNoF1xJQAsND0tttYsTtnYxbSqUUS4TA3xeJm1Jhrhx5Y9zLjsEoivOM
         IMRRWZcNGmqeKQpNY1tYbgHb+viSt52FeVh11FYC1GuykxERXAM8gwwy5VNW0jbYY7WP
         9Z+PiRCpqmn0EGyNDcQADi4PermTLc/QOHDSyGeNLYlzI9h3TRHZDgMN+mmpGsB4bPT4
         iavrUYOw85L/OdL8KIg+ySP+adJe4lXx4lvJ3kjsDR4xEX4EZakMRHo3k55sIoX1SOvX
         Xt0FJ2e4hrBgcL6cbxyqMPItQvYWbDusTem9TOLc+e9wxymWySzJhSxZSDTYZnxi0EPs
         RnaQ==
X-Gm-Message-State: AHQUAua7MzD+XCAAoR9KKTZ3GZwKii4ffBXraZAp7MmoCXO0ZTKWqjKi
	5yChka2W/93l49bEp+6sQvYwtlk8aFQD8g==
X-Received: by 2002:a05:6808:315:: with SMTP id i21mr11978165oie.114.1551114847698;
        Mon, 25 Feb 2019 09:14:07 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm4616712oie.52.2019.02.25.09.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 09:14:06 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Fix check - Lines should not end with a '('
Date: Mon, 25 Feb 2019 11:14:03 -0600
Message-Id: <20190225171403.393-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Improve readibility

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v2
 -Make a commit message imperative.
 -Use multiple lines to improve readibility

 drivers/staging/vt6655/baseband.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index d8321e7fd68b..35bbff807df9 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1704,8 +1704,10 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  * Return Value: FrameTime
  *
  */
-unsigned int BBuGetFrameTime(unsigned char byPreambleType,				unsigned char byPktType,
-	unsigned int cbFrameLength,							unsigned short wRate)
+unsigned int BBuGetFrameTime(unsigned char byPreambleType,
+	unsigned char byPktType,
+	unsigned int cbFrameLength,
+	unsigned short wRate)
 {
 	unsigned int uFrameTime;
 	unsigned int uPreamble;
-- 
2.17.1


