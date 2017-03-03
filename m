X-GM-THRID: 6393338025823174656
X-Received: by 10.36.82.204 with SMTP id d195mr594639itb.32.1488565027460;
        Fri, 03 Mar 2017 10:17:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls10661803otn.25.gmail; Fri, 03 Mar
 2017 10:17:07 -0800 (PST)
X-Received: by 10.237.38.197 with SMTP id q63mr1194148qtd.37.1488565027110;
        Fri, 03 Mar 2017 10:17:07 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h79si192082pfh.2.2017.03.03.10.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10494016pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UTGdKqL7MdtPcXf6828DD/UJyXRkhKwKDEcj+w/nBLc=;
        b=E+WkJTrFN+af6jRyJTuu2rASY50Wf6oDSfigRtyjO12v0XkIApQqmIQtM3WeHvQpdK
         giNs8hrguRhBmYJmVlzGSA10EW1RZdElQwfCvH3dIv/Wry0cra+jlmDAuy6K4kHNjd6e
         HJQa5ym4px1WXkvbYLZcbAxxrzEP09WdU3xZJTv7wC/VwQ4IVrShKpVGXjr0azHDjXYF
         ttush2WWRAGFZMOxGxLB57f7PUj0aAbzzKxGMaPSR937GHbIwX7mcItP6HeJ20pjX9sO
         2PwW+bR/XpZOA9yrIuSK/AQwUlfo1y0RFQPMo/waV4sQ0bxq2UA0WCoX3WbgB4ZzJN50
         66qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UTGdKqL7MdtPcXf6828DD/UJyXRkhKwKDEcj+w/nBLc=;
        b=YWKqYCmgpyM365E++wfUogs+7vn33DRWlpkGq7TohvilF3LVNxupFs5u5YVLF29ONA
         4vMwr77m9FIf1gqVzKmdxf8zrM8ugiBxD6ZXXdHhfoXDMtSNrTCS3/YTQQFfMxu06mbX
         3h58i/4VuOYs1M5F4WZz23E+XGvD45s6zmTJ1Ph7LIzoIr3f8kue8vFqMMu1/OTecInS
         ovp5YmusExwNZZ50pgreCbucrOD8+amFE6ira+yyUbgI7NUZrIChT/f2y/tRN3zYH+wF
         V/U3btqAJrrHmWFcmdFwMXh4nPuFod7VeO9nPmthS1vtX//pX9SfJ7iOB6keIdeLBJFK
         zOsQ==
X-Gm-Message-State: AMke39lnN+BdOxMAt8QeAKIL2RcO+9r22cxIolt3bot+VgJdvVSZMKQ5CA2ysVEduyCeWg==
X-Received: by 10.84.140.131 with SMTP id 3mr6103958plt.151.1488565026860;
        Fri, 03 Mar 2017 10:17:06 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.136.156])
        by smtp.gmail.com with ESMTPSA id n189sm24691800pfn.108.2017.03.03.10.17.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:17:06 -0800 (PST)
Date: Fri, 3 Mar 2017 23:46:53 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: bcm2835-audio: remove spaces after cast
Message-ID: <f1a242383c649a40e9dbe685520d8efb0c46ba44.1488564925.git.aishpant@gmail.com>
References: <cover.1488564925.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488564925.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove instances of unnecessary blank space after cast in bcm2835-vchiq.c

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index df1f3dd..3cc75b3 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -125,7 +125,7 @@ static void my_wq_function(struct work_struct *work)
 		LOG_ERR(" Unexpected work: %p:%d\n", w->alsa_stream, w->cmd);
 		break;
 	}
-	kfree((void *) work);
+	kfree((void *)work);
 	LOG_DBG(" .. OUT %d\n", ret);
 }
 
@@ -854,7 +854,7 @@ static int bcm2835_audio_write_worker(struct bcm2835_alsa_stream *alsa_stream,
 				NULL);
 		} else {
 			while (count > 0) {
-				int bytes = min((int) m.u.write.max_packet, (int) count);
+				int bytes = min((int)m.u.write.max_packet, (int)count);
 
 				status = bcm2835_vchi_msg_queue(instance->vchi_handle[0],
 								src, bytes);
-- 
2.7.4


