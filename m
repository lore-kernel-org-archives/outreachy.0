X-GM-THRID: 6256792083376373760
X-Received: by 10.129.130.71 with SMTP id s68mr14608657ywf.29.1457299298258;
        Sun, 06 Mar 2016 13:21:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.161 with SMTP id q33ls736937ioi.13.gmail; Sun, 06 Mar
 2016 13:21:38 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr14785895ioe.17.1457299297993;
        Sun, 06 Mar 2016 13:21:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si2706603pad.2.2016.03.06.13.21.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:21:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id q6so2322772pav.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=81KtVIBmWPDIraEYaEOcNZQ5j5xqBdlZ09lyhoErw+I=;
        b=tyG0l2ZZRBBhnb4X0xAG/YJFVsUc3kskWAB1AUR6vCcLRDaCHsMOkWfdoQShH9jB1m
         RlcfKLboj9T1TZtZCM6Jr5Yql/ZlVmO4yfB2ak7lfblO0NZapye4bYSIkZFWtslR7W5p
         lbEuGrSdjhdYc/sHRWsJ67P0QX7Ll8IT5wNoAgXs8GhBzR6D3UX2xgvOh3vhKf2kwid5
         /qxRpVpzahsN5cCh3QoOTDnbnO27ClB4wQDWzzcYpnPwcFM4nOOvVCJa5Hr4mqAsFKwg
         b3mfTwpHJuGD2FjfPvk2f2G5PK6dENQsifvO2gUD7rSyUgvQpXeHGbRSpic21i2B8B3K
         OJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=81KtVIBmWPDIraEYaEOcNZQ5j5xqBdlZ09lyhoErw+I=;
        b=IT3xuz8TtJ4YiBBgGPLvsrGyeOZdXvo3fMwVdFeEtFldCHBUzWS4HaW8F04xhG0VFz
         GHcuOOJuBvWMnijBk26TFiLgWbDUal8dOPKzDFRaKT21JrA7Byw2mo8Y+YnpJRJxmxYM
         ZHM7q9a/3851dtFFf5owUhHg04r547jCUSSp9D4a9Nmui0lxKkpcj25JFdLIw7TQ+42E
         F34aRKXDkrGS0iAJ675Y1XHM4G7WFY/gquCqvSup3hEWv64JSbFYmysfBuBiONC7YZsL
         egjtalOMfiyrORJE2ulWL320/Z3RL60zqKp8gCpB9mj8fslwbz5iNAJjkmLIl+uVv3JI
         vQmA==
X-Gm-Message-State: AD7BkJIYgrR2w4xC7J7PkIZ32As2rRJpe9RX/WVzSaEQ9iDEIYmxxgl+59YNlmzG+3O5BA==
X-Received: by 10.66.62.169 with SMTP id z9mr28424694par.139.1457299297856;
        Sun, 06 Mar 2016 13:21:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id n19sm11342797pfi.53.2016.03.06.13.21.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:21:37 -0800 (PST)
Date: Sun, 6 Mar 2016 18:51:55 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/5] Staging: iio: ade7854: Remove unnecessary goto.
Message-ID: <b2da19436173f209cef39a61d01121d78b3a71de.1457269115.git.bankarsandhya512@gmail.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457269114.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7854.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index a838835..80b1968 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -417,7 +417,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 
 	ret = st->read_reg_32(dev, ADE7854_MASK0, &irqen);
 	if (ret)
-		goto error_ret;
+		return ret;
 
 	if (enable)
 		irqen |= BIT(17); /* 1: interrupt enabled when all periodical
@@ -426,10 +426,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(17);
 
 	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
-	if (ret)
-		goto error_ret;
 
-error_ret:
 	return ret;
 }
 
-- 
1.8.3.4


