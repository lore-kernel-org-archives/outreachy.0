X-GM-THRID: 6254174562837069824
X-Received: by 10.28.158.216 with SMTP id h207mr1364796wme.4.1456163488102;
        Mon, 22 Feb 2016 09:51:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.67 with SMTP id r64ls364571lfr.10.gmail; Mon, 22 Feb
 2016 09:51:27 -0800 (PST)
X-Received: by 10.112.17.37 with SMTP id l5mr3542724lbd.21.1456163487376;
        Mon, 22 Feb 2016 09:51:27 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id 141si1144610wmy.2.2016.02.22.09.51.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id g62so185360407wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5JMpDe2A5pIxdNUzRYa+v3TV9SaPjidTD8i+sI5CHpc=;
        b=VWb5xK2iMAuePy+UaYtdt6qXYPNTkaUdWCDJ9whO7dUr53bmJOq0Pw0M8NHOYI0De5
         2ihXeuYaXBKPS6lWRPX5VG55RlpgZC6PVP3o+G/EGW90sqqSl5M0ToOXKnYj09v2DrN7
         yNMwTiFoj/NmNQGbnyG4qDA/c3I/5AIaFkcq7Kdsx+SHyj58YR4TIHXgnnri0jbNIl/V
         EiN9hF1sKOrsdElD2WLyhYlqUsEaQXQ5eBzZZw+B0besEY9qnERxZ8154ps8cCRfEgsB
         K2i0jFp5rz17JBIP9PyEJ+IdHCKQiHIFsLenSXe7Djuifc/bfIrCKYFlOlUqNqH7hCV+
         LIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=5JMpDe2A5pIxdNUzRYa+v3TV9SaPjidTD8i+sI5CHpc=;
        b=l+jlMWVaXiQGbj5S56ca6Eu00hXlEO0bq8e9BQcTl7EjRmriq3TUviibody1wN0uXO
         OS463hA/y8EG2awartbP4m4h6qauLv0U5V4ZsGVf5WoV0CxlQwWQi4LEyPu13lIDBrHg
         Y5KDBBozZoUma2Ln0qZVRHEVNQvz9ge0Kii42oSixAGlZCmE5q+0utj4vU69mZkBRHHi
         LWVXTVmSaKfRbIBwxiplMaiYkM/5OobhQhNU4ruERJaILNsCo1odUDJ47rW9LvODUj0P
         46weUkWhwzFFnmhYhQJN8nclfJOvqDOmjIB+GZqiCv8Zd4jxKqCngmqpLfhQfDTUD5f8
         3VWg==
X-Gm-Message-State: AG10YORcrzD/UHlpUrLLKX6bYoVw/iJljweiFD2/Kc98VIennHLHKhylNv5aLBJ2HzjhGw==
X-Received: by 10.194.205.103 with SMTP id lf7mr28541666wjc.147.1456163487219;
        Mon, 22 Feb 2016 09:51:27 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (230.Red-83-43-166.dynamicIP.rima-tde.net. [83.43.166.230])
        by smtp.gmail.com with ESMTPSA id 73sm22121562wmy.22.2016.02.22.09.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:51:26 -0800 (PST)
Date: Mon, 22 Feb 2016 18:51:23 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Remove blank lines before a close brace
Message-ID: <20160222175115.GA5454@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Blank lines aren't necessary before a close brace '}'. Checkpatch
detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec_paz00.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_paz00.c b/drivers/staging/nvec/nvec_paz00.c
index cddbfd2..51dbeeb 100644
--- a/drivers/staging/nvec/nvec_paz00.c
+++ b/drivers/staging/nvec/nvec_paz00.c
@@ -41,7 +41,6 @@ static void nvec_led_brightness_set(struct led_classdev *led_cdev,
 	nvec_write_async(led->nvec, buf, sizeof(buf));
 
 	led->cdev.brightness = value;
-
 }
 
 static int nvec_paz00_probe(struct platform_device *pdev)
-- 
2.7.0


