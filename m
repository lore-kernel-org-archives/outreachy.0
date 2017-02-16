X-GM-THRID: 6387819516202582016
X-Received: by 10.237.62.180 with SMTP id n49mr1342547qtf.85.1487280129684;
        Thu, 16 Feb 2017 13:22:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls1164916otx.21.gmail; Thu, 16 Feb
 2017 13:22:09 -0800 (PST)
X-Received: by 10.31.252.132 with SMTP id a126mr1186571vki.43.1487280129310;
        Thu, 16 Feb 2017 13:22:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si331095pfd.3.2017.02.16.13.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 13:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 5so2939464pgj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 13:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=00aFMVs4PanrQBdzDkfHkriK0liyGfxWV4huVGHY7Bw=;
        b=nmWHA1Ph1Z1+lqDIdDeOAR1p65eQ0KSjPMPEREY4uIQZyWJdKEukhbzy7RKJFdmjOv
         zzUTktwAMJknTLkme9B+1h4XF3DqBJ1MxIYWbvuVRlGt4uJta0FX+mSm+3Ny6etitQRR
         GyHSrSwj/k47nm9KqKsT21zp5rNkZP2K1bNLHygBVClqtg4ezSJk62X7mfxB+sTlELZe
         vPXS4EmhRk4PLWj9i979difBJi3eu3biI3xIx6umhua/g27hYwfQ7CEolmGizXjZ/WEH
         XdoJzS0qc8l55n+c4Sr2BCPa34f1RUvrMbK/72STPI3D6Iimcw34VW/cc2dMv59AE1yV
         0vSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=00aFMVs4PanrQBdzDkfHkriK0liyGfxWV4huVGHY7Bw=;
        b=efkXg49hXYHqm+HbgtNwlFbnK10dFCqvx+ZxeR7GuAJN+UAj1mg7jMz95SpVw0QSP7
         +/l3g2yE6FOe2WtRWIFc+r2ST20V5NgmwvOf+jcvYwwuuWP0kj6m/WydY0jl4mFu75xQ
         eQ7WYqVa451n0scaRmAY5YIfqmfOKQCk6wnw4SHbuS65G1cBJEJUiY74MbtGhcFmYbbX
         a0t0mpDQHR0E5Yy5qjJRBmNHM17xAHxuMMQlBT6BwfOwVRshzyPXbl0gPxHSMCK22RBY
         vR9TPa3F5fPSSICpmd/9CX+nsCBdJW4zm8krQkba3nRryE41QO3G9eO3Tzv5vzHyRRFA
         kQGA==
X-Gm-Message-State: AMke39m6+9j7XyUqZUDhE1i1sfW4dzQC+u+rEVBWzi0XtnSEQIabp8kG5jrEU2zsonMXBQ==
X-Received: by 10.99.157.143 with SMTP id i137mr3340225pgd.132.1487280128779;
        Thu, 16 Feb 2017 13:22:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 19sm15320709pft.46.2017.02.16.13.22.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 13:22:07 -0800 (PST)
Date: Fri, 17 Feb 2017 02:52:05 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8192u: Fixed 'tabstop' coding style
 warning
Message-ID: <20170216212204.GA12996@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace a mix of tabs and spaces indentation by tabs only.

Fixed checkpatch warning "Statements should start on a tabstop" in
rtl8192u module.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Modified "warnings" to "warning" in the patch Subject.

 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 563d7fe..814ab5a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -666,7 +666,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 	if (ieee->set_security)
 		ieee->set_security(ieee->dev, &sec);
 
-	 if (ieee->reset_on_keychange &&
+	if (ieee->reset_on_keychange &&
 	    ieee->iw_mode != IW_MODE_INFRA &&
 	    ieee->reset_port && ieee->reset_port(dev)) {
 		IEEE80211_DEBUG_WX("%s: reset_port failed\n", dev->name);
-- 
2.7.4


