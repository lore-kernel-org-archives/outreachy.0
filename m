X-GM-THRID: 6250922670460764160
X-Received: by 10.107.169.130 with SMTP id f2mr10103105ioj.10.1455406348633;
        Sat, 13 Feb 2016 15:32:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.199 with SMTP id d190ls1189990iod.24.gmail; Sat, 13 Feb
 2016 15:32:28 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr10258432iod.29.1455406348384;
        Sat, 13 Feb 2016 15:32:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by gmr-mx.google.com with ESMTPS id i133si1647454ywe.7.2016.02.13.15.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:32:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id o6so44190376qkc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=C33wn0XFT/0Qg077Aact1kuG0rHRCr6wdaPwGXmI3gY=;
        b=gMrY0eYtnYzNs221rgUIhFTJyIiPB0W4czfcsZ3rBeiaBZTgvMRsopLGossfw9w5yj
         AfI1lonnLYbayRms1fps4MuErkfknsEfU+KM146OnVip4dhw8oTV/xSECEIJ/oSBS+KW
         UJs6iW/k6gv5IpSBVSyXDQpyIz/OniqjlDOYPkBe+idEw3Zv+NpGee211hi+2Lm3VBT6
         jaxAwK61jEwMmDYkIcouFL16SgsMKt/EY5e6KmNnQNn96EkGPyLQzZT2Nb5OoKR9If89
         9/DqWvN6SrJrd+Y9eqYuxox4tAvzqEmN2556iI90CwEtKoB458SRfwMFOkh34PxVCMho
         zZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=C33wn0XFT/0Qg077Aact1kuG0rHRCr6wdaPwGXmI3gY=;
        b=RFZPPS4lS46wUXeuw18HJ5vI4QkzCGQ3T8S36+0zOsDedQwsIRoXV6piNQAZK9hT+I
         RshQ4wbyk/Lb+uJ1xmPYrP8xWtrlob1Cnv3/VVDghPu0KERw/pqRjt3SbscmqP9Xoidi
         pgTzvlIW1F+/ndfurbGDDECDTKxQ7VWr4GjFY8aFFAZtMV6kGmybNjrJs4lrrT/jyUD9
         YmHqzO8xXrWdNn/UfH0hqmnJeHnMiTeqcl9gR+1UBynPF/91X52Ew8iXAB0JpQL5ncVR
         JKTOxqodyW5zdEfTnztLqsssBFYHHA1UNiwucumu+9vlhAONNicnwoBy5cr3RZ3pZCHW
         549Q==
X-Gm-Message-State: AG10YORdtkNYxy2I6921/b3tslGtX67LTynQERiEOPL4CFuf8rZlJ/DZAwNZnj+XrCe/hw==
X-Received: by 10.55.195.16 with SMTP id a16mr4133098qkj.36.1455406348252;
        Sat, 13 Feb 2016 15:32:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id t103sm8302945qgd.37.2016.02.13.15.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:32:27 -0800 (PST)
Date: Sat, 13 Feb 2016 23:31:48 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove useless macros
Message-ID: <20160214043148.GA25719@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the macros FN_IN and FN_OUT as they haven't been used anywhere.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan_common.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan_common.h b/drivers/staging/wilc1000/linux_wlan_common.h
index f325051..0d9a71f 100644
--- a/drivers/staging/wilc1000/linux_wlan_common.h
+++ b/drivers/staging/wilc1000/linux_wlan_common.h
@@ -96,9 +96,6 @@ extern atomic_t WILC_DEBUG_LEVEL;
 
 #endif
 
-#define FN_IN   /* PRINT_D(">>> \n") */
-#define FN_OUT  /* PRINT_D("<<<\n") */
-
 #define LINUX_RX_SIZE	(96 * 1024)
 #define LINUX_TX_SIZE	(64 * 1024)
 
-- 
2.5.0


