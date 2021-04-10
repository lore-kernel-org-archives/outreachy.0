X-GM-THRID: 6949336762884816896
X-Received: by 2002:a37:c08:: with SMTP id 8mr16606582qkm.423.1618018551637;
        Fri, 09 Apr 2021 18:35:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls6128168qkx.2.gmail; Fri, 09
 Apr 2021 18:35:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxQf5mq16uCHGBILK6Te/CgMuvCghlsfrc1vufnUZQ+6eFrvX9Ew5fXmeP+vvXPMPr4O9XF
X-Received: by 2002:a05:620a:16d3:: with SMTP id a19mr16307904qkn.88.1618018550890;
        Fri, 09 Apr 2021 18:35:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018550; cv=none;
        d=google.com; s=arc-20160816;
        b=WLkVhMhozmx3O52mqhUq+ZGRWw6qrh7TvzucUtXaW6T4W3QW0NZCCn0bgfsd1/kOoP
         ScM9sqWckzG9WNgJT9IwU4brlh0HVO6+JLQzRY4tYqfoSrXzwNjv/jSlHdshneEXLDwK
         ddVRkHwr8UUn863CrGSqa4zKrmf3JqUN2F0RRam2RRXlRqD9mpBVdd3UkBtHl2fiikFH
         Zn8LFFE9ZG//ARU5LbmjQzPSMlDb5t+s8dfr02ohFczEIc1oOMTGnmrH+X6B0CYL03YG
         2pVdI91GuXdKLdDuYSrjarTDafM1sORf4TXOt1EjNcuxVKl0azJ4gqfUJt9Ccz72XBbe
         RvZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=vd8lMgu3zkr2z6g7xcisDVvdvTxxf93W5Kur6M5AgCE=;
        b=lvYgfhXfjme/7fyQLKlJLUvhAUzV2Z0UxI7uzkCrQAMJU1X7OjETphijskCqW2wkyo
         TlZXq3GTgROxbX336iAHbkmSeinAFd4KbU6QXHK9++3t7eVVfsmvO+dCqyUeUAIjjv+5
         pIcIdMAj7Sckeq4tHuCUlf2hf8XfWwQ6YlikllW8fB6jepkQD7JCfl8TgCucQweq+DvI
         fEQp14VEZqtTci3K3QNgkhjNOjQ7E/6z37CRmmEMgLgVFAq/cJhdYoysE1ScpyPHnUtP
         p7MhxNTrQVc3yoY5Sc900rVV9wcnKDo/f+aFMZE2jD/I2xXhCI/6DwaxFI7GfAdy32CH
         GJnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjWwg+1y;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id w22si592148qtt.0.2021.04.09.18.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjWwg+1y;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id m18so1369349plc.13
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=vd8lMgu3zkr2z6g7xcisDVvdvTxxf93W5Kur6M5AgCE=;
        b=pjWwg+1y5IL9DISwRYtHV5mqgLMoNyUUSI8L2ZaCDgnAhgNKtgmpczwGAoAaM/YHNO
         piGExD3Hsl+9zazWBVqpupyQCmTNh79HGaoxKii5uU0HJ7/t+w58yg55KeyaRgiQtRbV
         D0H+xf7lDtYr2nX4QDJ64y/26kijC+/9PvAFnyJZUJhhiasMVmfZdSpFo4D4CpFc/27Q
         0qg2OvRUI1z81wiG+wgKYpyif+j8kvZ8ehtbCas7oNcRUqLIeArCQZjPYzo3utaeA2l6
         tY8TRx1h4i16MQjOl7Paa2tzI97k/jWcJHZo2G6ENcJp3ODzygwviwRjQ4e49dRk0TrW
         vlbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=vd8lMgu3zkr2z6g7xcisDVvdvTxxf93W5Kur6M5AgCE=;
        b=YKoOWVm9xSSBoH4dB0IdnwBu/R7uxR7zRSIceW34nt9zbkxNZwcdievB7f25/rOosB
         za0V3YSIg4J095/9Tnko7yxHAqWkUL8V0NcbZchHv0yJ7EVVQnlw+N7tFqSadjPtHM71
         XFeT9U9un8BMZku0vI7b3MRHeJRQvoq1k8G3m1D0aqX6Egjwdnn9l1b6/gakUHqZFGQN
         cs1Ad0gPs4PoEHfUMsdJtOE5Z1OoYJ1JiNjI4E2EiZSzKWbjtW6b5+TWWSd0ENXkVSxm
         roJxN3q7o0TQjgZQFOczOdsY6v1gCgHxQ1GImCeu0nkk/4ku4FWnV5GSxcQS0GvhhN5f
         PHyA==
X-Gm-Message-State: AOAM532Uzma5LfBCdItdxzKfLcteKZzmlwvNRPgq1zNHv7iUU230F+Kv
	8DqpJ7pacBOQpG9kNKI2kwI=
X-Received: by 2002:a17:903:2306:b029:e7:1c8d:63fc with SMTP id d6-20020a1709032306b02900e71c8d63fcmr15769758plh.35.1618018550053;
        Fri, 09 Apr 2021 18:35:50 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id e68sm3126832pfa.78.2021.04.09.18.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:35:49 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:05:44 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 6/6] staging: rtl8192e: align statements properly
Message-ID: <YHEA8CgeJAXI8z93@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Aligned the statements properly in one line to make code neater and to
improve readability.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 2b9e275f42bb..65202dd53447 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -155,8 +155,8 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
 		retValue = true;
 	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
 		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
-		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
-		(net->broadcom_cap_exist))
+		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
+		 (net->broadcom_cap_exist))
 		retValue = true;
 	else if (net->bssht.bd_rt2rt_aggregation)
 		retValue = true;
@@ -809,7 +809,7 @@ void HTUseDefaultSetting(struct rtllib_device *ieee)
 				ieee->dot11HTOperationalRateSet);
 		ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
 							       ieee->dot11HTOperationalRateSet,
-					   MCS_FILTER_ALL);
+							       MCS_FILTER_ALL);
 		ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;
 
 	} else {
-- 
2.30.2


