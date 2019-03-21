X-GM-THRID: 6670815133562830848
X-Received: by 2002:a24:5c5:: with SMTP id 188mr1009219itl.3.1553170194563;
        Thu, 21 Mar 2019 05:09:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls2234250ioc.1.gmail; Thu, 21 Mar
 2019 05:09:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSoFuJUsFhKrY0jEubcz7ur7hPDoU/Pfufk8VhbMYlPMKSIICi5WJ9q6OPqQyBqYWCtiVd
X-Received: by 2002:a6b:6f0e:: with SMTP id k14mr1184704ioc.11.1553170193721;
        Thu, 21 Mar 2019 05:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170193; cv=none;
        d=google.com; s=arc-20160816;
        b=X1RImNhpwe5wDV2X6/K14hB9cwrGQWjLdg43v1L4CSVKSQFooPte04kdXUnZ9J4cJN
         tuHS3jZGbr/PPQ4SBWUkqN0AdM3oennVjVQvQFj3DsOrk6uFsCfsTwEtKiNidPkQgIFH
         rB8/PyKsVykKwywvPdzRAzMpsXMMLQ3nwygo4e0Lpa0kSd0kTn+05wZWOa70pI43SFw/
         4yR10ieSx+UeMBBsG0W7wsWoguAgjeQ5J/raAerIQL4zTDIGk9mQ4ROOtJLjLJwZKwXn
         bvg1q1ILl9wRimvU4lmpsVmQOMQ39disHhBmXJbL8935mhSDi2H/ZTwWj4XyMe0uUtvy
         NgCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=d/5xgymdCVZT1IirKb3g69UGjwMr78i9fNCuJpONQzU=;
        b=ScAbVg7tgJyO486TWa6PerKcDsWqU7IgkZakvOqb1aw/SUzCQo8sVdCuTJtlEbLT8f
         ma1SoChjwD9nZ4ekbX3b0XuJuYoB04P4d+24T621CzQs93GsrxG6snR2AbdDRoKf3XjF
         /K+BFnki1v/FmDQFTIZOvIHhfEPN/TACm7O0k9tRv7wCEAffAdrwC3atvHUXBCsgWtTQ
         dH01dgt0UpGXyLDdm0UUE/yDamgZV7nkRdpR3rfQRjxqFAltVY4/cDXLEkZ+Str6xfzO
         C1i6QaYj84jlStSvOi8LO5hsNWFrQTXuXuEmaeFCUVo+qjM6fa01SV+4sAGRa6H574yc
         VO9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ixhMGNQK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e74si454354ite.1.2019.03.21.05.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ixhMGNQK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i17so4166857pfo.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=d/5xgymdCVZT1IirKb3g69UGjwMr78i9fNCuJpONQzU=;
        b=ixhMGNQK52tKZ2Ck08brbtDqVJM+jPgPSju6zIom/bcCdCyP41H4LXuTBVWcbUkrfx
         sKO1EQ6L8y5MjfGMfMPEkAZ5zB4HPsK0arouIRw587lH14ECCkx7Qet2boTOAbeyjvaX
         TfZooiiRW7mvQB8MSye2znT2gQmsD6+vrRBYnjirl0B/tlu59U4daBnc5MhxAHCyx7gc
         5Nt0pE5ZzIEyPPRf/3HjJhiaenmdmEyU10B+H99Uyc7GYrRzqYHMa2Grovg6OBzfEqlc
         rDkyBhzHRbgoaatfAyqBi9L1HMAmxotx+VXOLkiPU+YY0jrFKr888qRwaLtk7lGZgtOX
         Bt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=d/5xgymdCVZT1IirKb3g69UGjwMr78i9fNCuJpONQzU=;
        b=TCs48btUwPFVQk6tHaGZrl1/JJwW6YnpqQQMmIwgRAJczpRqcBnJxZXGOCv2Ezqztd
         ZL2cupOgEnLPdm7G423vzKearLKaF6vG7d03y8xAXYeNraQQUNDbtJ5WrprGE/2VO6Zq
         9oHlNi/r+CV4tHLHQAZie+d0BYaj28y0K7qdQpjc2ALT5dFRuEwEzd1W03FPaZ7WXzcB
         pCMaPDMGJ44Q4djIUNLG8elsc8cvqaVp8bf1t28e/fhD3/KXYFVDWE9SMOvnHtzWa3cC
         pJKHLQ3GJWiidd3P8jrE+JrQ5QKCGCUVIOttIjmDUEIk8hryd2zzuhaAS1R+uxgIsJR5
         taew==
X-Gm-Message-State: APjAAAUg2edvMtbGP8PA+H3hROnir43hoeDO5m3aSv3AdoDFmauhmHoe
	ZF0VyFNu860EBL9rCSxIDLE=
X-Received: by 2002:a63:da43:: with SMTP id l3mr3059631pgj.164.1553170193241;
        Thu, 21 Mar 2019 05:09:53 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:52 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 4/5] staging: rtl8723bs: include: remove typedef for struct pno_scan_channel_info
Date: Thu, 21 Mar 2019 17:39:07 +0530
Message-Id: <20190321120908.43680-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321120908.43680-1-himadri18.07@gmail.com>
References: <20190321120908.43680-1-himadri18.07@gmail.com>

Remove typedef for struct pno_scan_channel_info as The Linux kernel
coding style guidelines discourage the use of typedefs for struct
types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index dbb7bea28a13..5aeaf98f459d 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -179,13 +179,13 @@ struct pno_ssid_list {
 	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
 };
 
-typedef struct pno_scan_channel_info
+struct pno_scan_channel_info
 {
 	u8 channel;
 	u8 tx_power;
 	u8 timeout;
 	u8 active;				/* set 1 means active scan, or pasivite scan. */
-}pno_scan_channel_info_t;
+};
 
 typedef struct pno_scan_info
 {
@@ -198,7 +198,7 @@ typedef struct pno_scan_info
 	u8 orig_ch;			/* original channel */
 	u8 channel_num;			/* number of channel */
 	u64	rfe_type;			/* rfe_type && 0x00000000000000ff */
-	pno_scan_channel_info_t ssid_channel_info[MAX_SCAN_LIST_COUNT];
+	struct pno_scan_channel_info ssid_channel_info[MAX_SCAN_LIST_COUNT];
 }pno_scan_info_t;
 #endif /* CONFIG_PNO_SUPPORT */
 
-- 
2.17.1


