X-GM-THRID: 6463854288984604672
X-Received: by 10.55.99.70 with SMTP id x67mr4253941qkb.1.1505036411402;
        Sun, 10 Sep 2017 02:40:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.70 with SMTP id i67ls2776433ioe.9.gmail; Sun, 10 Sep
 2017 02:40:10 -0700 (PDT)
X-Received: by 10.129.41.12 with SMTP id p12mr5299282ywp.133.1505036410618;
        Sun, 10 Sep 2017 02:40:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505036410; cv=none;
        d=google.com; s=arc-20160816;
        b=BXwiHl4W6NITc3LNPQpuysCXIGxnlysU2/o8Q/1Yn9kgvNHSi3RA9OqpwlImcn8Flf
         JZppkmp6Z+GPY6uL/RezsfBOwlHh5fWDEbbJtOQVuYNz6gNN8Y/oDeZyQvqYhRZP4Pfl
         HoIz6Y3FWwEF0+tAva6RkGPfi3DulSBwaE9jKVuR0AjYAdJBoNoX/ud1HxgIH8Qrys0z
         a37ciIw0sQnCwHiLZ+rJ8c4A+nQGvw4nl4rpB1wkWu/G7iUnTkuyRJ46REJSEQwaWEO1
         NCWvqA5RF7nC3J10UTScg7SRBt8Xb4Dk0QCxL8WM7rb5+Hc9c5Zhf+45ux7QCdkuyR6A
         DxDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=NjN5oiGPh5jIZlzMiFD1kgu0VeEJfCLsK1+v7WnaJ6g=;
        b=OMaD9ijcB4qMYAP4v+YzrLj81/bPB/GCww8krapVbxYRhw+FyHMBNMzwApyP3g/leS
         5dsQjVZOMsJh7e+8kLOGjKQTferlhklaLXMGVm01fC7HNcP8zKNo8joUiNt+66H3xItN
         Ecv0VJFH0IOYmC8GOvTpipwJXk0Y2QEiKK/m1nk+MtQIaYXutpByGCr858nT2hKqIbkS
         kTdYtYD7QtK+HG7kLJ6jAMbIgFOfL2FK/TMOkuGY7lbl2jpQXYlq1l32//Vk4jqFtrLU
         vLtdminHQFP4GL+byi7HUI6nD6HacH8HIlPNTqeabr9Do1ZudmAS8weENVWVZqIPZQKL
         HWTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cY4Bdf+e;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f189si640738pfa.1.2017.09.10.02.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 02:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cY4Bdf+e;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id t3so3294125pgt.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 02:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NjN5oiGPh5jIZlzMiFD1kgu0VeEJfCLsK1+v7WnaJ6g=;
        b=cY4Bdf+eZwjcYVFunfCnW5+RSbCPjjSrx0X5lGBvy7Dg3Aloae8e8kcBLIGTjZM2Xr
         f+sC/oTY024F3fvjJ2MO1DuqpmjhaWCLyh3W/MSElEwxVoWCfRJeDVC6PArVFocGI9ZR
         yAd2CRICj4O+zz6WJYEOmwQUXGj6DP7fwUx1Leso3NyBJX6Faxa3QHc1fSzztR1y8rcx
         qO5zmZyUR6PmWtJzN5WhCPm/nidm/onfeDZXo3lXXUeWIdbQ15HYHeSfH0cNSwc5y0DL
         KwDTo/D1VS3cn1vy24ZDLv/Jk/Rm1zwtcZZg+3pbrkXkBapz+J7jFW2rhe1rxZlUy3Py
         A4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NjN5oiGPh5jIZlzMiFD1kgu0VeEJfCLsK1+v7WnaJ6g=;
        b=f3ozX/bvB6SC4vJkxuU9k1S1O1YYO+aqp1JXc/o+dec6YTlPEVCFRHIjP+aJyHQnbN
         h2AY5zzHv00BIUrf8AJLG9A2upOPLFqDvX0vq2BG/9BzYOfrhTg98f8KR8weund1oO2H
         prG9vnnXa3HCJpZ3cQ00vT7EAGcF3muQl1hxtPOF/GVQuKHvaWwc01nR0CPHkOiFREz/
         Y/avcQCF0T0kTQveHzk5Bj3pPbxUDFQyBWc/cCxpQA1udcR2rfdqigfaV7Egw0idRcsI
         AlfVhNN72eljftAJHeas7xcKYxrB29VOD22Xo2SKJ3mioWgfMBCd0IOLinv5UdTPmIb+
         uTxg==
X-Gm-Message-State: AHPjjUh9g2BbB+e8duFnMkYnF8wkOc3OSezy3fdcHveqICGs3EI8997L
	AJOgh3xgSvzX1Cj6SWw=
X-Google-Smtp-Source: ADKCNb54WKGEzz08Z1vX0Jn7wGnVaaVhyRi6/EwmFO2bWapL8wCkrAq0NZz8dTdslM2zKWMo8pAsVw==
X-Received: by 10.98.245.74 with SMTP id n71mr8544502pfh.102.1505036410362;
        Sun, 10 Sep 2017 02:40:10 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id j13sm12212876pfk.107.2017.09.10.02.40.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 02:40:09 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v4] Staging: rtlwifi: Remove unnecessary 'out of memory' message.
Date: Sun, 10 Sep 2017 15:10:05 +0530
Message-Id: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Logging messages that show some type of 'out of memory' error
are generally unnecessary as there is a generic message and
a stack dump done by the memory subsystem.

These messages generally increase kernel size without much
added value.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v4:
  -Include v2 and v3 in the patch.

Changes in v3:
  -Make the commit message more appropriate.

changes in v2:
  -Original patch was not sent to the mailing list.
   Also, add a tab before the return statement.

 drivers/staging/rtlwifi/rc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 65de0c7..779a5c6 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
	struct rtl_rate_priv *rate_priv;

	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
-	if (!rate_priv) {
-		pr_err("Unable to allocate private rc structure\n");
+	if (!rate_priv)
		return NULL;
-	}

	rtlpriv->rate_priv = rate_priv;

--
2.7.4


