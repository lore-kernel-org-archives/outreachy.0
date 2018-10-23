X-GM-THRID: 6615237556487323648
X-Received: by 2002:a0c:9031:: with SMTP id o46mr11443365qvo.30.1540313765524;
        Tue, 23 Oct 2018 09:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:be87:: with SMTP id o129-v6ls2167186qkf.7.gmail; Tue, 23
 Oct 2018 09:56:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fQVkGJg3sdC/HuWcQAWFVBiEvijIdIaxqAgjpoioMXyR2rnWRi6zRHP6M/tF7gOo6GyAyy
X-Received: by 2002:a37:b5c2:: with SMTP id e185-v6mr931838qkf.34.1540313764858;
        Tue, 23 Oct 2018 09:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540313764; cv=none;
        d=google.com; s=arc-20160816;
        b=l1hbSUoWcM0LUGjyAaJjp2aVzspgB06UT4Gt2uGJ812niBRibDkM4aieYN6piX6Drp
         482JAiVWQDGgi42YK5R2h6sfwh9utzo5gGjoi1p/d/Gp120Nz6cB/uqWRcoFrv6RdzXb
         RA7toGCR2/GSxTDMX/ZaSkTuS8pOYJT0oY5Y+xsLToRdGrAghqxW9E/VlNcD5jwLyOzk
         KQMt14UOE/XzR1KU7L+tHVznzS9gBXZ6Hd5SYuMcHKTket5iENeeXGjdnQdzXaU1+Zfc
         C2TJAVxUfIgDHbXlEzrzMg4sOOIbc2UEWdr8aCUoSVBw/1uouT5SoKpQ0zXRnVtM9Hcx
         KmwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xMGDnSTc/t2InmB6XU/mBl+baaCTbWzau95XN8bcTa0=;
        b=LFoBRIuppDSqWvQSHXJ4f3kCGHG0Dx8lyQmX22Uk2HZgDELweeE85FC55MULAChGGe
         gZlrlJwPWmoihz/8bjDUPTsbHjLeoO4j/94KJr41ElQ/Psj7+lpxJe7L8svJ3kn5YZhd
         j/VkCWDr/F50kXQkA0QaGxplDgtLDuChJblfGLcf1NWRAsQRGRVg7InhPnE1CalKIgRZ
         g/crQVBpAv7Jd3DRRqAFVJNp4EX+Z6BJ5ffknJEU4HpE4VSj2WBbYGy6xdxTuKSJOLyz
         FamINIm6Vhc0kSW/bK4BSmFJVhkXh6h5nHOtwZ0WYPwhJqr8zxoPsTZdhRoJ5RbvBaCG
         w0/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uggtWrO7;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id o5-v6si95527qkf.0.2018.10.23.09.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 09:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uggtWrO7;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id 22-v6so1713689oiz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 09:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xMGDnSTc/t2InmB6XU/mBl+baaCTbWzau95XN8bcTa0=;
        b=uggtWrO7MnIFCnFq0SkipQfiABFhZulD6kXbQWSMHUMzi70K/Jts9W6peU2vVj8+OJ
         rkCoSb+Jejp6w89gWY+nFWr3taLkPDbEAE71jgsAVdKD44+iMzsdZdqQkNP4xE7Nd0Hm
         0wfCEJrB6q46DVRmyORcaVSbKkymhmEP9kzuERQi7lJH0y/0xQzwCiEgNymPQrt/Lpg7
         axP2foxJo1qHKEbBLgOsohbLhXIWVlrIwdED6uZSbsuig6Jam3Ixc4Ko/lycxbDDuHHu
         u4pZSuYI7UgC/vT4CnKSz6EqRwvQ9TCKPoQbRqJOBh2mlES3yzbUmGepke9yUCiuRRHi
         lqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xMGDnSTc/t2InmB6XU/mBl+baaCTbWzau95XN8bcTa0=;
        b=fD+Z/WnpYqCckOs6W/qvmayJktELuS/TTHewO+xp+ysLz2FIjT3iuRNIHGw+mF2LbJ
         h6Aae4IEhsZZRb8eOZj38VFK+uYzggPAwalfj4VDCux9/fpNHFdr0L15YcUY5pjO7L3z
         7x6qjOyKCz6hXRMmFvZWuMNObUFeBYLzVCJTcCIAykOr5Hm6gAb4OtSutG2cYa2b9m2r
         qCCEdXh1IWuaHoGQ3fj6pofX93YN9n25wK+k0JctPYPA01kePl7+NrzvEYODs/15gcQ4
         ALz7Oj05bpjovL/+soqH2roA1waAny2adE/OtyD9qgTVjfIOXEghrHZUW8GYgHhqvpFk
         isPw==
X-Gm-Message-State: AGRZ1gIdBYyIioRyw6xou7gyBEbTPaLQwjlAtFEL8Rhjs+30ndHIKDwQ
	viNBAzzJqVuUutnjijkom4tmYOgEjJ4=
X-Received: by 2002:aca:c593:: with SMTP id v141-v6mr461960oif.113.1540313764296;
        Tue, 23 Oct 2018 09:56:04 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id p52sm595208ote.6.2018.10.23.09.56.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 09:56:03 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:56:01 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/3] staging: rtl8192u: Fix misspelling in struct member
 name - Style
Message-ID: <ae4885beb585a660b97223d6981dc9d20b5109f1.1540311428.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
 <cover.1540311428.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540311428.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix the spelling mistake in the name of struct member
'cmdpacket_frag_thresold'. 'thresold' should be 'threshold'. Issue found
by checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
---
 drivers/staging/rtl8192u/r8192U.h          | 2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index e65a893fd084..ec4de86933ba 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -370,7 +370,7 @@ typedef struct _rt_firmare_seg_container {
 } fw_seg_container, *pfw_seg_container;
 typedef struct _rt_firmware {
 	firmware_status_e firmware_status;
-	u16               cmdpacket_frag_thresold;
+	u16               cmdpacket_frag_threshold;
 #define RTL8190_MAX_FIRMWARE_CODE_SIZE  64000
 	u8                firmware_buf[RTL8190_MAX_FIRMWARE_CODE_SIZE];
 	u16               firmware_buf_size;
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index c3ea906f3af3..153d4ee0ec07 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -24,7 +24,7 @@ static void firmware_init_param(struct net_device *dev)
 	struct r8192_priv	*priv = ieee80211_priv(dev);
 	rt_firmware		*pfirmware = priv->pFirmware;
 
-	pfirmware->cmdpacket_frag_thresold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
+	pfirmware->cmdpacket_frag_threshold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
 }
 
 /*
@@ -49,7 +49,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 
 	firmware_init_param(dev);
 	/* Fragmentation might be required */
-	frag_threshold = pfirmware->cmdpacket_frag_thresold;
+	frag_threshold = pfirmware->cmdpacket_frag_threshold;
 	do {
 		if ((buffer_len - frag_offset) > frag_threshold) {
 			frag_length = frag_threshold;
-- 
2.17.1


