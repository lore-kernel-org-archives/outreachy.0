X-GM-THRID: 6673470444054511616
X-Received: by 2002:a67:db15:: with SMTP id z21mr2056800vsj.41.1553788418972;
        Thu, 28 Mar 2019 08:53:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8d06:: with SMTP id p6ls6031415vsd.3.gmail; Thu, 28 Mar
 2019 08:53:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzUxIPd8bgkqZFfkV0eQrFkBdsLhVXf+BZqmqGhpSaLkQ07F0rjui9t0tfKpEFe77gWRoY
X-Received: by 2002:a67:7855:: with SMTP id t82mr2989047vsc.18.1553788418447;
        Thu, 28 Mar 2019 08:53:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553788418; cv=none;
        d=google.com; s=arc-20160816;
        b=goUBjzS7Bzi8EAFwJqyqx1B7qprq4cOMwijqV6v0oesEpX6EWB5E8almTs+YQAm1oV
         zE21SH1GUQboEqKuR9/szhZ//gxjXE7MhP5nWs37Pg+6tgdmnFMpfAdK/MucjL/2jkAU
         oA2OUtUjWCvP0f4nlAnXdnz/2GLeAcI3orp/tqr1CXee/jll72S5uYBOgGboFySjY2Av
         Jk3UrqLsZKoUqe6IV+rIeCTSZFJ/SFhlhNJd+dB9YK3wfigL38c/sWTJ1Y4OLAcFVZ4H
         BeI+air3RkbTuo0b6ZoIBeK+N8CV8dmHFmtaNX4ibK9V3BG22XyIzypU9iNNIeIPO/fU
         YqPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jb39k20SMo31VLZxJp1U4Lz2Rbzo9nVt+PzuYBJPikc=;
        b=GukT1dqmki/qSwVUH7Lg46FzklZq8ZDtBG627YK8NWKxfWlm1yvyO+43ar2J8SczAv
         3ZiLLYS6onqHRLfEG8hbqkeUw064h7g5cx+l+AZiBRDvwDJrUt0J6wPr1DB8R0qmUmJp
         yV0XyqyWBJsMa871sW7RPyZZkx6SQXLkKSI9ZyvV7aKNXb00BZstZJlBVMrj5GyAzkHH
         5CvNMXwsWnSUpaCsFqpPdpelyUIolhXhHZTIuadc9nJ/7wdXH+DK7E+sMfMyyW0O4DKn
         CfUtGObtLmgZgWey6hFXDoECLyRZzyojHimjdoF8iTKYhCM1qaA0QDEiIhlkAZRVf6Vl
         Z8Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gcu2N7j5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id k68si1311070vkg.5.2019.03.28.08.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gcu2N7j5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22a.google.com with SMTP id v7so16154873oie.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 08:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Jb39k20SMo31VLZxJp1U4Lz2Rbzo9nVt+PzuYBJPikc=;
        b=Gcu2N7j5C5dpPSj5svuACvfQmNPJKlxuGSJM29F5Xt3Ae9/SyTSbgokbIEj7r4w7Qx
         0S1Xx2eASZhLcfLFHnXdQdqiMWFPwq59NZ/DEMBfShd9PN2x+4Clb+o9yziR3svh0pXu
         NwHIdOY8dNXVzaoSh/tCdtDK1oUVrYS625btxeeQ/SycD0+076+XDst0hCP4PYTigyV6
         O6KPZ7Kp5iO1UMkZ6h9uY5nD9puTbLDL4TGl7mk963HC29DLzVN/QCkQ08DLeXjA6Cec
         banuN+ekfT/2gWE3moz9z7JKxiNwNSZ3IMMOQ4tGSjYmkc760+WgBSy8eNbp18hXUvCC
         pRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Jb39k20SMo31VLZxJp1U4Lz2Rbzo9nVt+PzuYBJPikc=;
        b=i3neiPCGNji/C1kqOKStL4bs50EBTVflB23vvzHjq5RaAhBxpYEw7wwRHfZIVMddg+
         4RDslWSmTkoP+MfCxiuK5ZceeF7rtH03E8qtzvCpD7Pdd5PVjAeQOdtkve0cHf7RL9D8
         rs/n56YPruBUopo2iEge/2BMeSyMf/iOn1usT8a679za3vUDZIimq9IYzfknsg7UtVvB
         8YETg58Jfh8wkBtka70Th7kv1lUSYLFdJ6TnI/yD8yh7iIfkyr8PP7L1pkOYspjquLSk
         lSH0voUKTT8KXvzN6ZolvkM8PlfnTCkHfG6lcetlM01bV0pYEQyjDgNZUM7f6qpehJGc
         m58w==
X-Gm-Message-State: APjAAAXPnt0kWF2DbOGNJYMqFszaj0i5qdMuqjWNmKFU+puMIZCUTuT5
	RZj9W04wcQ7uQs9tg70Q1nA=
X-Received: by 2002:aca:3209:: with SMTP id y9mr458083oiy.145.1553788417869;
        Thu, 28 Mar 2019 08:53:37 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:5d24:be3f:3c51:19db])
        by smtp.gmail.com with ESMTPSA id m21sm6532135otj.48.2019.03.28.08.53.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Mar 2019 08:53:36 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Use BIT macro
Date: Thu, 28 Mar 2019 10:53:33 -0500
Message-Id: <20190328155333.10666-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Use BIT macro, as kernel provides the macro for improving uniform
and more readable way to define these constants.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8192u/r8180_93cx6.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8180_93cx6.c b/drivers/staging/rtl8192u/r8180_93cx6.c
index 163daed789b4..f98bb11a66af 100644
--- a/drivers/staging/rtl8192u/r8180_93cx6.c
+++ b/drivers/staging/rtl8192u/r8180_93cx6.c
@@ -125,21 +125,21 @@ int eprom_read(struct net_device *dev, u32 addr)
 
 	if (priv->epromtype == EPROM_93c56) {
 		addr_str[7] = addr & 1;
-		addr_str[6] = addr & (1 << 1);
-		addr_str[5] = addr & (1 << 2);
-		addr_str[4] = addr & (1 << 3);
-		addr_str[3] = addr & (1 << 4);
-		addr_str[2] = addr & (1 << 5);
-		addr_str[1] = addr & (1 << 6);
-		addr_str[0] = addr & (1 << 7);
+		addr_str[6] = addr & BIT(1);
+		addr_str[5] = addr & BIT(2);
+		addr_str[4] = addr & BIT(3);
+		addr_str[3] = addr & BIT(4);
+		addr_str[2] = addr & BIT(5);
+		addr_str[1] = addr & BIT(6);
+		addr_str[0] = addr & BIT(7);
 		addr_len = 8;
 	} else {
 		addr_str[5] = addr & 1;
-		addr_str[4] = addr & (1 << 1);
-		addr_str[3] = addr & (1 << 2);
-		addr_str[2] = addr & (1 << 3);
-		addr_str[1] = addr & (1 << 4);
-		addr_str[0] = addr & (1 << 5);
+		addr_str[4] = addr & BIT(1);
+		addr_str[3] = addr & BIT(2);
+		addr_str[2] = addr & BIT(3);
+		addr_str[1] = addr & BIT(4);
+		addr_str[0] = addr & BIT(5);
 		addr_len = 6;
 	}
 	eprom_cs(dev, 1);
-- 
2.17.1


