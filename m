X-GM-THRID: 6465576449843658752
X-Received: by 10.202.195.130 with SMTP id t124mr12244287oif.28.1505384326903;
        Thu, 14 Sep 2017 03:18:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.68.196 with SMTP id o187ls4964980ita.15.canary-gmail; Thu,
 14 Sep 2017 03:18:46 -0700 (PDT)
X-Received: by 10.129.52.79 with SMTP id b76mr13743562ywa.227.1505384326167;
        Thu, 14 Sep 2017 03:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505384326; cv=none;
        d=google.com; s=arc-20160816;
        b=GSDjg1JoX5+BHfq1yTmsNj33XtDkeaxhc6aPkcB+GUHoGbgFzt9Lr8U01zSSFX5Uao
         BEt52mEMe0DxVQhmmnvi/NfjKm5AjMY9X0OnQPNT2fSjmETJyuwcf4BzbtLTy7p1ue9w
         8bLBXfcMXwozFPHQ4T833a0ZZdIZB7RJ+7Fu+GroD5ou5yAUGIHfH48sTBqvvUIFahK2
         seyB0kOXcgJPvgOnAvYRIhhUsWbFaAbT0zRbOhyxRAv77bckzxdp/HydrflIfMgel23z
         Kn4iAGxAtctS9LL2Q2YZ+e4av/ddEZXyjHNfq7t1KefrT4PdeNBWEKG0YlJRnKHmnMqd
         F+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=sKYwgrUTqgilAoxzCikw+fh3B7RSbtIn3yQDbUBdnVo=;
        b=wVjfwljqEnujGqFVUg3VHAG2HuVKVgcNE9dC4ILIKXNx0IylMhNYfgtbiin0/BQOFy
         QwFkfLGqfM5Ihtxc5k4OJXKNCLUYHsWcJhm3BgCB2c01L1k5VK3sD2hfC420BhwTFMlg
         DVCWtTx1WuTZ/aob4npJxDb68yA0qpGDoOI603AKIZJEoUFreqbDempaTVuiq16v30tn
         0PD8GvmMftAXJsSwDjPm5lyvqHxKYRWcjsHaAty7ItSJtRX5NVTFx1ukgywuqmNP60Ly
         ZnEOvqJqIkEjnQ2EUiMK3V16oi/Um00YgrMF/d4hFf9KPZliIXNyfj8tyiHjsE2CuNLw
         wwAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aeizmqgS;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e63si613839pfm.12.2017.09.14.03.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 03:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aeizmqgS;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so1314380pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 03:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sKYwgrUTqgilAoxzCikw+fh3B7RSbtIn3yQDbUBdnVo=;
        b=aeizmqgS8Qhft7CSevAkhAg1GGTRaxwfiwIlpiBRwUaCl3lW1vnByhX97hfCMW+MA0
         tiYCxlImHrqMmbTde/W4ghryidKB1qtfOPvAxbtGIU44COJMTa/MtcodoNOuvJNK1qx9
         jz0hdW3UfLYjK6SveTTaSDBOozTpvwjmkqR8drEZBxoHeBLfPT/WlfcU6V4bJgiKDml7
         77gymF9YcokduQ8jIpbF5ZLF982abdArz0BDLsY47rT0hGOc7QtQSl6VQBZLXwQ4S1Qd
         YGeEryOymYuk1nhD4aqNQNMSHRKX/nMj7C6fFOCZ5l45imHS5BndqoNX2fGkHPhBqRR8
         IXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sKYwgrUTqgilAoxzCikw+fh3B7RSbtIn3yQDbUBdnVo=;
        b=lS8mnep0cJuUGcsY6k0Bpl1YKrJDrqt5N/zaC1cgHfDTZbSVGqV+GoBdB82HNq9T+t
         MYLT7VcKPYX/YuuKY1hbjIP5dj7z/BtgdfURB8zOjo/dzXKMgXs3WpluG8ChRaBMtHi+
         +k6cXRY5ZW/yT/NoswF0De/uI9GW/YO7g2Efo+Ud5PyNcxRKAVtrBYXTcNYKCfpqbeXI
         UOxQc2FV40CkNdJTUdslq4rb+MePR9S1syKVpHH7BoONMRDZ8HmEnm2eqrMKUMjq554x
         W7vMeihJFDK30xGTfDD+TS56HYRMWwz0MSC6Pw4oSMnyUZ6mQXNrFbwB11TW+qz1SKmO
         BL0A==
X-Gm-Message-State: AHPjjUjYJT/nWSN6kBPOb5pcqA4s/CrMhQwZjel03jRIvVIC+Zt6fS81
	/c3C0FmPGJBU/A==
X-Google-Smtp-Source: ADKCNb6DIODN9DNxNDG9IiM6iLPYwwHd0K7N6N+yKyJr+u0/wMQlDsw+1Ij/62+JvelEbdX0Kh9deQ==
X-Received: by 10.84.238.198 with SMTP id l6mr23400658pln.152.1505384325877;
        Thu, 14 Sep 2017 03:18:45 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.49.157.170])
        by smtp.gmail.com with ESMTPSA id o73sm29874709pfk.96.2017.09.14.03.18.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 03:18:45 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: atomisp: Use kcalloc instead of kzalloc
Date: Thu, 14 Sep 2017 15:48:40 +0530
Message-Id: <1505384320-6093-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use kcalloc instead of kzalloc to check for an overflow before
multiplication. Done using the following semantic patch by
coccinelle.

http://coccinelle.lip6.fr/rules/kzalloc.cocci

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index 6358216..2f4b71a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -235,7 +235,9 @@ sh_css_load_firmware(const char *fw_data,
 		sh_css_blob_info = NULL;
 	}
 
-	fw_minibuffer = kzalloc(sh_css_num_binaries * sizeof(struct fw_param), GFP_KERNEL);
+	fw_minibuffer = kcalloc(sh_css_num_binaries, sizeof(struct fw_param),
+				GFP_KERNEL);
+
 	if (fw_minibuffer == NULL)
 		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
-- 
2.7.4


