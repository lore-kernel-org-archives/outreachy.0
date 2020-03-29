X-GM-THRID: 6809468497850007552
X-Received: by 2002:ad4:5a05:: with SMTP id ei5mr6923792qvb.127.1585471122093;
        Sun, 29 Mar 2020 01:38:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b21d:: with SMTP id x29ls1587323qvd.0.gmail; Sun, 29 Mar
 2020 01:38:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvYcqxnDMgjQiHC3tymtUIYiLEjAt767PI78rRL7wFns1CqhReRSyD84WaFjcM9xbmPnC4d
X-Received: by 2002:a0c:a8e9:: with SMTP id h41mr6884891qvc.235.1585471120942;
        Sun, 29 Mar 2020 01:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585471120; cv=none;
        d=google.com; s=arc-20160816;
        b=n7HdZ5Bsvo/FhC/TuiUDb4qVVZX1OSrZxDXUNzOs9PX9k0Aw+GGUvEGI7f15zs6rvj
         jwhXXkKZTVYH5hDWVX1ONDkdp1NtrxQTSPCB9SkmvccozVYQPo1KuJxKfF82Ro4Xusv7
         IiJWYpLb4TOo2m9SGFjmUmLNZnjCPykZihwnMEhEHMIFd0/YZxQcJx2z/Cp8WZxB47Mq
         kIBSg07nRYDNylfSo21pExS9zcGFpgEY5E+oFhJ6m5xGxlnSwN+/RjDEXRil04KK+S0q
         fGAqY/ifmHQokqSUNKHby1dRX17rL1IKq9YBkJvsqHTAVdJXyNffuaNIShvxBbBfNSAU
         ZiDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8IbFQBYANCkF12Hrlo9wNyHkWayXw9MSU6eCf6YHmKw=;
        b=i7/IniV3dKlfDag95Ij1agEwBc/r6cau51Yg39QKrkoGNMr41rD6lUFNmLp7EcqbGc
         Ohtc97qYPeSnWKhnQNpoWAxDzzfhG1riiK08zRGIbmcerPgEjzqn+RyG2rrWG+DkxMLW
         1jEVDy8Gtv6pAsyAI0v2cXnpjpgIg+EDk3T5cIwmsQXdz8PUOVTWMFmGUotBUv/iMPSe
         pobkeYX094us7Xp7eD5xp3ENqHE66L60P8zWdA08PUNFKsyhPn4h6NwQyRlz78gVu91Q
         bm76FnlXeJPIROV/E4LikvnGObdNO93Lv6z+YZY7N9S444CsQIPnHqQcv5Nh8CPjSDBR
         HpKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=feGw5WyZ;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id t24si785712qtt.1.2020.03.29.01.38.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 01:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=feGw5WyZ;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id ng8so6101124pjb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 01:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8IbFQBYANCkF12Hrlo9wNyHkWayXw9MSU6eCf6YHmKw=;
        b=feGw5WyZuV9ajZvRK9bfLB9F9YycMWXf/o/b6Bw89cGi0v1Ixl7KFkr3UQfF25pdj8
         f2oolo8vlDP0EVxxQmMqH+tUsBGgks7P9GiaNS74sfxP+lvhgdl8dzHDMg67pBtoB3t9
         3DUfCftSZ0cV2oS/j7R23RLhccRa4SaED5bzizMTGOZYCLlG+/FJcH8eldmSDwSLSSe1
         vYJGYp2pgtzF0ETGIdgSmqdAb/bhw+//jpearh6CPbMeVwxQfxRFLQW2tZ0MClw9jZJ/
         sDFrZkwc/7Af7izojKVeK1f1RnqowGSlr0UsrohaodKAqtjQO0dEkYgLzMtndg79ts0x
         BuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8IbFQBYANCkF12Hrlo9wNyHkWayXw9MSU6eCf6YHmKw=;
        b=HaP1pyzPq6b4E/4Ws5vZDqXrT3jh5Qo0s1Z6UwRS6YnZSn3vNbCegziqtv1uGw36MW
         4gTG7/qjhOpgszx9geB+MYvbGRyI2fWaXloDQly0SDHLsMuB/xKWniarUa7q/WjF9pd2
         DessHOIO5eCJOzoLqaGnmF0nrNDcBeOg7461nk2dUQPohuv2OwVtgTNKoM7jOVfestAK
         k4FxF48r+vwEKgWR/KoTb/T6wsImhailLhepwnEBIwplBpAxOodLYleGRqBR4xTROPYr
         NRCmzJUXXGkikSBUsARoDPwIAqFI8S7vZMT7QtGTq8pF/Xr2ba+HlJvKOyIjNL/dDXij
         lYZQ==
X-Gm-Message-State: ANhLgQ35gjE7DqhT3a/VBs4B4aBTlIb+kHfnMfYJcHoOS8fftCA4GTwy
	HGT2MPEZkXjCcCKMs5GQSuclL+TDg1rDdQ==
X-Received: by 2002:a17:90b:1a8b:: with SMTP id ng11mr9550535pjb.109.1585471119827;
        Sun, 29 Mar 2020 01:38:39 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id k189sm7256529pgc.24.2020.03.29.01.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 01:38:39 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v2] staging: vt6656: add error code handling to unused variable
Date: Sun, 29 Mar 2020 01:38:29 -0700
Message-Id: <20200329083829.619127-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..9d23c3ec1e60 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	if (ret)
+		goto end;
 
+end:
 	return ret;
 }
 
-- 
2.25.1


