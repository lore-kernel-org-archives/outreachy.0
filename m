X-GM-THRID: 6332127696455204864
X-Received: by 10.13.203.69 with SMTP id n66mr19212226ywd.42.1474513983172;
        Wed, 21 Sep 2016 20:13:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls5902001ota.23.gmail; Wed, 21 Sep
 2016 20:13:02 -0700 (PDT)
X-Received: by 10.13.213.213 with SMTP id x204mr5272237ywd.52.1474513982808;
        Wed, 21 Sep 2016 20:13:02 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id p193si2790053ywe.6.2016.09.21.20.13.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 20:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id 2so2502035ybv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 20:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=B5zsvcBgiuUODNWFx9R5iUIEx2Egkrwgha91RzEy+ME=;
        b=KJD0/1rJgmP+OACy+UfQ0vOb3TC17MovNklxmoCH4UWSAbtS8CAcSlUvchgR8k/5GO
         0NfkNhz7spnf+/iVMW1IAmoMC82OJBrDWarEqV4h1SgT/pAQg3oBSL9fqt1blsxcUh7Q
         WbXMeWMEjvhZZmUA1pKWaJGS07X9oRMNC85BQPPxUiOZlXNn3bJsc6H/fECaPET+kPAW
         yjiwcBpFej7BspWx+5RX1C598CoeSVWmwiWfo4Y0akpUxNJGt5llCToXMr1FTTOxM8pn
         7FjUHRfd/xtOVgDqNSa8gVhIwtrkBBoUp2gFlJlnE21mojlFREKm/CQhF49lJIb1aNUa
         ZVwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=B5zsvcBgiuUODNWFx9R5iUIEx2Egkrwgha91RzEy+ME=;
        b=QJGnMhVB8qr+p4/HnIs20qLB+uNu4hd6WTy82vOYCqzB4FJ2dBL6rc6XUx7gqIElrh
         dkvgnj8DPYEJ4d8eyqReimOag5hgRUenk2dVsAqMKAPDhNj6l17el6vsbQw2877E1a13
         akTEYECCRsEfsyg82/+n9179uYW3vnp6J0UsbfhNxkYtah2ZgqBWSyX3RSpdcKlkyfOQ
         vtcraSRT+tCCcfOAQ1WZqwZ7/3WbQo6GdQYTgmISYRUvI004epkq9ApKLtD0LKXbffpO
         tKp147xwEAbAGcRyEKAQVOiOHJFP0mg6ZSbO2Tv6g084q2uSGe7KK0o/dtz9LnnvGEvl
         3QUQ==
X-Gm-Message-State: AE9vXwPX1guXMuNMb5ZdJhDZYnuqAWiRMX/hZouwGzY2IttpGHJC7aP8N6BDo4xXFCxQlQ==
X-Received: by 10.37.80.17 with SMTP id e17mr26598945ybb.105.1474513982599;
        Wed, 21 Sep 2016 20:13:02 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id g63sm4147838ywe.53.2016.09.21.20.13.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 20:13:02 -0700 (PDT)
Date: Thu, 22 Sep 2016 00:13:00 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: wlan-ng: fixed alignment not matching
Message-ID: <20160922031259.GA8446@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning by
moving arguments to the right and aligning them
to their open parenthesis.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v3:
   - Fixed patch author's name

Changes in v2:
   - Make the commit message clearer.
---
 drivers/staging/wlan-ng/cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8c592be..bed4672 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -334,7 +334,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		msg1.scantype.data = P80211ENUM_scantype_active;
 		msg1.ssid.data.len = request->ssids->ssid_len;
 		memcpy(msg1.ssid.data.data,
-			request->ssids->ssid, request->ssids->ssid_len);
+		       request->ssids->ssid, request->ssids->ssid_len);
 	} else {
 		msg1.scantype.data = 0;
 	}
-- 
2.10.0


