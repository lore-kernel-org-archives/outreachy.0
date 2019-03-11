X-GM-THRID: 6666820090157072384
X-Received: by 2002:a24:5c81:: with SMTP id q123mr181971itb.34.1552318922452;
        Mon, 11 Mar 2019 08:42:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dd3:: with SMTP id b202ls5038052itc.0.gmail; Mon, 11
 Mar 2019 08:42:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCcr30uv+e7eKvEmA6SilfgdDzUBi5yrPWB+lwFSU2Dntehnco9SEe+ZgSkOwksJQfYOgn
X-Received: by 2002:a24:3aca:: with SMTP id m193mr171416itm.27.1552318921539;
        Mon, 11 Mar 2019 08:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318921; cv=none;
        d=google.com; s=arc-20160816;
        b=fBhjWeyZ1HrGAWDwrtUbCEUNJoQ0PZdhlf66EqJP5d4UzZ5tJXT0nIk25RJqc5ysDJ
         7P4bWYVN3fyUFzQL/Moz42nrYVaSSX3+Jw1e7fUV3jPzVX6hLlVV2Rs67kXHLqqOajv5
         dorXyPLSI6yg9cULwjPOpvQA90WJAuBRFSMElRA/HpYInDQinc4u5dHG+C+Qy9WpGekg
         KBfuP89V46u/gyk4woWBOnYh4qbky4QwsvL9WQpb9utDyLXsytI2l+tg1q6X9Sb/rny5
         4r6Ea13281lSBIo1UgLFe6feAaNldvcRdw7nrm98QQFFJviXoSW3udcDNK1RF7tf9UFg
         ajoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=Kra6KWxfEJv9YuVHT6k9T7cUguO2ooAuM/Y7cWwUXVW1b3uX8xOgPndQMSVaXJZg2A
         PXu7HhwnN8Fc5AUxIQw8h4HLwJBL38+AOuPPHakLFXJRK32dPzfD6IvUIVBs50rYoxRX
         CiU1RbhYT8JojgnNqLQkALiBx60DzQkCIcgS+rHmedFsii08+sAWTc/0gnUeYBI+Sz4Z
         2roz9D+OPbcmSxob2UymtPGVkM1NTK1qAatwpMBdbGSefpChZ+LsSAv6XJpNBBunC4kg
         nGZPbWIWNvwRulSKUUCHytpbGyHlAWHOVfQn7GtQawxqMTS7n91yCnTUh5lvs5X63uK3
         6MOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Uo0t1/xn";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id v63si216207iof.0.2019.03.11.08.42.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Uo0t1/xn";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id s22so3975419pfh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=Uo0t1/xnlAsvQmxdpkIM8K+3Y8PenHOWBgWd81idSWrpP/7YWCO2hAZDamirBOH4Qu
         kTOh7Glf4Vl3jXH3bkbkuzXy1YKiDgRxNI9dOL/INVBLCUs060EuORHvXbw5fW18cMgo
         WZeQA/kpwelYI5yFl2EGKn2mR312/qWCOt9kJUu7eX7QKzx8cWL74pGf3ou/IkIVpU+a
         pWebLDA7RPd0H46X8fyAWSy0RXN1pmEaPR9dXEn5MqWlJv+u9FNR4LqHW2LYUfvjBa+c
         WyfDTf4ro+81DrlwVZugIK+2tqSJKznpuSfSr6biS6EJnXFlRptAjY8UxmeLraDt06Lm
         zo6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=bmAkx849dO3eLubQM1lTgDFdoXbe65g/I+TPwz6tQXWsfdGiThgVCl8xzhRf3bLsba
         JJLlFgHufeqdMIlkt9hVDjOZOAdt1IdwO+YnlRqxevKRF9GtPVU+KjXuTY611jat9TPC
         l8gKWdTPwKmy9DjKHFYslgjV5yo3m5UYJcGgFNcQRA8Y/BPdRodvwLNelpJ/DH94GFyv
         sTkSSgqxWgVbMW2w1Z3Q6oJjX+uEU7YhkHewegRXh4Y8IXrGjOQNg4ss6ibhyFsHMbVk
         lEwWkGugNi9sPovsUnnYXKmqaS0pC7bx0nAk+O1G1qra5SLqTrNzNlnGC2SZTOUEcTAj
         bwWw==
X-Gm-Message-State: APjAAAVduLNq+ZR7yUM8jXTq0Ivr5faxb3X8qM8A0SRmevpJMy1/ZxrR
	0qwWgJWUbo/lN+an/TOpsczv2hrejfw=
X-Received: by 2002:a17:902:f209:: with SMTP id gn9mr34878700plb.50.1552318921000;
        Mon, 11 Mar 2019 08:42:01 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.41.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:00 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/7] Staging: rtl8192u: Remove typedef for struct _IbssParms
Date: Mon, 11 Mar 2019 21:11:36 +0530
Message-Id: <20190311154141.31401-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs IbssParms and *PIbssParms of struct _IbssParms.
-Change Structure name _IbssParms to ibss_parms to maintain Linux kernel Coding Style.
-Replace occurence of IbssParms to struct ibss_parms.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index ce79b8321961..d78bc976cc69 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1506,9 +1506,9 @@ typedef enum _RT_JOIN_ACTION {
 	RT_NO_ACTION  = 4,
 } RT_JOIN_ACTION;
 
-typedef struct _IbssParms {
+struct ibss_parms {
 	u16   atimWin;
-} IbssParms, *PIbssParms;
+};
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
 
 // RF state.
@@ -1554,7 +1554,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	struct octet_string			tmpSuppRateSet;
 	u8					tmpSuppRateBuf[MAX_NUM_RATES];
 	bool				bTmpSuppRate;
-	IbssParms				tmpIbpm;
+	struct ibss_parms			tmpIbpm;
 	bool				bTmpIbpm;
 
 	//
-- 
2.17.1


