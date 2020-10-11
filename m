X-GM-THRID: 6882312665802211328
X-Received: by 2002:a67:cb02:: with SMTP id b2mr11211182vsl.41.1602413287759;
        Sun, 11 Oct 2020 03:48:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1587683vsd.9.gmail; Sun, 11 Oct
 2020 03:48:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmfdIK7AYBUgd2tXUaT5Y62VnpgfFpSd9DeDN2Mp9gP7zGJJP/bSDRUkau99AK3gDrKYgt
X-Received: by 2002:a67:2645:: with SMTP id m66mr11873014vsm.16.1602413286374;
        Sun, 11 Oct 2020 03:48:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602413286; cv=none;
        d=google.com; s=arc-20160816;
        b=onUlcCx/desA4YdHsOBgTYUfq/PWVBldnide2hqYt0IbnTGA4FxYXt2/yohvOjavxF
         wrX0BsnkPgqN9k0Q7QEyOuC/8fsFupV+PyYxRDvR4t1mipi5tw6vVRaj1Ogygl1u0M6R
         GlpbzdioMYLh4zOxVzvr9N4w2ww3TKKDj5UosP7wNfW3rL+7b+ylIRAsBm2bK3jLj6hX
         Lz08U7GTdBnXgNNtJ5LKRL3cCUAvb/al+lWC64l07IRyQ9/WbvXzYJDkI//WsrpW7Llk
         kXHlBdUHMHRyo4aAiT5XIzmw48ljePRbR4JsIACYm50+FlMtf8R+rq3LyZgILDeXVfi3
         IrmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=deTcVWZjgqYO/HLfkfRk5fdNNDOh0Ncp8EdEY6lKOFw=;
        b=RkgllsKqphzjt/KimDcm04PNjUHiFt6qx4cL6U1v6zrO4otMwZI8TVQzyfUbhaJNft
         DbDlj8AEs0XLPqDjijQO3mvEG6SjS/vMPQig975hmmPuVyCJs3Tev06OAlsqOUdk+uGK
         nyESF0wupB1QL/vwa7RgcyVBHCVcVwYvkzoYvgnNKh3ABZUNg/AIS0OSioaNcBOxUBln
         NpnvS3Ck+5pFxoGJ1Ddv4XvyMFeUnY+wed4hrVcIeE67T1N3QhNA5xMEFTELc9A6tw4v
         k3e4MuxTLgXWV4yvlrtm5yKt118s6ouMJ/tFROt/7WHlNH0QGDTb0K3Guu6CMEAB77EV
         luNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3y03Mst;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id g23si667158vsa.0.2020.10.11.03.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 03:48:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3y03Mst;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g9so11261081pgh.8
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2020 03:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=deTcVWZjgqYO/HLfkfRk5fdNNDOh0Ncp8EdEY6lKOFw=;
        b=F3y03MstqCtOnJNCSDX1Zb7+EGV+MRYU/fh+rlts6ArMyKQo9C7ZbmClsYK2wlmiJP
         +S0wf1JjLNejeNexAGgz6gpHjBR92TbU8uUaUlDG3+Q7zFHs/GoO2MwlNbAQDKvq1v9B
         Xlgb92TdVpSm8U7tKeTkGKWLOyrcTfSYs2HOlyQzVFIHlxaVRxkijfwTVgPsdvE1xcWQ
         nQEdK0eQm1iGrjkVbcTWQab6L25lwxBQyaeIXf7iSdjsN7O1kk1ZUYDU4HcZfMoSx/qQ
         MBn17MjCpZ2gsJaLRVSAHZxVa+uPY5VU3++UQG/VSQvWdLRlrN64FW6qPgWHpPrpbGnP
         h8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=deTcVWZjgqYO/HLfkfRk5fdNNDOh0Ncp8EdEY6lKOFw=;
        b=Ub+MsUQ17CUoFuX0BncQIkg32/z1/Nauodi+SwoK/2UDUuunf+UAb3whqpaGuZs20G
         YYwdjSWjr2vwsrX5Rnkzl2pMn9eymi8wrMks45IpkkyAZrJFiKhL1otNxi00h5GzjwLM
         mii/OxW1Zy6AUGaOviWc4Qc3YYt4IIGWqeL/UWXrTBwbHSE4MFSz5RCFYv0QRBQtej0G
         4p3/DkTuFbsd26Qr70ny0gGkyPhRLJTuJr1+qdO/GtbGNYgGVtE2xXmTsnzElUeN3z0N
         4eWiLklwvDpmWcGLOihpodghykUadJH2UVRr9/DATrWVtRdtCw2RAFVy5otu3GyfQC8J
         AmUQ==
X-Gm-Message-State: AOAM530zQzDybqNU3QDvxtzpPJ8kpkTXr9BEQkEBbqD3kCSbyuf0UpTA
	pQJbrVXYE8PhrQle10a/ziM=
X-Received: by 2002:aa7:8e54:0:b029:142:2501:34d2 with SMTP id d20-20020aa78e540000b0290142250134d2mr19031913pfr.43.1602413285617;
        Sun, 11 Oct 2020 03:48:05 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id z8sm16872683pfk.49.2020.10.11.03.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 03:48:05 -0700 (PDT)
Date: Sun, 11 Oct 2020 16:18:00 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adis16240: add blank line before struct
 definition
Message-ID: <20201011104800.GA29412@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a blank line before starting structure definition as per coding
style guidelines. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 5064adce5f58..8d3afc6dc755 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -426,6 +426,7 @@ static int adis16240_probe(struct spi_device *spi)
 
 	return devm_iio_device_register(&spi->dev, indio_dev);
 }
+
 static const struct of_device_id adis16240_of_match[] = {
 	{ .compatible = "adi,adis16240" },
 	{ },
-- 
2.25.1


