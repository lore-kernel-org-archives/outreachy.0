X-GM-THRID: 6332135193668747264
X-Received: by 10.66.145.194 with SMTP id sw2mr14815449pab.6.1474319555826;
        Mon, 19 Sep 2016 14:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.81 with SMTP id 75ls518712otc.6.gmail; Mon, 19 Sep 2016
 14:12:35 -0700 (PDT)
X-Received: by 10.157.5.211 with SMTP id 77mr324349otd.60.1474319555471;
        Mon, 19 Sep 2016 14:12:35 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id c75si1518539ywh.0.2016.09.19.14.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id t67so8668342ywg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oxupK36ZeBJONLEvPlocsEjn/ThkCLMQzhGnsANSxP8=;
        b=GnVgQYDr1LQAJOaDupKLXUA1FDKjQgi4TE97cGRiWnGY/zZMAxhbbX5i4C1f71ghJ+
         MJhCpPgzJ2Hw8yx/+dnoA4qzDRRUFxmnA4+Tm+DR4aTYfNQxNIiAfkkinHXbR2uNPfna
         lAyWyXfZ7T4/kR7xzGpJpJTYxbOwgDKJX/gRa5qk/khxeybxWuxelh5e4iebJsnDkmPR
         p3dI/8cI1ZSTNyQk5s2v2yyndu0MpfkH9q/ihm05/Sg9MNyAXskJqs/6HAeft76McyyP
         qt5WB2t+DaoKpHqceBzTUpF05ee3b6NEwmiaGYjAo6jyQFxAj3g2H89m61+h0DaYi2Qg
         j5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oxupK36ZeBJONLEvPlocsEjn/ThkCLMQzhGnsANSxP8=;
        b=A/pqUNVOk5kvONPAmM+xUAcf3rZNBZaIHCgDWeA9ohITvAZwTqwfLb4rKq/x4eVxZY
         +RxjPj2AOctMDtFMJP1rPW4mpfNL9qQp2HNC/eTR3n+3jrpV4OiqpJztIE+EONfBpdJ2
         G+8+Uw8KU9GX+oyWQd1MZ//2q3yRJokG5JM94hyJffy+DGv3chxcPrLmjdfY69/zEofo
         sR4IrYpzMVrdM6w3SEgXmSB8tSUltdpaH5IMMO4sFWmgtkgNxubxdOF6KxMKmDZccG7B
         L31L6E5CSNuJ2c5EY+cmio7843Kj22n++56kfdGK6vfDo/g2MIuZVFMKwKR4Rwqqo6n7
         ZR4Q==
X-Gm-Message-State: AE9vXwN3cPPP9WE6CJh8gZBR8yi246PJjgJHfk53mV6hyJrjzrH6zG+OYJ1hHvnBcePLsw==
X-Received: by 10.129.97.193 with SMTP id v184mr28295653ywb.216.1474319555255;
        Mon, 19 Sep 2016 14:12:35 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id k14sm10120955ywk.43.2016.09.19.14.12.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 14:12:34 -0700 (PDT)
Date: Mon, 19 Sep 2016 18:12:31 -0300
From: Juliana R <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: wlan-ng: fixed parenthesis alignment
Message-ID: <20160919211231.GA17131@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning
by moving arguments to the right and
aligning them to the open parenthesis above.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
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
2.9.3


