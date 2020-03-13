X-GM-THRID: 6802944332146933760
X-Received: by 2002:a63:ee02:: with SMTP id e2mr12026982pgi.183.1584096412565;
        Fri, 13 Mar 2020 03:46:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8597:: with SMTP id w23ls3810066pfn.8.gmail; Fri, 13 Mar
 2020 03:46:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvjc7hzm0HEJUp4catL3kIEBIwQhHJ2nLB3l9fAEUcKvcBlXN9w8swPJKwY12Tv7KGeHKg0
X-Received: by 2002:a63:c608:: with SMTP id w8mr12597679pgg.115.1584096410915;
        Fri, 13 Mar 2020 03:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584096410; cv=none;
        d=google.com; s=arc-20160816;
        b=MImee21xi6Yn9Tobs47k6eUE976dmVwQUVblIB3bz0IsmiJqS3U3N8+Z/xWgjqhoYh
         loFDG2NKRgHHkldTTo14tliF0GrtQUOgPiAjgkMdZ16eo2XuNALCdDvLNL8Z0rknEny2
         2p39lbD3ONRTgajt6lNxr8M4fLvPgxeki3U5dmc3gNVwUmTtrLi4bYsTaFr2s9q9hPy+
         qFj/a+Gx7C4HGbHOYIXkbzgrmSHemyXKBv4uV23+MI02bfv9uorpOl6vUr9UaYFKe5r/
         u6BQuUh4X1cuj+zru7HoaFwNRMW4wG+uBdgBWgIS8lNVtBEnBuCJD4DMjsTE8LpWGnuV
         S33A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=om9RVqUsUfLBvWQfRwsNqDZ089MDYABNd7MX4eqDS3R77L51b78WKxYl+In4UN7Cwe
         K7DkqG4u96BtP+5z3Wnk95SRjqwLzdxGebCkXfzdxMhUWmcVfGfA3nDFWu/qTZDp75BM
         LKz9I10i7c5x0zuaqMNH37Hpip3fHapAKTFZxXOkTHIoRm2FnsQRKn4+ouOe9vHpUXQF
         dTtJSPuAP28ZLm2XXDEIjqmrtt+uie4CNOns8Vu33aBuYHKXfYP0XWHMDLqbsJmD7Ndv
         lh6BdDWfPkVB22PyIEDf+ufko9Khru+bTcfAbcHa1nW6YJICXM9zBhmZ36SYMmymA7fX
         pPTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rB/JrxX0";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 83si330610pge.4.2020.03.13.03.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 03:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rB/JrxX0";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id np16so3952214pjb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 03:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=rB/JrxX0L7LaAtUV00dCdFiedhiTR681/8tixC3LeFg+mmm/oXg1UoXM5C8wHRbfnZ
         fhZ2bENDyBia9zKeDoain0e20+dVQldHc4w+6WHRXveP9NpqXpKJAfyXWEaUOHVWb9cF
         0fYHTuY9ZYI6bh8h4rwiiaPGCV4lqZsKOoIPDisRmUTiQAlmo1fJdz/PHZ76ep+qDac2
         hGGZ33A4d3LhU9ZGvvurTqRgkJsr3kZn7a+BHs6Cqyg2oQ0Jlt6V0QF3w4SdSPbU9NTZ
         /YPCNnoDIfm54kn3HrYFONeqKy8RbdGFDdtHcNRof1B9P+zh9H8ObS8EBDVKmlMWxGBC
         0JCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=dEwsG7IJAwVVUNBn5LFpphrq9EZmk+33FlQD8qYMjNnN0EB8z575Soce2VBdyiNmf9
         dWJxH+ZnVTrrOdb8LC6A/17BzT7/YgSQJi8ozt/0GUsUjiFdujGOzhimFp11ZgwrQac6
         xNPqkbiLLKc0LpRPu1fhJB/GZmhf1xSJYtuIznEh2A3Hi+MZO0Q2bHqMBoCf2iPAjKq7
         qUxtc73MrQKXHEjCqVNR9stAvd7cYsitfA5ANEfPcO8v9EEF2/Ee5d/SUrokUp2Ykzq0
         bagTQ/gcjdojrcmZfrQjdhH2FsBtq7C1+2WkC+/VtpcJjnp+wky8at0G2Kk4FwNsjSyL
         RCEw==
X-Gm-Message-State: ANhLgQ3bzeI93wErLzu2VG6LHsn7YfvuEeZfGx8WXoYVaLxb182cWVbs
	c0Hwjzes4NFPLR6iOeatOcHE4xoFLkU=
X-Received: by 2002:a17:90a:2042:: with SMTP id n60mr1625659pjc.0.1584096410372;
        Fri, 13 Mar 2020 03:46:50 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
        by smtp.gmail.com with ESMTPSA id p70sm1709171pjp.47.2020.03.13.03.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 03:46:49 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: regkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com,
	Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: sdio_halinit: Remove unnecessary conditions
Date: Fri, 13 Mar 2020 16:16:40 +0530
Message-Id: <20200313104640.19787-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove if and else conditions since both are leading to the
initialization of "valueDMATimeout" and "valueDMAPageCount" with
the same value.

Found using coccinelle script.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2
  - Remove unnecessary comments.

 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e813382e78a6..4894f7d9a1d4 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,8 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.17.1


