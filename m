X-GM-THRID: 6262248427873107968
X-Received: by 10.129.152.16 with SMTP id p16mr21700535ywg.27.1458043526658;
        Tue, 15 Mar 2016 05:05:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.72 with SMTP id f69ls146546ioe.21.gmail; Tue, 15 Mar
 2016 05:05:26 -0700 (PDT)
X-Received: by 10.107.43.147 with SMTP id r141mr22554528ior.15.1458043526363;
        Tue, 15 Mar 2016 05:05:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id s129si1827363ywb.5.2016.03.15.05.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id s68so5565313qkh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GOrpQ4jWcXaxbq/A+PTlGKg68R2syDAOwMO+7UY3Qug=;
        b=tmVzJxt2urGITpNsgFp9Stgt0bovDwnUW5F2FxTpHOt8JCzvhwOc70OHj654mjOPmQ
         HZ5gQmrcZTBIMHoQyd+9qha/r0W6x7iEPjDcS3X/yn7nrq/LkSZ4NbX+ON2UO8C3OQpr
         rfKXQZCinXPMHesqz/tHO+eTPQ6bCppSMYk3yY9B2RD4uNSZgN9eZBba1nE1cQjtBDjf
         WmyFfc0+X8Q96NjLSFZMLZOTLX6OQxXfZdpHo2IV6NMX9nFO4IabQ5fRzXZutaIj1S3G
         R6ZlkTZYxaQNx/cKszozxzXwlKMjGF9SXoPbOz5F5YK70aVe8WKjcy/V/um1SN+87qJy
         7ztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GOrpQ4jWcXaxbq/A+PTlGKg68R2syDAOwMO+7UY3Qug=;
        b=FhiraYX+FRDfpqCBmvjLshBMDbtjH9Gh6sQFi31V+nq+pZlH7Q0U3SVlPj/cHi7HSJ
         F5djb0NQBTgKV34XxUDfi4jqE/vyvReOO25AP/1RGh/auV2JZlRUkkRL4itJAXn4rJ+Y
         nxObQQHdNHJAOKGOEHSHqEKMcixP7GOGkW1SZ6fXFDQhYGI5n79d3Zbmz3efbhJQgV+Z
         YM+PUD/rCSSGiG2yPtPdz++YnQ3Eios0Xyd3IFMpSuzQkP9v0nlF6+WiZkDvT1SJnk1J
         4ijJKmRoAD59QW7A6IRtkJm4Wjrv97YOXj6JWHVqXqbmiMiqdyLer9nBbRPktmAHuXi4
         m1+A==
X-Gm-Message-State: AD7BkJJuk03bhyY1b8SxFsVsQCh8/ee1kdRe4d+6WjVTZPVJtteD10xVdegcuexLfsv4eQ==
X-Received: by 10.55.82.137 with SMTP id g131mr36978126qkb.66.1458043526052;
        Tue, 15 Mar 2016 05:05:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id m82sm12638978qkh.8.2016.03.15.05.05.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:05:25 -0700 (PDT)
Date: Tue, 15 Mar 2016 09:05:22 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/6] staging: rtl8188eu: usb_halinit.c: removes
 unnecessary parentheses
Message-ID: <a17ba274d6c55ccd81ede35bed2654cbf6e5aac1.1458043217.git.juliana.orod@gmail.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Extra parentheses were causing checkpatch issues
and were removed.

WARNING: Unnecessary parentheses - maybe == should be = ?
+	} else if ((mode == _HW_STATE_ADHOC_)) {

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index e7ff784..9cdd37d 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1304,7 +1304,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 		StopTxBeacon(Adapter);
 
 		usb_write8(Adapter, REG_BCN_CTRL, 0x19);/* disable atim wnd */
-	} else if ((mode == _HW_STATE_ADHOC_)) {
+	} else if (mode == _HW_STATE_ADHOC_) {
 		ResumeTxBeacon(Adapter);
 		usb_write8(Adapter, REG_BCN_CTRL, 0x1a);
 	} else if (mode == _HW_STATE_AP_) {
-- 
2.7.2


