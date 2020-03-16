X-GM-THRID: 6804610075497332736
X-Received: by 2002:aca:ea46:: with SMTP id i67mr1217377oih.149.1584396975669;
        Mon, 16 Mar 2020 15:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls6136343oig.7.gmail; Mon, 16 Mar
 2020 15:16:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5AxQ8uod7KTNCK75/wPbtqzyMTzsSNAkTg/kbwJarZkJO4xrb4BbB/DVI7DR2QyJxBArR
X-Received: by 2002:a05:6808:2ce:: with SMTP id a14mr1268882oid.175.1584396974117;
        Mon, 16 Mar 2020 15:16:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584396974; cv=none;
        d=google.com; s=arc-20160816;
        b=O2tWiFXCwabiONL40ag5Oy7AP7BcKFWvfcrdFpkdvc9Scs2tp7Cln3Po3Iwiir2N8K
         Z4SLTj9zhKFNuojlLHaFuk8LFVQOt3Z7aWG1x3NNUKoX6Fw8hZEERVHH0POBHnicILu9
         mLmey7CS/KiLHQOryb4jtYT7aAd6CtbIzbLyi/rboeciL8+ChBKVFBV9GI4D4U0/aySa
         pPiedINtQMxq8wxsbE2Cv0ENxxwq5UiXsloQqK66hRlD3sZSSrSv5P6CJp876kBl3Ufd
         Hk3mu91u2URKsW+pB6Ioc0WYJtQR2dPkulGehP5Ly+jdrcBozY4J9iRQrQrJdPAT1tAJ
         KPIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OUKr3NNQyzaGb1mPBtnUohQYJlRca+ocJXp9OUIhlUo=;
        b=fjQN8ZqVf+aNKqXqpwbM4DX9rpa1Kqqr7TUPV5HJr60bEkUSboTM7MoMc1E6YrNWSN
         MqxI93pusj95PKh545gYTAoYQLVhhu4ickBrOZnrG7pHPMF9gYFVoqlLZxwqoBSqFcs7
         Khtm0cH4xiZvEai84eI8JUr0D0lGvEj9h+MiXYbGNVxG5nrk9XUVYSTUSvtx8tRMLEh6
         n8K62nciRL8sN30ifmdF0RRnVboCINIQWezMA7Q2VyBik+duX3nQ4cnv9TyjMAeZnzCr
         T4fOJZSkk7D9Ih+KcxnrPTGhUjYc2Hqw8iy6lxnXjiuXhdG6kFXowoa89PI/xQxNaYkD
         qS3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olDVl3IT;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v19si130640oth.1.2020.03.16.15.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 15:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olDVl3IT;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id o23so3290809pjp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 15:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OUKr3NNQyzaGb1mPBtnUohQYJlRca+ocJXp9OUIhlUo=;
        b=olDVl3ITHSk6J6/TdPYjhCMH0eGJCkDJB1scEBYbR1tV+5YwP+2w7yFWwYu3rCVhln
         etgULiTWrTRD5URn8QuAMIxfUYRJAeFfzr1Kl5K4ia8f0VBA8uFxutwDZZ9xU3/+YG0X
         b3g5EBHh2OkMbCr36t8S51XEs9c8FsIZLXkus8xJQ+godZtOsan21GWjLnCJv+yIl25h
         jTgk30T4FT0UYx8JtS55SAQuFsMEeH/vUiGTIzBx0Mr987qhhFPymZI6Lhf/AtgFIBGU
         hvtsuCVlChCPMnqlR5LD5wia0eLFsqppuXhA0DJCNrL35DaCdvNu34+4y2AelqgffsHb
         I/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OUKr3NNQyzaGb1mPBtnUohQYJlRca+ocJXp9OUIhlUo=;
        b=lTcYF5HRBZRb4p/SFhOvXvmvPZwxQw73l1bPQq/MnwXQhpCTByTgm58jxmi5jUQ6rm
         VJtBn46q6GZ9ECfKJrev5SPz+h+XAaYKJuRuZUWJ933xr+Yl89yFNEOrejPFQATfoMOu
         PYEzHor/oG57deXC47cwHz9QRDIDzLMARU67sfFMU3GtEr9VZQiF1auBZF6L2IZDRNDc
         27HluBiHojeE0yXr8Rwdkn6QG0ORvdqvqEbHSUhSPlGE24yT1TgvrawJYHeKZRYr/Xv6
         jnkkbExEC5dMamuMYRFHin5WcRd/YXYhNGAy6Yi5ck0P1BwC+PFGyKxk58e2gDqt5EZx
         a2oA==
X-Gm-Message-State: ANhLgQ0VUly4oM3/CDd92BgYt9OvuLBFqHhg/Hh/BB7LNwcirmh0emvR
	RdyUQVJ+8C1SFVCakiTYF9HD13Av+vc=
X-Received: by 2002:a17:90a:62cb:: with SMTP id k11mr1839672pjs.20.1584396973158;
        Mon, 16 Mar 2020 15:16:13 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id o11sm694392pjb.18.2020.03.16.15.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 15:16:12 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v3] staging: wlan-ng: Fix line going over 80 characters
Date: Mon, 16 Mar 2020 15:15:44 -0700
Message-Id: <20200316221544.1251350-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a newline before the second argument for style, readability, and
consistency.

Please note: checkpatch reports the third argument as being over 80
characters, but not the second argument.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v3: Fixed comment misspelling as suggested by Julia Lawall <julia.lawall@inria.fr>
    Also fixed missing colon ':'

v2: Fixed comment to be in the imperative as suggested by Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index b71756ab0394..f8485601aead 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3317,7 +3317,8 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 		break;
 
 	default:
-		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
+		netdev_warn(hw->wlandev->netdev,
+			    "Received frame on unsupported port=%d\n",
 			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
 		break;
 	}
-- 
2.25.1


