X-GM-THRID: 6331266648892243968
X-Received: by 10.36.204.197 with SMTP id x188mr1689764itf.11.1474189559514;
        Sun, 18 Sep 2016 02:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.19 with SMTP id x19ls2622268ioi.43.gmail; Sun, 18 Sep
 2016 02:05:59 -0700 (PDT)
X-Received: by 10.36.69.17 with SMTP id y17mr1669682ita.21.1474189559132;
        Sun, 18 Sep 2016 02:05:59 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si4393812pab.1.2016.09.18.02.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so5484222pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/w9UqfHuX44TaV5lnUCcueiuwJcKGtUzC2YWdfNgfhA=;
        b=TLNeRO7ClsfStPeIx1msPWCRMhIE8DkY4KxH0KnjNYHfb5yjE3OjoCJbwhofcF7Zvd
         CHp7v8unxMjmpwV3NJcUgrn+p9D5LCfxVNkAurV/oN0MzoxWzfe5nhcBzaYPFNoqU4bw
         5frEycG7UF1/4SoL1W3uWyru+hjXCPcyB6CsBMBl5DLp2E+JoTg6vbR27+dXdxDrhPfG
         XzR48cR6d3+ywbrxom1D1fsEy7dGucVmEmHy7hw+1lBwvKs2hRXWNvc10GiYIdVk8lFW
         p+a2JSNayGmZtlQ0vUzijluPd0tR2oh7WDJisLv3xh7Qc0c+a95WaGhuVsHuo4fTlY+Z
         ezqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/w9UqfHuX44TaV5lnUCcueiuwJcKGtUzC2YWdfNgfhA=;
        b=X7lamVMzkvtV17SsCGRU7yiE25NhDLpmBL1qXgyVLIVZKy3c1wXvRWiPKCzzl+FUcm
         04bBUFhdKKDjvoMwxkVxLOlQabNJPG8i940SwSFR6CtdAlJgakCiUECMQRFxlB3RsOPq
         OZ0VC0AQ5D2ql8ztA01vLq42dr+sicVBlFT1zAoxIr9xt0hWmklra3wMDTBQoxXy8uvO
         WDjCs3kfCwDxdxC57FndW9Q+03OrDYx2UdNlDoBxzITJLKwQmyyrRl+c8pPcTHINhzAC
         mP8XOXhv+/un7N/qaxd0YIDgLkjXKWK04gFpxMpdEfrTngB3CJzkSWfJ4uUmc3QldrZI
         iDlA==
X-Gm-Message-State: AE9vXwM7vJbzhAOsqguxbUbX/ryEjQVCWNjsgHyU4k71LLZSy107QJYOHBaEm3WRf473CA==
X-Received: by 10.66.245.204 with SMTP id xq12mr12971108pac.37.1474189558960;
        Sun, 18 Sep 2016 02:05:58 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ah5sm23332761pad.30.2016.09.18.02.05.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:58 -0700 (PDT)
Date: Sun, 18 Sep 2016 14:35:53 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/4] staging: vt6655: device_main: Break up multiple
 assignments
Message-ID: <7452f9668c5132d600519456ac4f627ba94cad9a.1474187686.git.namrataashettar@gmail.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474187686.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Break up multiple assignments on the same line to resolve checkpatch
issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index f109eea..86532ca 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -669,7 +669,8 @@ static void device_init_td1_ring(struct vnt_private *priv)
 
 	if (i > 0)
 		priv->apTD1Rings[i-1].next_desc = cpu_to_le32(priv->td1_pool_dma);
-	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	 priv->apCurrTD[1] = &priv->apTD1Rings[0];
+	 priv->apTailTD[1] = priv->apCurrTD[1];
 }
 
 static void device_free_td0_ring(struct vnt_private *priv)
-- 
2.7.4


