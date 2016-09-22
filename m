X-GM-THRID: 6332135193668747264
X-Received: by 10.66.167.234 with SMTP id zr10mr58657pab.96.1474523459461;
        Wed, 21 Sep 2016 22:50:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.6 with SMTP id n6ls5293950ion.17.gmail; Wed, 21 Sep
 2016 22:50:59 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr53087pab.25.1474523459023;
        Wed, 21 Sep 2016 22:50:59 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id 63si13633ywe.1.2016.09.21.22.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 22:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id g192so4313397ywh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 22:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4hzkSq1j5+yzTT8thrOLBDsrw4crp/BJ5Afyi4YtmwA=;
        b=f26Ghcd4ePuzHLwqgrXn2YsU69vKReACI1HFTbSN8lFVp6eBE/f1ffBTHkP7Mml/ye
         G+askCmtqQuQt0rGZB2Tv0ziSnpOyYrmbWb8ob/NdwjDRzjy5GAH5dGPKoVJ3AhEqpFD
         845giX9UoI8ussp4W75gBl4Srnve1qQLTNlgkyT2hZdS2W3SCklgMxPEm5/cn6JjUpKJ
         pKUS+TA2q4v1jW3KEVrAeQmvb228zGekou5w+MBt8Gy1W8vkizKRQATV2Wmrgf3+TTkj
         4HfZqms6eEGLEW2YbeEa4ICHTi2Xu9bD6MdK+toyBz0v/NjzybyFjO3BC6cjbums2VO+
         mtzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4hzkSq1j5+yzTT8thrOLBDsrw4crp/BJ5Afyi4YtmwA=;
        b=Jj0Yyj3jQItVJBc+rAJrr36lZi7ad+wInLs0dtzuLDUVBls39Ut+KLCldbH4MbE6NQ
         l0RVQ12zu8JSxnpeKv0QeImSKMLzYpW4zLA3ilKmzh/GijzNLB5gNGtbNOWf1mqSIcWD
         Kxcflwsr8QwmUTNlcdnRNq/FpcmP8dZfemlQ08Q8+gNrZhY10ZJgdbNr6pbdQDpAeVni
         U1yi0dWisfbh0/vINrapbiU/H1YcqN9VuXlw2rVEvOAxRycT6gYl7OY78oYoR6ZTVYll
         cEXr7xR6Aa0nIoP99Zh8OVyA03j2XgNRuigaGBpZRPy4GOfnU22P0ZIR17PjVrPnaPTs
         177g==
X-Gm-Message-State: AE9vXwPDrNKfx3cr7avL95llHmKhbPCXkPdwkPfmeBdmx+XST7McU9p7ZlXgoqsQlrWb4g==
X-Received: by 10.13.197.197 with SMTP id h188mr130555ywd.202.1474523458807;
        Wed, 21 Sep 2016 22:50:58 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id f188sm70284ywa.35.2016.09.21.22.50.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 22:50:58 -0700 (PDT)
Date: Thu, 22 Sep 2016 02:50:56 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: wlan-ng: fixed parenthesis alignment
Message-ID: <20160922055056.GA32719@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning by moving
arguments to the right and aligning them to the open
parenthesis above.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v4:
   - Fixed commit message line lenght

Changes in v3:
   - Fixed patch author's name

Changes in v2:
   - Make the commit message clearer.
---
 drivers/staging/wlan-ng/cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index bed4672..f1d93b7 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -661,7 +661,7 @@ void prism2_connect_result(struct wlandevice *wlandev, u8 failed)
 void prism2_disconnected(struct wlandevice *wlandev)
 {
 	cfg80211_disconnected(wlandev->netdev, 0, NULL,
-		0, false, GFP_KERNEL);
+			      0, false, GFP_KERNEL);
 }
 
 void prism2_roamed(struct wlandevice *wlandev)
-- 
2.10.0


