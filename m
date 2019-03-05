X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:5f81:: with SMTP id g1mr12728938oti.8.1551745461947;
        Mon, 04 Mar 2019 16:24:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls3649495oib.5.gmail; Mon, 04
 Mar 2019 16:24:18 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYkuf6GSII6sfdlMl5WS0aWwzVrtyBDZtUIaluoWttNrTHeTb9UfmzOhRSRN1wggdFPh/UD
X-Received: by 2002:aca:310f:: with SMTP id x15mr13068351oix.54.1551745458686;
        Mon, 04 Mar 2019 16:24:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745458; cv=none;
        d=google.com; s=arc-20160816;
        b=ny2gvXEXPGTO1g5JZ4yLuybyqyZjkR+incSzPoLhwGbLv1Nf0GMMTuF3rnaHeuQvQP
         hfhtuGSwmMFQiiE92fU0KXmBzC0gsp1KuRF9Yesin/A4UBUQxjWQt1Q+v2O+ApR6tuLb
         pyxzvk2YuKrXJ11EIfOzPjLmMMJtlstQccs3UPQUNmF/b574hH7SwgrRA0kbZeWXMOOZ
         Wc9xHFP/NXUJ65PPekSnxK9kzHBcmrxLDIYCaY4IwZmTMj24JlHorBFLTqAkDzAzPhvu
         e6sOnmlasamfhZdshgHFVMNkauOOaaEzZaM+1mo7K7zfAO8TERyLdPfvOoF6ZZu1caTT
         iQ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=bj/gaKn0y7PNk+vXSNxSqoEeNDU4zU6M7Op+IH8SVl1R+7w9eO5uT1zPa389jHLBoJ
         z9lcnj7UFpxOInMljDqixDEb5uZ7BGHqDcngNqWuoF/Calf4wv2oNQ6rZcpMDvVSDx9b
         PWdnTrIMGqGTU361uWb9awCAXnbq4vj/kmG6iZavlhrU+REQAYJoeTofEUQCFleFR0Cx
         E8qXXiS/2QjEW9rMVk2f+21lstEI1dytuXFrjuEXcBNyOtRt0OvOglXYWzo8Mo08YE0U
         b/tUzZp92t32rjEdLuhY7ltKCWyVYwQgGbSiSrz7kbAmRAUzGCh+xZY4C9and5e/AHTy
         qmKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWO6OqUP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id l6si529752otn.5.2019.03.04.16.24.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:18 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWO6OqUP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id v62so5921773otb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=aWO6OqUPTK4tYHJOTWJCREE9Ym81H7jAKAoO2d83op8FGgWwVpspeY2574sVpJmnl2
         AZ3XzsRgcfHTbkOxWHYAijinJOlRDlEK+dDrYiMVNjK9zdPqOYTTuFnWzz+2LYma4p4z
         Vx6dt8bFnXqnAXa+zxShGUyFJAJHUcp+4qgIxw4dNzZQ5YG7TuLaOHW68hzdsNMK67fQ
         QBQbzgfEg0ThukuTfs56aYKq2wDF8mJcr0D8QCyMLxwsrScW3IeC6Kilo1KdPYxlrU4B
         dGPL9jxf47MrRB+npV3ZQ27ADU7VsOT7h9O4D/JXaQKP5Y1c2p1NEuoY3qlK1Ab4eopF
         DT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=K0FaaV5KnHdJnEjPQu8i5Ey43e/M4pQUF2pkBm542mE1Go6S0iwTaOGqDmH+XXzbWi
         7spsT2UuI53nUH6gB9u8R+aGqT1b3l9cMOE3laZbMct3gebPFBtCzPlZ3aHobpcCMj2T
         e5IaOOxcOw0n4Ttmp9LK9pWyRhVHW7nUF4rPx1pLp86gss7NcJMeuKZoKGESr6qMEs+o
         im3goPL8LciL2N/zDg0cL88Lcz0CNPBFHQwfm+mUuOzNlbe3vBP5SZaBMJbrX9oo/klD
         JcmsSLZAPDkI5SqzzbjGwsYbJZMsAiecFpbcwVZRmfxJGAC3T2cDmD0mY5mEZV8HZDti
         shng==
X-Gm-Message-State: APjAAAX4dvVnp8vadGShJGDIyiADh64Jk7hMghYPifIJ0xKa1Z+BKUNq
	ZkKoBy3Fg149dp0fcGwh9vs=
X-Received: by 2002:a9d:3de3:: with SMTP id l90mr14469281otc.306.1551745458382;
        Mon, 04 Mar 2019 16:24:18 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n187sm3037146oia.34.2019.03.04.16.24.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:17 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/5] Staging: vt6655: Fix line over 80 characters
Date: Mon,  4 Mar 2019 18:24:00 -0600
Message-Id: <08b68cdebb653b38d8e5bbe4af8f56e640325f68.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>

Fix the warning by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 6bbbbe1314d5..490cecf8fb9d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -62,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


