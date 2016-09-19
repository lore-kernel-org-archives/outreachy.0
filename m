X-GM-THRID: 6332127696455204864
X-Received: by 10.157.29.38 with SMTP id m35mr170486otm.7.1474313367172;
        Mon, 19 Sep 2016 12:29:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.39 with SMTP id k36ls331747otb.2.gmail; Mon, 19 Sep
 2016 12:29:26 -0700 (PDT)
X-Received: by 10.129.80.5 with SMTP id e5mr14905607ywb.15.1474313366871;
        Mon, 19 Sep 2016 12:29:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id m82si1475162ywm.2.2016.09.19.12.29.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:29:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id u125so5180247ybg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 12:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5UgxvTXTahji57HEYT9hTpcohDbN+xRQi4Vxzr51awA=;
        b=yhZ/YK4wkHAzcVc6rDoDNxiOk6iYI26hHxBQ2g3GOHAesBWkYwk/nsG/c3SLlkLQ3G
         E7REVhr9R3DbxPdVnnv5twyuAe7DploGOP8hO81Rq0g2skPDCccq3lORmFRAKDO1ds+5
         i/a7e0hx9cKT3lNyXvW/MZW6+EDpWQ3jJHvbuQ9lIYDYgqrCmC9s/25Uv08uKjLWPe9n
         v7K8feTd5Y2kW6eiN1WjK5rIGgCYsRh5Nb3vgGJecnNXVbT7d/hSxO+fkUwq5Qe2LImT
         7/8b/+fDewi/CycYOWvQA7sucV/BSpRtmWnmu8M5tTdFF7U5GK0kzxXJlSiNRfnKBeKQ
         LSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5UgxvTXTahji57HEYT9hTpcohDbN+xRQi4Vxzr51awA=;
        b=Hto1RaGvpXfVNWqcFLxbrhq1C2XcU5x8Jx6bmJSP9JBn94d98JBP6aGK3EPRZQvyYc
         V7/KqP5RA1gOdLLkEbydkZ8SOf/FQm1fS6p8t90tMqS+Byg3NF2+94DPl9ij085MWsYX
         eM36B4qX1ZIWeJv7FnwVk5hqsVqELcIS40Cf43DsfqgE9F/Tt2M1Yw6bjcEiWmFmvGjC
         z6suvshbemO/M8fsdKlK9uLREDwn1MW66PdnUJ95NEnLTfkK0jWG/RvRbytFRanu3kVI
         hxAbumlz6/s1GgaHHbW9WnKoYx8XeGzqrCcTDzm4f+XFwaFY2sDT8DJ6k47RKj2xNFjH
         G3wQ==
X-Gm-Message-State: AE9vXwOTqJdqRkK79FSzCoZkxzCsAhs8G0+juWZEqMTRbWFLR3O56Fdeyo77bOt3x6tWJQ==
X-Received: by 10.37.27.84 with SMTP id b81mr23229479ybb.171.1474313366696;
        Mon, 19 Sep 2016 12:29:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id x140sm4454893ywd.4.2016.09.19.12.29.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 12:29:26 -0700 (PDT)
Date: Mon, 19 Sep 2016 16:29:24 -0300
From: Juliana R <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: fixed alignment not matching
Message-ID: <20160919192924.GA29644@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch aims to fix a checkpatch warning regarding
alignment not matching open parenthesis.

Signed-off-by: Juliana R <juliana.orod@gmail.com>
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
2.9.3


