X-GM-THRID: 6661416853760376832
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr9459932vsl.44.1551118426768;
        Mon, 25 Feb 2019 10:13:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7201:: with SMTP id u1ls525670uao.3.gmail; Mon, 25 Feb
 2019 10:13:45 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbbXIdzoVQLg2ON3sK3X3ahfkHICSZTp+SlweXLf+gY1g54AwE0JqrjUnifYxwR/ZyVjkV7
X-Received: by 2002:ab0:664d:: with SMTP id b13mr9128623uaq.8.1551118425555;
        Mon, 25 Feb 2019 10:13:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551118425; cv=none;
        d=google.com; s=arc-20160816;
        b=mDx4hkSwQTGzBfStOVi07xQsJw/LN9+EhNB3+Z4OPWlcIjRIy3kAp/kt1hu+S8oP8a
         ZyVK+61my3n/QVZhNIwdbkXhsUgkt9uORDuwX4bt5yWjaBXCvMPsW2v8VuzDyj7PuL91
         Y+jv7CNfLPiroWdjw8uFUtBu9S2L/k+pAvDQFZcKTTvQo/XkWSuRZ5itPeiguFiiUL4a
         3CNlwmuFzUnOXuBwwp5EqbDxzv8BMS+c3eCUctfLggvXtTulHi1yN+kPTXoWkcxnv4+T
         G1rBQiSzDFIaYiJXjv3I9M71CE5SAzvTaXMqca8K8HnrDYuMMve3J3Rya3PgA/axwIIk
         vXYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=humibhame0JbBbE20oIqc2X2us2hdfP13X926U+L9Qs=;
        b=KgEguvgDs4rnb3Dm5PNcUrHte1iocNX+lzd1T4TdrYM/fSSuzyf6ewLw8JIGs6+cOD
         TB6K/CmK1+D5IrHaUwYH1pGGv1i/oQ8P0JWLH4NJx8BFYZpSSRhVPUWJiaWqx+XQmUfP
         Hk+kEv3b9fjCidhnX3EHplDIjAEPfs6OuILer4vNM4iFFGbAncPDQyHycuFOqwmNL9TD
         wnI3c6A9Tz6j30bq9x3kyxIm480zYdjxcg6901Ks6O/9VlAsk4nWjJOO8XFoLtKNqW6K
         0d23nBXkxRPxjuWMtPMan1phK89YYnDyrrQoCLm5hHFWt7er1XbV7irPSoXkEnepp54M
         u/wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SzRqnyDg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id n62si539834vkg.2.2019.02.25.10.13.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 10:13:45 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SzRqnyDg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id t7so8652350otk.8
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 10:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=humibhame0JbBbE20oIqc2X2us2hdfP13X926U+L9Qs=;
        b=SzRqnyDgo9m9eBSYTUH7aA2llyokhJkhtMRnTHPZdQivA4ktw2J4BcrPQT1XtUCWU3
         VRYCm216/tVNRISnCCGrI9RGT3NqDenifD3Vd60+hrlTZvmXZwX9tSK123h2uUMykz0Z
         frkPoe2mG4UhIGUnSgaHSuY9afQXPq2lU7ZMLZKjFzf8kpjff1EqAiJXx4bigNG27gD8
         zqoC6iUTSzWjHUV7y810575m3gOV7qkFUXr7xTZXIuSeN66MiEwceh9GXvnIb8sIc1cg
         KEtwO37/Q2s6kbVvp061BRTDFcaDW+iSf5QCtOA+6tixoGZZMWKCCUT2LE/qydfb6ndn
         mUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=humibhame0JbBbE20oIqc2X2us2hdfP13X926U+L9Qs=;
        b=HqSst34bTFlVZw4BGZj/dij3bDZ06S0MkabeWjWsBK72mY3BiX1tyDNqo4D/uPmeOp
         HqmqaVD6IUmT+ORaXzvtlAOhtR/Ddxkxv9D8CLt7KrDpqZxH2GPpNv77+WMHghpWeqFT
         hdP6yQ1/F+J52hkk4G2kK6kAaNnarj/MJNk9ZsIJW3NjH6OFoHZa82eroRn4XvaNEbPk
         m6sD+FirpLjvhdBmcXOmWrFxhJHZxzwTpDi5BngEuJ0c8ReRFmK/pI8CxrAhVfkPW6LT
         KpAJaaLmY/sAdtOP70x5FiCV9yDk1KOncbkKLpFku5oiVuiZPqg1btKriyZHgyoTh6UN
         vi9A==
X-Gm-Message-State: AHQUAuaxKFkPbTORgKALbKrmpxVgXrZrZ4RLqxb8hPWtK2HIWA4uE+Nk
	n/eE9PfMxpi7WRBbEGAbxBE=
X-Received: by 2002:a05:6830:16d3:: with SMTP id l19mr12612882otr.123.1551118424800;
        Mon, 25 Feb 2019 10:13:44 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 124sm4883229oia.55.2019.02.25.10.13.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 10:13:44 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix check - Lines should not end with a '('
Date: Mon, 25 Feb 2019 12:13:40 -0600
Message-Id: <20190225181340.14583-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Improve readibility

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6042f0bcd3f8..278cdedabae2 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -503,10 +503,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 	return bResult;
 }
 
-void
-CARDvSafeResetTx(
-	struct vnt_private *priv
-)
+void CARDvSafeResetTx(struct vnt_private *priv)
 {
 	unsigned int uu;
 	struct vnt_tx_desc *pCurrTD;
-- 
2.17.1


