X-GM-THRID: 6401312092482174976
X-Received: by 10.157.40.246 with SMTP id s109mr3804204ota.97.1490421614048;
        Fri, 24 Mar 2017 23:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls4292712otd.35.gmail; Fri, 24 Mar
 2017 23:00:13 -0700 (PDT)
X-Received: by 10.129.50.12 with SMTP id y12mr4288099ywy.111.1490421613647;
        Fri, 24 Mar 2017 23:00:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si947164pfb.7.2017.03.24.23.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 23:00:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so1723156pgf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 23:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iR4B2gE4f1QbfpSwXx/jbBh5ARvPeNz8bQnCPQp0xGw=;
        b=A+bZpZQuBywDkG3OKIJ8RNfLIjtP7cDd9HxS+5vYKHTPnsmrpN0xRTZ/jjl4gb5Rg9
         Tj9h/dzY696WII2yspTw1hs7K0aIbwhR3oRTuSKIe7EAakDInebpZ+J1wSP6sTejFMgz
         KMqSk+cD3GW3tYODde2Tb+naxRytccGTDComRm7HGgtPQPx05o6gUBtlawV09Otv6cu1
         hEuqh4OH20gMD+F8G6AjYirRvxukfYxiENejOnOpqQwJbH4JUtQlx+evFgyFd8VqtHfL
         QG5uR6Ahyr46W9XTdLKC0F8N0KILYity+4t9pOX+bWtcpm+PFzzSJuiqC+2qOddLuhqz
         5bxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iR4B2gE4f1QbfpSwXx/jbBh5ARvPeNz8bQnCPQp0xGw=;
        b=KdY8boIlxYX/9kVPleE3G8nV75WRssWFaeTqfYViGdMiEZwT/gd02MZu7rDB4EeiIO
         rOBxpina1rSntPy+RMsnyFmlWN9DbiwORL18KuVrDffa9Rmq8PatbhvrNEdGMpiAoqRv
         w4BzuOmStfpo/nLjwksOeV9L9uYN1XjziLXjrrwfUMHtJy92OuNRL5IbLzqjznkfVnPT
         SisXTgk6dSklb2mlXM5qEkSfrs7xliRae+r6bd+ItWALINi+DGNU5BCMkQylsHQx4lQN
         hp54OR405ltUWr6FuTu74SuDHNCDDgOwyLziDzYv2opyLRZkFUmBpnWM9IhslHBlf7n/
         j+Sw==
X-Gm-Message-State: AFeK/H3V/SdZUxKA/JLJtQgGCqLkjoI8k7TbpJyv0gR8IC9CoPs08n9yYH1Sm9z8ALaTNA==
X-Received: by 10.99.114.16 with SMTP id n16mr10017274pgc.230.1490421613417;
        Fri, 24 Mar 2017 23:00:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 80sm7896940pfy.67.2017.03.24.23.00.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 23:00:11 -0700 (PDT)
Date: Sat, 25 Mar 2017 11:30:07 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: mchehab@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: atomisp: compress return logic
Message-ID: <20170325060007.GA5497@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Simplify function returns by merging assignment and return.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c         | 8 ++------
 .../media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c    | 7 ++-----
 2 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
index b1f685a841ba..a04cd3ba7e68 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
@@ -519,9 +519,7 @@ int atomisp_runtime_suspend(struct device *dev)
 	if (ret)
 		return ret;
 	pm_qos_update_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
-	ret = atomisp_mrfld_power_down(isp);
-
-	return ret;
+	return atomisp_mrfld_power_down(isp);
 }
 
 int atomisp_runtime_resume(struct device *dev)
@@ -587,9 +585,7 @@ static int atomisp_suspend(struct device *dev)
 		return ret;
 	}
 	pm_qos_update_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
-	ret = atomisp_mrfld_power_down(isp);
-
-	return ret;
+	return atomisp_mrfld_power_down(isp);
 }
 
 static int atomisp_resume(struct device *dev)
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
index 737ad66da900..10418c190f93 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
@@ -440,7 +440,6 @@ enum ia_css_err ia_css_bufq_enqueue_psys_event(
 enum  ia_css_err ia_css_bufq_dequeue_psys_event(
 	uint8_t item[BUFQ_EVENT_SIZE])
 {
-	enum ia_css_err return_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -457,8 +456,7 @@ enum  ia_css_err ia_css_bufq_dequeue_psys_event(
 	}
 	error = ia_css_eventq_recv(q, item);
 
-	return_err = ia_css_convert_errno(error);
-	return return_err;
+	return ia_css_convert_errno(error);
 
 }
 
@@ -482,8 +480,7 @@ enum  ia_css_err ia_css_bufq_dequeue_isys_event(
 		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
 	}
 	error = ia_css_eventq_recv(q, item);
-	return_err = ia_css_convert_errno(error);
-	return return_err;
+	return ia_css_convert_errno(error);
 #else
 	(void)item;
 	return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
-- 
2.11.0


