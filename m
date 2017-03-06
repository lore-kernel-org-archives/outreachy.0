X-GM-THRID: 6394401254530875392
X-Received: by 10.99.110.73 with SMTP id j70mr7096151pgc.143.1488829617594;
        Mon, 06 Mar 2017 11:46:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls15027855otx.21.gmail; Mon, 06 Mar
 2017 11:46:56 -0800 (PST)
X-Received: by 10.157.62.22 with SMTP id a22mr7173102otd.43.1488829615573;
        Mon, 06 Mar 2017 11:46:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si220192pfz.1.2017.03.06.11.46.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so7649505pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=cO397HURT8SBbtaHbUWIgJAUI9c/1SyL4+kgH1DU36IkU6wBFe7oYY8r23BIq7Rz1b
         914fDQVbW79kyT9cyaPMuJxdTkjt/x3DytTm3YPgNm3cTIYoa9ofYA+JFWoaZTFe3FZN
         2y5fNyBI6iKIVshCA4akcvOqo01YAI3B8Qd/rPomEMzawxnlxJ/t2VDdBE6xzTHjJQVZ
         0mahbBeFz+VnX8pFUUNfDOAmpV/JPEp18VTTzcHlKK1xEjynVI5fa9nk2YCm5Yj7tvgr
         Fg1LlBEk1OeIvqSGOWcxMheO9aPgq3lHFNB29Gy+yYBt0h7f4VZCVBffQfC9mq8tVxE+
         haEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=ZD+BPpaf/X20bCkp4W/F2OH+OsPHAom3dQlMQR+eAtW/znk01aklfKhomxfbkJdm+E
         QULE6e2afnTcaA19aZWDpGXA7cWSYfGt/0J9ztrlh4c6rAa0vwKOw/AGSitjOQNQ/iFN
         KNAHXZ7qK6lG+m01MzqMt4iGTEcoyuKMUpx+AlAeqaiWYcKZ8ut+UmCiSqn7kW/RQ6u7
         utTMWTDI5croU2v2bXT4PMviyBewtH+A4F9Ln0PptsVFxcPGR0d7ycUZUWs7YMyZWQca
         aEkz/IJY6V641qSrhJXXyZ+xKPmpR69RUvjoU0W74ynxKKtzxjxTaXtbyVSYF1SK+XQz
         YlIQ==
X-Gm-Message-State: AMke39mS1ZXTPtzsSgRvgCRTI0xcvx/xX21NRCHLpS0AtQ5zM1S5JuX5RfEvA/l10w0yDw==
X-Received: by 10.98.252.211 with SMTP id e202mr23059861pfh.118.1488829615329;
        Mon, 06 Mar 2017 11:46:55 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id q194sm41112839pfq.43.2017.03.06.11.46.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:54 -0800 (PST)
Date: Tue, 7 Mar 2017 01:16:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <93044d0f4dbd3f7c36a189708231d8471dce079d.1488829304.git.aishpant@gmail.com>
References: <cover.1488829304.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488829304.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d2686b4..c5f3be8 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -435,7 +435,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


