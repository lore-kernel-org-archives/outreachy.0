X-GM-THRID: 6671219486697193472
X-Received: by 2002:a5d:9715:: with SMTP id h21mr7492946iol.266.1553264327724;
        Fri, 22 Mar 2019 07:18:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls3260402jaa.2.gmail; Fri, 22 Mar
 2019 07:18:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYIvSAQJcN2gSVrioKCdA7pxuzg8SH0pPhW20gxAs+t++i2498IOGLEibYdRKDF88icgRe
X-Received: by 2002:a02:b703:: with SMTP id g3mr7571048jam.106.1553264326836;
        Fri, 22 Mar 2019 07:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553264326; cv=none;
        d=google.com; s=arc-20160816;
        b=vzY/CuNgES1tJWV2mN0/5RcdTuuoOtK22aI5Ok0PHH0SlMKB1hX1OUpIpsx6BvZ7d9
         onZO0u4VmLgy3mae8FyVsYlb2hZ6wMu4w3lR3CPhcoXPa25qSTBvRc16iFfBxFhGbDDo
         StnklRSin1Am/sHZ34egv4WNMprtxwyitY9WlGtuMBISseolg/MkSoci3OvojWlQsPIQ
         iBOK20Z1siC2qILz47SXIgI+KXzwOYCRGH1TeNZjfaq2CqjjNPRsbQmFXteE5oLUuLav
         CG1WFPbbPU9ajjUtR/1ahKxR3gOpe9Pvwg9ttkQL6vrJlWGpDkLfG0vSpC6U/7zgXbup
         v8Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gTHAuF5j+ieOygcWkr1ysMsFm9hBepPihswaCqaT1fI=;
        b=ukJeV1gP1X0fSWOlQadxpoMGMBZtRfKGfHnLpzvWr/WrqviAQxmakpc+T5oWAd/JNb
         Y9M1G+t4niLdQVfA0ZFm9qQ/uygeTkbyC+zicopbDX71UllTsv5U6LUt8r+YBQ32BLbh
         CFGgh95/nC7hNNe1LXlhUd739lzo8cMj3HHO1D2SrdMDgSiHzIqDD4P2HeZ0CgFnEdh8
         A8PEWBMPyobVUFfheLbOh1D6xs9JZe1P5Cz3MfLAPHnYv/zXSJ/n43AsRZlrykxewpzV
         5Cc6hS25bqZGnWog9scCoJhEfWjVL04YB2w7vYoZAFjvgBh5v11PAhipfcnVjAnqAoWx
         3hAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iq0RBVIf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id e74si676484ite.1.2019.03.22.07.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iq0RBVIf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id r15so1626249pfn.9
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 07:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gTHAuF5j+ieOygcWkr1ysMsFm9hBepPihswaCqaT1fI=;
        b=iq0RBVIfZjaHmd8BGzajwck9pZLScJtrtb0O9Z7RoJ21g+MkJ9nOgNDV2BtPXSlYMw
         GkLWslvZjFH0+v5TfAnSmv13/Dl8dq5WHctJmLDGFpaQUHGF3yQa/xVoV16OjG0Vkawg
         lc1PPMwcBMT+GCaBn5CALq7VOyddahLUW2QzIEWbIMpPLlqCxWPl5OIzuSbO70gqDhJ/
         bbhrHIRVei4zcw3VSOWBUMO+Wr0p9IYABom8DieWOo3ZlgGmRXpB1FtGGVE+wS59S7mA
         XyPUGE2lApSiUrJASEjO1ikn1l/LayvtpjobkR9AKXZgu7nUG70lv3IDgxtAqpz60N+E
         b1vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gTHAuF5j+ieOygcWkr1ysMsFm9hBepPihswaCqaT1fI=;
        b=Gcmwq/pAywyiQiN3LK9CS1/NnihloorYIMlv1LAFY9Gz03VoaYVSSXdCRtTkQv3upx
         5g8oSBW0GJydxpa+NnJ/pOxm9wM/7C3BszO/qEa1qEn7Xqgd/nGdS9H7LShYM8h2SxGW
         eS9OFJk15DCN/gqtvqVYw5PZDO/wIdMZ9mcMkQ+1QaoOzlRsK7mBYJlIxCaNfUR3coEq
         TfBLW/rxC8MmCvaKdu/wf/PffYRbNcLgKNndjiqrlcU/Sy8I/imHmPU4Qq1D8m7Cfwas
         9vRGDowotXcpsBKulTzWGkgasSPJGK74Ky+sNfvoLsvxcz4QsrcEVd53/8FKuXe4Teou
         WRVQ==
X-Gm-Message-State: APjAAAX3hYEbfNfKQXal8Oh9zCND9JZxSyvX5f7L7D9wwv8NlEM9dORy
	mmvbpTk0xI5AH0GF2MEaSmPDkT1E/3M=
X-Received: by 2002:a17:902:a413:: with SMTP id p19mr9897390plq.337.1553264326224;
        Fri, 22 Mar 2019 07:18:46 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id 7sm18648191pgj.64.2019.03.22.07.18.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:18:45 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	=Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] Staging: media: Remove unnecessary print statements
Date: Fri, 22 Mar 2019 19:48:29 +0530
Message-Id: <20190322141829.8440-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove print statements that provide information about error messages
when memory allocation is failed.
Issue found using coccinelle
The following semantic patch is used to solve this:

<smpl>
@@
expression x;
constant char[] C;
identifier f;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

if(x==NULL)
{
...
(
-f(C,...);
|
-f(...,C);
)
...
}
</smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index 6a1cee55a49b..2c5e3dd58cea 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -628,10 +628,8 @@ static int csi2_probe(struct platform_device *pdev)
 	}
 
 	csi2->base = devm_ioremap(&pdev->dev, res->start, PAGE_SIZE);
-	if (!csi2->base) {
-		v4l2_err(&csi2->sd, "failed to map CSI-2 registers\n");
+	if (!csi2->base)
 		return -ENOMEM;
-	}
 
 	mutex_init(&csi2->lock);
 
-- 
2.17.1


