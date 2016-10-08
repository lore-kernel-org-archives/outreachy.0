X-GM-THRID: 6339198872310513664
X-Received: by 10.176.5.234 with SMTP id e97mr6463067uae.1.1475959753397;
        Sat, 08 Oct 2016 13:49:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.4 with SMTP id n4ls2562004iod.14.gmail; Sat, 08 Oct
 2016 13:49:12 -0700 (PDT)
X-Received: by 10.67.7.4 with SMTP id cy4mr5880833pad.30.1475959752813;
        Sat, 08 Oct 2016 13:49:12 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si6919974par.0.2016.10.08.13.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 13:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so4827629pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 13:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YTKm2XszGr6WTEeOllXqK67vR72J6IRizKq2kpmKoX4=;
        b=CHySL3N1+9WiZCZli+jKmD2bnN5RXhJ7EQBNKpaMSQTTXx5ScUZtweuuvVYAtb7VAg
         cUvC2pPFe25LcbceaoEx0Yz9rRKHTUQxvJ0fe6crg4kLAsfQui01Js+sSWg90JeMPCx/
         KXhRVSth5tomL04i1iv1BT0lik8Wj10dWVsU+yH0jYbKmzfBW31eeK5KBTg+uRxj46Xb
         8F+hAESJItc9rZKipJLfqmi/eX12oK8TYRdl1EhTWAAUSDVG4+X2nOJVgd6iF29szpmi
         e/RDwQ50QVqm7ZgXgSoVXtiG2ItAAP3bf54E+AM7zG0h6D/LTi7cFTaE1Ad1ND2HHqGM
         //gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YTKm2XszGr6WTEeOllXqK67vR72J6IRizKq2kpmKoX4=;
        b=mDDspMNArQiwalvqU9r+0QirNPfZtcIAbjGKixjHS7ArT1M1gvbreru0GQfWmzVuAZ
         FyBcborY/5gbLMp/EB8JF1t9gJ/3qU6HD/0j8R0a3zJNtv+68Bp0dUNjuk7VivgdIUSG
         GUSYgLWwvjkSmp8KwjVfQ3g2706aGlmTNkpuWIURV55pnS/HgWDoJCiQTdRY2ZnWQftJ
         UOJDGbMXcsrQeTs9kMbAFsMmmEdUlguKSLhVP0YNn7XCjD+7w2WjwZYiD+vGIfw8GFFh
         8cfP18BGty2pgKSlqkLN07tkpubJGxwFayXkWrp9exM9shhZSxQvWpfsp8Rp4QMVbI6d
         7O9Q==
X-Gm-Message-State: AA6/9RkEV9aIQR88hkhtsOnukKGzqYYUYjV230j/pqX5Bn61413kYznfQNiukKctXdoP8g==
X-Received: by 10.98.206.138 with SMTP id y132mr41217967pfg.7.1475959752640;
        Sat, 08 Oct 2016 13:49:12 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id 137sm23293430pfv.26.2016.10.08.13.49.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 13:49:12 -0700 (PDT)
Date: Sat, 8 Oct 2016 17:49:09 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: rtl8188eu: core: removes extra blank lines
Message-ID: <20161008204909.GA8819@spock>
References: <cover.1475959255.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475959255.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Removes unecessary blank lines that were causing checkpatch issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index f51a196..147eded 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -87,7 +87,6 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
 	INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
 }
 
-
 /*  */
 /*	Description: */
 /*		DeInitialize an LED_871x object. */
-- 
2.10.0


