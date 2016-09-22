X-GM-THRID: 6333266746985676800
X-Received: by 10.66.14.193 with SMTP id r1mr755226pac.117.1474578573787;
        Thu, 22 Sep 2016 14:09:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.45 with SMTP id 42ls7385287otg.14.gmail; Thu, 22 Sep
 2016 14:09:33 -0700 (PDT)
X-Received: by 10.176.2.15 with SMTP id 15mr535398uas.9.1474578573394;
        Thu, 22 Sep 2016 14:09:33 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id m82si247943ywm.2.2016.09.22.14.09.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 14:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so5953610qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 14:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wYEHDzlzGLM2ZOJxXPAJbXGy09m1o20L2IWYGorBjSQ=;
        b=ZJPxA0knaFeKtA6I6+06dVcplewj0teXRsPdQTyUCjEXqlKM8uifIG1aix3EMJ+6oS
         jcuum/WeWUNYvhVldEcioyYakZB1Gp3vLr0HYYLyQXfS1QZ+RLVrpdNVp2Za8yPsZqhN
         encEio7d1JkIfsw7s0/B+gvmqZKMhW4JAa8sU6i5yLBQRPgRoNGuOnDIMPiJrcdErXAP
         9xkSu3s+NRGPCmoekUFQBZOEDEPKK99Dbp+lYkdGaSiwkBNM9TLNwQiDFQ8+t3r8beA0
         y5VtBUSvpQrhUKt+VWqzMsEYf3WxkM3JBownyZr0/6Gu0fbTP+bHOZysGvZin9d2wIJq
         YLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wYEHDzlzGLM2ZOJxXPAJbXGy09m1o20L2IWYGorBjSQ=;
        b=bJ6yiDSu5SdWedfjYvBnAkYH7SFPpNvc1+d00Qm04Zisq7CYKiBRpdI2MSd/bmK23R
         zI6Sw+tZdiJUaGYr0JkUmRMKc4q72dJbErqcJszhPmeXFQZhdmbWn7uUT+Aj/5bh2Esq
         II9MoG4jP7OvgaytN3rulzf+fiopoouP9CKL8WSnJ9bW0z4CJGXgYKzpMddcPiPUVOS0
         h3S1MVj+D+B847HvdPCcqPtKVbT+cgYr5Y+gEX2VWL6D1nyh9d8H119D0FwE2TPdN2K8
         +Vab7oqv4A7GTp+Eqw4XMLx9MjSh3jRTlGw+KDkeDluK8Rv0C0rp7gwa+8nJ8RWbyTgb
         pFrg==
X-Gm-Message-State: AA6/9RlOjnMDf9fqWZa0PV7XJKnvDb3PpgULLnL7HbEdOG6t4+bSFvHOb5TPtJGlbTQo/w==
X-Received: by 10.55.168.69 with SMTP id r66mr4156021qke.155.1474578573151;
        Thu, 22 Sep 2016 14:09:33 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock (wifi-177-220-84-36.wifi.ic.unicamp.br. [177.220.84.36])
        by smtp.gmail.com with ESMTPSA id x24sm1970851qtc.31.2016.09.22.14.09.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 14:09:32 -0700 (PDT)
Date: Thu, 22 Sep 2016 18:09:28 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: removed blank lines
Message-ID: <20160922210928.GA15368@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Removed an unecessary blank line after open brace, fixing a checkpatch
issue.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 2deb263..e6c9bb0 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1031,7 +1031,6 @@ static void prism2sta_inf_tallies(struct wlandevice *wlandev,
 static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
-
 	hfa384x_t *hw = wlandev->priv;
 	int nbss;
 	hfa384x_ScanResult_t *sr = &(inf->info.scanresult);
-- 
2.10.0


