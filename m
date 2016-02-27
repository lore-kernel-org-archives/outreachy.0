X-GM-THRID: 6256058221461504000
X-Received: by 10.107.157.10 with SMTP id g10mr12592341ioe.28.1456604667935;
        Sat, 27 Feb 2016 12:24:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.10 with SMTP id we10ls825756obc.77.gmail; Sat, 27 Feb
 2016 12:24:27 -0800 (PST)
X-Received: by 10.182.245.131 with SMTP id xo3mr6924155obc.49.1456604667507;
        Sat, 27 Feb 2016 12:24:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si2735509pab.0.2016.02.27.12.24.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 12:24:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so6293916pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 12:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=D2H02N0Xwkhvf0N1Lx8xW+lqbtPVwpXP+ypyi5VcD5E=;
        b=PuQcgXgVqAOXa+vR1X9UU9g9RogARwztGlOL/inFXbXrn9hqsksZCGVeFOfF0q9lIM
         EIqVasYqrnQZQF1A5jrk64UX0u2VEBa1IJhg5Q73sN2JSdNS9jKFbNWuQhZ4+AIfBdWD
         DsaC9d/auXTUCBfi9oBFYF3lQnWMK2Q5ntjBYZ1KnUE26ggLe2QA8XKVG971pi4/p7zd
         UpVJuSzGAKpharFdXEhyfbaj91Qo0pTZnmXfXqvkhuUcLG3wgZD+nnLNQjXqAJPPZ/AT
         D9QU/v5DEhEyRU5h/P84f7DxFcl+QlU54q9oYLwnS/6irUo7iPhCG4AMoIeSwpZ0J9Ma
         q6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=D2H02N0Xwkhvf0N1Lx8xW+lqbtPVwpXP+ypyi5VcD5E=;
        b=Qsp0F2dV69nD3TrynUdZQX1mFH7x+QqBfKxmmEhp8gws1pCz30+a7p1HF6mG9Gkt3a
         obVwWxjo2mOiMH6pW5uetBmia3jTtboehLAsa9TxfzoHjdHDQW3O0izARbsy5GpQeX/C
         YMWLkSIViZQ4FlhHbkTHseMdVQVcWPV5rAg+rp+6brKVn0/mRluvMnjpXWBwV1V7quxL
         50V8T18D1dGelLaqnxYQ2CrL+KkXcj1xnnzJlqPwwxrfN5PAcPZLcTuYkkvSQu9FcVJy
         hHDl7lEmYT31VNHK0b+TgBtY/szKsWEKITy7q/ALD505CKmtvvusP76OgHOl5Q1fsm5y
         GntA==
X-Gm-Message-State: AD7BkJJNSQYFXs6lc/daKe66I6emwiiPHpjBFUNh8CiLovX3/UDSx7GQga9KW5QpuVOusQ==
X-Received: by 10.66.146.100 with SMTP id tb4mr10985968pab.99.1456604667333;
        Sat, 27 Feb 2016 12:24:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id q2sm4233154pfq.88.2016.02.27.12.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 12:24:26 -0800 (PST)
Date: Sat, 27 Feb 2016 17:54:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <20160227122429.GA5723@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v2:
* Add missing return.
 drivers/usb/gadget/udc/at91_udc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index d0d1894..87f6f52 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -1726,10 +1726,8 @@ static int at91sam9261_udc_init(struct at91_udc *udc)
 
 	udc->matrix = syscon_regmap_lookup_by_phandle(udc->pdev->dev.of_node,
 						      "atmel,matrix");
-	if (IS_ERR(udc->matrix))
-		return PTR_ERR(udc->matrix);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(udc->matrix);
 }
 
 static void at91sam9261_udc_pullup(struct at91_udc *udc, int is_on)
-- 
1.8.3.4


