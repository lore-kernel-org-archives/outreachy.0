X-GM-THRID: 6803023005726277632
X-Received: by 2002:a05:6102:677:: with SMTP id z23mr3041915vsf.202.1583952252020;
        Wed, 11 Mar 2020 11:44:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls398088vsi.6.gmail; Wed, 11 Mar
 2020 11:44:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvJPbqrxSW4fyYREG47VO6bHVKTEvt4qVS/o7TyyTWJsZLG2Ycv11YsSA4Ux0BwOw75cQRr
X-Received: by 2002:a67:ac4b:: with SMTP id n11mr3219314vsh.44.1583952250684;
        Wed, 11 Mar 2020 11:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952250; cv=none;
        d=google.com; s=arc-20160816;
        b=XDxdPULyOJ0ORiwPYKTDk60CEbET3HKhPD/3Xx6Q14yTLTZLsEh9wM7ZXOWnuI/sP2
         ek0gyTh4XQTH2zJBfx2TzVbCMz457onAquDbPFN9aax4uaN8T0YMYHQ7FNDaW2LvwHuf
         NKpcuXFxsrr482G9bwANnEr5uog5QP7Q3sG4iDBDrtwNWGiMMuLl1vWJKbGW57RMtej9
         czCv+UyNzI7d2d7zNEYTWS8Xj2GCxyZfnzptK3XyT0Jn19UqKkwyTPwkZTOYlM2RnOcq
         HA4C6lhG3ltpZjaNZK6xgipffAxrsMF5cp+FoKX4JUfPNHx5bY5unw2mATaEsBjloFCH
         JkYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=n9xE96EueEzsHooRf/MnlxebG9Iy8bWQzOv47yUMvq4=;
        b=XaxP4d6TZBDSyy2Gxuw67tmPdGXG3T7K5PjpPoXHRsqdJ5Th9RJmDO/H/Qus6Q7JEu
         ul2yKEtmY1W7Fk4vTpnVqpycKkgN3WSPVjf0SREEUzdm5fg5NfNAxyjKjHMun1GwBfmk
         FG+Tn85IaYBnuVlQKP2GDTxDD7vSqKd5sVVS8Tc6DW4pbYaqDSOzsCTSIwdwqQjPsjM0
         se0kchqcv3wXAq28VjIc34RtZLT/Ryw8c58l0PPg8q5Ew+7p8JpbEunJWi396SXhaBlY
         zB3TOX7fVbwkxOGxirbku/EefZq/UysMrJmkZQdjQjcsPfdsOnMPu6ZTm6qZTgRPV3KB
         SfHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=1lqjOOzP;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c3si214273uam.1.2020.03.11.11.44.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:44:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=1lqjOOzP;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x641.google.com with SMTP id t3so1490528plz.9
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=n9xE96EueEzsHooRf/MnlxebG9Iy8bWQzOv47yUMvq4=;
        b=1lqjOOzPouPsqNiPBZMcXdmbcDlzCsPZIz1rHyXmJvJFuKQ1DOWEmcx96Hn62EFySB
         UlgDUDiagn9/HPPoMr0WXzolhxO0bzpRUjF6BmmF6OHIs0kQH+85FQTrvjWt7JJXeUn2
         m/mhNwc90imShHV4JCVKqNMz07Rbm1rWki9jic1Hm48FWJwpRFn88tRmDGdAtXE7Dfvc
         najW7k7DrF2/ajz6Wxhw0I7MB4V1zdLWAMqsOc8lY5WKFEWa2szI0RybaYa2McjqONOz
         /juAQ78fyba8dufxF6bfS+t99PsypYOYQydjj8lJnqUjXkIwgxLTlbBHHXoV1/NoIobA
         Zwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=n9xE96EueEzsHooRf/MnlxebG9Iy8bWQzOv47yUMvq4=;
        b=mdgVmL7+MS/2DSagIHNAVMhk1KRIzraMwqLz6klyBINYVYfek2jlnvVft0BDM/OwGG
         vsuRufAe9BPhsFU8G7ORIgXCUfV9IQILCh4vn0T31sHNssWYE0mP582/BpIcAcS4GW9T
         rnYgREVrRT7HadMVIsv/5ovT771OJwUs0af5gP2XMuRkIYLiSmzgg2CCpbBNbEczOPH5
         01llDgw2Y7XO7sqwJxdp7IdGgVuiSmOp09rGTw/l207NFDgo6Q9vOnftyoVEwky3UbPN
         Q7rlK+yLkbLprAxiuOZDx5z9D4d6Y3sbSIaLXTQqZilDgMQlFml2dqM/sgV8306J9dAu
         bluQ==
X-Gm-Message-State: ANhLgQ32wWW01ERs8EEWVRY93XYnuVLaf5arFF4uN2ePlMMIye2brz+d
	TGFjtF10m6lWf5tc72GG3oiNkA==
X-Received: by 2002:a17:902:b903:: with SMTP id bf3mr4364254plb.144.1583952249025;
        Wed, 11 Mar 2020 11:44:09 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id 64sm52406569pfd.48.2020.03.11.11.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:44:08 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 5/5] staging: comedi: drivers: use unsigned int
Date: Thu, 12 Mar 2020 00:13:27 +0530
Message-Id: <20200311184327.25338-6-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>

Change i's type to unsigned instead of signed. It's always positive.
Reported by coccinelle.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 06ed4b1dd875..034cf8dafaf0 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
 static int ni_ai_drain_dma(struct comedi_device *dev)
 {
 	struct ni_private *devpriv = dev->private;
-	int i;
+	unsigned int i;
 	static const int timeout = 10000;
 	unsigned long flags;
 	int retval = 0;
-- 
2.17.1


