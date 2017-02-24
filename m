X-GM-THRID: 6390544093665034240
X-Received: by 10.129.128.67 with SMTP id q64mr323412ywf.88.1487914502319;
        Thu, 23 Feb 2017 21:35:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls6536776otc.36.gmail; Thu, 23 Feb
 2017 21:35:02 -0800 (PST)
X-Received: by 10.200.50.241 with SMTP id a46mr255354qtb.13.1487914501992;
        Thu, 23 Feb 2017 21:35:01 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id d20si93779itc.1.2017.02.23.21.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 21:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id 203so1730911ith.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 21:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0GJS2xtNfQzOtG+ftgCQfW8fMDF67iJ7ixN7cFexKn8=;
        b=vfxnCt5MMi5MzLOjkeRtA5sWx8FK0xqKWbpMe1HSsewjZCk+dmMiG+BKw557xiJ1T0
         SoLvKjk7hB6DyHLtuxM6QDkY7kw1e6/X6lnoneSgBaKyonh/HeC4dcPgrcknPq9jUBr8
         81//3qaUijduu0ipSEmztZm9EFxuouh5gZ6Vt59aeTl94WOc5auSm/8Fv/8Jer1i9kr1
         7nS1STagzfjw5r6CiUCMrivH/L54/VuxaAb0pryt3jQk4uk6tPlbDeNcfjvBoYnSVZgS
         E6Orck/PctqtyfRH9vjq232KmXgxKAY4HdeCLXXh5cn9O0+5DBkxcpX/HDjTCDrSNoiV
         t1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0GJS2xtNfQzOtG+ftgCQfW8fMDF67iJ7ixN7cFexKn8=;
        b=dQ7kNSeP9Lbh/KEgETIN7HCz7/KCUpYgsghK4d3xFeL4vZYSTHpc5A9tCcNLaspKd/
         2tH5oRMwwApR6sU6m1ptvga1bKn/2G5jNkRSttkjkvxYqFha1qibe+3Nhf5iEluvDv1v
         s6u1UA3FmF1tzupi2fjClnhIemtaQ9hocgKrfA7V9SrpzrUJAQ84fgVMSULkiVyLYEv6
         h3U5R8LmiSuYCvypXYyqskUrNw39QMjMxELbTcmzHXjOigWZHeUKypd+feb/0LRkTdf+
         ycD4jAJTxpnN10IGAA5/ttJrTemSBBRmoFeIhm1j8ZYlV37ScR6a0/MaT6qG7cEVeOso
         RfmA==
X-Gm-Message-State: AMke39nMgIYR4n1pabW38VVs7TMhnLaYny+SwJBAoox+ZTeQi2YE0DyRnxXKi5HCJUuF3A==
X-Received: by 10.107.185.65 with SMTP id j62mr1059126iof.3.1487914501730;
        Thu, 23 Feb 2017 21:35:01 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id k79sm2747999iod.13.2017.02.23.21.35.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 21:35:01 -0800 (PST)
Date: Fri, 24 Feb 2017 00:35:00 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] staging: wilc1000: Rename struct tstrRSSI to
 rssi_history_buffer
Message-ID: <da73d1aef379243ba94a5c1a4e1d6663160451fd.1487912400.git.tahia.khan@gmail.com>
References: <cover.1487912400.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487912400.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename struct tstrRSSI to rssi_history_buffer for clarity and to remove camel casing.

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


