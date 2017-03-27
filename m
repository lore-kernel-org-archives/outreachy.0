X-GM-THRID: 6402251586842656768
X-Received: by 10.99.149.25 with SMTP id p25mr7842258pgd.77.1490640386187;
        Mon, 27 Mar 2017 11:46:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls14644342otw.5.gmail; Mon, 27 Mar 2017
 11:46:25 -0700 (PDT)
X-Received: by 10.157.49.68 with SMTP id v4mr2125166otd.95.1490640385719;
        Mon, 27 Mar 2017 11:46:25 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si246833pfb.0.2017.03.27.11.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so15062564pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 11:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=rAu9XlenxmZ4lAXSJzBq8P+XettlIfMQCdAfE6zfj70=;
        b=DwcE7D5SnjQAZ+iGgGeXMNKFTcZzsgWLm9n4IlYEwTJFZnHe7f8slADyjHeuJUnamH
         NP73CQiDMhVd/nK8Ufc7VnKpcdeN6TFGhVPlK2vBQpRxqHwa8+nZBYkm6+Ye3PWbHUzE
         CcpkzELY0lljaN5KBZNYM0IedSoXxIfcadylYMtcKN8YucFQULBZl8rA8uuvvRNvXdcJ
         pYZ7JWC+xC9uX5B4FYLjxTKGL7s6WDI78cFn6VXUPfH1Bv8za8aW+8Qi5uDRErkIVv46
         M28qTOcpS8Lf92FBPWUs3UOI8otoQKC/tvkciI9xBp0YyhBnCdtc8sTEmpJ1MIA7s9bp
         6QYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=rAu9XlenxmZ4lAXSJzBq8P+XettlIfMQCdAfE6zfj70=;
        b=rzrBQJp4Svy/O4mFFmFVenFHC7Mtc/6Gt8CLSrf+zrIgeHtwSVxeRCVcgTzfwM07vE
         +5ofASUCBS8W27KEuZsfSybQQwf/kMqMRYr1Mh7nlTR2vYQA78M1lsDBcvWtDA5uHA5D
         MaTOEI2AkQJ+n0hlWE0N+X+pW6aFp3QnLCHQxDtWm8hNum6RiYxyD0nXF6pl+yAzx1m0
         DXHC+7/+9qjRo+9bFcACZPQbTLX3/uuI2p1b+mDK7UwbdGPFdxh1EidHaSwwvz0AzecO
         ioi0Wh95CzKB54j1qSQqHf2NB5bP4tmcG2U75700jTkvPi3KCGqGUA9M50tXDSKeUWC/
         3Niw==
X-Gm-Message-State: AFeK/H3Q2aN+TiiNZGEBZG44a+zhlb7afD38ZPtqP3vRCux04Bf7e+Mncc8W+EAsa2aEqg==
X-Received: by 10.98.103.75 with SMTP id b72mr26590472pfc.105.1490640385505;
        Mon, 27 Mar 2017 11:46:25 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id c195sm2598698pfb.60.2017.03.27.11.46.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 11:46:25 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 4/4] extensions: libebt_nflog: Constify option struct
Date: Tue, 28 Mar 2017 00:15:30 +0530
Message-Id: <2811ba791e2e24bed3a7eabb354f06b9807404d4.1490640256.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>

The struct brnflog_opts of the type options is
used to initialise extra_opts field inside the
xtables_target struct and is not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/libebt_nflog.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/extensions/libebt_nflog.c b/extensions/libebt_nflog.c
index fef7196..5f1d13b 100644
--- a/extensions/libebt_nflog.c
+++ b/extensions/libebt_nflog.c
@@ -30,7 +30,7 @@ enum {
 	NFLOG_NFLOG	= 0x16,
 };
 
-static struct option brnflog_opts[] = {
+static const struct option brnflog_opts[] = {
 	{ .name = "nflog-group",     .has_arg = true,  .val = NFLOG_GROUP},
 	{ .name = "nflog-prefix",    .has_arg = true,  .val = NFLOG_PREFIX},
 	{ .name = "nflog-range",     .has_arg = true,  .val = NFLOG_RANGE},
-- 
2.7.4


