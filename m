X-GM-THRID: 6670745270189293568
X-Received: by 2002:a37:c051:: with SMTP id o78mr670606qki.53.1553153914844;
        Thu, 21 Mar 2019 00:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6d:: with SMTP id z45ls2069547qve.5.gmail; Thu, 21 Mar
 2019 00:38:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNye4Ms6DqSUQpqkmI+9sxskya0YW0A7aXEeNvBLtzsEuCPxyl3lwlV5xIZaCMzAG+Ywda
X-Received: by 2002:a0c:d15b:: with SMTP id c27mr722893qvh.33.1553153914293;
        Thu, 21 Mar 2019 00:38:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553153914; cv=none;
        d=google.com; s=arc-20160816;
        b=KOCeO5mFgT7wNY0cVwX86b0lrEfrEyjJE6Qwk8IVxGaHSmN06hPLa+SL/YlYiuCxrY
         WKswxxN2M6e2s3bbR7luOcGtnphOTVVWVqtM4I2UYfNiPWiFGwsSnyOsKUuoxhFAJFa7
         2fE9nviT/u5iIBzTD7WFiNtgKrPstJRqUTgAQMdHlKUWrR9ZOYfcj7U0JX0FcNdy0RMf
         NZmBNqpQYIhsQqj1vWp4aB+Em5sVqNvykoN6FMUDBMyCXZAYsJ7ujdkLzUHrkNFCxp4v
         9ryfWI3pBFyViyqq7jUCJ0wjzU5VU6AlaGZJoKWE77QgKWu//Cjd3Z26o708KTdNvT5J
         NlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mzVUBrnLH1/9MKVbuv1I7t08XQ7/KKbXM/W4n9w7iIs=;
        b=DO1ITqwoV31xMghswbxVj22C/aXopVVzpnev8ZWb+tLy+jZ9/yqg/EUHveJJLpLO2D
         JkbNn38FuZh3k2YAvFmlh5lK54N7Zsh+kPxWWOJ2dZkVJ1Pa5UqI7HgtZoVDkdwaq9gU
         Htg1eEnCvRLv5KZ8J5HpgxddzXWNsLDKO+WuULIR5npaQhGllpfuzyj/MfQBgpxR5eVE
         sdnCr7RnUdeYj3NvTlNgovSpy4OLH02V2RHLcQtAsGPiwT9n4HUC7+zYtuEsxi4fFN5c
         5IjEONQ0fuf4wm68TXQ7EX7bZU+YwEHoTtW5hLb88tAXuS07G7OCkT3BExD4SR6oUNbv
         fBPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dF7MOTFC;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 27si358639qtt.1.2019.03.21.00.38.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dF7MOTFC;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id v21so3732476pfm.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mzVUBrnLH1/9MKVbuv1I7t08XQ7/KKbXM/W4n9w7iIs=;
        b=dF7MOTFCuzVWKRi/DeYQxiX6UE/lv8ftTMCURuXx8JRU7MqhcKtsMvWaJ4WFA0W1t1
         X83GyOxHJLA2PuRtlzsArvHPGDmMufNnHmZKNN9WU7vGEPWp8zShAnTX3IUdO9Or7gTx
         Kos29OEz7IdeZOdxzE9Z07chST5c83DdW/W9zV+oEaE1JWM0TGVYR+yCMUrU8MajlkAs
         zjgfVHsB6w2GNMJEy4xPC+iPN7TUgd0Vel7G+roqgx/X7QH1ZNHLm0dGkXHaXYbaKXrw
         rdyIGkVs9oNuLIKqFzxtizSoYk97pjwlTtQ5TZ1eR2wj4ZE5Kc6dmFHRHX2I/ZTNV+uB
         bORg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mzVUBrnLH1/9MKVbuv1I7t08XQ7/KKbXM/W4n9w7iIs=;
        b=qXouM8zqhA4JY8Jws/PWxIrnKayGu476S+sgnzOQo7x2BDpidtn1ioBtphyN0/DiSC
         YdslUFDLWJTms1Xxr2J+WSVLK3/NQB5FRs7RbguzNee+47NFhKUmkDFKQFCWAUKomCBt
         JrnkoX4QEtVqADBeWo6eJmZfdN1VaM0Hwh1bfkE313+H9LllFJxrU4mbSqsV944mb9D+
         Op5a9dKwiPkXUOW7d2R1jca0ggjqWj55j4f4crrtb8gPud0eKs81BfS1AcEs+kFABaD6
         /TdCftMEPHsJfUR/g7+CgNSwWWrna+oAqE43Lf+Gj6peGCuGK9H2PiEMPbRv428i73UM
         o4yg==
X-Gm-Message-State: APjAAAW2VdCmETYGav3N7za8z5a2yZh7bzSX0oeGoNiSdo7xOja0VpLV
	1/QKa54QRA6Z+Vr+gosJMluapeX1Xi8=
X-Received: by 2002:a65:6201:: with SMTP id d1mr2101420pgv.382.1553153913262;
        Thu, 21 Mar 2019 00:38:33 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.81])
        by smtp.googlemail.com with ESMTPSA id l7sm12276752pfj.162.2019.03.21.00.38.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:38:32 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: svc_watchdog: Modify char* array declaration.
Date: Thu, 21 Mar 2019 13:08:19 +0530
Message-Id: <20190321073819.8333-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Modify "static char* array" to "static char* const array".
Issue found using checkpatch.pl

WARNING:char* array declaration might be better as static constant

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/greybus/svc_watchdog.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/svc_watchdog.c b/drivers/staging/greybus/svc_watchdog.c
index 7868ad8211c5..b6aaabcec320 100644
--- a/drivers/staging/greybus/svc_watchdog.c
+++ b/drivers/staging/greybus/svc_watchdog.c
@@ -44,12 +44,12 @@ static int svc_watchdog_pm_notifier(struct notifier_block *notifier,
 static void greybus_reset(struct work_struct *work)
 {
 	static char const start_path[] = "/system/bin/start";
-	static char *envp[] = {
+	static char const *envp[] = {
 		"HOME=/",
 		"PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin",
 		NULL,
 	};
-	static char *argv[] = {
+	static char const *argv[] = {
 		(char *)start_path,
 		"unipro_reset",
 		NULL,
-- 
2.17.1


