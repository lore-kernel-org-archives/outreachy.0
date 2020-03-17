X-GM-THRID: 6802694026822680576
X-Received: by 2002:adf:82b0:: with SMTP id 45mr6997066wrc.120.1584464366322;
        Tue, 17 Mar 2020 09:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls11468104wrc.7.gmail; Tue, 17
 Mar 2020 09:59:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvUI1uwhNI7ffeulgh3rM+AeN72CyGMInN5ojzEmZaCr4YsLbCTfyJf8DT8JyR8cX2657mt
X-Received: by 2002:adf:f309:: with SMTP id i9mr7630642wro.0.1584464364833;
        Tue, 17 Mar 2020 09:59:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584464364; cv=none;
        d=google.com; s=arc-20160816;
        b=DRpkycFsCHtv2RVR0LZuOnzTcr3fPkMzi4HdrhxAK48V9vpnImDpw5j6OPl97zwzbe
         AvhKMIYmGZCGJxdQqBxl3OIDya+gNzd4YNwDPwFJeA3MOQ1q3FN++fWe0ZoFpYIfx7o4
         BUiyiNjA5grH+ksi6CQ7rP2S5iwVce/spS4ADJtsMGYnlafDSBvNaYHCPo8jRjv7sEv7
         fEK+XtjnAEllw4xbIj4UpempnNFrkluYo/KiOMl41SVCpE2qwzD1YETauLC1qS7eOezL
         vn6Cp+crn8NMZtPlxzMkT41bf2Y6vbyyDJSsCM1u5eWQWdOlVo7Kxxc0hQ/AC8MjonWc
         2h4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=x/Eme6WdjaDOSGFKbxwLDL9QsWGdb0CvfgOsPSIXztU=;
        b=AZqCXiLAaVxTloeL8fUHxMXGLOqeAbA9dNnSL6x36O3fXIKr2/oWbm7UNgePBg3JKp
         eBZTah9u1lCHEPYLTEFyvVUcLn51AOZJ3hbC1RKTFHhhSxxrqjsYzhg5TDZuBb7Zqtn+
         XBJiEbS8pb1C1ekfdRtJjaNn1Dl6H654u71Wc6CBCfs2p9Mb71u9eRLVxNgfPjDszhRO
         /++5ZI3mT/ZkxWaHFUOMaSuWd3ej3aCgycUK887IdiecMzyx9sv0IioqKS0NsHFmtePS
         0H3ck+7eWyeBNOdYJD3d6glZdeOi9aIddh0l2KM3lYx17cL0Qxn4bWJLj7fUW+HDZ3JG
         9oOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=dQIDVMfM;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c187si2768wme.1.2020.03.17.09.59.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 09:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=dQIDVMfM;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id a25so26677020wrd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 09:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=x/Eme6WdjaDOSGFKbxwLDL9QsWGdb0CvfgOsPSIXztU=;
        b=dQIDVMfMav54EGnXEVgX1MoXpe/7Rj5r+yH56NmqehSEJKgwrcdV0omserlqgtosZI
         i4ulGuppJr3tm1CigEGusR2l1o+AzpoVsDclbCjshqRU27XsIudM+YxQxMe2dpo3dPQR
         SK7SERsGDwzY/3XlubB+s7ERMokcmUFOinB9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=x/Eme6WdjaDOSGFKbxwLDL9QsWGdb0CvfgOsPSIXztU=;
        b=ll+AhgmMO2YZiWbEMX6i2523bGgcYY6x+ZXBqrcxWO4oZU8xU6Yx5yvWMNMqBenr9B
         3d/D9CbZsCV3/Z3PZCONCBEjga14rNskHdkyGKeYCdCjlKelbp65jOvY4qL2O+7IovS1
         tSTzGccmFYqiQ9mA//UqOfMZMazRutMTO62meQwIiyuSZYoc9Qp7/VC+RPI7eX7hZteo
         oA0769s6SL4N1UWC5rbzwtzXMxd4uWiOhIjJkXeRiUTAd9VeqBGh7MYc04uWTzoQMfI2
         AOQXw3ob6LTqgsSxlBXmMbG1nlHCDeR6mHlcccjDTSYeFE6/Vxby6RVXvyybvpvzkrQf
         qQrA==
X-Gm-Message-State: ANhLgQ0ZU4unVIMQsEqLPlKPwu3TRXLr6fWUkW793MDrBFsrJf3SqIS9
	7bcj8hz9wHZUazYIEgQ8nC9Gw5gafKA=
X-Received: by 2002:adf:ed85:: with SMTP id c5mr7350994wro.41.1584464364121;
        Tue, 17 Mar 2020 09:59:24 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y15sm5241777wrp.92.2020.03.17.09.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 09:59:23 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v6] staging: rtl8192u: r8192U_wx: use netdev_warn() instead of printk()
Date: Tue, 17 Mar 2020 17:59:17 +0100
Message-Id: <20200317165917.6260-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use netdev_warn() instead, which is a message printing
function specific for network devices.
Issue found by checkpatch.

Suggested-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v5:
- Subject correction.

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


