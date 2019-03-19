X-GM-THRID: 6670105232964321280
X-Received: by 2002:a24:df45:: with SMTP id r66mr2127138itg.21.1553005185189;
        Tue, 19 Mar 2019 07:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls956014itk.4.canary-gmail; Tue,
 19 Mar 2019 07:19:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzvvUplVzCB3QxsMRAsL/mH3zm0x9Eeu6S2sJ8S+IOSVLuevL7ZW19GdaOKHogfjevyQyzO
X-Received: by 2002:a24:4503:: with SMTP id y3mr2137827ita.32.1553005183249;
        Tue, 19 Mar 2019 07:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005183; cv=none;
        d=google.com; s=arc-20160816;
        b=NK2psfO1gDmHMmb/jM/zBGMzd6b3+G4Dga+P6TnGkxqSm/9tnMVoPdilyn0oexMyHY
         oBInIsL6VMOHS5b86ymT8ScuW9CooQgHZMqTx0C8Mcr74BGNH2KRtACROZ4GmbZJCK/c
         CGjYLzhqiinOwU1ngJ49gkevhpL/ncIleTM501y3MFpZKbetAD8Apjtt7DIzyV4aZeK+
         dJ08igXdWIfgVgpZ0CZ07+J327kfrto8K/UI+bzGBdNaIAVBLH3anuAFQ1H5aA3SpJ2i
         FUBFlWsSPC+JdeqS+WxOhluawQGlXPe77U6BABDPU8CtAmJceHeeP3zM9wJLY5Jh4vJu
         QQwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zC+6O0GsOs9aQr08wqUwGB8myvpnUq1UKevFlCWdNPc=;
        b=dgapYP0u0Xky/jBlIBCiA1bY61vingfvpNgZpV+USj4fK7nSKyAGfs8RXvHHLun/HS
         R10JP6fgcBnJPLbv/Kqs0ZoCZtfMB9nBOGaOcd0AX7gtZ1EBVIoGuBf9oi43Ox70JfHL
         bD0C71MGF8jotU7WEFrkGPkbKk2TtT0Lw0MppxQI2N9p1sTlM4aXaR2aPVNlZ/mD/umu
         mjz/Z90dUH3KDa+PvW0eJuYpK7BHNC/yG5f2Mf617h05427/lCIrSA8lOAoZ4mK6xqIA
         15dRuzTiJ2VkVvpmHO38mIGMAWGpNiT+uU7cfMSdRYQGhBMhcGwAvb7SBK0hdLkWYvBS
         40XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KkCowYm5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n194si91440itb.2.2019.03.19.07.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KkCowYm5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v64so13805721pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zC+6O0GsOs9aQr08wqUwGB8myvpnUq1UKevFlCWdNPc=;
        b=KkCowYm52qx3/Y5LawgOixqTCVZlGtXMYa14TxNubW+C0OEavH7CX5l/iRQXT/9CzD
         +eWLcHP+hl44RPv2pzcxQg/mU7674ElHj5lWTNbFCZJtunC7GCAiLVn3q+TA7nPdT/Mf
         suHa5GfScSNzZ9xmGWg0Y0vlNggTmE1fIE4OqyC/P9HHtQo2rA3w5MvbI9BuYowzmaOH
         tfHLdylMvCCAFoAQQpixMk7x05O3Dhk4bBLWD9qVLbNgppY7lAh8mq/H5VV3HlZYRsOi
         01oIKoPU329gqwuK43af/1dImsnpQbZsiYySvsjdf1pJ6RgE7/K+HBnW52XZ1ucb3zv6
         +mbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zC+6O0GsOs9aQr08wqUwGB8myvpnUq1UKevFlCWdNPc=;
        b=cfKyGBdYOtAe2iXdrHV3oRQ03mLmjtFb3HlMiiv0fIgFDXipMGKBVOgqwqfMTyqEHu
         ecAA9joAoAtZWDjCL3pU67nZ2WaZ+pEApjFyKcsoo12bTeP96Rl/+MfVtMEIh88JVvLu
         50Ye6ISTrlfcxd9Vi1MEEAeW/HvtAV9MCyTEPlheWsNjSUc8DA+dZyjJfVrh5sNAQ5fW
         DR+lhsGIAG/XH6vi5Ba8bvcgJ/gRIB/YtDXVLQFiGl2VWojriMyHydiRKCCxZlItfTFV
         /TvLL2Qv5P+oW1RBsPAVczlFyV6YM95WE9/ZxlWY7Zir4lIy8WqpNoTQCirtK6m9t4wp
         +GhQ==
X-Gm-Message-State: APjAAAUzeTsfRgnUB/ZID6vIzhSCLm5A9S+rpyxIr8KvOWG91pxi003I
	VjedHgsWyvaJgkbooXScejaVGrKZ
X-Received: by 2002:a63:5c60:: with SMTP id n32mr2005004pgm.139.1553005182692;
        Tue, 19 Mar 2019 07:19:42 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id x7sm26197803pgc.7.2019.03.19.07.19.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:19:41 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8192u: r8192U: Fix space issue around operators.
Date: Tue, 19 Mar 2019 19:49:28 +0530
Message-Id: <20190319141928.8651-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Add spaces around the operators.
Issue found by checkpatch.pl

CHECK: spaces preferred around that '+'
CHECK: spaces preferred around that '*'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 8279fa721c74..546bf5428848 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2933,17 +2933,17 @@ void dm_shadow_init(struct net_device *dev)
 
 	for (page = 0; page < 5; page++)
 		for (offset = 0; offset < 256; offset++) {
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 			/*DbgPrint("P-%d/O-%02x=%02x\r\n", page, offset, DM_Shadow[page][offset]);*/
 		}
 
 	for (page = 8; page < 11; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 	for (page = 12; page < 15; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 }   /* dm_shadow_init */
 
-- 
2.17.1


