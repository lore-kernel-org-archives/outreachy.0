X-GM-THRID: 6803023005726277632
X-Received: by 2002:a4a:8256:: with SMTP id t22mr1269596oog.96.1583952246382;
        Wed, 11 Mar 2020 11:44:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:12f2:: with SMTP id g105ls808745otg.6.gmail; Wed, 11 Mar
 2020 11:44:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsP18NL8g3a49kZdQRwTAlwWuUh5azF+XwoztEUcaWcyxKagL4X3vk6OdyccRrOtPzStxNy
X-Received: by 2002:a9d:6197:: with SMTP id g23mr3498469otk.239.1583952245133;
        Wed, 11 Mar 2020 11:44:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952245; cv=none;
        d=google.com; s=arc-20160816;
        b=FwLzq+KsD9JbcsMLtnObnHR8izKWSCCHB/IioHqeiVqGfFK+diMbTkednBh0kJxmmv
         TbvG51t1A/Qs1xDZjWGFIrgLU/17gQUNok6gIpVA/6507mmkf53JJyJK+wtLvVtj/gNY
         H2YRyP2XUp3ncLKOKJR5A7Q4TBx0tvloSvZryjkl45oNQEibC/BtU4/l+hQ8Yksb5hOV
         cI1cZrA+6nVpjXlYG2PR+oC4TWA7DcST15Qdi0bqY6JjH1acVFiuh7atCfGmqSflz79t
         UUKqea3SkYB9mgR04gXW+AY9BsFVc+7Eq8bSKngZ/hD6h8PwAOL0QAqHoueOBLvrzvDM
         LvGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4EcatnGMZDpoEh7NQ1sGn6IHmxID4dx/295VjQArNqg=;
        b=lzHK0RP1laqoMT8WvmXEIAitvNgTEWjl5d2uB/HMjTtXLOgX6ijyZB5GF6FmzHNJW8
         /xomzjU6gjQsnE7VLEwSnR3qXhQcF8EgQRfdiTmBD2IyKwoZrNtb8tnkYVCi9uZ36JCT
         NuVh85FFxNw0q20J7HeWndDs5Shu+PVtYaBRJEnrXTR/tyn33szh/I6tCJthFVRx3onq
         OtexYj9xIsTxgpiKICxngaxbu7KvcpiZU9kRcfwBItoUpDzprxRu2ykRd8nuepql/Rpa
         RVjsIRtmj2goz9As5fkuwN9qRLFWlE2GmObPaJxiDYvfJDwNbcUS5nrBjEGdPqPqwfSm
         ULew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="W/IWisk1";
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u22si240348otg.4.2020.03.11.11.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:44:04 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="W/IWisk1";
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x542.google.com with SMTP id u12so1661728pgb.10
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4EcatnGMZDpoEh7NQ1sGn6IHmxID4dx/295VjQArNqg=;
        b=W/IWisk1rSgVNMxKwODuKenTu9beEvdEe7xR2FeoDi+3PgLFriI+74+QpTFYSSui3I
         nkE0fe6+0j675uF090iEcbSX7cJkMMJRsnA2uzJuRafklkSRdAew+zGMdRpXfNvAxp3A
         hzFcOtIcZtEgDaoNe3mvHgNY4wTeVK+/qsFpzxu2TZfni6dnJsADvUTD635zFCuobYDe
         Kzc782TEEuU8ktCdO1cWvm515eb96/XvYEWLRCWZc0QjhNhu0A5ZMZrJG+J8bsqVQg9k
         O+Dt6F/YSihj+sRU52Z/XmT2AXuiev9Ie5UKGUzg470ALnXI6WoYqXS7/hrC6rcJZLLX
         gP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4EcatnGMZDpoEh7NQ1sGn6IHmxID4dx/295VjQArNqg=;
        b=E9JWXtB30ouCy7F+z0ROS5FfUPi7MoxLqNtmgN3bkfbJ1FTa48+ofw0kxt77Kfhlg9
         luQ1h/WXvSmsSmEBK3Eebeh5UzcGhvRg1m21K2qzIN4YZfW/D1/wrNex+xX9gxdCLbCK
         zpFL0lAko/eCc5x4MSOqmF9i+JKJHGr6NOJYdeh9fm3RqqAqj1+EZytJb42zoS5McMms
         hVv2f822WYr3Hfy0Ju+Gknn5RQay33Q2Lqdvdmg08Vziy1D8YLzGWfAiCU7mj3VJzAg2
         vouNU8pgcW0t65I+GJY2EpR4KpxCiwTUzjpwPSPWvcVJ9rHcNBAR+YgSHD+yGpAR0X/f
         JrtA==
X-Gm-Message-State: ANhLgQ0KE+L7w6snL0REs5zOMew9gS5xk2nK0wIWv4HhNZVWfidnPaR2
	22rphqeUM1w6skP3tZ2g3YXqjw==
X-Received: by 2002:a62:e318:: with SMTP id g24mr4299885pfh.40.1583952243697;
        Wed, 11 Mar 2020 11:44:03 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id t6sm20527080pfb.172.2020.03.11.11.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:44:03 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 4/5] staging: comedi: add braces to prevent precedence
Date: Thu, 12 Mar 2020 00:13:26 +0530
Message-Id: <20200311184327.25338-5-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>

Add braces around 'a' in comedi/drivers/das1800.c to prevent precedence
isuues.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/das1800.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9f4f3..be4b33c8e93d 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -91,7 +91,7 @@
 #define DAS1800_SELECT          0x2
 #define   ADC                     0x0
 #define   QRAM                    0x1
-#define   DAC(a)                  (0x2 + a)
+#define   DAC(a)                  (0x2 + (a))
 #define DAS1800_DIGITAL         0x3
 #define DAS1800_CONTROL_A       0x4
 #define   FFEN                    0x1
-- 
2.17.1


