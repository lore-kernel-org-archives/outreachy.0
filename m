X-GM-THRID: 6669275216969990144
X-Received: by 2002:a67:748d:: with SMTP id p135mr7496941vsc.38.1552811641432;
        Sun, 17 Mar 2019 01:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls2801915vsc.4.gmail; Sun, 17 Mar
 2019 01:34:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMlPSoNcDpru6Q6CXOojNwgyBHyFF8RLgt8lJcidv4RFVvTQuYCg5O/r+4OHNBGznOmCYU
X-Received: by 2002:a67:f3c9:: with SMTP id j9mr7705286vsn.24.1552811640530;
        Sun, 17 Mar 2019 01:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552811640; cv=none;
        d=google.com; s=arc-20160816;
        b=QfzuuS6TC14pfZhfUZEui5/MCoqToc38a7Pxi4uzML18SvV5PNmoJSSQAIKlesjkvq
         lQD/x8v/ovwgbKe0hhlVOHoartiWCIUDVRqhH1eHjvxZFLx8zWlrPsukfePF+ZZ8zoQg
         pGB/n4uBthJv2HmR0XoGtf9xKTO/M3Z31TVZwh+/eAZBCJEkWgAV1RacxPQVxDkLlCtc
         amPzziUM1HmLHLQezHNPnPO/nHtr6geDzlBmNrn27u4Jji7d0XouQCVwsa6vVwtS5VwD
         1MzCTdHjeQ+Wq5SF4WK4kNbqlioJeajbpH5Og6ODKHqHASQKu4ci4vrGoj6yg3LuupM7
         NHww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AonSrvCH78a8vIgbU5ZdludmMxPZTWsVARO87r/6ekk=;
        b=M0Ar1LYTgIjiJ3g+q3ilbHU0N29O79OoRCXdlrY2V5jKJ56iakEpdbFQvFoSuWq0g1
         tN8Pqwsr/kncA/dzg1wkjCJ+lS+ZjJ6/YzLv+eS/82Rkhx6NWYXgmZDUU31Aa0csdZAq
         RVT8Fhy8KgPRJFstjTTbNc64CAwmzEwOhKDiGWQ5Woc2Lke/86ZDBFiINHuoCWpQs/ip
         GWEKKGTv5IbhmdobDYgMFdFZ9Y6OlmrlwHQMlSLHvbeVtkXEEYXWhAtWsYgsz2XqrVD3
         OZbyGaR6+FS1hz6C94Y+rkfyYzEtOfjweXjLrn6s4Fou40DufzZuHVZt/6Fmufs9hVnj
         pu8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MME53IYF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k19si464840vsm.0.2019.03.17.01.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MME53IYF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v12so9332016pgq.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 01:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AonSrvCH78a8vIgbU5ZdludmMxPZTWsVARO87r/6ekk=;
        b=MME53IYFo5P5wj3+HpvOl9dt7Iw/rEAnmdiZnM4bZe4mSvYiVPhu+N53Iwsvwmbwoe
         CH+Aw9XZUCuAkEJWlh1e5vqtp0TPsUkh47kU9EA/wd3f7ytOWWhhJIrJkshiXgK3Rnp3
         4+11xeqWMlMdsK7C+75XKMcCH1mI40zI6elacSTrvp6m2W8T/FZYpvQKMDJHAv8vBrWH
         tfDmNtkEGdOU6pz/iBXqyS2r0TQQciJxwSDbVokcteArZGqGHJZE4aFAXdpRNhB7vYRN
         319KHBjmbTYXXaX9n3UO/LvqI2zyktGPa0LGwqSYI1WKDhXlkKHDHdvF3gt06etAwa52
         Zj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AonSrvCH78a8vIgbU5ZdludmMxPZTWsVARO87r/6ekk=;
        b=ci6m9rIxVc/hGVq6kueKsguX06T1hG50H6ndZWgsKEtP18fgTkVbWc1hZ/07e5Utf2
         53HcPRxL3zdg3H/mXG0kVA2IaNDV/KGy50cnRzuWCoZpNitaePx4usB6ojRrgn/JkfxS
         vUcnqDgm2ImhO2XvDtGl9+InFpbjm5xCSmqP8euPqwdwyDCLW0zVf0Vs8Q5wlYxCRSpR
         4r7QD+xY0/j4jRESqtq0eK9/PvVS1BdUK4SdaxUA+ried1JX99aIX5JT9YzG3Tm90eQX
         mYK5wxZG0rCsOUuRw+jKxpjMJy8BAE++EbCJ6hmzD+NrobOkTOG143FjChx/hzZnT203
         0u7A==
X-Gm-Message-State: APjAAAXHjyBVpFhkO1hNfKP4BVQ+M3t2un4HnBmdHeRYW+KJmqMWgf6R
	wGZbPApPNnyy8N6oxcX0CcBUTZpB
X-Received: by 2002:a62:1882:: with SMTP id 124mr13250845pfy.101.1552811639251;
        Sun, 17 Mar 2019 01:33:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.121.134])
        by smtp.gmail.com with ESMTPSA id e14sm11286057pga.61.2019.03.17.01.33.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 01:33:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] staging: ks7010: avoid bool structure members
Date: Sun, 17 Mar 2019 14:03:43 +0530
Message-Id: <1552811623-12131-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid bool structure members (because they tend to waste of space ),
change type to int and they will work as flags that is 1 if true  and 0
if false

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/ks7010/ks_wlan.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
index 7aaf8d7..fe2ab72 100644
--- a/drivers/staging/ks7010/ks_wlan.h
+++ b/drivers/staging/ks7010/ks_wlan.h
@@ -337,7 +337,7 @@ struct mic_failure {
 
 struct wpa_status {
 	int wpa_enabled;
-	bool rsn_enabled;
+	int rsn_enabled;
 	int version;
 	int pairwise_suite;	/* unicast cipher */
 	int group_suite;	/* multicast cipher */
@@ -475,7 +475,7 @@ struct ks_wlan_private {
 	unsigned int need_commit;	/* for ioctl */
 
 	/* DeviceIoControl */
-	bool is_device_open;
+	int is_device_open;
 	atomic_t event_count;
 	atomic_t rec_count;
 	int dev_count;
@@ -487,7 +487,7 @@ struct ks_wlan_private {
 	unsigned char firmware_version[128 + 1];
 	int version_size;
 
-	bool mac_address_valid;
+	int mac_address_valid;
 
 	int dev_state;
 
-- 
2.7.4


