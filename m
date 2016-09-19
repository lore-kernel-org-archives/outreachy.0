X-GM-THRID: 6332127696455204864
X-Received: by 10.66.127.17 with SMTP id nc17mr4698093pab.61.1474320285114;
        Mon, 19 Sep 2016 14:24:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.45 with SMTP id 42ls527011otg.14.gmail; Mon, 19 Sep
 2016 14:24:44 -0700 (PDT)
X-Received: by 10.157.48.97 with SMTP id w30mr315758otd.120.1474320284608;
        Mon, 19 Sep 2016 14:24:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id v21si1527986ywa.7.2016.09.19.14.24.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:24:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id g192so8891545ywh.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bZGVbkuebwZTOavbOaB0YB+guMQk+vEmfP1VVmkwksM=;
        b=YZnK6b/IkJGlgXbbKZdNtjmcFjiFrTfymiEzRksK3LVKQN9MgDCAZzol3XRWhVDtL0
         08mIvfcXzk6USLpyn26tfxiN6EU3PnDTrEsz8gUR51TTU1JJeTCkxWBvgrmWO3/5anQ4
         5/6m57MYJ/0U1LBUaLQ6sgdVKMmPbthmTz/OR1MOm38qc9ZJ5ARQF043/psrsxqCwAFc
         uvEdYSNz/1Q9EV3PLMwJc168okX8Vam4ePwumuI+yhVrDrcI1iQKQXtgcfi8UYTN5Pn/
         5nU8GLm+mfOQsrcphS64iqzw/TtYt9x8rELNvuAZSg1fYEsIGthEJ/GGaHGIrr4TrNqk
         YjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bZGVbkuebwZTOavbOaB0YB+guMQk+vEmfP1VVmkwksM=;
        b=mGPrEEnGTlbNJXlCbq/YytOykY5TJ1l/UdwCCQ6JPp4J43t8vIcGjy0AwnsgnWkavq
         bKhjRQipUOeKSpzhkNL2lvXrPfX/YDNO8/ZpjJo90f62xFcA8ZdD0Pfqu/BoNBeD9yil
         MZ/15eQr5AAw1i4pl3wqDu2Kg4mn20Kg9KlSRNoC2KLvxoYmJKbxQBgnRsRvtQdItzZo
         e1VmyyQwGi+uJhV19HBs66QnTEhDN+1E+gdLPKigfeVKMl05/axtvh7+sz3Dx277YH97
         sNaQiFiu7VfdY2KNVzlFsp8ggwO/MfBOgcp2nHiumrNi7q6MtPXT1aUHXuNU3ZrQPY6P
         yE7A==
X-Gm-Message-State: AE9vXwO7LeRboApYGrK0U74RtZ/YumWcqxMXxGnpjp8uQTLuOGfu0+h/vAOLvIxJEDIhrg==
X-Received: by 10.13.197.197 with SMTP id h188mr24149531ywd.202.1474320284393;
        Mon, 19 Sep 2016 14:24:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id f188sm10203752ywa.35.2016.09.19.14.24.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 14:24:43 -0700 (PDT)
Date: Mon, 19 Sep 2016 18:24:41 -0300
From: Juliana R <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: wlan-ng: fixed alignment not matching
Message-ID: <20160919212441.GA19124@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning by
moving arguments to the right and aligning them
to their open parenthesis.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
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
2.9.3


