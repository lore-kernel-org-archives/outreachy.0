X-GM-THRID: 6662414152906047488
X-Received: by 2002:a25:c04c:: with SMTP id c73mr9830804ybf.80.1551214175690;
        Tue, 26 Feb 2019 12:49:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1f57:: with SMTP id f84ls558549ywf.1.gmail; Tue, 26 Feb
 2019 12:49:34 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZLbTo0tJ4wYarX2mgwzRwo8f1IRuPBFspzfZfdBpupsFgBWegUS90fbVMKH0SyPckeMIsd
X-Received: by 2002:a81:3cd7:: with SMTP id j206mr8522944ywa.11.1551214174732;
        Tue, 26 Feb 2019 12:49:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551214174; cv=none;
        d=google.com; s=arc-20160816;
        b=FeaLnbMSgODtayOr+O0hNMIJx2lNb8fx6rVUf1wZrSZD7Yg3R/67JnYNcrIR0h2VoM
         AgFfQUUtOMwlSytP4wlKbYN6LeKSntC32CcDf8PIR6YmB2Lvn9EZxiRiftRs+jfX9bIB
         JKNc9rGNFaNuvG0uAlKCYUlsH0xbwyhPZEdOYK3jcyVdyzsHyemMBpxG9sDzcJ4cvM1E
         p/fuGJzzdM/AJ1V7XLIeLsfcfWdGRQUzarhphGZnMQ8FOkJR8IjhcoPaMoqVnK5YCCHL
         p9hpokYq3je9fDZD+BFU3i4ZZzJIT+0n8Wlkr+IRLREuhmlKDhk1ShSy6/9uIlw2SRtr
         +ZlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=n3EE+3GBKfz3pjzVCe/2NDmvoMXtrL4SGE6ZG39T/ik=;
        b=lwLWII1kW07HkmTHccJNjL71hcBX4M1XJC5AStDy+hYOtv4jtkLJnLwuWInHrZNf0A
         jjDxyK4NSyRKlj33R+MZa9QFJWRRoegCei0nK6hN/6Vnmr3UA8gYREA4A9qLhBbybkQD
         B/HocxKFImTFbj+0abigtwZxauMoBJhXz8qe/KOn6KeuG7X1f5dMa3VeKaHVm3Jt8bij
         R5dVC3TYV2Ma9xT0wYMboZcMGWy+YGFbvcMDr6ofCcgc0ylaIXEwYo0J6Hihql5ulbAR
         YGSGMHz1kaDDA5pb/AcxxbFOcfhnbJyUQ2GblB+Oojb6ozfISCi/BWlhMNoE9A49nDHn
         ZBww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MKx8sMfp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x187si557868ybc.5.2019.02.26.12.49.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 12:49:34 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MKx8sMfp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id 98so12399704oty.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 12:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=n3EE+3GBKfz3pjzVCe/2NDmvoMXtrL4SGE6ZG39T/ik=;
        b=MKx8sMfp+L1lYDIZEfgz/BVOT0/An3+1q0Y3uGFilSnVwhpjbZpc+lk/Ur9P/pn7BO
         vdE0Th3MM6RqEOhnpcE/AlZxZ+OuHNrK1YDJRaQwQ0pEIV/cG3tJ/lKvBvuleW/XmJXX
         X+Lv0Lhh/JR/pzNu9xuQtHkQqcbAbfAgmfAh6MdYRGg3qXfqC6y+ZXslihFvOHUbjNLY
         ArPnr/u9UorfGKp16lE8Cx1JF9zOObHpyBpgEQUocdxE6aErlVW7GnpCHgKyZ7Q8Yc6k
         OFML6jqmgzwvXCg1iU02d+/b3/+ydpDLY9CHMJXPgL5wBSRDA6zRmWtsAEO4bmAHgfj/
         8lWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=n3EE+3GBKfz3pjzVCe/2NDmvoMXtrL4SGE6ZG39T/ik=;
        b=Jp7nSV0Teg28aiieQUHHW+FuVaIqTN8XMzGsyHvEmE/CD7viX4RgOIc+3eLqqJCb+l
         bpi16bocTtdEq4h/60PcqCwE6ok5XKjYxubCR71uAYdwJoqQFghc1JetZ0W0YZmVL+81
         /wMQQs/I1jP8PX6V4du7HdDMgTF/ovwgbpfD156/nxili3wv8M5n7ANNl/DVTSuksL9i
         +3J2IthQDDhROjcBFdJelcQZ+yZhY4ED1Vjpwkg78t1IkF0raaPczkgDYnrOT+KZaRLO
         iu2Bt79J5Is5yGUqJWYan5ShOg2I8pnd3xJPjn3bOMWruVDYA/HPfVvsxlsS1HKkpDhr
         Pv7A==
X-Gm-Message-State: AHQUAuaXz4WoXw8lxJLbWxTiZ7jxx4stTD/pTgBs9faCel1U87sIY1s1
	zksJlYuF2eTVxtxbgodBmOQ=
X-Received: by 2002:a9d:6748:: with SMTP id w8mr17064281otm.252.1551214174065;
        Tue, 26 Feb 2019 12:49:34 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g128sm5733771oif.56.2019.02.26.12.49.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 12:49:33 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: Alignment of function declaration
Date: Tue, 26 Feb 2019 14:49:29 -0600
Message-Id: <20190226204929.3933-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v2
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6f197dcc3b8f..8d0182f5725c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -499,8 +499,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 	return bResult;
 }
 
-void
-CARDvSafeResetTx(struct vnt_private *priv)
+void CARDvSafeResetTx(struct vnt_private *priv)
 {
 	unsigned int uu;
 	struct vnt_tx_desc *pCurrTD;
-- 
2.17.1


