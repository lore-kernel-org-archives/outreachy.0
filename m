X-GM-THRID: 6332135193668747264
X-Received: by 10.36.225.1 with SMTP id n1mr3995488ith.13.1474315112640;
        Mon, 19 Sep 2016 12:58:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.135 with SMTP id 129ls2716523itj.19.canary; Mon, 19 Sep
 2016 12:58:31 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr14933357pab.25.1474315111658;
        Mon, 19 Sep 2016 12:58:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yb0-x244.google.com (mail-yb0-x244.google.com. [2607:f8b0:4002:c09::244])
        by gmr-mx.google.com with ESMTPS id 63si913247ywe.1.2016.09.19.12.58.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) client-ip=2607:f8b0:4002:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x244.google.com with SMTP id u125so5198769ybg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 12:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KFsTgfQVsevmZhycOuEx2UU1t4qHfT2XydeuEn+vels=;
        b=P5mB//9IciunEEZFECdkh+/cEG25qy6Og9lkEy2SaPw1/ED+isuJzEaCHC9oeeMCwB
         RcxVV9lRKpRf4BxuYzV8QAwveyOUHJjtKzSRFAL/tYP4LwnpnNktdMKoRYJi6yxV7i/V
         R3FpSwpUEF0zfSQrCD1DjAX6ZjzF0Gu3AiYaO7aJ0i9O+JpueTUKdNgvACN5Waevzmxh
         jj+kSdDHhvQ/tT5LcsiqkUQrY2UkwzCj8ffToD+nKIqfjApcuxILJpWNFTnwA7MGq1Gh
         ds/E1rKniP3vreaSqikQEsDRI5j7NWrunqpkMnZDhRv72Q2OwE3eTLylZn4NU5AMOINr
         7lHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KFsTgfQVsevmZhycOuEx2UU1t4qHfT2XydeuEn+vels=;
        b=j/Y04bHaHBi6g+qwLYkNuq1SpmCY+FAN/DPoTIF74SsFkgzTwD2y49C5PmDj2VZfsX
         829UqFxMO0h8IkuuyvaoEHDnmLlBPnkRcPcSqRi/cYohN29qV2FsLcAYYO6aK2l54nL7
         KsYmaE3aewY8jvZYjkv/LXXakxzkaM6wkyqqq38/6S/rJpt+yebkfYDZWliqILbToObn
         7MRNx4c+sZGzVHKJeURP/sUsBYzDlz+qIgn5GaQdWjsRxL8alo9T/IRqr/37qRDtiHdo
         KmZ5C92g+6HD2w8RkAXX5VT6G85rivgvAqbmM7g+3OE1TyYjGZ02tzw39WyCM6maZaZu
         eN2A==
X-Gm-Message-State: AE9vXwPwW3VUxAC306hoKXi0USnkKUn9AbDVCMJyc0X9HKowENVoB9befSVWt0cPIAC6wA==
X-Received: by 10.37.31.214 with SMTP id f205mr18501880ybf.193.1474315111416;
        Mon, 19 Sep 2016 12:58:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id i184sm10031556ywe.42.2016.09.19.12.58.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 12:58:30 -0700 (PDT)
Date: Mon, 19 Sep 2016 16:58:28 -0300
From: Juliana R <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: fixed parenthesis alignment
Message-ID: <20160919195828.GA32755@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch aims to fix a checkpatch warning
caused by open parenthesis alignment.

Signed-off-by: Juliana R <juliana.orod@gmail.com>
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
2.9.3


