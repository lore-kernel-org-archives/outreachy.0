X-GM-THRID: 6256792083376373760
X-Received: by 10.129.155.201 with SMTP id s192mr19184565ywg.4.1456865618466;
        Tue, 01 Mar 2016 12:53:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls3663868qgx.8.gmail; Tue, 01 Mar
 2016 12:53:38 -0800 (PST)
X-Received: by 10.140.100.197 with SMTP id s63mr331461qge.4.1456865618053;
        Tue, 01 Mar 2016 12:53:38 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r75si3037055pfr.0.2016.03.01.12.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:53:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so11543640pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=81KtVIBmWPDIraEYaEOcNZQ5j5xqBdlZ09lyhoErw+I=;
        b=YP+MlHwonGidWH7zk1yleZv3vAQPoxCXvMM/5tmVnJ8lx1YZUIwh3OWekNUhNNccs+
         /qApMv0briBZ6bxd+shp3NJQ5U3oaPQR89SRUa7xG2LtMkCEnkVnJZ8SjVJ/qnBzX1uT
         TsozMaJVZTxq976kmlEDn8xAcj7JPcZjSIm0wcN25bgu6anNUp9WS4gsaXl4lCdnEbY7
         RwJgX4DfwyDzREzx35V0WlR86Yr/l30LjcKrKaeTasITKVD1goZZwk3f3XBFxy1tG3M2
         Mht3Ee9yzwl3FVf4F7YoV0uPVS7sKdRWMAqUsyfWvwgKND6Pd+2EsgpTRU37OEig7zXu
         0I3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=81KtVIBmWPDIraEYaEOcNZQ5j5xqBdlZ09lyhoErw+I=;
        b=VHACUFzCA9jTsN8ZVsI2jKQj8gwnJOiLTJJbNTRbQWF9W/H3nOi1crPo2XKfjLf1mj
         thRm3Xra4KzfPpQA7NhFA0Ztr17fBWew3NaZblSg7jO7OlNbYOxZYP2cRYcDAbXAZ2Es
         1QzaadTNcfZalL7jAIyc2gQ+gqes6FOMgal0LAl3K/9w7E0vf7CeAk65rgjegSLe1U7O
         N3k1zUSIMbuAZ8w/enpMqb8BripXZ5DgBoQupaurpZoLy15DIKzH2+UzxJs6o5/Cv46H
         A60qKbBpLsn++HEMvDHXoQ+BydWB0f1qX1fnjkiu0B1Lhd6dhHNwmXnI7QySGiRWYQFD
         u5og==
X-Gm-Message-State: AD7BkJI+zBNKS1TFHha90XLY7VW3X6BJflKNLRcw0gYxevlsnfu+d2Ya01ZKfZNfXQsfxw==
X-Received: by 10.98.86.69 with SMTP id k66mr25960171pfb.28.1456865617872;
        Tue, 01 Mar 2016 12:53:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id m16sm47552372pfi.75.2016.03.01.12.53.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:53:37 -0800 (PST)
Date: Tue, 1 Mar 2016 18:23:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] Staging: iio: ade7854: Remove unnecessary goto.
Message-ID: <d5f7793444c354f32780fd63a9df96566605254f.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456835561.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7854.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index a838835..80b1968 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -417,7 +417,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 
 	ret = st->read_reg_32(dev, ADE7854_MASK0, &irqen);
 	if (ret)
-		goto error_ret;
+		return ret;
 
 	if (enable)
 		irqen |= BIT(17); /* 1: interrupt enabled when all periodical
@@ -426,10 +426,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(17);
 
 	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
-	if (ret)
-		goto error_ret;
 
-error_ret:
 	return ret;
 }
 
-- 
1.8.3.4


