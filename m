X-GM-THRID: 6463854288984604672
X-Received: by 10.99.99.197 with SMTP id x188mr4983600pgb.118.1505033464339;
        Sun, 10 Sep 2017 01:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.213.130 with SMTP id a124ls1424268itg.3.gmail; Sun, 10 Sep
 2017 01:51:03 -0700 (PDT)
X-Received: by 10.129.216.77 with SMTP id n13mr5336633ywl.159.1505033463363;
        Sun, 10 Sep 2017 01:51:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505033463; cv=none;
        d=google.com; s=arc-20160816;
        b=e/Umrex63KfosZP1bKoiY/RKSk2idtaQxOvkKuOjBEQs1yAtSYcUFn9mplWS+wb+b/
         xebaWKzvszGgVyx1NmhzT3HjQKHlG/rQRJHJ2V/0XMNyS3Tzz48ip0ZlcFjULBwirhhn
         W6iubGY9ET74sunG3ka4YOovBCzhN27BXuDJYuZyGev5W02jgFfU0lVo800HgtW9RNFh
         eVSj87SBxWaOZt3Dt034yUPdBuwSAcy0CJd4ovygGEAiHWd1s7E1mdDQUJXlF4Kj0Bmm
         tqZuCUTTq0OVMVyM+50JK6C24Nc9QyMe3al7godreAaVnLNkEAaR+XPcoUTGXNhSEf0X
         mnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=x7Y79EHk3KWqK0VuDMz0A5T2mdGZaiD+mWYmue9n+8o=;
        b=0ycC8/KtJGBV3rHdgotqKojNHBuJvWb6WfqhBaYPvI2MFSQUVUSZRQBDGOvU6UJm6g
         8tYQVG54TlHuS6ll7tzTc3TzHYb6O6AtgmOdBhujr2HIuTDer1Z02+SJQsCXwfcJF/on
         Zr2fKRdI7mOM/2bdRqHvK3bd4FnR8BuqgKDIGRZ8p3bMbL4f/jKdDmq6QWfJaULV9pLj
         MN/zIJcsKvqUmSjL1XTQ8ZtVi0L5BVS+/svM9mPR/mrqSajzSTt3nJWVXwmjNnW8yPBv
         0ahfECm1Qwri+U4UCxOw3CX1GfDzwtz7VHnSAxyYKz4Mq2Ek7QECXeq9i/mwJOwKvTna
         z+wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mDFi83ia;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a12si601573pfd.2.2017.09.10.01.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 01:51:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mDFi83ia;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id t3so3264506pgt.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 01:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=x7Y79EHk3KWqK0VuDMz0A5T2mdGZaiD+mWYmue9n+8o=;
        b=mDFi83iapEwAZUIj/9kEVDlam2f+fGiokjM5blvZrXZ1O1b2FYtmFRHzhUaQMW1l78
         eAjwbVorCWOEd+flRWZLoezd5+eawBgMEPzo+RIzvHtOoiY8sGOlQ+QFqKlA/qMpovL7
         9zgfxi7bkDR3gQ7rgXpSThtVTmShsk7BVjQzXQN6yPClvvCFbuqLHzuOp4BmVU5+mmsm
         BzKQ1+L7XxO2/jRhrxkr9xvmGxXX+maknL2TI8U5gYDS7i7gspxSKmnoQTCAvusw//Qu
         a6P0Uox8wUw3L4WtQ5oM8X/yJy/xq3SE+RQDMYYQuGG+gn9W5HZisGuywAZv+siyuOAE
         p6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=x7Y79EHk3KWqK0VuDMz0A5T2mdGZaiD+mWYmue9n+8o=;
        b=k7OYVvoeQrnmdELU4zPh3i0E4QnVPAC0NKE3hnEMbuIRDUYK4mdTQ5+BMbpOmAoXnv
         fbPgTjhQZWG+8orIB2dNAkr+vlzmctTkx6WSxATGw9zEeuTwRitAx13UnCJgTARxVFgl
         MS6YqARFcHLNg63Ou6TxmNs+BcMqIDF6HZiiR1ZiNhGYNwgMZq/whG0wOlvndGThotMd
         uy7zwAF1opMGI1zdBf0pn8BWUH8wMLizhoVALizxO6sSjp5ZqxkI0/IZsEvWZafnU1Ow
         rjwkvaA/wHT1P3Dc89y48Ei05VouuXvielC0h1/7SrxKUGNWqcYm9eq23sjPR3DfsBEM
         QEJA==
X-Gm-Message-State: AHPjjUjjQ52LHZAFwaPADsjM0zJ5m9HfmZ1Ui93KGQHlSZROzEfVcrcL
	cBcykoAyvIpzNhzKKt8=
X-Google-Smtp-Source: ADKCNb6ez8HjBKpQhUB5vH18fbc1Zba1X+tBwu2eeQ0De3n1rnRWeiRnWUVCmevVL4YBgc28aJDIow==
X-Received: by 10.98.67.134 with SMTP id l6mr8304229pfi.165.1505033463100;
        Sun, 10 Sep 2017 01:51:03 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id 5sm10963424pfr.151.2017.09.10.01.51.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 01:51:02 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v3] Staging: rtlwifi: Remove unnecessary 'out of memory' message.
Date: Sun, 10 Sep 2017 14:20:56 +0530
Message-Id: <1505033456-3365-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Logging messages that show some type of "out of memory" error
are generally unnecessary as there is a generic message and
a stack dump done by the memory subsystem.

These messages generally increase kernel size without much
added value.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Changes in v3:
  -Make the commit message more appropriate.

---
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


