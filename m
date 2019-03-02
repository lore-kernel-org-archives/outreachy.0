X-GM-THRID: 6663442013681090560
X-Received: by 2002:a2e:253:: with SMTP id 80mr500376ljc.27.1551516007382;
        Sat, 02 Mar 2019 00:40:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e16:: with SMTP id l22ls1406425lja.2.gmail; Sat, 02 Mar
 2019 00:40:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEKV612yfaIdpQ6VxznEVZPMjMhOTyVUSGvAjU4ytHhXC5KypI2ZZT+qP1iR9GT9B5CIIC
X-Received: by 2002:a2e:391d:: with SMTP id g29mr526402lja.17.1551516006351;
        Sat, 02 Mar 2019 00:40:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551516006; cv=none;
        d=google.com; s=arc-20160816;
        b=t+3bRQNWjCLanU9H6gy2X+B2QxnK9hGW8FE7swX/Q1EilZ6+bPouD//tgi82dT2NUD
         GLGt1VJiCtvBqaW0ebpZzCtHCfVvSz5/oV9Xkq+Bc6sQJxeZnJVzGXf0W1Ut2MlOtN4B
         W7mxcRRDr2iO5XbS8P0yla61ZVysrtszSFl8aVRy0EtEecKEgsgq3ls4DPYP5aFRiIgy
         nl8QPqLatbKOhruwD6GhklF5QgR8SEQUnThE19v7jWWuEwJYvmzo+iPIQpCKIVABPmRb
         ovN8kj5ax3UKiw1cTIcNo7saLAFlL/vbGhWo3+hFxxaKe9gv6TURYTLQFXcftuOntT85
         3QtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NBqdqR344ydi+yX7D9iGiZxZB7Mt06YdjALv/X9SfXw=;
        b=ZK8apBsl07WDlj2KgVrzDPS0gLe6FxQ3U7jx+cNKtZWLVwLiJEB+QWuzB17+BbYoUY
         shwYlkPTPFqSvYCAHw/S0D9db0JHAzQEVBVJB86lhouK9WlHuNBgMKUdvlEhgprVHfSs
         ePkRulLkhoxiqU9w0+2foP31EFhq2oNWEogcO06BATHPeD7kDcsTChzmw09FA3o8hSj8
         meQAHiC9CN5jPJsBmFMbWFvVYsVDWtpQeGdUharSHUPkMWR+WmQADmI9TPvJ6WytmgzK
         WQJWK8XcJd1EV7UQ2zq+vk50j3JoOk+MiCbo5BvjO6kIMrKzhH0b6VCi3OtUTemwrNdd
         YHbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBCLqLWi;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v27si9971lje.0.2019.03.02.00.40.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 00:40:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBCLqLWi;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id w2so245097wrt.11
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 00:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NBqdqR344ydi+yX7D9iGiZxZB7Mt06YdjALv/X9SfXw=;
        b=XBCLqLWiuoG6XKSDCC2jRB1gIrp/pmoIbK3WocG/xMed9kEMH6gYgTTm9gNBI7thAZ
         WV+y6tGeKO6HsUpsUTjMmglGLeKGggl07/tNLm38Jy9RnDU40PfRtdGN3IMRvpVHDzmi
         mZnc5HWUVpDAB6u0UTc+hsqcSulQoLp5XwqC2hy+xYfoHno4/Qcb11tZjVAytJ2vz/Zw
         3hjaoqFva4BPRpbGWtOhddAaTyMitcppD4eiNk1OAqpVl3s8VBaLpRlHzkzFfonbZQkt
         PMgYy+Wog+AwEr/4n/vO+OxkEfr+42zz3z1CzUirUDDRtKW9guPyh0hHsieXmqtgLJG5
         0bYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NBqdqR344ydi+yX7D9iGiZxZB7Mt06YdjALv/X9SfXw=;
        b=ujggSJL89CE8EKt0LUe+wRKyVUDBH7BKXYtrp+6E/0/7VUIRxzDqQK1e32rpPP7Gg7
         BbqZU8g0jaRFp8ao3j491gKRrysNL4szjuEAdyTY7S/F5obgwioSqMuL+J1ei5Xn5ROJ
         XkXltydQs+OdtHkcj1gnOf1HWxntPNLL77oitWPrJ289bC8GJxuMvLCWZVjYXKMgv01s
         fZJU4YdwHQPNGeUtLqsszCHmFLSlCxNd1hFCf94oC0C/sLEdiBTevICMd2PdbJII4j0/
         U9kLRjEZMpYlml1HSilABAp8lMxJs0GIt2EbHeHQ8yv2OooT2so/ezxjZ6Cti4i4eST+
         Jq2g==
X-Gm-Message-State: APjAAAVBPNVY0MKFfMBy0KyMU/4ZgjLJi16E6oFMNckbUCBqfcSy2L/h
	dQ+qqesQ2jFW4HO2Wf6Gag==
X-Received: by 2002:adf:b784:: with SMTP id s4mr6065593wre.155.1551516005537;
        Sat, 02 Mar 2019 00:40:05 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a8sm1176332wmh.26.2019.03.02.00.40.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 00:40:05 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: mt7621-dma: remove license boilerplate text
Date: Sat,  2 Mar 2019 08:32:40 +0000
Message-Id: <20190302083240.23894-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302083240.23894-1-jbi.octave@gmail.com>
References: <20190302083240.23894-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove license boilerplate text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 7d69586f23c0..e4a522f3b448 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -2,12 +2,6 @@
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
- *
- *  This program is free software; you can redistribute it and/or modify it
- *  under  the terms of the GNU General	 Public License as published by the
- *  Free Software Foundation;  either version 2 of the License, or (at your
- *  option) any later version.
- *
  */
 
 #include <linux/dmaengine.h>
-- 
2.20.1


