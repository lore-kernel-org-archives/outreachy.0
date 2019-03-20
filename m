X-GM-THRID: 6670461780604485632
X-Received: by 2002:a67:fa8e:: with SMTP id f14mr16374089vsq.28.1553087909727;
        Wed, 20 Mar 2019 06:18:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls360686vke.0.gmail; Wed, 20 Mar
 2019 06:18:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjpxMW2BPqqFVJEW8kUhtQkPat0w20lO/oi+Act2Eo5svzT8gu4qGVEkS+gMWtCWvP9JmX
X-Received: by 2002:a1f:cc02:: with SMTP id c2mr16274143vkg.21.1553087909082;
        Wed, 20 Mar 2019 06:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553087909; cv=none;
        d=google.com; s=arc-20160816;
        b=vWzeOMfR0lFIRwCyb8ySV1k4fNY11W7f9FhBSSDfGtOz5XGsErvNzK41c+BZpp2Ha4
         p4AA72P4PxjUi/SMrA/9iuHC39vlXbdDA6tzPtac9500kZ75X6vfG+Hkn6xv9EP7ni6B
         y9ZIU+9CZII9GUmAtqMThovFKGhbNlRGtjjJPGasCoKXuJKGrcfxAb5pQnCdXBX7Lj5X
         WsBcTy2haBfchBI9Flf7vYAbYznzvjXi14dULu8hoFijXw8vZMkrVsUvqSXZoUjywlnw
         LfvNyylyh3mkNocKBWPHX0ZBGfWVs/Tgp580vmz6Et++qcQuvoNCFz0NtmNqko9WGYqR
         Javg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gTsnzcnN9hIUYZwCSdvk6yFuAotcpZvDc3COtjoPanQ=;
        b=yarsEJdfKS/z/NB86mu4vhVANiUNsO036iDuNiLvDBI/Crc64hNk05GFcUxLaUFel5
         H5rPj0wAmr54BnAtdoxfqEONQi9fhaimW8UsyGEt4ymUljVUwm4z1/SEejMUWnHXL52C
         tk7TXWg/UVInWludJR5Q1NH6gz5y9Gzqd4lt03M/Dd0SxptPpuDPUWlkPoSYZvOQTV04
         G3tP9C4lQ43YJpVFGaB/Agnty2QiqdjQKTrV9sX/NTYKkKjPyCGjOzmtAlbVw5r/f6RJ
         KIx61JTx5Udv4xBEVYrKAX2AXZZ3Mmv6mzvxnEXtNw+pwNdk6ji92pgqP1bZBcgSxapT
         qAsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IcRrnV7Y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id x82si118920vkd.1.2019.03.20.06.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IcRrnV7Y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id l11so1777736pgq.10
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gTsnzcnN9hIUYZwCSdvk6yFuAotcpZvDc3COtjoPanQ=;
        b=IcRrnV7YvDqO8IOcsiAI2Orf7arekf2FcuNALi2wDTIfd9SgHwx05yWDwnMxC1N9RD
         5jHK0nNYUGFw7GFjCzdId4kDuCCQPge1bC7KM9nKjID3zWs0OyyCT4LzC5IryRmS+tGS
         NIAHT4J2yZSS0M8lidAyqIELMIlhe/R0XMJ1Ke1K2qfYrK+k9qcp9ywZTgAUAFkeggQt
         JNoBJ7sv8RHQLDmdAUYeQ5KJUN9QXGZrJp552XvnvsLhP25skB1bRdQ8HRkbl3qFnLs4
         jT/sEcSCTHj+97fsJxN0rHBy5D1+9llOQ9zOhiFCMHirQe9gKbaXAsHAz1mOO/j5gzHn
         7M9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gTsnzcnN9hIUYZwCSdvk6yFuAotcpZvDc3COtjoPanQ=;
        b=WiOo1RrSKbnjgyGG+2MhmuhhE9pcpzDxZnPRCs31if+SF5IJgArt/ivmgyZNgAihCO
         gBHI5fbWGBfdGh1wChaGxP6VqCoWsvp7ap6vp3OX2gY8KJGbhC81rTal22xeS8z8iU4a
         GtjR8T0pEhUPDTq1P3Ms1zML/qUhGBzoA0q+wDvT/BfZo6IlaraMWAnRr0ZxvF1S8Lp/
         cPyQWYKuyX9esCQm+lTdw/7g7BB0ckIwUuhjSogOcS4FWR3cjKzjh3QfeltPR6Q4oGnP
         kPvZnAG9pd/F65KigsnEHh6FgsVuRNMHxf5GZScfVZqy5F4jjTn0f/ChBWCO7uDZlDfT
         KZ0g==
X-Gm-Message-State: APjAAAV7Pk5++tZaF/HoxA+YTph80jl4lF7X8Q4oi9MMrVuY/Hw2B4HH
	sssI0MMr9xy4m1dVvW36gyZxDZ0V+ww=
X-Received: by 2002:a63:f146:: with SMTP id o6mr7645723pgk.360.1553087908706;
        Wed, 20 Mar 2019 06:18:28 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.24])
        by smtp.googlemail.com with ESMTPSA id d11sm5716065pfh.29.2019.03.20.06.18.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:18:27 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: r8192U_dm: Remove unnecessary comments.
Date: Wed, 20 Mar 2019 18:48:18 +0530
Message-Id: <20190320131818.8854-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove comments which are not necessary.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 546bf5428848..2ba01041406b 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -43,17 +43,8 @@ u8		dm_shadow[16][256] = { {0} };
 /* For Dynamic Rx Path Selection by Signal Strength */
 static struct dynamic_rx_path_sel DM_RxPathSelTable;
 
-/*------------------------Define global variable-----------------------------*/
-
-/*------------------------Define local variable------------------------------*/
-/*------------------------Define local variable------------------------------*/
-
-/*--------------------Define export function prototype-----------------------*/
 extern	void dm_check_fsync(struct net_device *dev);
 
-/*--------------------Define export function prototype-----------------------*/
-
-/*---------------------Define local function prototype-----------------------*/
 /* DM --> Rate Adaptive */
 static	void	dm_check_rate_adaptive(struct net_device *dev);
 
-- 
2.17.1


