X-GM-THRID: 6331266648892243968
X-Received: by 10.157.34.197 with SMTP id y63mr2450256ota.126.1474189519317;
        Sun, 18 Sep 2016 02:05:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls2088578itc.12.gmail; Sun, 18 Sep
 2016 02:05:18 -0700 (PDT)
X-Received: by 10.36.107.208 with SMTP id v199mr1623410itc.39.1474189518820;
        Sun, 18 Sep 2016 02:05:18 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si3919556pab.2.2016.09.18.02.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so5483780pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gLfyUo3P2m/84KPspu4vwpl4M0o6u7JhVQjzWFP+PJE=;
        b=jXlzsnnJdp5nmBaVh5t/baNvN/fByRL2kvrBcKF4D27nDJs26+sataNIa6s1viuK/0
         6BxRr9WXzKArg46VjtPEivDCWf8q32tiB7HDjYFxA1ivLeCLgZJM2tmbP6j/APZz3X9X
         YajyyQos4y0EQ+klS9yi4f7RhBKVrQX27/tQjw4a6IuWtO1DZYm5EHTZmRLfTAqp+wl1
         Dvtt6QSwpw8w28pgoRfmG6e/aiiiY6qgbeT6BDMGDM30fp5lQSOSuwTeY3yn0V6mvZT9
         kyzEE7GoaIYEUZ8wCuLf+hlZ2GCSzUEGzXEu7Z5uP7Jr2iejXR2ofC38QXkkHWfpak0G
         Up+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gLfyUo3P2m/84KPspu4vwpl4M0o6u7JhVQjzWFP+PJE=;
        b=ZRtCg1Bf5gUDlXv6VhxViTV2Ns/mgDU0tEe/p2cqxEagWkqrTosSRV/NEUjqN2askK
         fZXfntUTJUkIGJ3dRYrNJNcccID/2shL0faJ3uKAVlgTpfR1Cqmzf5ruMvXeuglWExAO
         +hrjH8tlNlZqyHazYSOCIQjdSzhRJt8CEpNoBxA2+wEZA74Sgl5a65/xF70OP/5WCZXY
         Bcp5GYC+CK1awupSgMlJtyyzQDt4Z4yxeiwZq9hje4r8E16LfTsoWvLXJFbChG/3eH/L
         RSstnTOocGneHJkiWyVgLviYDql7zDlHepfPablQbF/xpLBmERkevKK1rVGh8t3KYAOC
         0QZA==
X-Gm-Message-State: AE9vXwPMO4pcCn6cQIIfviVYPzBYkI8qp8p7znm4GkEdJ1GpTPR8hed8PHFuUFMWbkFmzQ==
X-Received: by 10.66.190.38 with SMTP id gn6mr20335123pac.8.1474189518655;
        Sun, 18 Sep 2016 02:05:18 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id g10sm63327644pfc.57.2016.09.18.02.05.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:18 -0700 (PDT)
Date: Sun, 18 Sep 2016 14:35:13 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/4] staging: vt6655: device_main: Replace explicit NULL
 comparison
Message-ID: <9223603338faf0d1fe00b8ee06b2275937166a0c.1474187686.git.namrataashettar@gmail.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474187686.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace NULL comparison to resolve checkpatch issue.
- x == NULL => !x

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 62418c2..f109eea 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -735,7 +735,7 @@ static bool device_alloc_rx_buf(struct vnt_private *priv,
 	struct vnt_rd_info *rd_info = rd->rd_info;
 
 	rd_info->skb = dev_alloc_skb((int)priv->rx_buf_sz);
-	if (rd_info->skb == NULL)
+	if (!rd_info->skb)
 		return false;
 
 	rd_info->skb_dma =
-- 
2.7.4


