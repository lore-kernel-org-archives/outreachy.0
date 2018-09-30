X-GM-THRID: 6607095314902941696
X-Received: by 2002:adf:efcb:: with SMTP id i11-v6mr789694wrp.1.1538334257273;
        Sun, 30 Sep 2018 12:04:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a971:: with SMTP id u104-v6ls364504wrc.1.gmail; Sun, 30
 Sep 2018 12:04:16 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63JjNGsxl/q0gm+rt5eAputQlXH3d61ad13sf7LCLpLPOl2CXZ1bDrMTaDQcopf3hq9RljP
X-Received: by 2002:adf:b6a1:: with SMTP id j33-v6mr776551wre.31.1538334256382;
        Sun, 30 Sep 2018 12:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538334256; cv=none;
        d=google.com; s=arc-20160816;
        b=cd2ZibnmRz/8dcA3JfZH8Na/Tbq+u/kxXxKE2bSvMTsCA6li6hRhdII+e5I3wWFoH9
         hx/C8yHsjMKp/z44kl6P6UkHHGBwBNUiKeqbwCs0LQmZBb+4g4NCCFCPe8kRPy51YNQL
         jUgokDeTHYnUhwZQ2HMdcVZnnpqXVdnsko9k8KfAKIq6tpSTD1HnlYwM+KU2aQxwWITC
         dltPXmSPKwbVIzlCMj3OdWQg683YiajaDWZ9y7xvN9oM65vIxJNYXtyyjkpht7vAml9W
         C7R+rzWdsPXbBG4EHBIaTvkWKEOjLu4GFo46jp342SMRoqdxNyZtJ7OtwTiuMQWgMwZI
         +N7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=IjhHa1RIKm1hQe6GoMh9FXV6q2Vl1JJi6QfmEYMc1cA=;
        b=bZ3/3qA1msv4f/TNT2BgcL+BaSI5YimAVo7bR6F43wmORyJg+y7JxXKF5cCXAAnVR+
         OycV9DN+972MjwAe6HHrPWD6HEAzsT0yf2levScdY9av+fm+rkPrlvtXjrDlC8NKrINf
         VYulJ8fbLcf3eKW3y7YcwziDcUakfvwcZeF2GZ/zwZpN6m/MX9zL3pjJz41cjZg9g/aG
         qjkBqba93+HMDim2zZh9S+v8Z66bEghaiS6+jpOR5arCZrhMsIf2my5PA1oeaxHWRoZs
         R9sWMorELx7wLIjLGffCuv2YtnilS0KcOCKa4aPnUzpJbqx0TS5wGRfvPuCoVUrs1C35
         4m9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCbGOUsW;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b128-v6si336184wmd.2.2018.09.30.12.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCbGOUsW;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id z25-v6so1551312wmf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 30 Sep 2018 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IjhHa1RIKm1hQe6GoMh9FXV6q2Vl1JJi6QfmEYMc1cA=;
        b=DCbGOUsWQ7C0Qd/rL02zZc1r3kMrur2DMFE+DY/0hjeDUWv5tBMfimPLPDJth5thvI
         MlmSGVIWBFAYU/d4LGk4FYqXsc3R98N0556PR2aN2jZcpGrPImQ1rYSu/Xb9SLgIyZ8v
         5A/s5R03OV4MzxBt1be7qhxs9KixqgBUz8SvSuIHoBQf6lzS8gN9D835Vdw4L19mWyGy
         HmqHmF6kWpWeZng8iNXn0wvP3EftI2eB8HK3cxF+b6P817bxSzHC1y1fF/p84hwwnGkb
         vgoRvr3f750RFHBUreahDrSRT1EFKcJZDqKODV96pHfNITFDS20bLpKKRINIUfqVuv/x
         FyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=IjhHa1RIKm1hQe6GoMh9FXV6q2Vl1JJi6QfmEYMc1cA=;
        b=TLFr549jO11jDNPbA0O4d7QrOg64a5dOjJjfbvVcFN6hUsZrDKNOGJSgJGyHqaYNZb
         GSU1mFwSf0SfzsNFwlSi4Wgov2PdOkNrn/UlFq5aGb7SBi3wXZJS1V1K4QzXQMyMjNNA
         sfBwAw9pq1AcDRenuifQZZi4BcFfYUw2INroivAReuMiU7pfPrioq1OQ93oSYL5SH3Gm
         9PLWhAKBPkfjE95yGpe7qEhziZYUdzPjKfQH1xXBUwYuPReH/5rUVhwuls8FXBRtuyOo
         nbEiIxT3lEg4tWzBDHknv2nk/P76CDUUCYD/Rxqb5qeibL85x/cu1Vzi9mfws1tp2aon
         ITWA==
X-Gm-Message-State: ABuFfoiRHfsuTA0dmC/QA9VkW5CJCvhhKINovtQ9PcrOwQ/bhUInuLg1
	SEYr8/Pg+TwkBu7LdoS0iPI=
X-Received: by 2002:a7b:c242:: with SMTP id b2-v6mr7376960wmj.104.1538334256048;
        Sun, 30 Sep 2018 12:04:16 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id n4-v6sm10657610wrr.21.2018.09.30.12.04.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:15 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH 1/3] staging: mt7621-mmc: remove unnecessary braces from 'if' statements
Date: Sun, 30 Sep 2018 22:04:02 +0300
Message-Id: <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>
In-Reply-To: <cover.1538333858.git.dafna3@gmail.com>
References: <cover.1538333858.git.dafna3@gmail.com>

Remove unnecessary braces from one line 'if' statements.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index e3c1546373ba..8c32cec5950a 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state, void *data)
 		host->pm_state = state;  /* default PMSG_RESUME */
 
 	} else if (evt == PM_EVENT_RESUME || evt == PM_EVENT_USER_RESUME) {
-		if (!host->suspend) {
+		if (!host->suspend)
 			return;
-		}
 
 		/* No PM resume when USR suspend */
 		if (evt == PM_EVENT_RESUME && host->pm_state.event == PM_EVENT_USER_SUSPEND) {
@@ -967,16 +966,14 @@ static int msdc_do_request(struct mmc_host *mmc, struct mmc_request *mrq)
 	//if(host->id==1) {
 	if (send_type == SND_CMD) {
 		if (cmd->opcode == MMC_SEND_STATUS) {
-			if ((cmd->resp[0] & CARD_READY_FOR_DATA) || (CARD_CURRENT_STATE(cmd->resp[0]) != 7)) {
+			if ((cmd->resp[0] & CARD_READY_FOR_DATA) || (CARD_CURRENT_STATE(cmd->resp[0]) != 7))
 				msdc_gate_clock(host->id);
-			}
 		} else {
 			msdc_gate_clock(host->id);
 		}
 	} else {
-		if (read) {
+		if (read)
 			msdc_gate_clock(host->id);
-		}
 	}
 	//}
 #else
-- 
2.17.1


