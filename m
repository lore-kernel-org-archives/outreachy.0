X-GM-THRID: 6743623075363815424
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr10938174qta.335.1570122101876;
        Thu, 03 Oct 2019 10:01:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9c11:: with SMTP id f17ls1249549qke.9.gmail; Thu, 03 Oct
 2019 10:01:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvQ5K5fHcdITRi3+ueUKBpcnz64znDmpCJVDREb7A+aM7Kt1YZKxcnZjy4E9XxdFyF/mET
X-Received: by 2002:ae9:f50a:: with SMTP id o10mr2760500qkg.372.1570122100433;
        Thu, 03 Oct 2019 10:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570122100; cv=none;
        d=google.com; s=arc-20160816;
        b=WdTxU1QkuwLISMaDOGmZPedTNJSJFZHXoykgef5DMMfy1yBTXxEI6lACOL+3DyL1yr
         UvAKqaIhw5XeLMacHat/LV/4cjBz0GyiqTimS1wIIzaXHwtJ6m1U0f5UUiTgqgy2hO2k
         gMfQ2o8XdPRli2VS6p1W9iK1qiOnx1PXMCAbw36jy22we/rOfWPvHt0yrH7lTk81hm43
         CG3Bl7S/tkdTDODw0stMaPamyqkG6sZoTLDULqjKzdhVnM2TnEAJFy+7dY04tGF/Gukb
         mPYqMzxfB+ZVELM9XpEOyMU/SQnbGN9js69OLNEP9bghqL4eZlOYfAxojkGgffJB2Nmd
         B9FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DepF4GINWoSn9dPxI8V8DYTHuCGOXDpSPy8VvDLqYcE=;
        b=XhULiqbSb0OAZ0xMgEk67sctPZNcV/uAL5RqRUQmhaUS+Fp/FhwqI0B68I+azKsSG4
         uWuCFcWB7HewhAt9Hfg25Nc/POICJMfd3/k77kGNvaiE7IOjRam01LAT7Oj8ZoznahJ3
         25J7sw8LlEfr9aLOXPzA9RApSjP2Jm5Iu7HRTBVC9rxhM2W+SByyp4Makx3X6yqsDMeY
         6xCzfgexMkXW/FjrX2U3G3GEHxrsM/a/ls0GW4mFDjObrFjY+zhU/a4GbIpHG9fxRmU8
         KIQSyJeyh9b4WiyobotssEtvI7SSvxW0vbw95jv8aEHI66tXn+m3QjLRFf0Ii2MX7Ans
         F1Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bynCIYkU;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id o13si132289qkj.4.2019.10.03.10.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bynCIYkU;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id m13so1272061ywa.11
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Oct 2019 10:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DepF4GINWoSn9dPxI8V8DYTHuCGOXDpSPy8VvDLqYcE=;
        b=bynCIYkUL5VNM4RenHd37dCJO65Ii6GMIujPjTEK93BwHTzGwXjoYU4q/E65eqWwxa
         QbvDAywwQirdHIzQoSb9eEwUDTi+wEEJ+EmoulqmF9zomDRAnu06qNlLSSM1tEbrVtVE
         eFyM+83T3cLHVdnYoapKfmNarmOF4IOn1YDN9mjxT0OMZmFkWtSVcai5Wv8CPwaJ1nNE
         8bH6l3p8a2Q75pOAuIc5a7JUZEyawY1IVbzoq7nSda6T0rxtGg24fGacGvVAoF8IxjNW
         /W+TMLbUrKWwT26gHS+iVgxtNrOzs2c9Ds4cw+5QbTzdxj97bEy348PvYF0v8vPb5pds
         tKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DepF4GINWoSn9dPxI8V8DYTHuCGOXDpSPy8VvDLqYcE=;
        b=CgJ1Hy1UOohnRNuph4x3oUAUz9ocTZM4gz/KH3CDffR7FUL3LEXG0/LSDXKLLNjGk/
         hZrGQ3c+M+8YZiz6x0lwRktivOU011IUagDhFCAKcqY6IQw13wOkpfZTUGGKlfqqIpCW
         Ukt5bEI73PUEjxs3jl9HG0IgOIUKrIF4B7dCTxS57pbHf8r8qxN7n8Y82bDYuPD6K80S
         cYdubHn2bJ8s1kTvZTXDtsbRzckr+x6qbXU3081lGZAPbA45sRb+Es1cizU6zmm0XdtB
         YpdHiiJRhw5an1+LCi7DxR9COpQg4a0kYf7bqTPS0gH5p0sAF1jSmi5TJw96MPzZYQuu
         0g9w==
X-Gm-Message-State: APjAAAVaR0iPBJyO19tBoo8zdTy87DLGhGfGeONaLKNxB58NhSfUSgZr
	Euwyx52vcGItexgx9LuHaXY=
X-Received: by 2002:a81:92c4:: with SMTP id j187mr7227013ywg.51.1570122100043;
        Thu, 03 Oct 2019 10:01:40 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id q2sm726758ywd.12.2019.10.03.10.01.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 03 Oct 2019 10:01:39 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: vc04_services: Avoid NULL comparison
Date: Thu,  3 Oct 2019 10:01:18 -0700
Message-Id: <1570122078-23942-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 17a4f2c..a2268d5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 		}
 	}
 
-	return (service != NULL) ? 0 : -1;
+	return (service) ? 0 : -1;
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-- 
2.7.4


