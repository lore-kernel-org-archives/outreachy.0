X-GM-THRID: 6754500769734459392
X-Received: by 2002:ab0:2716:: with SMTP id s22mr7160481uao.86.1572654761723;
        Fri, 01 Nov 2019 17:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3117:: with SMTP id m23ls123993uab.0.gmail; Fri, 01 Nov
 2019 17:32:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG1I/wcFKtW38Ee1G2Xwo/JYTlZwUudCeDSorcsKNANxrKW0k0bZKhr4A8aFmdFUdMD2HY
X-Received: by 2002:ab0:7144:: with SMTP id k4mr4691315uao.91.1572654760605;
        Fri, 01 Nov 2019 17:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572654760; cv=none;
        d=google.com; s=arc-20160816;
        b=b/gt66vLLBJLdvheiamK7ow4R3yQBgFEcEpR9HuuEIoPddw8KXuU89dDtOS6JNekRE
         N5vFW8NWLJVZl6u77KgG8+reWtcGYkZ6k5cmG7M3Nh92sJWEhEoASq4AhPmCA0jezXjQ
         Hhg/d/5FQKSh7a1RO9/dEm2V/UyHCQVEHV4fKrZ+I+z84S9INuwkpqz3Z2stWBfDUONw
         KfJvlohzcOl0r6S0azzR26Mpy3k0JSpj9P2MeYCJbRq2tcTyVpci1dvu6zmMAm1TVdU6
         vyImN42kt88hs8hY44+E8D22C3Bl6M50X5dMpA5MtJSW+I7k6T5whCi0msW9c+aIsI2v
         oxzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=FqHXfiMCja0JHLDq1vsOilvh3NkVMy0YcdN2dg+nqj9lkx2iKZItV4qInatO7HwSCL
         UgaqowHx32iv4bq0ZoZZGpJAGDncICQbwjNO4iGT7IKo7zuuJ1QwZ/GYWTAB4orJ+tvk
         Piz0L2E21VAYk+eXuOXGUCGylvxcQup0IkK3QMN2uU7fqBPR+KXAb+C+UT5dATZUIdPi
         Q3gUPndh75focewpphRlQNv6IGvKd81+nvD3yoH0u1qCWKrCJ25ZyqyIqnTzykdE7Hxu
         A+DXD7XZb/SqT1QnMwsaO1rGqaCx+DG7ehp/+fdTB6HXDcqfXj4U0ccPfhKeKrYUWknZ
         kmHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ArNH/2ly";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s197si507665vkd.5.2019.11.01.17.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ArNH/2ly";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c13so8107509pfp.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=ArNH/2lyJm2jSeAgusr8g6F1kQjnt1e2r6on1QzXuOqOgorAY8DHiaxQonMltwcz/G
         a5pDE74DfKTrnz75EX2G8c8y1PhtG559SggRCtU2cJULjZtjXbt5C0acng+rFsWuI1Gj
         G489dxKyoxS3IvYai5x9loTKO9dLNFo8AlCJdXte2ab4i+ET0oE/hMbIz2utD46idxg9
         DthmUslktYO7vB8wrxSRYq84pEqcoF6tZKAJ7ZdnXKjPbBnrfRZd0xrnX2tFbVy2x+Jq
         9qDWh+zG7tptAXL+FDy67sC2/n2wPHdVld7lTs9M1eWeX7gV0wa9SgCkiId0PyXJwy+J
         zExw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=uWgs1pZof1b9PK4T41gFvmWpo109O5QEoEfXpyHWFn0ELX/nUaPjBxlKiLbKo6HmEu
         U+6GQg+iho7TXBh9htUlqLd0dMXoRweeQsxT9uqf3ZIa5j1TPNp5N2Q36b/FR/GkVZ2k
         M/A588v9idP0eRsO7pLGSGdyEzCmxyKvA2PxAbPfbzyT3OVlckLhKgUQlSGtKNDb2kVR
         ASZX0w6bfYRnPRcEh+ZS5vevKM0lgK4tu4HEACjB0ft9hlglIt1k9pRSYJJDiFYyrRwo
         gOGjhMzltjBtE5lHblcNiGqO9Z/vzXMCECicycMHmDO/At0+4s7yFd0k+V/3WGVWo2Iz
         JRJQ==
X-Gm-Message-State: APjAAAVo1M2xfDWNaqkqbBdleJVlaBRqy/rOu5SUSnSnGB77irh7/q5z
	DrDJytCcrOtW725Edys3dx4UQlcIQjk=
X-Received: by 2002:a63:f704:: with SMTP id x4mr16113577pgh.336.1572654759732;
        Fri, 01 Nov 2019 17:32:39 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id q185sm12418918pfc.153.2019.11.01.17.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:32:38 -0700 (PDT)
Date: Fri, 1 Nov 2019 19:32:36 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary conditional block
Message-ID: <20191102003236.hjetw3qdulk7skrg@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch removes a conditional block that had no effect.
It also reformat the affected lines to set the right indentation
after the removal.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 0f5dd4629e6f..b4b535c66bae 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,13 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	/*  2010.04.27 hpfan */
+	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
+	/*  Timeout value is calculated by 34 / (2^n) */
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
+	/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
+	/*  TX/RX Balance */
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.20.1


