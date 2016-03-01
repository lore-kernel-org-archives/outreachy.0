X-GM-THRID: 6257131864000036864
X-Received: by 10.182.60.201 with SMTP id j9mr17512992obr.46.1456860989891;
        Tue, 01 Mar 2016 11:36:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.42 with SMTP id ph10ls325698igb.1.canary; Tue, 01 Mar
 2016 11:36:29 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr18314812pab.7.1456860989494;
        Tue, 01 Mar 2016 11:36:29 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id r75si2985277pfr.0.2016.03.01.11.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:36:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so10959970pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=rsxLCzsdf0+aPXwjV6px+6XaYiScWjZogk9C4PdsCNSDzlQUXR2DyF1FhlaJUxtCEN
         K5L12Zn8Xwxz+LOxDz9gHUPNUQoHSehyIhYi4AsDTLIVprl6sBKKlhmIF7OEDKTWXQwS
         P59JFLO5yvSu6F0nk77vm0iWtCSHq4qTsWk7FcqFRAm/P2lM7AxneHfTBw0BUK+Jijj8
         VXJcR5hjIKtsdViIfhIKXIUQ3nQy9b2XSfVwk127RmoSLDfaBs0VjQT7G6XnmMieMWOZ
         4iD3phyCnbASg9RTFrJJhKnCLz/KB+W86lSONtOp4LKk4nBk/GkjvZ4uVaFV/SqQJoQw
         Lwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x9vv3WNaBGA1U2pNONx2S8l7sLxgRdagGJWNq1U/79c=;
        b=XTstaxLHMa0XLu8a4J/5Nw++lunRK465lLbd1MNAHjkJaGVsscSsuCfoxno/V3twcg
         G3iV4yCaFJ0kD2u26kioK359/Xbp5Pwwm1eGq2en2+T9CRmh7poUgNgDkjBDutiNYY+T
         40bZgDbj9y+VJBcz9gRrh4qDt3xo6A4o5iugiTO3iEDW0xd6SP0ON2i7RcUQexNeya0j
         bnE1i3TtRxfh1LRFamH5kgOoMfxD7N/wG7AjxyduqtXMnysgMMeZFj7+hz5+6RGA4IRo
         a8ypskI2KFsIQD/4Cn4Km8Ogo1VvMW1zlr8vMWSRuHohdJ4+4dPVtDRQyewuwQTrKekH
         Gayw==
X-Gm-Message-State: AD7BkJKuMi50kvZI3it8GKL5xnRePcqUiS370eif5qQercEhPBNlfxhUJBVrZB0ZDH7FFQ==
X-Received: by 10.66.218.225 with SMTP id pj1mr32054130pac.83.1456860989351;
        Tue, 01 Mar 2016 11:36:29 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id g25sm47398173pfg.35.2016.03.01.11.36.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:36:28 -0800 (PST)
Date: Tue, 1 Mar 2016 17:06:35 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] Staging: wlan-ng: Do not print message if kzalloc()
 failed.
Message-ID: <4aa74d54aed9cb2af5b6116e424f1ca2c75e57ab.1456830070.git.bankarsandhya512@gmail.com>
References: <cover.1456830070.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456830070.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 131223a..e245732 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1886,7 +1886,6 @@ static wlandevice_t *create_wlan(void)
 	hw = kzalloc(sizeof(hfa384x_t), GFP_KERNEL);
 
 	if (!wlandev || !hw) {
-		pr_err("%s: Memory allocation failure.\n", dev_info);
 		kfree(wlandev);
 		kfree(hw);
 		return NULL;
-- 
1.8.3.4


