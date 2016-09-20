X-GM-THRID: 6332371296265961472
X-Received: by 10.129.112.149 with SMTP id l143mr13517934ywc.20.1474370157951;
        Tue, 20 Sep 2016 04:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.131 with SMTP id n3ls1587762otn.39.gmail; Tue, 20 Sep
 2016 04:15:57 -0700 (PDT)
X-Received: by 10.13.227.195 with SMTP id m186mr6086094ywe.139.1474370157609;
        Tue, 20 Sep 2016 04:15:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id si10si6703894pab.1.2016.09.20.04.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so845783pfl.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OfvTaKX5lx/DXZDe9oG2a9JbSYSXbUiwQrLKEjJuHnQ=;
        b=tb1imvVxVRD1f3Gx7wbqUlejI+dlktmG22+2ehYniqgTeNSPeqRopNFqUfDK7MPsMV
         gs3v7H1euMadCMLDfG2pl5z2eOxFndGBkOCV7AT9EJ92oGYXwOj93ivi2fATYT4EfUvu
         PD5KJPP0C5W2DTYxMBfqeDrCEytbpgGQWVsnQyiB81t0WeRmkKH5ZjEXt8Yn1/dKYIk8
         0pSRziK++J1m9sjbODfwNiy6YKhAo3Q7qrxnVv+eUSJP/U4QLVAfuBmvJk4NziVY8Ass
         v37RepXWllwAJVNgaldfwWfWARx+3Zg97c98REax51O/FFiTDwx1hjFrlxTaIuCCnu31
         a67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OfvTaKX5lx/DXZDe9oG2a9JbSYSXbUiwQrLKEjJuHnQ=;
        b=Y0+zaCO4gmolf4J2v7Sj9mSI/NqtZJZP6fhqzc0ClvWFz8otC+lKGIipDuVP6+66Tf
         MaZdzleZYijGz9u3r00Kx4NML5WfQydasG1bZQTcI4T/FMWizUz7d4zzIZJATh8p1KRq
         FZxud+Axvv4NYiTXjvO6XYAoHgMG8wV7GCvKgXYWAuoGlNOWe//QXkANJhxeGdwdsxXy
         RZLysTRrc8gF2Yfl9uFsq+6nYxji318EGokJxrKTouVn2/iLJpakRDhoGsLhAgDEtj6U
         J5NLYo+hyjgN5RV3YgXuhlPTYxjCh0bg3m5g5UsLPSiNgh1qNM7JOYLKFigi5k0dCoCK
         JkOQ==
X-Gm-Message-State: AE9vXwP9Gl98/z0YTU/vw4v10oMjTATY61e2Jv5A2vt6Qg2JaOIavO/V6LI9SaHwj8xEwQ==
X-Received: by 10.98.105.135 with SMTP id e129mr54402565pfc.59.1474370157257;
        Tue, 20 Sep 2016 04:15:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u64sm78449049pfi.0.2016.09.20.04.15.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:56 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:45:48 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/7] staging: rts5208: Put constant on right side of
 comparison
Message-ID: <4dd8db2d485c8e85e3f1bdabb3633b3eb56b0abe.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces position of constant from left to right side of a comparison.
Additionally, modifies logical continuations to be on the previous line and
fixes alignment to match open parenthesis. Issues found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/sd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index 345313a..e72c432 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -1436,9 +1436,9 @@ static int sd_switch_function(struct rtsx_chip *chip, u8 bus_width)
 		func_to_switch);
 
 #ifdef SUPPORT_SD_LOCK
-	if ((sd_card->sd_lock_status & SD_SDR_RST)
-			&& (DDR50_SUPPORT == func_to_switch)
-			&& (sd_card->func_group1_mask & SDR50_SUPPORT_MASK)) {
+	if ((sd_card->sd_lock_status & SD_SDR_RST) &&
+	    (func_to_switch == DDR50_SUPPORT) &&
+	    (sd_card->func_group1_mask & SDR50_SUPPORT_MASK)) {
 		func_to_switch = SDR50_SUPPORT;
 		dev_dbg(rtsx_dev(chip), "Using SDR50 instead of DDR50 for SD Lock\n");
 	}
-- 
2.7.4


