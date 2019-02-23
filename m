X-GM-THRID: 6661107741495394304
X-Received: by 2002:a02:b807:: with SMTP id o7mr1401196jam.23.1550910006635;
        Sat, 23 Feb 2019 00:20:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls2503691itb.1.canary-gmail; Sat,
 23 Feb 2019 00:20:06 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaXtqBOleFmRiNEWMCUkgDGKdRDMYKTWXW4+ObP1qIqLQQ0hfGkUcJaaSD5qSpnMyA4hb2J
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr1417171ita.33.1550910005996;
        Sat, 23 Feb 2019 00:20:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550910005; cv=none;
        d=google.com; s=arc-20160816;
        b=OI/kkVYxSJtImGNiMl6nhWvH0eiA2bJw6v5smoZigUVnOPEgC8wKWd8ZB0UKAZ39oD
         tO8B2WFZOCjnhmaz8C6cII2ZVVyRWYb71z/Shit6mlybgmz97Mr6NIWwKQf4gJMPQvZj
         AmK5kLBiAS5fInK0HH5YXx4yGufhkZ7OZ7Zfc1pKscbog6QlCnI2+MMcBTPePilHMYbX
         Pgb8rwTESUZYHfW8ZyKLjFT69MNNw2vV/QahR1o5lU1L9X8eiihJsPzI50dZVNToDN16
         pm5uiTxJACSkzVSMS+BtbDB5mMAsco3u//nTvIBEFe2PDhsyF7InaoSxushNck2V4ppP
         NOMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=OP+DzXKxX7z9b/98voKPMQboooYSbT12rQNbbHWJvUI=;
        b=NDjy9O7wxWgj/4V94m20htQMOVcIPj9hBEzJKVK4OgnQDHM5uQtfIO2HQKQ2pIOVbM
         4U06DSiqgwzZ+36NNEMpeijE1816BGecInjS9uTYkyMamNSpDWrTC9sEGQN6TnhoFr6M
         xmlGLc8EYOZUANbF1JZrzitXdDgevxZq++9VSQqn+7kjVnsY+yZU2DApjb+1mwjyZc1g
         TO78siWKkI3houuaD4mR/R8lwI5giSCMdHjcVR7oldVEhZT3hJGemccQ0AQc/VGfJxdj
         YbvPFNY3SreTuQ+UEuCkPHGBuWmNg4Agp6G7Cn6EMB8H9IaXsUqedpJ6xgnNl8ly3E2K
         SMww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZM5WRgO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id x22si171438ita.0.2019.02.23.00.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZM5WRgO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id q17so2156098pfh.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 00:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OP+DzXKxX7z9b/98voKPMQboooYSbT12rQNbbHWJvUI=;
        b=HZM5WRgOG8hWDhRZv1KnM009f0PeCK/wX4Q/FLC6FuiqJ5bR4ksfOrUTFttxzPANsP
         K/sEVDukF1kY4BqrsyMsUC0kN9isHpxxyd8W8mEMKrSpRLgxxy4ZeiUQGxfgGOgUIrCU
         Obg2uaH46YhJaiLjZdxTuchGWSl1PAHGUaz17Sv98dLtSPa1n+V6KukwXOGQ2JGd+gpz
         jQ1mng01ahkPfDjmmzUjDAxC8R7X+Pk82bRfN42wedzTZ80yBo5G5nDPczpqW4gjU9iw
         7ZxvnzcwjqDlyfI83JzscKvgTzo85uexq86ihxHGACB6F69kFSdNUztC+xKs/zRdxGA4
         3fhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OP+DzXKxX7z9b/98voKPMQboooYSbT12rQNbbHWJvUI=;
        b=s++xrGjvK/7TK7IrNKPcIbYMpLsGLy2UTGjWVpUvXlFXunkOi2JOcrLGYAMPRa5i2A
         eZEsAomJXIkkN+X2vk4Giy2nphbVBHCloyeHxn/y57jAqW8/khbIoJi3ePujHaGTxZBz
         SbUc8j32/biXW4QyEKbYm4StWLUVU4usXws0uNB24Ehj6/aWoGKqMPrxsN2FczOL1wja
         rQNblM5dXE3ITanqW12laAKifLnboZ+2qo+9UbYG+b02aK+UYDl3aF7NRWqS7eu//Vly
         vvSIqQBWgFmbELfK3XDI3dbOLYa/4Hq4+3fWV+2Z4wAdp+ODwgVEVondFARUAHOQKR0/
         PJdw==
X-Gm-Message-State: AHQUAuYJMqZgATPEBPgVUd2HX+rAA5ddNPEIfyioSo7YeLc+BqLZBAim
	JfZsrAVbJkNYLCzI6Jyaf4OedqaQc5I=
X-Received: by 2002:a65:508c:: with SMTP id r12mr7743180pgp.247.1550910005483;
        Sat, 23 Feb 2019 00:20:05 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id z127sm7909280pfb.80.2019.02.23.00.20.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:05 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/2] Staging: mt7621_dma: Prefer unsigned int over just unsigned
Date: Sat, 23 Feb 2019 13:49:41 +0530
Message-Id: <20190223081941.9629-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223081941.9629-1-bhanusreemahesh@gmail.com>
References: <20190223081941.9629-1-bhanusreemahesh@gmail.com>

Fixes checkpatch.pl warning:
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 54bf89e2f629..fa7631cfbb78 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
 }
 
 static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
-				   unsigned reg, u32 val)
+				   unsigned int reg, u32 val)
 {
 	writel(val, hsdma->base + reg);
 }
-- 
2.17.1


