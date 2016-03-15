X-GM-THRID: 6262248427873107968
X-Received: by 10.182.110.163 with SMTP id ib3mr22223315obb.43.1458043493119;
        Tue, 15 Mar 2016 05:04:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.232 with SMTP id l95ls188988qgd.43.gmail; Tue, 15 Mar
 2016 05:04:52 -0700 (PDT)
X-Received: by 10.31.52.207 with SMTP id b198mr22069753vka.5.1458043492669;
        Tue, 15 Mar 2016 05:04:52 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id t192si11650ywe.0.2016.03.15.05.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id t4so11856983qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kA2LlgkxCTc7VdFHyfG0dXe6nfeD9gIzWMbIWvCjtV4=;
        b=GrJBtqXhMx6RkuhDXwQ4aJ0tlNLkTYHyvRpLtKEO399QkbwCyIN1e1lEyKbz3EiYJE
         8JBgq1X7Ch3bZpYCCsChMs1zFGIZ6qDbWRcEk6EP17XFNf8ih5TuiNppmbpS+ak4pK7k
         KjO6+y3AIXbPv8Zzz3aTicW3Q8NDWJQMPEjZ7K9B/Z6wKj6KV2JrZeayDYfCHThu9Q04
         Dc7woLa0iL3qNE2fzhajGkLKZyYDU7vZ74FPQn1cGG060ZUIRz8Q67JAk0Ace63Gcofl
         qxms60IvjcxTvINRGcIFy9KOzORYXHSfZBfNm6tuVZTJH75NZhtIvgkJdNl7mNnXAPar
         rvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kA2LlgkxCTc7VdFHyfG0dXe6nfeD9gIzWMbIWvCjtV4=;
        b=cq7M3SZSNU4fhok9pjHevNGhGwAi3mQvVH/t+U6MCQKta/x/OcIcDkruGo3RWIYPEc
         2Q+abU8GtlxUtfYFgFC1Cj/FMHx+Wns0nWVasEyZi2qYNskVpQFJlAIVMAHQmpKxuL3Y
         PlOAxqDy/sFiP/F+bWiIakAYhx3kHX8a/8d3cgjv+YVnXqOL61YwTuSqkicwHv9H8Rcg
         JqaNkHe9qHvSNxrb5cn154OVG33zcScEac2pZfqzf3lNh3Czq0/oTsw0gOCHPeXdvzFA
         X9fVYFYKmr+FJR/5L2L8y3SHcp5n3sZ9D3vTxC/K8Az6BQy4uT3iti9u2ULX458ydwPH
         2D1w==
X-Gm-Message-State: AD7BkJJ1m9PZTQah/Sp686P420tOM0BeOGJ4ucDFg7jHXdgryJfaP1qq3mKYyigHKqcyFQ==
X-Received: by 10.140.28.54 with SMTP id 51mr36653656qgy.36.1458043492403;
        Tue, 15 Mar 2016 05:04:52 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id 107sm12536338qge.16.2016.03.15.05.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:04:51 -0700 (PDT)
Date: Tue, 15 Mar 2016 09:04:48 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/6] staging: rtl8188eu: usb_halinit.c: remove unnecessary
 braces
Message-ID: <901049d2eea09b528c58f0303385867207793cd8.1458043217.git.juliana.orod@gmail.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes unnecessary braces that were
causing checkpatch warnings.

WARNING: braces {} are not necessary for single statement blocks
+	if (pwrctrlpriv->reg_rfoff) {
+		pwrctrlpriv->rf_pwrstate = rf_off;
+	}

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index da6759e..e7ff784 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -754,9 +754,8 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 
 	haldata->CurrentChannel = 6;
 
-	if (pwrctrlpriv->reg_rfoff) {
+	if (pwrctrlpriv->reg_rfoff)
 		pwrctrlpriv->rf_pwrstate = rf_off;
-	}
 
 	/*  2010/08/09 MH We need to check if we need to
 	 *  turnon or off RF after detecting HW GPIO pin.
-- 
2.7.2


