X-GM-THRID: 6337544242768904192
X-Received: by 10.66.101.164 with SMTP id fh4mr2055535pab.121.1475700547778;
        Wed, 05 Oct 2016 13:49:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.116.130 with SMTP id o124ls606392itc.5.gmail; Wed, 05 Oct
 2016 13:49:03 -0700 (PDT)
X-Received: by 10.36.28.82 with SMTP id c79mr4867114itc.29.1475700543656;
        Wed, 05 Oct 2016 13:49:03 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si1259846vkf.1.2016.10.05.13.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id z126so9175724vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 05 Oct 2016 13:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=R8NYLuTDS2ZnGOug7e+TePKpfPV95/8Z6QNHqZybqr0=;
        b=LMjLShaGqjvP+bHmCbcKDCoY4vWGjerdBhu3f2DA51UZTEni7/40mZQU5DAPY1aPOP
         1R8FPi/BQB5Gx8bIWaKnSTj63hy2neyvB32bSLLiYbRNuBFudtk57Nd5VtzMbDY69cYI
         yITR/M3EI8dwETzOaAXCzN7xlr8AaegEfjdYPh5ULbFZU9HXrBd6LdD8AaMIYQEtG7sR
         HpNz9d6czgn56eh0BxAsh5Wh3I/os/eeHDDGDiT7N7smt1dY/p3/khGkFjvQoJOXgV4z
         dEcTqXy+wldhpeudbUypvw0epGaCO8Uil/UhQNcwA01piSUWr41S/MsRQxzVDYrCbucd
         4FsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=R8NYLuTDS2ZnGOug7e+TePKpfPV95/8Z6QNHqZybqr0=;
        b=fwmu3hHfnbWF6DHF4qF5i00yokq9DKOKxJynWdtcygas+H0cOR7SSes3cN3QAikffe
         ia7+XJZ9VmbOuyfypmU4gK84uKF44b3yctYmZx/ZbmxSFKleat0Bbw5TVBvFeWxB26wX
         s/rbIuGN8UwTq5zN2/0DURQhYbvuUP4pBtjfln4zIToIvNMrwF+++ygUR+hoXmuUCC+x
         utzGppPwFbVhCca3WTW73zAeX+3AFFKsa8X7S5qzaljowLOONGFG00lTAbfYOzzKOtg1
         QEqbdrvt6c53DvBGiRuAuTeUSLZYk++Tnza3pA2D/5FEyeOIIJMsibhyeSh8tr6k4EBm
         fIeA==
X-Gm-Message-State: AA6/9RlDnDUG7HdF87uz+PYMzLNCpE9rBQ3qe6jm1hG1JEZ4Xm+HrZgM/XOTdyekyqPXlg==
X-Received: by 10.31.223.1 with SMTP id w1mr8343490vkg.34.1475700543506;
        Wed, 05 Oct 2016 13:49:03 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id y133sm3631596vkc.1.2016.10.05.13.49.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:49:03 -0700 (PDT)
Date: Wed, 5 Oct 2016 17:48:59 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: ks7010: Add blank line after variable
 declarations.
Message-ID: <20161005204859.GA8628@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch WARNING: Missing a blank line after declarations.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 81c46f4..db5e632 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1117,6 +1117,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 	int ret;
 	struct ks_sdio_card *card;
 	struct ks_wlan_private *priv;
+
 	DPRINTK(1, "ks7010_sdio_remove()\n");
 
 	card = sdio_get_drvdata(func);
-- 
2.7.4


