X-GM-THRID: 6331266648892243968
X-Received: by 10.107.6.208 with SMTP id f77mr9972880ioi.32.1474189497273;
        Sun, 18 Sep 2016 02:04:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls8237408otf.43.gmail; Sun, 18 Sep
 2016 02:04:57 -0700 (PDT)
X-Received: by 10.157.56.142 with SMTP id p14mr12872448otc.4.1474189496992;
        Sun, 18 Sep 2016 02:04:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si5536470pfe.0.2016.09.18.02.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so4286329pfy.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=k+/sehhwNKcuH5XK1d6uog/s9rb4Zgizn8lBMh7JdKc=;
        b=nqY+Ljw9zddfy5WGaecAw+MUOcA2adxdOjIRPzsfWDvs5uaQtJLg9UXavXx5IIM+sA
         S0X4hXs2BCz6t1YpsAuflEBAAOH+3UuA3gkB6JtwNadITtQlT69tsc1zr2uvlfJNhL/C
         ubQKUNRXTZhY0zSuRQLrsTI6mcTf/2m3tYXF61pf1RORr/MIn2kM6+YVHbYP6eTMaCbk
         phg4PIr5gINKK1NL0r20NEE8/IC/+J8YjTNn0EQBO2qxYNGhn/hEbUnjaU3y7g7RindW
         CmqinKdflAtDyzsflOX3j9y4Xooop54t+4gfWjlBYVg2KNhFmQTyTpafzpNXUSBz5fhQ
         apUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k+/sehhwNKcuH5XK1d6uog/s9rb4Zgizn8lBMh7JdKc=;
        b=I+HPxZQ03jAMGPFMPnn4acNtTgd9O+e79dxTEnlDvzAXKDQGjLl7dWSB3EAJ+Slq42
         ISU7BehnvcnDbx+UbdmmmW9k++IA7eXp98NK6fDOMhI7c3I1/oTmWmDUALqfVOkfUHRV
         IIpXhf6LZmzfmgxUrryPpmU/kEukaI4TD8MJlnkBdnz8hQcJ48W6K3Z2GOFlIxxKQ7b8
         lJRBnlAV2Si+/pIdLBnmo6kW8OfLto3HBX/A4iQdADcdnbrujNnp7Dz1WeXlXzVt9/xd
         MH7Bw5owLx/dgaFApOyrhTiBa3r1tCGfT3uUQrVnFxyNHnpWV3GwOxnAtwQj5XV5UQuK
         ZqYw==
X-Gm-Message-State: AE9vXwNxVsFSWjHfbBCuUL6UyHtenshbW+CfSIVx2gJ2g2/N1QDXp0RKbJSzssedouXTZQ==
X-Received: by 10.98.139.220 with SMTP id e89mr36801378pfl.125.1474189496794;
        Sun, 18 Sep 2016 02:04:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s12sm63322624pfj.73.2016.09.18.02.04.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:04:56 -0700 (PDT)
Date: Sun, 18 Sep 2016 14:34:51 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/4] staging: vt6655: device_main: Replace NULL comparison
 with !x
Message-ID: <241ad34249b77e68f1a52ebe7255747c77e43645.1474187686.git.namrataashettar@gmail.com>
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
index ed12b5c..62418c2 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -477,7 +477,7 @@ static bool device_init_rings(struct vnt_private *priv)
 					     CB_MAX_BUF_SIZE,
 					     &priv->tx_bufs_dma0,
 					     GFP_ATOMIC);
-	if (priv->tx0_bufs == NULL) {
+	if (!priv->tx0_bufs) {
 		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
 
 		dma_free_coherent(&priv->pcid->dev,
-- 
2.7.4


