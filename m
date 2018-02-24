X-GM-THRID: 6526226538878205952
X-Received: by 10.55.27.27 with SMTP id b27mr4320562qkb.53.1519505525163;
        Sat, 24 Feb 2018 12:52:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.47.196 with SMTP id m62ls5654220qtd.7.gmail; Sat, 24 Feb
 2018 12:52:03 -0800 (PST)
X-Google-Smtp-Source: AG47ELupwp98Jd0Wg4SnQIl3iYwzxTV8eseMVq9RQ2eYctX6wm/Wd9FkiaGSx3iVDqS/J6OvbnEU
X-Received: by 10.237.58.98 with SMTP id n89mr4431881qte.41.1519505523703;
        Sat, 24 Feb 2018 12:52:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519505523; cv=none;
        d=google.com; s=arc-20160816;
        b=FIX32BnoZhnztyj10Yik6Tv29kWQ6hZq1k9f8e684lNooXCZQ3xjgxP54udVwnP70Y
         NelgaZuALVTwxG8iTznWjAbPRu1kmZGxo5aXlcR+ghZPSE4IhZXLlbYzkEViMWZFdN9d
         DuqTWT99Luor+6rW4XzHsGBrrw0gyJgp3gEhxbUDZrUl/Uvs5Iur+mECl19/JPw0vzSQ
         vKt0uUU5Cx5B1NaVm8Dx3H/aUaA+sgEcBWP0qdGB7K/Xp486fVCISjyi8hOi0vQlCeTi
         cl1yI8GKJQqN/Iu7cDShoU0aoVGuBdjLehd3CKuf1t6UVOTSHgYNiIsSCof9w0HyVkIn
         de1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=SUXY5F1bwzMnQHRyJPyN988/fqtco7H/29NVciayIHk=;
        b=Oh5we1IwEBimvkbtbXtOWY8Vz8JSo+0EYn8uB2KyRvfNoSyGL2HMDUlGHWxzKtGv1D
         qeAXM5OMCVL5l7Kk9+a2M+ZilWMZF6RWKW0d+ijItAIOsL5ELvUFZ8wBJhCiuIn8Nf6h
         w+fUGZ0BHWj9WrZcDUpK843R5EEQdpLJwGf7ZrRvYokF4gRK52QEbX44eA56MOurPJqO
         gbNNkYxT6PetSX6wxgB8LTJSz1yzomp5u0VjYgJY2Cm59R1BmG0HHEhmKIA+PgQvaUV9
         /saevT8dgeCWtNWzhh4ls2kJ21qDfmYMbFGOF/U3gy8fYPQrIeKzCWwOIQFXPSZL4s9J
         zFwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOibNSnL;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k9si250035qti.5.2018.02.24.12.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 12:52:03 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOibNSnL;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g12so4701152pgs.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 12:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SUXY5F1bwzMnQHRyJPyN988/fqtco7H/29NVciayIHk=;
        b=kOibNSnLW2HsRTDQ6CthZ6w+2Dz8/VPMub4QJxb8gydw6Gi6gVPyylUd/Bm9hEcfQ4
         37XqOHA7z4AZvWx/8tE0G7m0klGsTOQnBNjC5qIyHzlo2aPajfDIrbRezVw8IK5sn2k2
         8Kx7jOfgs0by8+6G3MXihrbg745aq/9RfyeovPwL9hU2WgxCpP4k6LwFHkyyJk4mCRlB
         lDImkoiFT5jFVtwBt4JazWNz4MS7PvXrHm7HJ32xOLE9s3lPld9TdykaYu6u1IFaaKgS
         j3482hln0lYX5mrz7NAFuVg6f/yXIoTL/IRjb/RDauTuE/skOyieL/vCxzA5DkbyZNJD
         L1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SUXY5F1bwzMnQHRyJPyN988/fqtco7H/29NVciayIHk=;
        b=eZSERyhR+wizFgqARbW4w/leP9hEiUrooxVWvmVRt6JeoxZOQs/fJcSfOoO91oZu2Z
         HbIM6w14jCLWvqOEkYV1g37xv8VcL+5a2gnlggJHJ6aThTlSZplc68e7Fwtg7/oy6Lip
         w8ikJ2/e1SkAkX3nKpSTEBPsuXdRTwm2e4VIl6WEN3tIauwkbeiMsnE+PKpssRP5m8qt
         txILgmpEGhUbUTXTN2RNyHoOkT/NFeU5K0vW8XQGIHnYFVOMCCDiTP5a1LUWWS2voGuk
         HMnJNUs3oyJMru1YGl6hhZbBKr6mvKV7MJbov700nKbuMNV6ad7nF720QfxVVsbsMekY
         2oRQ==
X-Gm-Message-State: APf1xPDJJBdxdg3lYhk8d1ez4Ed4B13IGnTUi2VN+MchYw7G1YT/NxKY
	Xb7zrUCdrTjSxC4yv4vvfpgF4Q==
X-Received: by 10.98.233.21 with SMTP id j21mr5828198pfh.123.1519505522816;
        Sat, 24 Feb 2018 12:52:02 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id f12sm11122854pfe.155.2018.02.24.12.52.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Feb 2018 12:52:01 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: garsilva@embeddedor.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2] staging: use structure pointer to get the size of the structure
Date: Sat, 24 Feb 2018 12:51:56 -0800
Message-Id: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Use pointer to the structure to get the size of the structure. Issue
found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change in v2:
 - Use single line when the number of characters is less than 80
 drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 03fbff0..74d4d2d 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		struct lib80211_crypt_data *new_crypt;
 
 		/* take WEP into use */
-		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
-				    GFP_KERNEL);
+		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
 		if (new_crypt == NULL)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
-- 
2.7.4


