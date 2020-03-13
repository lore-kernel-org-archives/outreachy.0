X-GM-THRID: 6802694026822680576
X-Received: by 2002:aa7:ccd3:: with SMTP id y19mr12613392edt.175.1584090356939;
        Fri, 13 Mar 2020 02:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ce14:: with SMTP id y20ls5758181edi.2.gmail; Fri, 13 Mar
 2020 02:05:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuaJEGIQOq+ltg/FbyED5z3rYKMlzjnwREGW/a6L9zty4QSrq6JvXndM/WCDC0iOVoSIgah
X-Received: by 2002:a50:b061:: with SMTP id i88mr4321245edd.325.1584090355602;
        Fri, 13 Mar 2020 02:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584090355; cv=none;
        d=google.com; s=arc-20160816;
        b=qoPiu0pfxv7vTwILcNitDeRkpyjcuZGLQYCGVBXNCaeKXEc5WtRXV2pdkdYq/T/6i5
         oTYFL+5gsLTUU6IfeWPHQV9sakdYF98gm0V16RXmb5ujNDIrnJbG9Nd9TPX31Vbdl7uA
         wR7HCofyAMbGGkF0Gu0HheyiUlsGRx0gUi6GsJbo7BSs08sNiMR3XUSNTvOUmMa07SOk
         8L1d8rpn3853UQzC9GRCrSf76HZNQO6/WuunVCBczOS5x5kF1B1gVhraYVSnyMTxNqZJ
         JkYKXhHk1WPFT3mQDX4YcgN0OPqrLsIhkvoUaYaqiBmUDS9xOlxW+hdXc1PoXAx6UUhW
         Q9XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5aw1qv+ix3/bF/s8X7GNTAKme3J/KexmOKqPkZIgsK8=;
        b=vUWDgYPbIJL2UmZHHbytrxuqMGjqenKhdW0dF5WOcrGpjSVCsUiVFQXqVAs8SPRxFJ
         pDSkcDR8X8CJYcj1hxB6PW6Gb98IpqfOpmo8OmaDp/wbiIcEFiQRfoMaSG13UtdSHXQA
         qyICuBTELnugVgQ/XkpTxtWGtouLzahY3cot5HYCedm0oBm2OFEx8oyx9IVn/uX2NYyH
         W1GFeTAUN6AB1PaSteGeD/MH2ZBm3y0n2nktuLrP4BLuN1Q5SdJt0kwy2PUD4RR4nPXT
         A4EBvfxjPAQt2YScXOpoH5lnvE3INdiyVpB1Cizp8LqHo8N6dLrXR4O7KIPQesUyGbHH
         gZ5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="BUo7x/ci";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x7si225454ejw.0.2020.03.13.02.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 02:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="BUo7x/ci";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x441.google.com with SMTP id b2so4818368wrj.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 02:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=5aw1qv+ix3/bF/s8X7GNTAKme3J/KexmOKqPkZIgsK8=;
        b=BUo7x/ci/WjTULWKdUSn4qYVLQFZwLi2esJU1EKtWiAEqxOSB2OxQNpcYDAS2aOxSP
         oOMeebP1Qzns+pp/zxFadWnC7Df07JFQKA+3UkguOCPiGc3VV9pDy0S1aN0XwqqLsVEL
         fyjYzygbC6hNpSFVzOeYbWw4YpHb6JlodrB+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5aw1qv+ix3/bF/s8X7GNTAKme3J/KexmOKqPkZIgsK8=;
        b=FQnFMCWBF5ITFMljHcnWHKQyECckzhu2LOiotzsYFoHFPZgeoJXTJ5M0BU5ZPNA/MZ
         d0ndftR43ll77iWib1WRA6TRH/9pa2VTBvRYwp28sYeGMWp+FXlkstoFebuZujcbsAoK
         9QyYhmOj97PNYHs6HMAoerTFKsvw0o9eOp83/dy2flbj8y6UP2M4/gR0I4IACIGRPShA
         JyCCTI8XTt+ib62qpqQGYjTaWI1SjfF9l6kpv0gx/0/w+zUR2Qo3VvTLDcyq3E6l6yVU
         ZKSRpPKJIw2dkU65XCoYfZaH7X64T+WZ5dJ0KLtzGR/1Br3upQRQzGI9xKiJL2cQszAy
         EPaw==
X-Gm-Message-State: ANhLgQ3quu7cSz4q9W1vtrvZV4nz52ROu/QbNcHPOYV90SiBGkaLDH06
	30ARq7oFDoKwTfRccM3GBNXxPfCBanuQDw==
X-Received: by 2002:a5d:4ac8:: with SMTP id y8mr16352101wrs.272.1584090355043;
        Fri, 13 Mar 2020 02:05:55 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id q13sm27747250wrs.91.2020.03.13.02.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 02:05:54 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH v5] staging: rtl8192u: r8192U_wx: use netdev_warn() instead of printk()
Date: Fri, 13 Mar 2020 10:05:44 +0100
Message-Id: <20200313090544.6334-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use netdev_warn() instead, which is a message printing
function specific for network devices.
Issue found by checkpatch.

Suggested-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v4:
- Log message correction.

 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b9ab..100532598781 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				hwkey);                 /* KeyContent */
 
 		} else {
-			printk("wrong type in WEP, not WEP40 and WEP104\n");
+			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");
 		}
 
 	}
-- 
2.17.1


