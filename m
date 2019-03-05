X-GM-THRID: 6663618170330284032
X-Received: by 2002:a17:902:b70a:: with SMTP id d10mr6953072pls.53.1551745462525;
        Mon, 04 Mar 2019 16:24:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1f03:: with SMTP id f3ls7389017pff.2.gmail; Mon, 04 Mar
 2019 16:24:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqzWrsK9frL8Sd34XtCvP3ZRu11jc4sAVL9LNUsJzPCd5V1p+V+6E9ZZ3Fh7tncrh7byXQF3
X-Received: by 2002:a63:f95b:: with SMTP id q27mr8147965pgk.18.1551745461869;
        Mon, 04 Mar 2019 16:24:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745461; cv=none;
        d=google.com; s=arc-20160816;
        b=J8cY+SbkHxp6JMT06E72GOFoWC5LH41NEdtYoiZSoBxj+rD3n9JiWc/51sEd7J7PuS
         NzyRFWCi6cqU64HlKgSNd/wASk7mc6PzctAT2S45PfnLsYMFRDsuM09FSZL7cv+4KwFA
         wxSloEsmy2CHVXAbjOaLgyHOUHOyKAWYBvo3PiWBn18Butv47zUGBsntd0g8bTtPD197
         SEYOL3aN5h/iD18BY9L55Laa67kLhFcC64rxPgHkTU7wQL8lXP1ic+7i/POeTb5lWeGY
         nofUUm50/urb/YgCWe4psr9buBjdxNLPVohM86yf1tm+ltB4DmtaNCBVVXtyUtiQ8t1j
         2BEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=H7Ly9Gr5F5v4q5IZFCbdOIrR+ZbXNk/uHpmROS6kSYuTa1FHrLCqv8YflO4jzupAUv
         ct3x/HMR7FYVvRwdFtgQHB9si1rRTjo1G7ATiBS8LbN1BfcUKHrZrSg2Z++BUReEKYp5
         Qr7VOTO80QeA10cO9ooiEoC8UGSgnrGFllLFUUF5Cx0Z+noTi1eB9IuceXTxb5zpozXe
         jRlFKYEPqqlaFpy0A/NdFQjcRDV0qb5TEhDh55Hg8S/myxJG9Om4mjNTNkDX+EEGGFK4
         G38Y9ntvF2Fl3sY3eylxtTbc80+z9yBa3XdZCh+YW9g1jmNbb2cRMRHomC1QKBuP2vIL
         ij8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AR5JtzhO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 3si359617pfs.4.2019.03.04.16.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:21 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AR5JtzhO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id s16so5417557oih.9
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=AR5JtzhOQ9/ONboTZHbf+ZhSmCXJGlI7mcbx7bo6BfKSmBuctXV/owiQ4SlZiAzoH3
         3as+chDUu7OTfNNZZrk6Wwi6BTrhbFmfVUL1tVcH3jcFCoo+SCZp5hHQqnN08wbL9+Ra
         Pv3M64u37ko0AcA10OnGrnbG2tczUuYXAIw6bRyvovrov1VEaKu7mdnNx4xrMTERLDS8
         5JlQnhZSeA8bxGsQRTA7hz7X0/hidnRJNbiE051fhFpwohqCcyQYuRgeGNy7tDDYUMf7
         cX0kMp2yB+weXTZ81hfTOqWordYvFwbs9uRA0zPMrzrueKr1Np0yi0yPfS7opNgZFShs
         uKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=XQt00EUy03PMzDMwSTpKRJd+B9bmeAELhNZ4z3Lb0RmRCrgdEPE5LdQ3qtfpKryGO2
         a8dkZFPUVGXSFBzViTKnRP7wvvUMLY9V2EmpUBw8kOfqIAeQNANvq49MHhB0EiUBYFvI
         9R/8lgu0lndJ9wYtMYJD7pU+/9rFxOFlbODJr7F/Y7LsUmh1Zooeq2KDyB836xEkZmy5
         m7W8QRr9rbwPzXGHPd5BNZ8Tggx11TxzUy3YNAes4n6iU0pEFwgGsH4jkHH9Wjj53Jwm
         iBtK7rODrVmZBxws90tKLa/jxRfFmEk7d8YRSdFcw+s06Nw9Uzu02E1NgWyMZK3T/WS5
         CzKQ==
X-Gm-Message-State: APjAAAVX3q3IkNBKuVD0x2Tz4ADQvzxTHboUNK6lNUlfkKAeP4/GkIkR
	rqzp0bbo0GTnBmNvbN406y2w0H3lUyk=
X-Received: by 2002:aca:33d5:: with SMTP id z204mr13051593oiz.61.1551745461124;
        Mon, 04 Mar 2019 16:24:21 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id y137sm3099897oia.9.2019.03.04.16.24.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:20 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 3/5] Staging: vt6655: Fix warning about preprocessor conditionals
Date: Mon,  4 Mar 2019 18:24:01 -0600
Message-Id: <478765abb9c231a9eda7ccf35e243017f074bae7.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>

Fix the warning by removing code between #if and #endif, as coding style
say the compiler will constant-fold the conditional away and include or
exclude the block of code as with an endif.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/power.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index d6c581b31569..c2a7c120a94d 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -64,7 +64,6 @@ PSvEnablePowerSaving(
 	} else {
 		/* set ATIM Window */
 #if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
 #endif
 	}
 	/* Set AutoSleep */
-- 
2.17.1


