X-GM-THRID: 6807662174396219392
X-Received: by 2002:aca:b308:: with SMTP id c8mr2378595oif.131.1585032374490;
        Mon, 23 Mar 2020 23:46:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls7274216oto.3.gmail; Mon, 23 Mar
 2020 23:46:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtaG/MHh0tMF7Gx0X4iPIHBhk3IdkiGbXpLI+5mQCoNPkJ4TefTLykY6d6m/5yK7AxHtyPj
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr21188382otl.325.1585032373328;
        Mon, 23 Mar 2020 23:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585032373; cv=none;
        d=google.com; s=arc-20160816;
        b=yR7iOVr2tCXlpPsKuCGAxzV7a0UtxnEIYsqLMhCbfoOixKZ93Nie3PQKAH+djNHEz1
         LXz4jJxjUF0/9QugI0R2AILrAQaRGTU6ENPPeVQIaWa9d5dTLEOJevrF4IBOp/CDPNMV
         aiBbxSvu9b9j5jzrjTqd6r7H8VFjbP65roRjkgFoR+qkVXbIezANKnMMLDy3+U6tyhB1
         rWTncqwsiI1kmoMKnBR46cMrI/kVzHaRFYdczOQb/+co0mXsPICKM4y0j2hJ6YlQO9xT
         w6DdtG4nhP4BbTMRsttVEBiS2O8ESGh0Y5T/S6EpTOx2tmRTu0Hgcs1H91io6j0INxSf
         WLOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=kUT3NOOW1HkbrXBq92LihTXkhu2X9pF8JKpZ5cIiWxIWv/KJuwa+NN8EtafZTuP+BX
         emwmVEw+wcPjtFtZDJTk9pHMp4VUL7MOdkaMF4EbZ8SY00q7P9DmGP4a/Ski3or2YMgM
         dvkJ+ZUk/2esniM5CDznGgzNpPD1kDCorQAvdcHSqw3Wk6hCv5xBr2zFa+H9u3cWig+a
         y1laj5MKhj+sB8X5EEbi40/lCrIe9R6Wj/9ZenRbqpMVqPMfNOmMUgGvuwcTq16hYTiH
         O3stzS+UeD1QEA40y2se9xq0KsIaQbGNZooOseQXLRrCft6T4QhceYCAhYespBNERfQX
         iAsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b1jpTp4B;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id x23si819718oif.2.2020.03.23.23.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 23:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b1jpTp4B;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id k18so17537078oib.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 23:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=b1jpTp4B/e8ld6W7K2xPIhclIcEVsAnvAe+EMuzBiS31/s3QhUZXKhkCgm3fPyQ1gx
         TQ20cmvwMjxCRuIA8NJ79kYdOSYNrlNgQp3X6sxNUcLdmEcIjnBwLNnnBXn4xVDbM+tS
         9lhk1q/ObYf6vvmpG7fZDO3IEqxho3QLE6SSHTH2P8FyHGbDs3idTKvImBmobYGRigQP
         PSwjHklEuXRsI1OwATpb+tEBuBXz7LXS6nEulfEHFzVAgtpmj5bBduh/KEwb0PtVbMMy
         0+u7HO7/LmL4AAycH6dKs6XyshBp2qXxGht81ERf8eIabT80Uhi+LHiu4/1Wr1IDPRii
         YZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
        b=IXfo8CJBL2WSe9pLmZbi76QqHnc0nZrjorFVVU04WLY6hqGvwnLMvzxs4mo5/o45lF
         eBhdlTJGuIqkWeWHfwjmh7tOHV6unhPbg7XeOAQCoC8aYpmYms7957ErFpyjBNFX+i9q
         apO+0iaEBz1UYFiH1jNxDPpdYR3XRNi7C4qrFLP7PeGPdo9zBbE6XwJktkeJ0bwV7gLN
         5PO3C8st2abxObH1slUVVqotb4Ay+2/Mg3OslQtzbICqDgD476UOMt+FfY9ufJ7rcqWC
         7/XelVeABEQT25ZZH4KnQEYZMdIzPlRTLywclCpt3aS3KaLrVTlC/04xZiS6YfqC5Tjr
         Qq2Q==
X-Gm-Message-State: ANhLgQ01iYJ/INnYcCvW458RSyYP7SE0j2WH2cvg4Tt4G4gjwIRhaQZO
	PgH6XqEcrFMvcEoTZf0ExIu+4nu633aIpg==
X-Received: by 2002:aca:bd0b:: with SMTP id n11mr2240979oif.90.1585032372991;
        Mon, 23 Mar 2020 23:46:12 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from localhost.localdomain ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 23:46:12 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Date: Mon, 23 Mar 2020 23:45:44 -0700
Message-Id: <20200324064545.1832227-2-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unneeded variable ret; replace with 0 for the return value.

Update function documentation (comment) on the return status as
suggested by Julia Lawall <julia.lawall@inria.fr>.

Issue reported by coccinelle (coccicheck).

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..05b57a2489a0 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: 0
  *
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = 0;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -741,7 +739,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return 0;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


