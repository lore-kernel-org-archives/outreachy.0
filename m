X-GM-THRID: 6748957441042415616
X-Received: by 2002:a0d:fd03:: with SMTP id n3mr4997986ywf.170.1571364104881;
        Thu, 17 Oct 2019 19:01:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:77c4:: with SMTP id s187ls731403ywc.7.gmail; Thu, 17 Oct
 2019 19:01:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNC24wVeWXf22Es14HHrPeUW/wLgVp+hcbk0ZLBGEY3CVvMEqLHROClTG2J7IOLVFjXvGS
X-Received: by 2002:a81:4e4d:: with SMTP id c74mr5362234ywb.94.1571364103220;
        Thu, 17 Oct 2019 19:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571364103; cv=none;
        d=google.com; s=arc-20160816;
        b=VTvo+5i5nC9rRyFpwmMSNq/HARNmEDN0F0pOme7OJq5xoh2xUn5u0HBaZIppQKqnV9
         oyBtrzj+Btm+f0FXYe/XTUhesKErBdFVB6yR56DSqAToex5kYEw09S84ZT7dfx9TqVrg
         ZY94lvF9E9zq9BQn08t3CGiQwIfXGTqzvZEapnFdGj9CxA6nhGmA2ZF0fntI0qd3vagM
         5WU1jAsMJp0k9ID8WhKYNIVoCgHmiC3PaOMIGbLy67zP0dZMuAT1+o/QnqNvDEBoPBI9
         pzh2w4drY2EaZOynNZIZCzcoSC+yD1TXhtRL9kkosnwbFKjVOKlQRhsgFFhdLEGRDrGf
         xG+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=alkhWQJx6CfsmzFKHiuQUiJwgZGzXX3Ozc7kRXEkLzXvOuKocH8sDDXc6P75MTnlam
         0/lsaqJxfZPUQvvLtvJaPmEa0IpB61qVLzGQQ2EcHJlOIx353BQ4JHrow47tNUJSomRl
         TFyhVku9m044aTL2QoLPnN5jNVXPWD1gkB5QPlUykKJVITLnzwuuWgVyLdSDB0Iw0pyO
         fU/YVSjqXFuruL/ofgrzQCI6m8OIg/gFNZdPXtkF9mUPZr6CFnFKE23bZQzvgxFJonpp
         csY9iL97bnK/uUeziFzNNGFbEkl1/36FNpx5a/SwzQ7thFsrW7HQEoYZI9/Wr4u3+ttA
         terw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWockRt9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u129si154958ywc.1.2019.10.17.19.01.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 19:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWockRt9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id i76so2440851pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 19:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=fWockRt9NDsk11kQqdgSCHutabRgkbSmh2ldNuQOX97IB/gcv+SWo7Q/7IyIcoLDh9
         1x7xCvoVYrMwelwHZDO+kIkHm/s2KXUBP82rCX88qSLGredVW6Coq/M42sVWbQeON961
         vcUNYQe3MTfs+MTvScG7AINwB9c/Ni9YdsugY3HEHqm9SyxRAENWlAoYAeUxp+3c3jmL
         MIoczsjZwHpdcP4voNqTNROkmYb/MxNH/fYCEy8+/2ESZLyQSeio89PBZVaWJaLJ1Xac
         IjmhNbkctARpj8Tc6dcogjY8d+adUoo+UfDQ8+pNdu0QJWMUPAHIELRx4q88HlU3aJiL
         fCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=G7pS4W3f5XYFpUnyKq7LCKKYl2wTt6PFNviGhcldvdtARvWhQ8wHVASYJ6tkmjbXHN
         onecNqCyMHe/sHLcy/syyWjVjlusR+egBE5t2IoRl+YbXaoHrKC3fZzBofsOJpVdawZ9
         gulrM9cv+LNGAYt64BhR3jqxbyCOmeQaAu2DUZGhPjbRi9TjoJYeY7zAEJYFra6cXT+Q
         wWS0HwH6LKTOCXDNe7S+mfitT9EPRczH9ZWQsJSwxkwwsJEaeQrGXd16ad9C7YPNa41t
         3ivpbb71wiC7Pk0YlJNx2YhZzhrpYE76jHbXWGlmxBCJ/zrxyDssbV6pFx01R/j98bWF
         lGTw==
X-Gm-Message-State: APjAAAU/aikyad5m1OObAzU4BJ0EKsJlws5/qg2ytkH7+lpyiRobOrus
	hkxCjbfI8brWqrzmBLN1Q5Kf642p
X-Received: by 2002:a63:b551:: with SMTP id u17mr7271163pgo.88.1571364102276;
        Thu, 17 Oct 2019 19:01:42 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id e16sm3916702pgt.68.2019.10.17.19.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 19:01:41 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: Edit CamelCase in ddk750_power.h
Date: Thu, 17 Oct 2019 19:01:12 -0700
Message-Id: <20191018020112.22226-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Removes instances of CamelCase. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 7002567a47d2..cd892f2b717f 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -3,10 +3,10 @@
 #define DDK750_POWER_H__
 
 enum dpms {
-	crtDPMS_ON = 0x0,
-	crtDPMS_STANDBY = 0x1,
-	crtDPMS_SUSPEND = 0x2,
-	crtDPMS_OFF = 0x3,
+	crt_DPMS_ON = 0x0,
+	crt_DPMS_STANDBY = 0x1,
+	crt_DPMS_SUSPEND = 0x2,
+	crt_DPMS_OFF = 0x3,
 };
 
 #define set_DAC(off) {							\
@@ -15,7 +15,7 @@ enum dpms {
 }
 
 void ddk750_set_dpms(enum dpms state);
-void sm750_set_power_mode(unsigned int powerMode);
+void sm750_set_power_mode(unsigned int power_mode);
 void sm750_set_current_gate(unsigned int gate);
 
 /*
-- 
2.17.1


