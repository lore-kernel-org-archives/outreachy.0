X-GM-THRID: 6747349178842611712
X-Received: by 2002:a02:ad1a:: with SMTP id s26mr32748169jan.61.1570989652117;
        Sun, 13 Oct 2019 11:00:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3b84:: with SMTP id i126ls3513812ioa.0.gmail; Sun, 13
 Oct 2019 11:00:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwiTq9WVo3hO7w3K/ps+hVPwn3/gWQx5SkRzE3l+R/Y8qf11F0hICQYharLWGOSW0tZjafB
X-Received: by 2002:a6b:8f8a:: with SMTP id r132mr32594376iod.79.1570989651077;
        Sun, 13 Oct 2019 11:00:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570989651; cv=none;
        d=google.com; s=arc-20160816;
        b=cXGTRMVrRGe9ql4Ckwdf2mU1H6oVPJ/Kc2VqcXSHh/c0cU7Drj7IyKg1sMaNfEXSBj
         ZGDhPbUYKgzEy8EjBrBFMwD//xyI0gkFsQV5tY0JWaJLkEEvZYKDnTUW9GKWZEJlLEIk
         YBINiXC/dO7ZAXm0/7lqQA92wmiNfkktN1YE4C8RZS5fxN1xGMTjCXFLGdwVBJBxWMBA
         3kqU9uldxoSOwm6FcVt7+3ElIciwV7w0LU7F1GIiyifRW+2PeSiLfiAEKZdh0Pg7Uqh/
         MzuW8OupK/DtSM12ZF6MFLhTIpBnMhVjl7aVCP/0+5utlPNtkEG8cyR4eJQK3pD21e8F
         UhRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8r79MD/BEEnSIAVQ+CzUkPVwR0O8qcg525+i9tMWUcw=;
        b=06Hn0a9bXwejHxtI0T2+eZvt3QePyUsJZZ4H9n8RgZMNdAcf9Mbe5TKLHURLJh4b6G
         LP6Pyy+k2jIVyxrj1w2eMpOAg0hfMsrYIJ6HhjuRcO8jlFlAGP244vCQLxYHkZB/fbaA
         wMRRqqVJAxzJ63k0qV1d6enpJ7qOBDNKtEZLbn5tFwC4y2/hnR83JKboo5rQqmhDnzu7
         Ieg5tNX0H2HJHaYWx8Aga4kAq/AN+53nW8r0uq5dbDJOLePu4x/g68NgzqS8U71dP5vU
         KxJFPB7bzCW4J056wdkPQegxecrgIu/HIfbVoPMBkf13955BoosVZ8bC+GrD+e6c+lGw
         KZCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tlZ+GjrJ;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x3si262161iom.2.2019.10.13.11.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:00:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tlZ+GjrJ;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id e1so8725496pgj.6
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 11:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8r79MD/BEEnSIAVQ+CzUkPVwR0O8qcg525+i9tMWUcw=;
        b=tlZ+GjrJmm+pMVXcYwCyYsBU7+nGadcNcqt0EGighjvOdyCryrYHXi5PRANAw+9tiC
         8/33P4psG2DscmaMjaRIAv7woVnKu87oCYZml8Y4R6FTbpPV0Wvrp2LP5KM+I6m9tYoq
         hMb+i8oLB01xKzyw7z+Vpgu26FiBLrvFijKzSQpp3yql8lwrhBP9v03UyNjxCiExyRGt
         RtxhkJVJZ22VSWdtArTRIoqRAhDZJHpI0P4eyc0BPHBKHyWapyK5fUfYxOEdyhwd5yZb
         bU+AfYSujv4QYuN1+SI6p5W2q8PvkZHZROJh9jccYyZaedYBj4OjdYGRllQgm0/QxZPf
         fkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8r79MD/BEEnSIAVQ+CzUkPVwR0O8qcg525+i9tMWUcw=;
        b=V4tZd87ii9xg55LqppSFeU9bTXlBPgPdO+mCmpI7FhRA5iU8dbi0Wu/64pehOlS0f7
         tfID9SyPKLbUrfCgIhQqBi+6bnLEByNPkw9yV99bLr0BiravzfMNWhh5kzPSq5B0KWOw
         SHMVN25EHK8gUkCbChOufrWXKTR6s83XqoxtRBWpVpvZVj2OOvw4+ytB+e5cJVSgGp9N
         j1hTj9uViGRbI6yfbZueTnb3IlZUnj+YQqtsdutI43EsgHE+vy4+uZsY3wzRuv23cd9q
         Stu+1e5PONUAUekFbLc6hcaZRyPnD/dx0+e3MQCAyhD3GoOcqubwngEgyPGePKonHWlR
         KdXA==
X-Gm-Message-State: APjAAAXkq/pnyddv9sCz6v+0RPJwPQHQFnBtuZsrYd4rxL25pgxDk+1c
	X4NOiHx8fYtlRrJYx7LjhF3eYq+dgecOvA==
X-Received: by 2002:a62:3387:: with SMTP id z129mr27658647pfz.253.1570989650114;
        Sun, 13 Oct 2019 11:00:50 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id s10sm29657474pgn.9.2019.10.13.11.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 11:00:49 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 21:00:33 +0300
Message-Id: <20191013180033.31882-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
to improve readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 87535a4c2e14..74312e8bb32e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4158,7 +4158,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 
 			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
 			/*  is getting the upper integer. */
-			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
+			usNavUpper = DIV_ROUND_UP(usNavUpper,
+						  HAL_NAV_UPPER_UNIT_8723B);
 			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
 		}
 		break;
-- 
2.23.0


