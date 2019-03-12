X-GM-THRID: 6667542272641335296
X-Received: by 2002:a0c:d1cd:: with SMTP id k13mr22212546qvh.40.1552413987469;
        Tue, 12 Mar 2019 11:06:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls2440124qkd.0.gmail; Tue, 12 Mar
 2019 11:06:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiU7seZ1AaxlJz7lI2P/XOgpnv1yPkZCw5IF2OXMBuw6dftznADaBrtMwqIiO8z0UCgv2g
X-Received: by 2002:a37:e10d:: with SMTP id c13mr22069282qkm.47.1552413986661;
        Tue, 12 Mar 2019 11:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552413986; cv=none;
        d=google.com; s=arc-20160816;
        b=CxKk8MgssmUlqkqtgkilgBpdElkLRUMQNx2rRQqCr4M5nHmtFvMM0r9AvDPgwf121D
         ZrGHoQXbCJOZZK+PMqT2io7PjPF36LKXBvDsG/tk7MFnimEyaFZ/S/ZyP6kv0kht63La
         2U87eNuz3P/rXRDWw7aJYLOtc9oRwPDdAy9Sq2YKdKlykGdAIScOHtpexCj2Vorhd/NT
         f4D6VbjY5XQK3j/uqru3QN6ZRhXdyXsuXd6UwpIS/+wU4w/0/GSxUlXA2cTS5seVuly1
         0jkQYTQg6yjuo85kqa6/2BoMLOpTWEJcyDMiM8iqK3VOax37f2Dxni1Xol+NAY/zlQDC
         ZVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IYZ71RkLax+5SDm2ryzV72Uii+uiK3dNIfavy40lPtY=;
        b=n5vp9JUjf4vfs9TwmL1ZISERk/NHbtuuXmyhJE1OwSeO9HePivsq4viWb00O7W2KFT
         d25cbODxwqiDX4w64ne5r5FtZz1hZHoFry2KqVjqBFZLoktELoTlrlkkuBa4AzOJNJhq
         NIsAF6iZn7i7UAYuNWS/VW9O178ua2YqECzu5fSuQ9ewDoaqvc8q0lFv1DDwz0VFicTx
         fT6vNbP28ZyZ3zDeulR2O90YMml2RhduRTTsJiglpey2P565FK68zRun43CaAdseeg7Q
         zWllZ/Tx9b+/HjGOe7z89Mc0PpI2nW6ObseeCyLNNvz0PyvVNwflvcQDHGEpJdsSeLfo
         KDhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaEN9+P0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id v2si457896qka.0.2019.03.12.11.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 11:06:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaEN9+P0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x141.google.com with SMTP id z131so5915139itf.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 11:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IYZ71RkLax+5SDm2ryzV72Uii+uiK3dNIfavy40lPtY=;
        b=YaEN9+P0DaSz4by7oDFQm0vU2nPM2Sfmn3AAdaChiJpJI/AOhKPIIKqm94a/16xiZU
         mGx/So4BqleklhUOM0gAgJlXDbSs7byAApszbPFxNyY1+UiQiJY/AZ6thA+plfehynvj
         XBDfNMqy4/KlaW9WDPWeI+Nhqogo3Mqf3h+C60lscsUXBWADm9LZIdfd3f4eJbptgeSj
         u8oG7cwkMJ1SOwHGRcLQmUCICvaHAEGtDL9UoOGOx9oddfQD8DUjrpL5Gb/Qm0P5osb0
         3quvTZ3Nv3XMX5HzHyRmxMWTTElGaVZigD96OfsKebEmeUFn3vWK+8ka22bQOJONfzZa
         OFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IYZ71RkLax+5SDm2ryzV72Uii+uiK3dNIfavy40lPtY=;
        b=C/mjauH9+a6DyJ19htT+NlRw+QpsY3sZzoUOGkMqf0X4FAx30l+j3w58X0SqCCs5RB
         yDtp8mb+AqdiI15WBtfbfx5MbPVmO+ol7os3tT0+5/LBKO/7CgBj8OJv3vIvbRzIRvWu
         vlgm7xchostGtM+QuRHtBLLXNx5OOZcEKOXvnEN+MVicROCCrhpMyt4T28wv/l1DQEYB
         2QcuqBTzLqfgTKZRVzQ8oICLzNjKslTF4azROUUxE9TINPDizEuGTFm25qCsMeLn2+rk
         LJFCSDFG24dUhVfENMlH0UenVnR6/UwgSCmkgZu/SJpReI+VMjG+wbPbVKsBzdA5A/sL
         6Jvg==
X-Gm-Message-State: APjAAAWubeuEa3R8b9g0rRSeyGdzQpcrm5mLg67JBrEeR/Iz+jDkVnRC
	roiqi3hi2lr0uzeuuBjrVi91VPIA5VAb
X-Received: by 2002:a24:50d4:: with SMTP id m203mr2872383itb.28.1552413985966;
        Tue, 12 Mar 2019 11:06:25 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:79ab:d48e:7983:368a])
        by smtp.gmail.com with ESMTPSA id l11sm4087266ion.52.2019.03.12.11.06.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 11:06:25 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org,
	matthias.bgg@gmail.com
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: mt7621-pci: IF statement expression comparing to NULL
Date: Tue, 12 Mar 2019 14:06:15 -0400
Message-Id: <20190312180615.5382-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190312162910.4653-1-brandonbonaby94@gmail.com>
References: <20190312162910.4653-1-brandonbonaby94@gmail.com>

Remove comparison to NULL in the if statement expression
to match the Linux Kernel coding style.
CHECK: Comparison to NULL could be written "res"

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
Changes in v2
	sent email commit to correct driver maintainers

drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 379ae780c691..03d919a94552 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -275,7 +275,7 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 			break;
 		}
 
-		if (res != NULL)
+		if (res)
 			of_pci_range_to_resource(&range, node, res);
 	}
 
-- 
2.17.1


