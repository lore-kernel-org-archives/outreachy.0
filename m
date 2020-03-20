X-GM-THRID: 6806430751874088960
X-Received: by 2002:a05:6402:1d95:: with SMTP id dk21mr10266299edb.93.1584747060379;
        Fri, 20 Mar 2020 16:31:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:8548:: with SMTP id h8ls3889911ejy.11.gmail; Fri, 20
 Mar 2020 16:30:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlM2V8EKPOCPL160PuOG6B2CWMcAggAq9VY79RZkL/TU8JOKCLyzDyHZ2SiOx+Xn9xXtDf
X-Received: by 2002:a17:906:b809:: with SMTP id dv9mr10770173ejb.321.1584747059254;
        Fri, 20 Mar 2020 16:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584747059; cv=none;
        d=google.com; s=arc-20160816;
        b=E6pi5/ia4ZsNJ7Oh+7ezGSOy9XiYebjvC1n1xkiD0zfZtNp4OM8g33d68q0y2HR/JY
         aV/tO0JyZu7eOJLd6KwE+5edgFaguDHKYZzvdRJrwtl+e4I+5K5KIJqy622ehcW8KBQ8
         YlnZPIOHbZ16KUivlXFZaKb2F0J9e+NuZa1rXrThI9XlKr4arAJsESBu72SweEizIYU2
         YjIdiN2+bJ914P0YRdhZdMGGYYSUMBJda4wWHpwB08I7XUiIL3A/uc2gK+zo8g8pO0ej
         88JfRmv/D7jf/MEOnv3d2HDeP3rTxzHKoPS29vzWEtfTcRtwHIE3bbAITf+vYEwdYXac
         hN1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9ihwqZuNivlJWw+T/K7JCO5qtNt9JOk/oxlQPx3bcm4=;
        b=IGup/NclRWC+Fv5DTII2S7vcGpKDM61mSqcDZBwGvoMJAEWMRdNf/HmLhFwsb8akvr
         7bEy3OB62OVh1Uvg7YbdpgzRZgjsKiO6AFI9OPGmP2w5zq5zgOgi8Q0+POpGbtmQSdYx
         VsaWtqIE6o3dzFU3fskcoOZNNSh5J3EPyAyMpQZrPPXaVboIhmjaNG276FAomXtaJMMM
         z0wfGU5ZzqVjRf2SDjWXNPieVOIUWd3NF2BXngpiauN4IdFTydRcM0C+GnDHWIhRRFNe
         2MBLEHuK5RF6OQeW2Xy4M3XvEqRfByc93efZoCep6p6Q34NbwjrCoSn8i7P2AGzx5uMv
         wW+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhHtlKdw;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id f2si133536edm.1.2020.03.20.16.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhHtlKdw;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id t21so5861995lfe.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 16:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9ihwqZuNivlJWw+T/K7JCO5qtNt9JOk/oxlQPx3bcm4=;
        b=jhHtlKdwVbo5lpsVoSj+XBmtvQfZbxWB/fqFOUCOcXOqw8R+O8bP+uxa0Zbh15StGG
         HAUIlbVNHavciBHNGqvvy3DGxApsP2CR6eJ4OdCj5VOOvzhtLbvIR0tDbNUsVZXFH8e9
         a8viz+6L8KHVcmuifVrkAveu7LeIj9h7IdkawrWUwARLSVtrvBfgNTpY1AUzd8a1ncDB
         nuNSJ5ZDzvR3up2dHLMoDCEq/L/P95I6UYe7lDoV7jCANYV44hiKNVaCPNfynXon8opc
         ngeNDM+/BH36z9LwQ+OKax05+sMRvtaJfiWMHreTzh9mp384QMkJL+Zy/WbQzmaG8fzF
         prGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9ihwqZuNivlJWw+T/K7JCO5qtNt9JOk/oxlQPx3bcm4=;
        b=eWzbR3v+XL/OE3GnsppxWAZMfNYpgQhv+KNXhkTCpfJzza8FduI1KtFOtGfYJvVby4
         cQOj+6CmUm0xaw67nqx9kPnbl51TxJi8X4WH97gBLHqLAVy34s/0fbu5ykJoxQe4T82f
         11gXxI6dkxpkKn58vidikMVyB7A4x7NINUAizJEwbpjv+a5BcoSeLqAnHQr4id7Ob+Dy
         13NGuebWoNrx5iFA6E7ZX/2SZA8eI3t4PE8AARQssXr6S3v5yAlI+EJVEUweWI+eWeAd
         /mHivBSuhYJBeKjfnDv/TyLMKnmlAmtAbk2RXGD1EcrETTBmwwoco/QPxah25TvGMS/I
         ZN9g==
X-Gm-Message-State: ANhLgQ1ETOKX4dVpiZ5ECIPE1lFxF2d/jW7VUvUcJKN4vhS8WGvMKH9L
	SQ8aZ6APsqlRvvYywoDgWRR3JuqrIwI=
X-Received: by 2002:ac2:54af:: with SMTP id w15mr6704570lfk.17.1584747058737;
        Fri, 20 Mar 2020 16:30:58 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id u19sm4205811lfq.23.2020.03.20.16.30.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 16:30:58 -0700 (PDT)
Date: Sat, 21 Mar 2020 02:30:56 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dma: quoted string split across lines
Message-ID: <20200320233056.GA9027@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

quoted string merge to upper line

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index e619d75a..47f7784 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -241,8 +241,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 		tx_desc = &chan->tx_ring[i];
 		rx_desc = &chan->rx_ring[i];
 
-		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
-				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
+		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, tx addr1: %08x, rx addr0 %08x, flags %08x\n",
 				i, tx_desc->addr0, tx_desc->flags,
 				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
 	}
-- 
2.7.4


