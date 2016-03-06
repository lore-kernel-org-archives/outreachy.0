X-GM-THRID: 6258266145196867584
X-Received: by 10.182.91.9 with SMTP id ca9mr13402267obb.7.1457277191230;
        Sun, 06 Mar 2016 07:13:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.97 with SMTP id rv1ls714341igb.12.gmail; Sun, 06 Mar
 2016 07:13:10 -0800 (PST)
X-Received: by 10.107.159.82 with SMTP id i79mr11359461ioe.32.1457277190892;
        Sun, 06 Mar 2016 07:13:10 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r75si2462021pfr.0.2016.03.06.07.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:13:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x188so4267074pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XFlsNVF9/12hVZ8CNphJ464OWxo8QT6umdyWIuj363Y=;
        b=ljhvKajMlv4s3mVpcaLew8uWsSXhpbFIRWi5ltbP2McGpVynag+sj+SumhjYLRIuaD
         nx1GwRHhhXGkq4nY4VwOQwJKYGauovbvl+BKJiBairlcJ9A9/sP9A/B6MpF3qQgarD5Y
         gJE+uRGUtMHgBggmnrOK6johrH4bdfYOUS8E/o5dgFAn/wXRXFnLSkapZVZOuubGuikl
         UtEuKBvS6WW4Mis9oVC39a5BF0sh2pEdsnz1pji+960PshWEsSQWTskaljSEDIp8+lnt
         i9xy1PtXckMFlVA0fzEOUau89TUc64Tx+Xua8bqy4QJBpRvjmgWqcB2PE0D++MLsEj24
         TBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XFlsNVF9/12hVZ8CNphJ464OWxo8QT6umdyWIuj363Y=;
        b=Sw2WatrhvrQuH64I9kAHa7kZ+kDzafjch0c0LFljSVQ5UQxfGIlTuclpsNqTr2Oji2
         ls4h4j6VYzFIZPWK2jS6Al6b7w2NCkjiwN4FweGw3V2aafA6O2agBJoQA8J5ebd8BwZ7
         P86SC4r1ZNUc40XGHjQr9EKglxqoqsqOvhNjY2ppGn6mKyjbMLlFZG9ZbO36hPlSQQyZ
         iifqS+oAIp40VrtUJmhBSLuGbD8X/IdKi/Upl1NaA2N0/MGDEQv5F35AWhdo1e+OzCi8
         gL2vFn1J7SnUY0w+qh9DfE0zF9X8cJgyEl5XmBZeqvob//Fz4q0YY3FGflvnopM8ymWk
         766w==
X-Gm-Message-State: AD7BkJKpmSdh289yr6HJB7H4Qn2Awnc2HOYi06zH9elsIfbpFgZgDSWRV3girWa9SHFi9w==
X-Received: by 10.98.9.27 with SMTP id e27mr27009651pfd.59.1457277190745;
        Sun, 06 Mar 2016 07:13:10 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id p79sm13933990pfi.61.2016.03.06.07.13.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:13:10 -0800 (PST)
Date: Sun, 6 Mar 2016 12:43:27 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: vt6655: Remove & from function name.
Message-ID: <20160306071327.GA31568@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove & from function name,when function name passed as an argument to another function.
Function name is used as pointer without &.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 8a1ed62..c3eea07 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1171,7 +1171,7 @@ static int vnt_start(struct ieee80211_hw *hw)
 	if (!device_init_rings(priv))
 		return -ENOMEM;
 
-	ret = request_irq(priv->pcid->irq, &vnt_interrupt,
+	ret = request_irq(priv->pcid->irq, vnt_interrupt,
 			  IRQF_SHARED, "vt6655", priv);
 	if (ret) {
 		dev_dbg(&priv->pcid->dev, "failed to start irq\n");
-- 
1.8.3.4


