X-GM-THRID: 6744449794270298112
X-Received: by 2002:a37:76c5:: with SMTP id r188mr16636595qkc.375.1570314586127;
        Sat, 05 Oct 2019 15:29:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a209:: with SMTP id l9ls3646717qke.14.gmail; Sat, 05 Oct
 2019 15:29:45 -0700 (PDT)
X-Received: by 2002:a37:274e:: with SMTP id n75mr16926837qkn.134.1570314585292;
        Sat, 05 Oct 2019 15:29:45 -0700 (PDT)
Received: by 2002:a37:507:0:0:0:0:0 with SMTP id 7msqkf;
        Sat, 5 Oct 2019 14:00:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhzUwKsCGKWjL37oBn06xzXexEYip2Gr/3Ggyya4sP+fONd9irsWu9Ccx16vtXDoSMhRWd
X-Received: by 2002:a37:713:: with SMTP id 19mr17278946qkh.490.1570309252268;
        Sat, 05 Oct 2019 14:00:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570309252; cv=none;
        d=google.com; s=arc-20160816;
        b=Ri65MVgaLqfsmkEdIaqS46DwjMD5Lfuuwfvhh+6DD1EEdm7IuiZbwH90Z3BBzBYutf
         rq5RvmJSJMYIXESOYWe/OoA7Nc1VvhUB/0KZRyjsKcL6aNWRieWA8vxRMKdjwx+fCq0F
         CATvwSm5qoaJWT5zKvS1NLafC6hACUC2u+Ny/liYMhjKdZo8NaV+tPd61a8w3TkDA0ZT
         9TiYIG2Snug6h/THY6kCKELpQ6mnh/sRHoYkoP3b40CSYoE92Z3XGQOK+Vd4R6mJb9qN
         /q7TRTW5Zoo3lIWagwwSr3gfLJAI67orDmjNRSTReFxhjry2dOOw2KSaeWBc2k2I16+l
         pSqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=D6Ua1I+2M2qoT07tdXa/jnXqB1E3SjZfA0FzE39UU4k=;
        b=oEMlvVPi8dH5i7U7UVY48LwZe1SQiXXNvNpiJzouHrVHSP47OVbdU9dba8+8a5teOV
         Dp9vAr0KtuaWWpXDe3Hxsq6S96wIUW+f7K5XUEJaQg+lmY5tpqJcauagzIkZr9YF9ez1
         8iibwEvwSQ2yybizmCsTlS7vMLcYF8cmZxXIH39SQnAf6kfUZCzPjpPv56HOaVh2sNad
         cSpv3B1OQq/upU9VnX3doiF6oP0aI2VvPcHCQcSn+uda8MYq05+1x1qqQMuC7EiwHV7i
         aO0auAIkVdpIAzqlhEMocUwuav6VSwx0zhFS8MxlsAmOnIwZU8Fm9RP9J3xFC3MIPWZy
         uhDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HDe/bect";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c78si696685qkb.7.2019.10.05.14.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2019 14:00:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HDe/bect";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id y144so9123056qkb.7
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Oct 2019 14:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=D6Ua1I+2M2qoT07tdXa/jnXqB1E3SjZfA0FzE39UU4k=;
        b=HDe/bectkhxOTjQu81H1au6waX8eiM8mrl9C1ALRX5Wd2J0FUzCU4sr3uq+zFmitbC
         lQQ5/fxF1klH+2MBcgyQGIlgZZu9H7rcsIgrh/FKkhxRBhBItv/71LUQYw5A+YTcl1Wy
         UlWGhnp4Z+ZgeHSsLWJBd6WMGWMHgBpoMLkpaIoECSM6DRahXkgxdHPhoqNOm3F8uFxw
         Hw8x3K+rBXhn2E+Z4LkuvH5Q2UfNFMowEkOvKe0FSPNxmznMEEa7xBABwN0G54sEKCI9
         dj0mLhzh9v3DJ48Y8hAM0h2Mq9TiOzPaRBYJefM617RJ6A9zWH9Wca+IXbQ6w0zKcWS6
         Mu+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=D6Ua1I+2M2qoT07tdXa/jnXqB1E3SjZfA0FzE39UU4k=;
        b=UbqwsjKLmVSu1Zq10eJNI4Lw7ELzjPuZoxglM47GiFUlnmMoaE2m8Qx6GUq788ooAp
         gC4dkaD1sUX6to9O5Xu4OQVRxjgR1PZaqmxtv2dIjrV8I6gBjvOuGVq/hNhO4y+w7tKk
         TtasfDWxV61JcaZFrGPnEX6yHeKofwwzYzSDUoGB+A6P/Q5ThzqCYdocFK+lrHvSdm18
         kzVx2lfTIoypVpVUakjtzq4F1AW1jNBGGKBqJRqRZ6cKCQ2RRLgkJv7XL4leCgZ5Nxbv
         ZgbfyVZE7v5HbzeNMZGmTq89rlPSaW1F7Ee1nVcv9Vh0euMi3hLfQroo///yVnfk3SS0
         wcMw==
X-Gm-Message-State: APjAAAUOQZyi+X+NFf1lDCIE/PgY+vDg0kOQ+1wMWjVHgErmUjWnLj30
	DOcB6emVk1zzIbjMoWQrMT4DJNQDh1SnyA==
X-Received: by 2002:a37:9e57:: with SMTP id h84mr16952030qke.226.1570309251624;
        Sat, 05 Oct 2019 14:00:51 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id l23sm9285014qta.53.2019.10.05.14.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2019 14:00:51 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: add blank line after declarations
Date: Sat,  5 Oct 2019 18:00:46 -0300
Message-Id: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix CHECK: add blank line after declarations

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/greybus/control.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 3a29ec05f631..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.20.1


