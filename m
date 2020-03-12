X-GM-THRID: 6802694026822680576
X-Received: by 2002:a2e:9897:: with SMTP id b23mr6364060ljj.97.1584047155809;
        Thu, 12 Mar 2020 14:05:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls1088482lfh.5.gmail; Thu, 12 Mar
 2020 14:05:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvcD/dRenMOqBd0YSu62HoxCalGSGy4rqZqX5t2wVMyOPTGR0NyX/8xFROC24t36++0B6x3
X-Received: by 2002:ac2:5594:: with SMTP id v20mr6378081lfg.2.1584047154285;
        Thu, 12 Mar 2020 14:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584047154; cv=none;
        d=google.com; s=arc-20160816;
        b=g2xAVItH+FD6044Xi/HWZq2Q5/qOscxEgCzkP5Hf+Fjoy2VfzoxUrC8sF/yVxUu56w
         M85QBXV9gFPO6myQIklUTgjXtWrz0RmuEh/5y9/7qffk7zUSdCjPzQzRKoyj8F7bAD/o
         Oxg5/6xKjCLaoXjKCivYERdBA4SksVCivut35TbcH0LVGSkLFIJS2Urnakdtg5sGJiCV
         P5RHZSwANNU2REy1JSOzw4l/BsiCuK9zQN4w+/7wye8P9fgtQh6EddTOnfpG8zjk0yql
         kzm0FXgiwncY2UQfl/p3u8cyszMTHdEBT4Rlb/Cs5lZQZ8WehBC0VSE4JA/SupySrBWT
         Df+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BYMQgA4JGvSKd4LuvosYbLTC59Bsf08TxbmWWOiI00g=;
        b=wQiAY1DU2yfL3GkQxUN/v/SVpxvtoAGquGKt236jBsOK5+Um6XgNkyy3oarqc03IJI
         pqumH6yTu8eidvGRhic4dG9DxvtoRoHvAwKqcyXxdiXvtdjytXZb9C7RYn+WreLbOP4H
         HrW1Bx81Z4KrUeFYhDFr9QYn7H3vBehtMQlctUur9TyvTCsG3vTq0mIJl3QrqIUfbXk0
         NE4gGdzPYMcjFnGQDkgJ0lw3YBRRvtKmt47QqfA10UmhTdtxg5tAusjdH9h3be57OKLs
         uxgJuLMfonQSMOYx6OPEUaQ5lqG0b6ENVPS27IQvGvAy6t/Mlzuo3/5ftEF1NHGU1+Yr
         S5YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=BzCScCj0;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s8si385267ljg.0.2020.03.12.14.05.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=BzCScCj0;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id l18so9321537wru.11
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=BYMQgA4JGvSKd4LuvosYbLTC59Bsf08TxbmWWOiI00g=;
        b=BzCScCj0Kjl3tnz7vZq9sga2KOOQRwDW+u1WqCy8hUyGSw3okVDtDFzWSmz/O0Qx4D
         vVz54psewb8xsr5D20ny/e828r4MFv81yQB/k7ibDo7kY/2RMtOuuhg47t4PS2oYEBES
         PkyeibuPNnp5no1XpmDCB+67XuF3nNQuzTJw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BYMQgA4JGvSKd4LuvosYbLTC59Bsf08TxbmWWOiI00g=;
        b=K72UepirHNI5mrvCaWDbxS0Hjil4IdhTfh4mnp/PUWDL2Oc0ttrWYr+L+rYZWVMASq
         odWlGn4sRwyLKsrp4dXhO7Jek4TEqAm1fQZiDIWDKD6jOLx17kwXiRMgcZK/vyYqJfI5
         SIVeLcN7PAYjPeIhRZTVL/133UwDNFiHwdgag/TFCyox98gBbF371c+sg7ELvTLP6LV+
         Qsj2zAauNz67E/OV4OS1hyr+X3TSnC3OhbSneKdY6t76Jy+trFnxY9smvAmvbBPyjAeZ
         EkmFn0yWecgUaiTr8qKpLi3oiP/4GddHfNkkiDEQjqHNWe1OUWqlHlPUhHkrvp/MfhqD
         o1Sg==
X-Gm-Message-State: ANhLgQ2dkgIwLwuz7QA0FyJYvOv+xBKCbwQQrjcS8ityeKGaVg+orUnU
	/J0s/PQOQks13ivwbRJHqpPh3IaGUdNRjg==
X-Received: by 2002:a05:6000:4a:: with SMTP id k10mr12305699wrx.381.1584047153491;
        Thu, 12 Mar 2020 14:05:53 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id d18sm13928642wrq.22.2020.03.12.14.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 14:05:52 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH v5] staging: rtl8192u: r8192U_wx: use netdev_warn() instead of printk()
Date: Thu, 12 Mar 2020 22:05:40 +0100
Message-Id: <20200312210540.9381-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use netdev_warn() instead, which is a message printing
function specific for network devices defined in include/linux/netdevice.h.
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


