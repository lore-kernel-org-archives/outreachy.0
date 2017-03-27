X-GM-THRID: 6402251586842656768
X-Received: by 10.99.67.197 with SMTP id q188mr8581437pga.31.1490640361489;
        Mon, 27 Mar 2017 11:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls10788273otb.2.gmail; Mon, 27 Mar
 2017 11:46:01 -0700 (PDT)
X-Received: by 10.129.19.214 with SMTP id 205mr7636265ywt.168.1490640361104;
        Mon, 27 Mar 2017 11:46:01 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si233331pfx.8.2017.03.27.11.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so12297507pga.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 11:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Z7NhHjyEbIJmRtEY3tS4+aRxh/3lNlAz74dPG5zoX28=;
        b=DvH2CRlQUihrpEGacppwFFpCH3bFT0kHQaV2HT54InUurGsRw5MmPDjWL3ef/FBfww
         kHaOcuwUyGOr4FkU9l0nGy03/yeN7BYJZ6iet7/aF+urqyB5JCAn0bWcRYdtz9Jy4VbE
         yn9hFNmWxGbA1jZ/u38Zec4Q938+/DhHGEPFpLTHuD3E2xActhd1tS+huV2sTygw7NGu
         ARU1pwKpZH8VPUSex7MdJnSO2i2ewoYnolK+v+22jlYq67oUwjXCCNXG/j8W7ul0NQL+
         dRW5eruwn3b8mmimtSabXivjRt9F3Bb+Ez08JkhlSFPr6wzsUSJz/iobUlCovgg+qSGd
         k+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Z7NhHjyEbIJmRtEY3tS4+aRxh/3lNlAz74dPG5zoX28=;
        b=QNyZjnw4Xsm9Pi3AgOlZvDyEAAErZ1XAzmHErYRvoIs90kUqxA+CgwCUypt8A3l8cF
         SekVgFT7RUYm91kJGlKNSm6IajrsTm1RHINZxHFyvG6tiJPouTACSfU9RZ0bnwMndPrh
         H86rbeL5JP4wE7W/FTCiUxrMhBDwim0QvsZyopOfpOZthb2DeYqTi50R6Eoul3LCO2rl
         IGrFBleTrSsSWqOjrOt1bxTMGImxA++wBHkHf6CG5Iv81wnjG47C8fDpEtZOXHeYDWX9
         AcaWvHUBNIe01hq/XS+usb4HVeZwe6ECbkpwxRzCBiOOgqp5y/thysvA/InXFM8tTEpt
         K8Iw==
X-Gm-Message-State: AFeK/H2mJzVCLSfiIA/Zu6wVoab5neT3j4zXrpiO65ZdLJpxBQq6XjbRF4e4JSVVxyaRcQ==
X-Received: by 10.98.61.209 with SMTP id x78mr27572606pfj.88.1490640360906;
        Mon, 27 Mar 2017 11:46:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id c195sm2598698pfb.60.2017.03.27.11.45.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 11:46:00 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/4] extensions: libebt_limit: Constify option struct
Date: Tue, 28 Mar 2017 00:15:27 +0530
Message-Id: <e4b9436c807b5f0a2fd37937ee29c7ab481b5686.1490640256.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>

The struct brlimit_opts of the type option is only used to
initialise a field inside the xtables_match struct and is
not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/libebt_limit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/extensions/libebt_limit.c b/extensions/libebt_limit.c
index 6b9bb16..988f678 100644
--- a/extensions/libebt_limit.c
+++ b/extensions/libebt_limit.c
@@ -29,7 +29,7 @@
 #define ARG_LIMIT		'1'
 #define ARG_LIMIT_BURST		'2'
 
-static struct option brlimit_opts[] =
+static const struct option brlimit_opts[] =
 {
 	{ .name = "limit",	.has_arg = true,	.val = ARG_LIMIT },
 	{ .name = "limit-burst",.has_arg = true,	.val = ARG_LIMIT_BURST },
-- 
2.7.4


