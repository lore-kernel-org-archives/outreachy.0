X-GM-THRID: 6262126512629088256
X-Received: by 10.129.117.11 with SMTP id q11mr20356953ywc.3.1458015042884;
        Mon, 14 Mar 2016 21:10:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls218qge.62.gmail; Mon, 14 Mar 2016
 21:10:40 -0700 (PDT)
X-Received: by 10.140.97.244 with SMTP id m107mr20970937qge.20.1458015040779;
        Mon, 14 Mar 2016 21:10:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id w69si1551695ywa.3.2016.03.14.21.10.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:10:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id u110so4710482qge.3
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mzVH2XN/w/8iVbjrgMxf27xkXHoklzRGCZVlVxyAEEw=;
        b=ZZFdv35PgUY/cHiwU3Jzw6Gd/IVQl51vMvPzxTVhGGgpDEgtBEyaUbxL1o/GZugz/j
         dPGk5t9lVkBoqEDafL68g261IjjYnXHC1+xXZ3OzgkmkXX5JpCqglB9q/Mlu2TAtkO8m
         yZoogEjWHCW5RZDsyF6c0RWiuGaL3GhRF/snSJH5FKGqGhwtma/4waphL4sOCdeteYuE
         d0MrnxEbctNxsAMnW8HkjiSnBO7/7p3CVDMu1TBTvWXqYWpuquTEP3KEaVHjEAJKe3CM
         18ABWaXZGTyShhK/6p98m86aDI8D+UQuRx5jq096+wHgxidl4AYl0M0TA4m6RXlfGwXR
         laIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mzVH2XN/w/8iVbjrgMxf27xkXHoklzRGCZVlVxyAEEw=;
        b=i1XTETppvIquS1namPfvlJ2vMAuW4fV5H4s/ciqCzduBeLOYTea5e4Bq3AUZ/1mVhd
         67K7zB5wXnuJ/2nc6Du7WlHQKWPeAfPX74+O59+v+WnubQ9gEexxMqjGhiNo3aTTmZtv
         7DVkyNP3jR6OLVlt7phO0KXVvPC1M6pSXsB0C9gAUpWlDMm/TNi3FvFV6MdmxEydjVGB
         BPsT4mQMvxLq3SRUAZFsAUdLN7SK6usNrfa0RqcOISf54Et9K2+eBugCcMeCEb7gjeUq
         SPRuqlav51jkseHppiPIiwrUu2eji6+AIOdj2Dkc/YMebfTxn3BQ6qr7UELRGf8vx7G2
         tnvA==
X-Gm-Message-State: AD7BkJKFR/cZbtiKCarw3fAU3nRH3aDTXb9mIc4zryjTRgS945ogGYh/ycfU5U2BoWZFAw==
X-Received: by 10.140.92.151 with SMTP id b23mr34490889qge.88.1458015040553;
        Mon, 14 Mar 2016 21:10:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id w66sm11874711qgd.26.2016.03.14.21.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:10:40 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:10:37 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8188eu: usb_halinit.c: fixes comparison
 warning
Message-ID: <7cd4587d463dc1e3c6fbcd68733cca358ac6468b.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes two warnings related to comparisons
in checkpatch.pl by placing the constant on the right
side of the test.

WARNING: Comparisons should place the constant on the right side of the test
+	if (1 == haldata->OutEpNumber) {

WARNING: Comparisons should place the constant on the right side of the test
+		if (1 != NumInPipe)

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index c3384fe..da6759e 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -66,8 +66,8 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt,
 	/*  Normal chip with one IN and one OUT
 	 *  doesn't have interrupt IN EP.
 	 */
-	if (1 == haldata->OutEpNumber) {
-		if (1 != NumInPipe)
+	if (haldata->OutEpNumber == 1) {
+		if (NumInPipe != 1)
 			return result;
 	}
 
-- 
2.7.2


