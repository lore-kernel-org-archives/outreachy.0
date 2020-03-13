X-GM-THRID: 6802944332146933760
X-Received: by 2002:a67:ee81:: with SMTP id n1mr8614747vsp.184.1584096576661;
        Fri, 13 Mar 2020 03:49:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:27c5:: with SMTP id n188ls1169351vsn.8.gmail; Fri, 13
 Mar 2020 03:49:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vthv7zn7imPE5fFJASEH5rnkvzit0t9qviP1zjA4T1kA/tOgDBQw7MFCg1elwOa/xZzZm1x
X-Received: by 2002:a67:3102:: with SMTP id x2mr8385407vsx.193.1584096575281;
        Fri, 13 Mar 2020 03:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584096575; cv=none;
        d=google.com; s=arc-20160816;
        b=YAo2DfxIgPqnEBKnofevfKNajEGFu+1BJB5XGyaTW9vpypd+0kt1l+uDQyqp9UrAbW
         cdAP8BbejzgVszXA1IB0qXgKhKq9nEEUfqYEAKqW8XRIB4SIOwbVx4sf3UpdKbdn0fSL
         Q3lYB6c3DYZ9cCjz598lKmpSFpZ3BtcCfelSc3h1DMSy4U1IEbPxdwihC3bx74r2H69Q
         gmuBJUb3B9TE/lxybdAXPOzKi5Mk26u3o/eScRBoKiZsZJOE7vFQwDa9cLC6tXrx3N7T
         wzHlXTQmRi2Qci4SKQ6bTUttyrM+T20MgsHVaVA3EauZ63soaIhdgMzfpkDwSrtKZhUd
         oxyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=iasaCsIz+cE66w1h7F2tKGNrLh0USGcI4p+818GQJhZ3QarnhJlrEqajCvounPGPSI
         EnD4oLHgIqB4RFMTPhZ/8k7pb+jp4f88wMhzmBAysVcAvQbg+H8PmVx0ytz8rEa5SvHB
         rVJQRmSNU46U0+Id4++H3bBvcC9rrfpHlT+4FMJh2S1oEo7Mkult5Nqdc8ETCngTcEY3
         9NiTbrOOvnE9yCKBeIKYUwJFc7nKa9s/tTMz6R1hKenYD61GZNGCazDrACaqOISAs/NY
         QvTh1K7ZPqBXfnOGyemrrc0GljVaLBAzgtOWnMTXN/ZUYQRPzwJyGIvv9GyhudAq4nGo
         3e9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vbpA6qyC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s124si462581vka.1.2020.03.13.03.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 03:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vbpA6qyC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w3so4073005plz.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 03:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=vbpA6qyCkQZysoUFRYL8Xxn2pnO4dRlSazfhuWfmQUOk9n6sko2frj+BH233MglTZb
         76MOtY7REhMlznesQtdgjfFmpKRwaUVV8WfwRISpiZ5opVQaboLUU3gEb9pvqpcI6Iss
         0wASXvaqSwh9PcouLcW3OCaniq4chLiNblYClT0UDpq3R7b+zTSjGyQvdQ06VZwZgDPf
         tbXcKCtTmSvOUWIv0a6U9tMW49xwSAIVjFsDnAFiv9Ie+5nCAWpBNzpsgh44t1dQiihT
         9xaQTakJCyH3KphdV7CB9fj4UIT5c2jQE5wgMbTPi+qWPmUnG2ka9bU1bXwL7AsjXxyB
         lV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
        b=gE0DUvjRQ2Kba05vh60cdt8AGUBTPv8zlrGxayFrnPg0MHlqhT9h+PxzmK268Jpx/L
         SCWAdoPtsd4r0qVVYd1jXooDkqV+VHDNaZMZsto+iWJIAFu0WbHfUpGYtTRIDjhGyRid
         2MSM+qW6lf1EIkN1Esm2A7iW4hpy9ajm/jshRSpMEItGQtvZH5mXWjscOouE55WyyKXt
         yjH9O0ttvO8ZtaWxgQ1StjuAnNz7fRvsw6Jo4lngm7UfcjKzT9j8MbTABBzBl1k099RR
         xZwa453iTLOvMAgRgAu0GiXHUBA3hIsT7ilM8GVy5UO4o2cyAZbRyF2Ie59cJ7uIDQ+t
         0O1w==
X-Gm-Message-State: ANhLgQ1U7IgHkJ8Bf3Bz1pfFEIc9snioNsqJFyHxxIRRRzWw33t64ikG
	sPhKJGzwaTkT7uXaFRcG/qA=
X-Received: by 2002:a17:902:a408:: with SMTP id p8mr12893133plq.132.1584096574274;
        Fri, 13 Mar 2020 03:49:34 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
        by smtp.gmail.com with ESMTPSA id gx7sm11718756pjb.16.2020.03.13.03.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 03:49:33 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
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
Date: Fri, 13 Mar 2020 16:19:20 +0530
Message-Id: <20200313104920.19974-1-shreeya.patel23498@gmail.com>
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


