X-GM-THRID: 6665870550799220736
X-Received: by 2002:a0d:cd81:: with SMTP id p123mr7462947ywd.13.1552018930215;
        Thu, 07 Mar 2019 20:22:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls2646103yba.0.gmail; Thu, 07
 Mar 2019 20:22:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqxMwdbsoG0pqbhhU//IlvG3PmKienb78rQPnWBSn/HlfzmGa/cHYjUMRH60NxH9aygr12uG
X-Received: by 2002:a25:910e:: with SMTP id v14mr8322864ybl.74.1552018929328;
        Thu, 07 Mar 2019 20:22:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552018929; cv=none;
        d=google.com; s=arc-20160816;
        b=mZUsY57V7Yf0OVHo/P4HZPbXQOYTrLw0C/KfZYieWF15WgldTdoUz9Wo8+xiOu6Q1x
         tV+mxWf/E+aDflrkqSX5Tq9gsESL1e3iI7w4iPVKzHWNtN6hcz5+4uSxWySWSB1J78aD
         FTcCb15q17URl7ax67hDTPF9Y+po3t/feT3cRacTRz6d5WMh/r+FRjJOYD5gx3awVaVg
         3jHmQVss6tdrUfkOgHqeZ45xhd8A/lvAExSrYT3aPtgjCnDDDbFu+mMnmzApCsc/SbRj
         I2AdqOHhCF+dAyvCBmvichPRHcPMwGcULFwCMnIAKOnSR3VjfS50cA4bRfO1yy22Ttoj
         QjbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=JnGo/exndgJbUHpDasCwryb3f2En7Mf4VJgha7pRZytal+lsGRjK1ZF7ecx7vgQJcG
         MStjC0Xy0Grbr8ZX9hGLaU2ymc7NNgA64vlW4ycyWQFigCFDU2a2iuC80aOOwShYCZXd
         8ImdyZWubJHpN3KZpw20eZfup5OInhxYXW3K0pLnmz/eeQzF4+UU6c/OrRI/FGjDSjGe
         rGQy9zMu1GRPHOJSk6hjx6VT8zexi5EP/QHgPxKjCqAUXgCTIiUZ2zqhBJfyu9kaXxRl
         qxOWzaR2/f4Wbhn9YXIFBg0Ex6wEBhjJnmP+r0PPg3NlN5MEsGA5vX2NfXmgDlGfsW+I
         MllA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ho1UAWH/";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id 62si342599ybf.2.2019.03.07.20.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 20:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ho1UAWH/";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id q206so13065274pgq.4
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 20:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=ho1UAWH/Ax29jvrmR9b0Ts5UES7k5ADJ0oSDGHphfydeFXDNaMQtwweWU8gxaFs/tn
         dnaTpHoySRd6Spy+S1x7Y1B1k+aBw4gRa3JYJPqTUEo9tvx807bCuiWn4LOl41eL1WqQ
         wgJ4MuLaIybhwI4vAcKCxpue06ol1iT4oIZjGso/xhjSHsWyUxdNM+VxyOzQOK1/rDZu
         WBEJfSPu0XaVost2lVle/0xuzwlAbVRau0cDPQJV2phEdZCX1RhF4QsFTBU63D9B5dzi
         N+xsUHjDyz63xbtmh7lCiAl2biMiOMDy/+kayEsGPtRimG44U2ML4IrfZf41gNKDa5EX
         pIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=PzkfxclAn94/nUx+FmR/+T+vb08w5jxVm8ea7bfGHVQt5i7RiDHHneR223aTEd8mKw
         f78Ug5v5YPkzoVtN2guq7Gpzbr1H54pw0tyhoULire/VdgQdrVemhplsLSixJCdcZLqs
         giiVXPWwn7UUgtiyNjnPd7AYry6CXr1fGnaC5ds7/xPYRBV2nvbn4fumMbWTWp31I1Qr
         23HvDR34jtEL6lQjD6XOPpPlcwWV5omsVERiF2Vg7rN5nRdjWM2IaORazl4aRSWD+e26
         inYbqNcHpoXd0Ntme+AkgtypKPJVICYvKEgOIVvv8UM80h+b+cb4MHb1+aOqAD6vmyIp
         yQCg==
X-Gm-Message-State: APjAAAUfR4JXq2ocTS5qA/ZKOR5bbTW1tTg569sqY5DM9gl7xOE8jw9D
	Ju64MMikBsAeJwgZI5ndRyxOthKbw00=
X-Received: by 2002:a63:234c:: with SMTP id u12mr15113010pgm.282.1552018929016;
        Thu, 07 Mar 2019 20:22:09 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([117.136.101.100])
        by smtp.gmail.com with ESMTPSA id s18sm8114095pfh.71.2019.03.07.20.22.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 20:22:07 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v3 4/4] Staging: most: dim2: Fix SPDX-License-Identifier in reg.h
Date: Thu,  7 Mar 2019 20:20:52 -0800
Message-Id: <20190308042052.1892-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix the checkpatch.pl warning in drivers/staging/most/dim2/reg.h:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/reg.h b/drivers/staging/most/dim2/reg.h
index 4343a483017e..b0f36c208a57 100644
--- a/drivers/staging/most/dim2/reg.h
+++ b/drivers/staging/most/dim2/reg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * reg.h - Definitions for registers of DIM2
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


