X-GM-THRID: 6470705412124442624
X-Received: by 10.98.238.16 with SMTP id e16mr399470pfi.20.1506578703766;
        Wed, 27 Sep 2017 23:05:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.195.228 with SMTP id j91ls1019669pld.4.gmail; Wed, 27 Sep
 2017 23:05:03 -0700 (PDT)
X-Received: by 10.101.73.7 with SMTP id p7mr577561pgs.80.1506578703089;
        Wed, 27 Sep 2017 23:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506578703; cv=none;
        d=google.com; s=arc-20160816;
        b=IWCBlHTg1ZzFl+aeqJVQ9+OLTNYS+o9PDBzCeduWCt4YPo0awjFYSPYwx8K1GJ+adV
         YT+LM0tANG51NyCSwXWrfI+m97mYHdEHAGGW9v9NTBc985/LHXbhkThjK/RdKA+889t+
         HTa74gDobuIvpj2AYd9SG5c3GgT0wZddK9IuCHRctylEerux1kme5o4AYmP3zLyZ6goQ
         O16hJ6SXdsnP7E3amFmRCPPKdp31nCmT7Q/x6hMTVglSTmQa3T1+OO0TNaIPMjWoA6Bf
         piy7ORFMe1T0zAhpF2V+v8/KMeve32Xi1xRatrHwg6D/Sw0mRR5/Oul28BzlUHg9hxjW
         9UJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=wADAuzfoqI/epsha38LlF5gB+46s4I+2P16EDPhZ4Zo=;
        b=KWDJLlPZQOqkM9QtiTtgkBmUYwVpm2uGOkEvvM6IZviWb8YvetngbUuKE/zH5tr8rV
         98kkIFcuMoAopPSiFdu8wboZHArenpvMSz4pI2TlLZw2r5BYysqvhtMA4OpFEc3aoP4w
         WL8eC3rvBGTiEZOv+joENgU848k4sNkdqrEdvntCDj1Es/5nG6ZBwWUeDTGane/yZFwP
         ZWl3X7chounik68f4MAr1P+ogLmCnoORPUJbHGbmjtMfkEJPbWbK4lA8AVZzApH9Hs+E
         MARou/WKYftz1Ja+W9TEyszVtgGPgIw85qaU/7c1qBFrQuFrXvvgt7ojTGs2ewEJ9KkQ
         nfcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FiiMM0KK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id p73si89505pfk.27.2017.09.27.23.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FiiMM0KK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 125so469800pgj.4
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 23:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wADAuzfoqI/epsha38LlF5gB+46s4I+2P16EDPhZ4Zo=;
        b=FiiMM0KKNz7GMrV7fAXSHq1cPj6KJ2XeckDnVhyBd7z+mldP6jQIeocygeWa1E/bDA
         qv99Pwwan+yM0SJDw05k/3S0FFffSyTeBAKkD891MaNhABPvunliWwkQnIksZE6dodh9
         ZUuL1SvqR5MXKhLgtVeP5mzAlmukdHF4fbGX6CRRAdjUsSqZIduizfJwkm7WPzxb+cEi
         +jE+mSF5EXUHOPnoo+rorDYcfzYI7BRFImFv0X1wjtt50fdQAElmpZhvq/squj3q6PKU
         FKgbVP+0OVlWfuGEONayTDEk0Q4tr6RRdQf5xahvHE65yBRBRqwlT7hwJWfyXBvK/au7
         PNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wADAuzfoqI/epsha38LlF5gB+46s4I+2P16EDPhZ4Zo=;
        b=AChA9qnG6m//+I8/LkuTs55s/u3AgQUE4yCDHTFKS+gY6qTtSzDAQrIecbNPlzg7Uc
         UJ+8AJJfOIuFvSYkxO90/IIVEauvw5diws08P58335CvUDBi5MQE2sjtGxpQCzzbulTY
         80Q7ixUiuKY5va7oZrtJ6JReTptIo/sW2XkkNTs9pav1BNArqXVCwS304BONz3id97fi
         /ejWD8uy8DLYEsRfiAThu0T6udtjMgROyQPVyCBLHSh37R5UXtdmMHsGTBUxjeOuP8Y/
         b90O2O2SA33JRVS3tTuxaRWSLcwqTZNKTYhhCxAOt+cvwtG2zfmhw1Mpa5PrGCYCNTxn
         aOLQ==
X-Gm-Message-State: AHPjjUiwzsvjAWujhkS4lMHw1K7Z+O495AlkeguvA3it1PeFVVz2jy4i
	5lLN0YkQHKHH1I6+TIdV2TI=
X-Google-Smtp-Source: AOwi7QBKjnTZBB7ZPYiHH3LmuKp4FdLJ9pkI7H/oAmc8TTI56L9nR1vJlALo4K9B5evDHk9KRRMZ+w==
X-Received: by 10.84.148.203 with SMTP id y11mr3185307plg.277.1506578702883;
        Wed, 27 Sep 2017 23:05:02 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id d186sm1122718pfd.117.2017.09.27.23.04.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:05:01 -0700 (PDT)
Date: Thu, 28 Sep 2017 11:34:56 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/tinydrm: Call drm_of_find_backlight instead of
 tinydrm_of_find_backlight
Message-ID: <db13b27695882de9db10ce6a787c9e6ca375b06f.1506578051.git.meghana.madhyastha@gmail.com>
References: <cover.1506578051.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506578051.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Call drm_of_find_backlight from of_drm.c as the function has been
renamed and moved.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
-Introduce this as a separate patch in a patchset instead of combining
it with the previous changes.

 drivers/gpu/drm/tinydrm/mi0283qt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7e5bb7d..5e3d635 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -12,6 +12,7 @@
 #include <drm/tinydrm/ili9341.h>
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <drm/drm_of.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = tinydrm_of_find_backlight(dev);
+	mipi->backlight = drm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
-- 
2.7.4


