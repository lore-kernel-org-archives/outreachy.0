X-GM-THRID: 6613877034371252224
X-Received: by 2002:a02:7115:: with SMTP id n21-v6mr5202728jac.20.1539913246930;
        Thu, 18 Oct 2018 18:40:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7849:: with SMTP id p70-v6ls421680itc.9.gmail; Thu, 18
 Oct 2018 18:40:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63WOc5RTCxDnJ1MwVqbbZDDblzocC2/WQ3DM3Nkx7ABI7bXgyRxfbCRwPJA1pLYT2Rfnr7g
X-Received: by 2002:a24:6794:: with SMTP id u142-v6mr2151733itc.9.1539913246005;
        Thu, 18 Oct 2018 18:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539913245; cv=none;
        d=google.com; s=arc-20160816;
        b=Dvwb+WLqsuFFhGocdjfklSDRq5AAzl2ioyxKSZ7MjLRn4DOGP5fJKJ0Bm7dqlMO4fs
         9Gv/oQaf8rKxDfUns1HQLLa0snNDp70p1UNw90fH20OJ+GRu2mOKH9BRS/5EvcEjqff1
         dNUtuEPeAb1KFghVwi2vo5yPJvO/ttpcoNH4r5MLvxccx7f2+MmS82SI/SxNZRdyQvWV
         TZfp/MiDCPF8TztPf9ypwG7QEbPNzU/Sv9rp003UUs5AuxFSAYavDSsPRoXRNYv8HrKR
         cI7V/8bCbpgbncydOc+Auw1mlZdn1hX8ghLXzwhgq29/EfT89UUaZbLQdOp0v/jgKPf9
         +6AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=H1RvcWoCbKbQVeN7Gah0F+8JzNSYeVzYmiBH1WdWq6Y=;
        b=PxF5qoB7Uq3hhauFwyqrXK2pCzll3kDiO7ZjvcXn3rF7s8qTGu67tbLrEpKVIWidn4
         XXDevrbf+wnt+6JXpjERtQua6IwzXs824100Nva2/9/Gwjd4mwERzzfsKAyj2WEnhMOG
         q5Lr4tzdRZSFe2PJd6oYcewg/4p3ilV9PXFtB/IRBsj1hI3uuG9JAKFL2Wykp3nF5ggm
         F8Btrzw0ot6RpAZw79q+1z/ncedZNzU4xET25J7pLht2miWcxf1zxKmmpTr6NURLymWk
         FV0OKqbHIIxaAw1Ru0i/8uT6oNXcPDctjraij1sOzAj6x1mq9eXK2CUif+SzR0Uepgph
         N3Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nq+eGKfp;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l12-v6si10111ioc.0.2018.10.18.18.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 18:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nq+eGKfp;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id e17-v6so25612353oib.4
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 18:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H1RvcWoCbKbQVeN7Gah0F+8JzNSYeVzYmiBH1WdWq6Y=;
        b=nq+eGKfpRU6ZGLMZe+apdNrMrzO7jjpltYkmRcsp8OXgNlFX1IdboO5VWmC5MOnb2h
         0ato4fginXbMRIo6NbPnR6qHEomk6lv4IpIPiyGIfQpHv898HXd6YJFwK4JtgEzD+Bdn
         RMjO1NEnbHs4amqPLi5Zrx96/QhrIrMYgYidex9JG6UGwfiMfX1FKLvzgfsHvOVMjyLu
         V4hAQGFym8QdmmXVJe8Cqwuxi8s8VpF8015ihIe2cBYIeIM8spYE7rYCbOPYfEEAJctH
         cg3JyshC/UWHcKVI+ialUnexoskPA/QDLY959WZC49TpBQciNWTVBNFyIxyZ+tis1dPf
         4ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H1RvcWoCbKbQVeN7Gah0F+8JzNSYeVzYmiBH1WdWq6Y=;
        b=QJLliUi5wSThu0vmmt1+HZgwZW8ZRNRNe1GWtlWVmhMdNq2han1+iFSNyFz/x1r66Y
         xl2MKR3royGLd8YUe06OtTzXocvUEEntdjHCdRrRuxk00Aud2erLWbsiXlCTOulUsuuM
         jHBszOVN688leJnz/I3GzHVeJbFBgbpO6UKxb8GXIuFpzeazf8GNI7Djo3LR3Bsk/aki
         ft4HkwkxaE6y/t5+PYTJdZ0Oz2nvdq9UKGMa6S6WizblA2g1zobXzeCw9Hy4EZvqcJ4C
         sAFXwTZP5jQBPlLjJDmxn7H5S8FMUnFCd5mGNNzi00Y5OgFTsAbFV5qDZMwHyJ334t4/
         vesw==
X-Gm-Message-State: ABuFfojb13Fz14OwyNV0n9mIbKS95ydHzZQr2byhxqfNVLqDONy6eO96
	L4Rh8RgdAYA1oIqF274Z1pb5MeHwzoU=
X-Received: by 2002:aca:e64b:: with SMTP id d72-v6mr16600935oih.314.1539913245358;
        Thu, 18 Oct 2018 18:40:45 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id 111sm7787505otf.51.2018.10.18.18.40.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Oct 2018 18:40:44 -0700 (PDT)
Date: Thu, 18 Oct 2018 21:40:41 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] media: imx: capture: Remove unneeded variable
Message-ID: <20181019014041.GA9250@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove local variable 'ret', which is used to store the return value.
It is not changed during function execution. Return the variable's
initial value, 0. Issue found by coccicheck.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 256039ce561e..f50f34b59694 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -536,7 +536,6 @@ static int capture_release(struct file *file)
 	struct capture_priv *priv = video_drvdata(file);
 	struct video_device *vfd = priv->vdev.vfd;
 	struct vb2_queue *vq = &priv->q;
-	int ret = 0;
 
 	mutex_lock(&priv->mutex);
 
@@ -549,7 +548,7 @@ static int capture_release(struct file *file)
 
 	v4l2_fh_release(file);
 	mutex_unlock(&priv->mutex);
-	return ret;
+	return 0;
 }
 
 static const struct v4l2_file_operations capture_fops = {
-- 
2.17.1


