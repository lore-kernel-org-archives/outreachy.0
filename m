X-GM-THRID: 6388489014907764736
X-Received: by 10.200.36.27 with SMTP id c27mr4081083qtc.0.1487436009163;
        Sat, 18 Feb 2017 08:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.159 with SMTP id s31ls466800otc.10.gmail; Sat, 18 Feb
 2017 08:40:08 -0800 (PST)
X-Received: by 10.157.48.199 with SMTP id r7mr4525205otg.49.1487436008785;
        Sat, 18 Feb 2017 08:40:08 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1451793pfd.3.2017.02.18.08.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:40:08 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so421250pgz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 08:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7ux9nl+A4gSE5e0xQeU3ZpNOPZuQwy4FH7MCqMNp48Y=;
        b=HQPErVCunm/er/PL5ZEnqEYuQnAVVbrWeC1F9wEqhXgN0Hs8f43F1q+UFUkg/qCwfy
         PtfpC1C2JTsiPRUVFTXcEkjpf76/6Fe4aJUSZQrl/wizXISOPU6Up0ux7iKFhzGUHJA5
         jixH2NGeQmL1PA6ryWBxh0905NZDM68+MP4HIxKt/f9J5PqMZ7Ocj3lIsZTvZdpQ0o+2
         dZok5cXZPND21Mm0kJvCQ/NwSaEw9fEwFHw3FWQE3Uw6L9mfoLATmJM0glTROyRU5nFQ
         LtrHdzW/9evNbRk7amebz1+Z6krg8bHCHUlh+kVeAZkPopTyhvyN0nNfQAcUegribQXX
         ZqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7ux9nl+A4gSE5e0xQeU3ZpNOPZuQwy4FH7MCqMNp48Y=;
        b=hck1sBMc92m3xMgALfe233N9EHjdcuDgLLJBK7eWfErl2mQgF/6Bf+vO0ZQl+GlEWk
         c8g4vu+HZSvy80iXMhcOs87qwi3Qw8aR7xKbzj0DKS68eppvmIhDX33WpwhumeKnYoRU
         784sYLGXLfyQrwy1nKT2HgyAiAuYPWh1qtdMp85fBq2sHYIxXEoQ98fZUXX5toD6Uljb
         72p4w81fE0RqQvKemMMhI+cagoRjkCT4zL11nPlDHShz1zDs73jnZYChy8Xp/Ji4T2iF
         By2R9wUBgnwKT9awvlT3fdOcQ5FfJv2fsit0zUXUUp+omj7URAvxAkiUWGB44Mcp0v24
         NaKw==
X-Gm-Message-State: AMke39kJqcGONsbJqnOEcN8swMeo0r/z+fg2k2g69pmNm4aZ5v6nVQiovaeqllOm3/7vJA==
X-Received: by 10.98.39.195 with SMTP id n186mr8691665pfn.17.1487436008102;
        Sat, 18 Feb 2017 08:40:08 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y21sm26290328pgh.52.2017.02.18.08.40.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 08:40:06 -0800 (PST)
Date: Sat, 18 Feb 2017 22:10:02 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: There should be no spaces at the start of a
 line
Message-ID: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The following patch the checkpatch.pl warning:
drivers/staging/ks7010/ks_hostif.c warning: please, no spaces at the
start of a line

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 819e08b5fa91..3b2e28749b63 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	}
 	DPRINTK(4, "\n    Link AP\n");
 	DPRINTK(4, "    bssid=%02X:%02X:%02X:%02X:%02X:%02X\n \
-   essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
-   rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq, ap->capability);
+essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
+rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq, ap->capability);
 	DPRINTK(4, "\n    Link AP\n    rsn.mode=%d\n    rsn.size=%d\n",
 		ap_info->rsn_mode, ap_info->rsn.size);
 	DPRINTK(4, "\n    ext_rate_set_size=%d\n    rate_set_size=%d\n",
-- 
2.11.0


