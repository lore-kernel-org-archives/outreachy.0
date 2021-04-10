X-GM-THRID: 6949661210955481088
X-Received: by 2002:a17:902:780c:b029:e6:9193:56e2 with SMTP id p12-20020a170902780cb02900e6919356e2mr19091081pll.39.1618094092102;
        Sat, 10 Apr 2021 15:34:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls5643531plb.11.gmail; Sat, 10
 Apr 2021 15:34:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDP/QPOaASWa1n4S95VJIKRFR990ZtTAliFASt9NFnEUj10RmfYF6Udc4f2Bf2y69OaWmD
X-Received: by 2002:a17:90a:a505:: with SMTP id a5mr3185071pjq.58.1618094091064;
        Sat, 10 Apr 2021 15:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618094091; cv=none;
        d=google.com; s=arc-20160816;
        b=HYHOPd7bTnhpPpkuj4wzcBQ/Xz2zBQEuoeh39nGMb5IynmuAKhD7TkvKt6fjS8KN6s
         zEqj3U3vvXCSx3K56M0SnNkqIcxRQ0BVROmElvHVwwm6TISicl3DZWQXYsMXb4niEsk7
         kysriKhO3RACdoFM0vGc+LIrF13ys5AR4sqyWtGqAwNxLEE9PYEZZ+w8XUJMvHsHr43X
         hnObLbUv5tQD5X2iccYVOLz38KL1jrhuVHAmLZwwbQ/yJFmBQ0C5hD22WFFe9dalot2h
         l0KPPqX/YgYzDMI9i2ueksw1/klF94fUw9/J2wKnoJNd+jNjrB5xawcd62PPxtmDwHB7
         hMow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qGGdMQt5QMmA36v/dghHSvgB21nbu/uyCpwsrXIGw/M=;
        b=L5YARqV0KbU39Rq4hWeTWMVjXPwwyVdYKUNS08RBw50nj0Jt5b84JoaGxHeE8vTGZo
         fNcC1jcAzgB5jQkCJOcbF7LZOZJcOIB1px6T2GcxSpZ0AmJ3+UaGJUj4lFxyh1Q9FFhu
         9tVHZn/yFNjGKKAXkYdNSvKb6J+hoH05QSkYcytNVfe/0HcbMPX5LkA+sSPOv13boHH/
         i0EzWSP2YqyYqm573jyku1DEAyFW7QMWQO1bHgOhkZOXNM7qK8MLfhsFsbilqNS5kN1y
         MWG+rCxz8bUtDE17Oc4znA5IsYpt7JwiQ5T0kKAqq3YItUs4Ypc56yFu7ou/LeU7ChBc
         iwfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d/WVlbkH";
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <siddmohamed19@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id mp9si456131pjb.1.2021.04.10.15.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 15:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of siddmohamed19@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d/WVlbkH";
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id m18so2213796plc.13
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 15:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=qGGdMQt5QMmA36v/dghHSvgB21nbu/uyCpwsrXIGw/M=;
        b=d/WVlbkHWTV46rVCUYAm6rKNL6NTqP71WYGP0kZ6y3ktOYCIjHdTXaxi65JNLY0m/A
         3yD7Vkpt5iAhszMn/4QzVqCxjFoT0n5l5p9ZTJcJmOGVqQTxpan1fFh+EyTJ/mTN7W0Z
         IqqpE3umB6b0FcxnjZfHLWhWQgEi9tDEpMlXDDa2SIlL6iMOwzT59NoIF44ArPXOet8A
         FDvTZ2PrcgfwHMEqgcckLW9Kn/EuIh+38FmY05QiMsOprvh6jVwkBm60Rz1jncDByXf2
         jRHVcgih3fFhEkqu5sZVENCKyH3W2gtqGOGZFR3OHBOJEoViW1NqWBuHeSruckRqr08E
         ZcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=qGGdMQt5QMmA36v/dghHSvgB21nbu/uyCpwsrXIGw/M=;
        b=jzV2ckLzMIDBpZTWIzDkvF6lwbTiLM+6Rnm629bYYJFEtOvUYXMCd73zb1FQD6s/gk
         MXABrO4y0756kkMa3NpxNiVZ7lWoXnPNnv+cvjQW3dZrDjhP6eiCZg+wqznSxhTL+pyn
         vW8LeSpr7L3Tn9Lp8apcI7HLSLHNVXaFfMrPiWE2BmMq2R8Lhg6s33y6MSSCNgGn47Zt
         WuTFVv+lZ/p86FAAYHTAkWmpqGkC0R5x+ejzv5lXVgzJ715jLGyvlJAd7Ms8qMcLCJQD
         MW0/yj3gmkpfVuS9eE0MiBbf1HAaa9rVhMegLF9Ec+b4MHD4EY8RNd7KMbtJ/MsAliJm
         q+9w==
X-Gm-Message-State: AOAM533fd5O3lcYPQKk7tL7iQvlpy5lw+l6ZAdtkX5kGyoAAUOSMlpr9
	eTzan5EZZVv2Phw0QxyAB28=
X-Received: by 2002:a17:90a:7884:: with SMTP id x4mr20332362pjk.185.1618094090778;
        Sat, 10 Apr 2021 15:34:50 -0700 (PDT)
Return-Path: <siddmohamed19@gmail.com>
Received: from Ali-Ubuntu ([2409:4053:2d82:28d1:8dc9:5e41:d52e:704b])
        by smtp.gmail.com with ESMTPSA id r1sm6145715pjo.26.2021.04.10.15.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 15:34:50 -0700 (PDT)
Date: Sun, 11 Apr 2021 04:04:44 +0530
From: majauhar <siddmohamed19@gmail.com>
To: siddmohamed19@gmail.com
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 0] Staging(VT6656): Modified camelCase Variables
Message-ID: <20210410223444.GA110316@Ali-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

'''
Variables 'uVar' and 'uModulo' were generating camelCase style issue.
Modified them as 'u_var' and 'u_modulo' and the issue disappeared.

Recompiled and installed the modules and all was fine.
'''

Signed-off-by: Mohd Ali Jauhar <siddmohamed19@gmail.com>
---
 drivers/staging/vt6656/device.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 947530fefe94..847c79e3fb78 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -385,11 +385,11 @@ struct vnt_private {
 	struct ieee80211_low_level_stats low_stats;
 };
 
-#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {	\
-	if ((uVar) >= ((uModulo) - 1))			\
-		(uVar) = 0;				\
+#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {	\
+	if ((u_var) >= ((u_modulo) - 1))		\
+		(u_var) = 0;				\
 	else						\
-		(uVar)++;				\
+		(u_var)++;				\
 }
 
 int vnt_init(struct vnt_private *priv);
-- 
2.25.1


