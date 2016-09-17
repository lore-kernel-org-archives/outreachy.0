X-GM-THRID: 6331266648892243968
X-Received: by 10.36.213.138 with SMTP id a132mr546801itg.10.1474112933418;
        Sat, 17 Sep 2016 04:48:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls7704506ota.23.gmail; Sat, 17 Sep
 2016 04:48:53 -0700 (PDT)
X-Received: by 10.157.21.65 with SMTP id z1mr1334911otz.113.1474112933185;
        Sat, 17 Sep 2016 04:48:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si3535956pfw.1.2016.09.17.04.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so2117983pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zE0uPrmArA34PageWCU8fLDo2D5VMNATA3VEaFq5qk0=;
        b=hwvWk+nbJe11bfGJOWVJqgUTa36cFitSAHfvHoAz7YVoloa0tajk4dAwR6irrAXZvj
         LWvcujz/uLCwLV03BKANrqTIUaMSzwyBaaJyJjltixc7hGtBHgN4e52MB9duUymKCMHs
         wCJCg/AT9PW9e2XciWJbtKHQhLMHdTOPKiRswsc3NwXitPIHCrE1GrLh6EKvaun6Lt8O
         88yUCApHLysK0+/JwV8ZMqAS1eTU7euE4Bff8lV7I48TaOctvqEWQRVldsJwVaADOZvN
         1BLpn5a5VT0JnNT8E/7/dQpiQG1eSobPBH4zJZqijEAH1uPclGrutWC70MN1YsEKDafR
         UwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zE0uPrmArA34PageWCU8fLDo2D5VMNATA3VEaFq5qk0=;
        b=ZcCALsfaTSBoV3Cfs0cTwOQDZTikG5GAYNoso+2IvUADajwde/kCjNjfd1F7x1vTiu
         cD/bhvsTGOzioot5Axuv6yB+Nj86+VSjfcQhHYtP9/bYUpuZ6Udt1MICvMGjG1z+ufr9
         8KGtS5L2bnjbrlDOs2JCbQsUXbtM2FsTlU8o8CyxP03LwgLN072Ec7UpkFui+BAfcS/d
         3qBXA0W9tO+jNXzL2opOaGjtuMr2XA9fxp9VNDC/jMTnkYREoa5VBNgbxthjZoLzpd2p
         P4yAFsOJDWooCxseQSil3E7sLsvrBGVEfQUeNSgbZL6rjv1hl3gmb0Wo5HJsuoDrCRwY
         xV5A==
X-Gm-Message-State: AE9vXwP2sxPvvjMwzptJ1MmR+k+2Zkpm7ihA4hPXqP0I+ZIxmpC+nbW0UIGI2jwwOIHalA==
X-Received: by 10.98.141.146 with SMTP id p18mr20620480pfk.17.1474112933021;
        Sat, 17 Sep 2016 04:48:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id wp4sm18703740pab.15.2016.09.17.04.48.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:52 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:18:47 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] staging: vt6655: Break multiple assignments
Message-ID: <fe7f635d9b75bb93286245415d4a54497a8a4842.1474108445.git.namrataashettar@gmail.com>
References: <cover.1474108444.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474108444.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Break up multiple assignments on same line to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/card.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index afb1e8b..00e7858 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -528,8 +528,10 @@ CARDvSafeResetTx(
 	struct vnt_tx_desc *pCurrTD;
 
 	/* initialize TD index */
-	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
-	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
+        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
+	priv->apTailTD[0] = priv->apCurrTD[0];
+        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
+	priv->apTailTD[1] = priv->apCurrTD[1];
 
 	for (uu = 0; uu < TYPE_MAXTD; uu++)
 		priv->iTDUsed[uu] = 0;
-- 
2.7.4


