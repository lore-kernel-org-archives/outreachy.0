X-GM-THRID: 6390544093665034240
X-Received: by 10.36.121.151 with SMTP id z145mr1437259itc.4.1487973906937;
        Fri, 24 Feb 2017 14:05:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls893684itk.11.canary-gmail; Fri, 24 Feb
 2017 14:05:06 -0800 (PST)
X-Received: by 10.107.43.7 with SMTP id r7mr1789088ior.40.1487973906087;
        Fri, 24 Feb 2017 14:05:06 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id a17si440490itd.1.2017.02.24.14.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:05:06 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id w10so213870iod.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lG4VBRkELgaxEFXfJngDAVmUrhhAJczi4c9pMwSyXIo=;
        b=AnkWW2mLyBt3DyDUin9V0kGvgEDUAsNh90gJJZt8ZLtlQZS/jajs5CqKY2IZT/zfIm
         HUZIg76R2rG8rAGgHul92oxzQjttCrbQtYkdY5eb+R+s5QUb3/f9QO2jGCeLUxS7Cd0a
         AO9+9TeROLWr0cZbpkICXBun/EF4Ceeh7E2QxnCa/+bMwswRehZP2ov5VYYOPJG1Y4qy
         suohdIg26KcUm4XmS9sDkyUpbM+uT9HLeagxvTBuIv1lyAm0XQD9Elk0LVEigh2HXehD
         +He1+smGjuzfy8oUMP6MkmZp1OfJTLTOvz7T/F8loqBDWN8m89YAV4BQczTBvw83iMvL
         Zt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lG4VBRkELgaxEFXfJngDAVmUrhhAJczi4c9pMwSyXIo=;
        b=uB/HKtM5Ft78fBTfD6NLBLZmvm33S9cHzp/qDbKAiEPij1TyD/OAHzPtE6AyOt6Q/V
         m2Em472l9IOf90jAw1AS1KSeqKc34BRcqHqmCd88uP2N0Wsj+y0L9N8uwaITZ4FjzJib
         TTM2N14Og8aGrMMRo9aX898CHS+w9DIpgrX7OLrb05HPL1Xh2yQLuh3++32i3oicI0V7
         jSbpkoRgNI53+UYejyEgQh4Ac+9x7ztpYSXgSdhYTrjav2eLcJKgJz+GN+7rFn7QlYYY
         DgJ+nRrGpczFX2st+a9iWumShivQ8KGrfzje0Bh9sTPzrDwNuAd5n7DZ5kx7b8auL5am
         U45w==
X-Gm-Message-State: AMke39l66NGQG0p32NRyICbTGfvIScF2YGAZwFyQ6si5z8hHQZtA/7FzlvU/2E7ceH85KQ==
X-Received: by 10.107.59.129 with SMTP id i123mr5352699ioa.232.1487973905933;
        Fri, 24 Feb 2017 14:05:05 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id y126sm1225462itf.14.2017.02.24.14.05.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 14:05:05 -0800 (PST)
Date: Fri, 24 Feb 2017 17:05:04 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] staging: wilc1000: Rename struct tstrRSSI to
 rssi_history_buffer
Message-ID: <da73d1aef379243ba94a5c1a4e1d6663160451fd.1487947616.git.tahia.khan@gmail.com>
References: <cover.1487947616.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487947616.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename struct tstrRSSI to rssi_history_buffer for clarity 
and to remove camel casing.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index cff1698..1c77529 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -70,7 +70,7 @@ enum connect_status {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 };
 
-struct tstrRSSI {
+struct rssi_history_buffer {
 	u8 u8Full;
 	u8 u8Index;
 	s8 as8RSSI[NUM_RSSI];
@@ -93,7 +93,7 @@ struct network_info {
 	u8 *ies;
 	u16 ies_len;
 	void *join_params;
-	struct tstrRSSI str_rssi;
+	struct rssi_history_buffer str_rssi;
 	u64 tsf_hi;
 };
 
-- 
2.7.4


