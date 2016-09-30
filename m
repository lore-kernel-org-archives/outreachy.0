X-GM-THRID: 6336205965002539008
X-Received: by 10.36.50.66 with SMTP id j63mr1594657ita.13.1475262913337;
        Fri, 30 Sep 2016 12:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls6380214otd.46.gmail; Fri, 30 Sep
 2016 12:15:12 -0700 (PDT)
X-Received: by 10.31.172.12 with SMTP id v12mr2375955vke.36.1475262912916;
        Fri, 30 Sep 2016 12:15:12 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si5141586par.0.2016.09.30.12.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 12:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so5125605pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 12:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bTAjJLZ7immfhhxuAYZaQs7TtEcasnxrt/sJ1viBO60=;
        b=0VebQcoJQLyRIX6U6lJhHOlzOkYZMrxTnmP4u5zZ8I1cxOHfXv8KhhEalJpD28FB+J
         pkS98NTRHpxvhGkuiLKatFoIZkb4vNPVaKbmps7MrHoMT4nBFyFCv3cMQywXwuOu3iFo
         T4e7Xzx48wPIanFO9as+2n3FX6/1N28NyR3PT2IbmK8olbJIwL3PXRsJIeyHd91XNaQp
         te5yhOAbnQI9eeuk8fBW45DyR+1ig6JkCFe8kHCTnS556+1FAZbnuq1LwbTuV6R5L7RT
         ezljZRMSKyfrGfSQgn0wh/eDj18S7BLSyf1NQmbXTmrJrLeJnu3t6JwMmfIllx55CWUM
         urWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bTAjJLZ7immfhhxuAYZaQs7TtEcasnxrt/sJ1viBO60=;
        b=T5wxeJHgrNPR2YCW6+0hc6sjeDTfAYCaAd+IFqkLygYq3RqDXGmLSDcDXi6gaa2UWe
         0P7YWOFV5qt5zSUCmENRZ6g2inl9bRYjhjeuCtLEiCp0VsSkq2TloHn9CB07GtlUK7ik
         P3XvT2Omqii6j1tcYwYv9LRuN4pxPsM9mKhLdBXDe/tCf8txeOJuenxB7aur7D2gmn2w
         TJJ2LQfqbn0wBciWNO6EQCbCeWPC5v5ZsYWp1TV/LwQsnRkK5oopdKLXMtWz+b9e6VY5
         qRmMPlMkLOTzGvR94H1q+a9xZWXPkCTMwn5WUfLwz9q+DdMeufe+OQDL/RoWYXFQMSHx
         UDsw==
X-Gm-Message-State: AA6/9Rm4bYT9r2L9JQiQlpV8dHdm0S0nP+JC848HxG0jFnd5uvEws+TLFbPYPT81vAXxYg==
X-Received: by 10.66.216.167 with SMTP id or7mr14385142pac.86.1475262912714;
        Fri, 30 Sep 2016 12:15:12 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id i4sm29722981pav.27.2016.09.30.12.15.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 12:15:12 -0700 (PDT)
Date: Fri, 30 Sep 2016 12:15:09 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: wilc1000: remove unnecessary braces
Message-ID: <20160930191506.GA3159@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch warning "braces {} are not necessary for single statement
blocks" to conform to linux kernel coding style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 2b307ce..ac5e506 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -621,9 +621,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 			if (!ret)
 				break;
 
-			if ((reg & 0x1) == 0) {
+			if ((reg & 0x1) == 0)
 				break;
-			}
+
 			counter++;
 			if (counter > 200) {
 				counter = 0;
-- 
2.1.4


