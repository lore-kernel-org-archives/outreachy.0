X-GM-THRID: 6473410411176656896
X-Received: by 10.200.16.130 with SMTP id a2mr1414972qtj.21.1508328893936;
        Wed, 18 Oct 2017 05:14:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.33.172 with SMTP id l41ls1852461qtc.8.gmail; Wed, 18 Oct
 2017 05:14:53 -0700 (PDT)
X-Received: by 10.200.28.41 with SMTP id a38mr1473731qtk.37.1508328893475;
        Wed, 18 Oct 2017 05:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328893; cv=none;
        d=google.com; s=arc-20160816;
        b=AD8jaRzfjfc27C62YznOyR3A/3P0caUdIuTq5buXMv0j9SYrlrdk1rzBGqxVUQkWLq
         OgXiL+gtHLDS+bZUYCBNCqKVMhzscgBaNBNDLR8tt8BswC22s+6xPJjfuO+5riVEmEcp
         0n7V6tvO0+TyrP8aXp3RXDzPBcXV1la+BOhP73Io2uH4FA/Tod9wGJwtOkAknfFn6nBa
         ZmD2L50GfDBdnmGU7OeX5G9RPauyWKAoTZghRntCVYJuVLniIklLp9fJE6aJaN4N4TeT
         5GY7Y1HqrlzZQNLA08CE4pcEpIC5i/pBWW/jjeJYvS4v1laUEPfNywYzn4BGBy99gWx4
         WxRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=xtnhTvv+Fg1HY1V0w/GP6f0X410TfLzhIk8nAQDk4OpQnOYveB98GcigGAOi7AQ8Pc
         2Q3rWuWSJ1H4hgfrHr/fCYRompTvaPcG/GoFSPsuDutPDlkHF2xSm0kSqVZdzL+Upn8u
         B+I71t7o21ru9m7oeoeI3c9vTuPQkik9NRgVUPlZ6V7g22t+RmkkYI4JTYLobEDQThDW
         KDlmw1nWbFFz3gOuzKuD4zo/Cbi8T+/znpI6kgwv6tpattgTOqctoI1+0HEKw9K+3iFb
         cOo4incUQBvuS5TgVG3n8qpNYYsbJEDVsR4TNzWFvzv5BjSUjf2GvpElDOUDaU9LV2/P
         WVXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PCl1yCKF;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a13si807557qtd.3.2017.10.18.05.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PCl1yCKF;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id b79so3836301pfk.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=PCl1yCKFdemVhA+iw5qdEUkgIdzL6zazTnUd0SLY5it/4Dzbi7RwNLYO0qk508+7zW
         JShueBZDJla9y20gNwEaXkuWP8j+pqQxFxrgYdjiyo09pM8Piege6BY+vpm+Ho8+LSrY
         metR+Xv/ih8mY1HubP7qLtQ5lWfpmWVBKon3X0K9S4PPyLeSDVoZLd792EUkhYdk5zYr
         ANVYG9S668fB3KOjSjBzifEBnd0H7q5cxTvxoh+4Z7rczMqVUcfTc7GXIbEm3lpylaMd
         Yt/hjTW/8+ORiJCeBjrijuFJo1NkJj0oaEgyzyx0y1QEpaTwuTPY4hfvTpo1DpOCCzYf
         qRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=RT74wWGB6YzhQLTUSPl6yhj1egY7C1ReUmaEvuSiuhxWgkfgmKKuDiuavJQGJHlvBc
         NZTsMfEjQ0Vn69ib5ShX5KNkNZSFVeiIYubDMgZaH4VU7T1/vDGCkoXmfxZjd6ACguln
         8UhC2u2uA3QeGTyhj3PEVLbJFo0tuo+w9nL2nvh0DaO7Tbbe3uhhApCyTnr+B0CnZcf8
         kgTSwkedqDxo09Dro5sP4omwX1/bnVf/8Y2gIbeItALCYSektRbopSmLjbJXZCgG2jdn
         RIh6wltwkP5uF0tyAodYQONVo76PADUsLgf6t3o5kv28Dz6otXG88LDtcVKLoHM+TN+1
         +uFQ==
X-Gm-Message-State: AMCzsaXuTUJN9HLHnWQmeE9UVQm/f+BumVJYxcWrlXcLD2c4G1UGBCjd
	jM2gq0DcAFh8wGV+pkKVkKc=
X-Google-Smtp-Source: ABhQp+R+D209oiAUcR3ERfHy/8Z/vl5jiz9GLctEbWmlyLsfsAZ1leUVwnUBSFG9HzXc2r8W1cggBg==
X-Received: by 10.98.60.198 with SMTP id b67mr9400534pfk.163.1508328892660;
        Wed, 18 Oct 2017 05:14:52 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id y5sm23948427pfk.3.2017.10.18.05.14.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:52 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 04/10] staging: lustre: drop macro that has no uses
Date: Wed, 18 Oct 2017 17:44:24 +0530
Message-Id: <1508328870-9416-5-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


