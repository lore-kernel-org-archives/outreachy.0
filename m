X-GM-THRID: 6618737831817773056
X-Received: by 2002:a9d:ae:: with SMTP id w43mr2331813oti.41.1541661790363;
        Wed, 07 Nov 2018 23:23:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3f06:: with SMTP id m6ls496115otc.7.gmail; Wed, 07 Nov
 2018 23:23:09 -0800 (PST)
X-Google-Smtp-Source: AJdET5e8waZQyTzaY77UKccbArcrjZ1a4bb96IHCsbK3pQin53+diEeYrAh1V23SiFyUuHjH4i2k
X-Received: by 2002:a9d:5753:: with SMTP id x19mr2170586oti.22.1541661789385;
        Wed, 07 Nov 2018 23:23:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541661789; cv=none;
        d=google.com; s=arc-20160816;
        b=bxGsK1tSK8xX0UJp1O9H0Njpsadv8VsYK3pYR140LyEyLbxpskJ3eTFW+8fsgGZr5/
         DWs8NxzTB1Mwildq6eG45J+ksj+8Cj+E+f5djd2lMH1WsS+6qlXfidsLeJSVB9S5gOhr
         b03ez5Spw/S6nIjqwesGis79xcN4hINsyg9JNFX98SyJuy4mWc8PoN27jL3Dr6UJAWwz
         Pj6EXT6YmGYy3oHgoxKbrSdtFsVBOFeUDbNZEtC3za7wmD4LXwEICktt3UVhRYhYIc48
         zXmAJemE9q0mR4mrLaNzfQgdQTm0xlW4oxEHwJWlTtmZ/BRJujVas2/qCmNOLU601rRV
         /HRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=aZN4x+XyBmuCUQepXpr48mKuBdTXLjJlnrd7As95bjg=;
        b=d7XjFfIkoo6OqpSZlKV8DNuFyU2wVxV5Iu3domw+sI/mbRibNy6GVIJscksKFnFBf1
         Xk8oImuu8hK27qCGmcCYPe+v94TiU2X9+hMI89cNtc2SK2XG7MOAieZYgZDGI/5hc5YJ
         z9Q411E70rOqMc6A8QwXaMegTdiq5urZMZGvxYIG/M7kOagHUmZB0brfajRiyj1Fw0EO
         nY/6y76Tq2Sy07hDStP7JNHmLz/BPWP9y2WopHL4Yv5P0pJMQCqcdCAN2HkZwML/3E5w
         n9Ldw9YVqcgELyOHbymbKrh2mmxttynz7OsFzUyB+S3qhJ6tELc3nkAasFQSV2zwtmOP
         e5Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTk1jqLW;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p24si150795otk.4.2018.11.07.23.23.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 23:23:09 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTk1jqLW;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id s9-v6so1558596pfm.13
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 23:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aZN4x+XyBmuCUQepXpr48mKuBdTXLjJlnrd7As95bjg=;
        b=ZTk1jqLWeSpe8NkT2Pi299I6wLaUxMVCxKY4VzbFWRTbmT5feq1GoOsj5YyUvgjSNE
         qYDnUl5WpX1hh1CDIhQFFab9Wumi91Gw/3414U+VYkmAriiWDVaNBeRJK2i39QVvwxSg
         uJjyRtg6ZjBga1uNlK8VlBSsgPN5khQGkiI6bOIkYxfMcKYwJqNx81JEXkIXD+mLhK4O
         3Mwvs/PA6iujOYY1o+ed+3LG6CqbB8lBuF2rfJz4QLbF7eTkro/rbWtofkQYOQ1MPZsw
         HN7gr657PHO2VwrdKBDcIL5AMY96HVwYbXNPmCAZtZY5QD/jlftCeZEPUBi0OAzyOpTg
         miXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aZN4x+XyBmuCUQepXpr48mKuBdTXLjJlnrd7As95bjg=;
        b=ZwymzXD8MnEn374EIH4MLhqyM8LwYh8nwZZz/XKYpCtZl1kYl9H9RAsBfCHvGHDRdH
         bn/ovMXrW1vHej5PWupl5CcF0f/pYPN/ajCRPAXm06kkUjs94dK0rsi1T8m84xTOyYEx
         BPyWJvj+7rTkvR+A2QxUAj3zbbQNzy6PzcFSOFBdu6pkW5YE7qxZP4CJFyeHhtH3aFqg
         W5VPouaBJPn53UgXq6I0Ew+LjtRnyy+hEziWFKb9GM2XQpOy+Smv4qpwWaoiO4uHH/oV
         OOVJkDR27cD9SC0Nm2+/VZszGmMS5XZ5JAu1a7O1hc7Kco4SoD3QgLbzvY2vThQjVrMo
         Q/+g==
X-Gm-Message-State: AGRZ1gJSHEilL5aWHZpMWCqxWlNjKh3qP0eBuu154cfD7dDctkh8k6fX
	pt0PVlEOLqdiKNvkmfFHOZ3Doi8d
X-Received: by 2002:a62:8208:: with SMTP id w8-v6mr3481921pfd.150.1541661788569;
        Wed, 07 Nov 2018 23:23:08 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id m10-v6sm4713155pfg.180.2018.11.07.23.23.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Nov 2018 23:23:08 -0800 (PST)
Date: Wed, 7 Nov 2018 23:23:07 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtlwifi: Add blank lines
Message-ID: <9082236333474f4af69913c7e3e3566729d04181.1541660015.git.m.maya.nakamura@gmail.com>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541660015.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Add blank lines after if statements.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 1 +
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index 7eb54d2e48f3..7d578241326b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -563,6 +563,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 				PHYDM_SSCANF(input[3], DCMD_HEX, &var1[2]);
 			else
 				PHYDM_SSCANF(input[3], DCMD_DECIMAL, &var1[2]);
+
 			trig_sig_sel = var1[2];
 
 			PHYDM_SSCANF(input[4], DCMD_DECIMAL, &var1[3]);
diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
index ded6642bdf64..c0da601be6cf 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
@@ -357,6 +357,7 @@ bool phydm_check_nhm_ready(void *dm_void)
 			}
 		}
 	}
+
 	return ret;
 }
 
-- 
2.17.1


