X-GM-THRID: 6252531554516467712
X-Received: by 10.67.1.165 with SMTP id bh5mr5656766pad.35.1455780961046;
        Wed, 17 Feb 2016 23:36:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.5 with SMTP id 5ls4906853qgm.60.gmail; Wed, 17 Feb 2016
 23:36:00 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr5573911ywz.49.1455780960621;
        Wed, 17 Feb 2016 23:36:00 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si767854pfb.1.2016.02.17.23.36.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:36:00 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so1730868pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RkcS7bahcq2q3eBidrB+azmaJER0owPmrIGyb6ZRyhE=;
        b=ATtKOLFuxzDarxVwAim961zAk10NgI/a5ftnoaXgjeDaPbaX1je87SuPjX9sFPXIFA
         X4PCmjqtsAIVj62SdtGJPJubUmQDtqG+zRQTDs8n/zGPSub4HVz44QRY/4cjtfMyRJ1m
         fosxR04r2B/Tsm0FnVjjGixnvWvCsyNpi3pvT5tuz3jJLJl2dEEqn+kGbCET99HfEXuI
         CmiGPeYN+A2bNent+wJMXOOFg/BFQ1dh20G4yVi+OhL5HCP99FFl4HMSiP8lsiMlapax
         v1Gd45PwoNDMlHxF8AzBn+vwLjTSK0sL/8+o7+oANpvjU80vFPhMXL17dOOONo19h1iM
         Jz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RkcS7bahcq2q3eBidrB+azmaJER0owPmrIGyb6ZRyhE=;
        b=mqxVSmljpOqQwMNXDtOhfmNd87bpwWJxFn0gue7MDT+YlrkPynsRN0ppdh6GkwvRuq
         X7tTWG1u9/zpgazy6EcQ8I7FIYPH/2dFHLRCca/ZgVy6QNilH09L+nPOqLRowDswf4mN
         VzOxFnnZNjuhwEaHY1SaUA7MTxZJIBhXCfxkjICvwWKtdcN37NJKfdwPnxgvnzHWfzSp
         cJxG9RMI8gPkCxSEMkOLCtQCWqMY/pNAZ4heuEjjOiB9DHormY1dxiuN/pChPaXGbz9Q
         E8e9XBEqRPb34FBbU4EamHCmewU1BmXduX5uG2n1XLc0zKDyZmH3XYyPc5YxE9PfGare
         I+tQ==
X-Gm-Message-State: AG10YOQUwMc6OOqP/E5TszcUUzeT5XgnBg+P032EkTW80Scv6Lpf3HeZmlJvXggPbOwLlA==
X-Received: by 10.98.67.153 with SMTP id l25mr8132709pfi.111.1455780960504;
        Wed, 17 Feb 2016 23:36:00 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id fl9sm7608514pab.30.2016.02.17.23.35.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:36:00 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 5/5] staging: iio: light: fix multiple assignments in a single line
Date: Thu, 18 Feb 2016 15:35:40 +0800
Message-Id: <aa152467c3b1fdef0a3e97b999c7801a94610a1e.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>

Rewrite the multiple assignments to clear checkpatch check:

CHECK: multiple assignments should be avoided

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2583.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index e970b3f..05b4ad4 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -267,7 +267,8 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 
 	if (!ch0) {
 		/* have no data, so return LAST VALUE */
-		ret = chip->als_cur_info.lux = 0;
+		ret = 0;
+		chip->als_cur_info.lux = 0;
 		goto out_unlock;
 	}
 	/* calculate ratio */
@@ -292,7 +293,8 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 	/* note: lux is 31 bit max at this point */
 	if (ch1lux > ch0lux) {
 		dev_dbg(&chip->client->dev, "No Data - Return last value\n");
-		ret = chip->als_cur_info.lux = 0;
+		ret = 0;
+		chip->als_cur_info.lux = 0;
 		goto out_unlock;
 	}
 
-- 
1.9.1


