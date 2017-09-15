X-GM-THRID: 6465937630940889088
X-Received: by 10.98.252.18 with SMTP id e18mr13191029pfh.20.1505468429600;
        Fri, 15 Sep 2017 02:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.5 with SMTP id j5ls770877ita.14.canary-gmail; Fri, 15
 Sep 2017 02:40:29 -0700 (PDT)
X-Received: by 10.129.52.79 with SMTP id b76mr15383063ywa.209.1505468429072;
        Fri, 15 Sep 2017 02:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505468429; cv=none;
        d=google.com; s=arc-20160816;
        b=gkTYwNX02f4BubMldrV2B7KaX3e2jsZvJXgf8w3bq8o+q2wmjQdV9GgDrDj1ZqSj09
         FlVGieTzut0Rk/n27W+KEc2oSnH0wzFZ4R/nb1jVQhh90x6EC7VR+ANN9qO0hEsTEj/5
         Egb+8N/fGH39IW16QF5y5h/PIYhhRgUlwRIc9dcskeo4LDygDGptWwWQZboPhuM7uLcf
         rbAtMJCezayimzXzjyXzUoCV4BEp3KUqSITMbZueaXn5KN+twtzJdo89ah8fMznvvqNC
         kJ13zzlW0x2L6O3dhLnfHWXkht2Ct5N6OYqpz7XhZeytGB8ZXKqXwKWVxZOC8DVsN7+n
         ce0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=jK24AZbfzG4NoaDHVx8zoThQVCu805RUO6svDXlINkXDOPbDhI8QS4y1dihvbK0qrG
         r6IUBR5GzNKvPRWlV5I4Da0QL11ZEP4ZHAZkzS6DiZb6lx67xuL09E4ZDsM9fcB2SWfl
         RdimoqsqFfO7ZDCbkks40qGCwRIl8Tqf1AL6qAwPfYOvIMVGJ3fUIK2KwyhK4GpFlcRj
         u0Jxlc+iEb+OUc8TVW5kis5BaHx2zrF9TWmqjEnsyahpUprCJLDOjJfBanWbjtJykxtw
         3bg1wvsslfwjY4ggioVQlL7WbAfom8wBOMhfoEdBTc9y9KJJ+N/sp+f6eNdMA17kiSOr
         lZDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBOj7ifb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q15si48638pfi.7.2017.09.15.02.40.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBOj7ifb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so994289pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 02:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=iBOj7ifbXiBaxvGjnUEBC+ubiss/dINhIuH2O8EP4vKEXArmpVUuUaHoe6sojJZwbP
         utmDmFDlZGh0OqS6NWcLJZM/kuGmaDDvqWXxjSfn0VNX1wrpATGWtpox6DqmPbKjxNpE
         2xBkKMRiH9+FW89K8J6oVq/7KrRx1/DsqXhq5cfGH4ZnB8PBZfTjI7nS7hXOSJc22tks
         QNQMfh//7UsS66WLTflmBLS7T5LfTQcuyRUTPg4GFmNOdTgXoSiU8irCPGnliqHXxseV
         kJmnXNJ2sSxJWw8HieWUribKcTubfDRGo0iVWG53ZrB0RWx5tP4EnLBYLFBLx/yjuF67
         ysNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=EZXgXSBZ5Mu6I9IkK6Mw9S9EKSNEu53tfN7CfC8L+BwbY37ebDdJosRq/L3WPflgHe
         lxm1C7Cv5uXGYSW1lIX7bLO4ZxG1U6cZW2CLKc+FC8IjLh/KPEJKxLVCeWztfHfRUBwC
         eaLTkE/3znTzrLvVKiXP4m3Zj30NZyKmdDt3b2mFE3TGfzWW4DxRfLAZwfhqFlqryQVK
         RT7MFAfrdc83KgALpUB2ulO1P/J3rUSNhY/XJ3XcMc5XdlkwCEfab1h7ZCfruuyp+6wM
         pNCYme3TuiXnPxj5uP+CalOI7qC4SBgbEcveolOUXQlNM1mAxQaqjCuk+Ks05iCHFx8/
         s7fw==
X-Gm-Message-State: AHPjjUhAs+fmAiPVpysNv3yZjRgNy0Nerbo+G37OPYoxp77GTizOX6Ta
	VzrcA1sVWIHAgQ==
X-Google-Smtp-Source: ADKCNb5eofdjO+GD3Qlakzcia0EceZchS+VSETwYPftHXcL9LoZsdnEDO5NoUwRCJvoYZQjJDPc/Hw==
X-Received: by 10.98.42.139 with SMTP id q133mr23668911pfq.263.1505468428755;
        Fri, 15 Sep 2017 02:40:28 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id v8sm1245469pgs.9.2017.09.15.02.40.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 02:40:28 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/4] staging: lustre: llite: fix identation in dir
Date: Fri, 15 Sep 2017 15:10:10 +0530
Message-Id: <7603828b0c74e3dc18a22b7309317ae2a8df311f.1505468281.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>

This patch fixes identation issue caused by one of the fixes in this
patch.
Have the trailing line of a function call line up with the starting
'('.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index e019d9c..b81aab4 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -738,8 +738,8 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 			CDEBUG(D_HSM,
 			       "Could not read file data version of " DFID
 			       " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
-- 
2.7.4


