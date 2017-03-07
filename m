X-GM-THRID: 6394401254530875392
X-Received: by 10.107.168.80 with SMTP id r77mr692732ioe.22.1488906714963;
        Tue, 07 Mar 2017 09:11:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls3348914itg.18.canary-gmail; Tue, 07
 Mar 2017 09:11:54 -0800 (PST)
X-Received: by 10.99.44.131 with SMTP id s125mr689208pgs.150.1488906714445;
        Tue, 07 Mar 2017 09:11:54 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si119320pfz.1.2017.03.07.09.11.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:11:54 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so729488pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=sDC/HcEIJ2bZaeBkxNXOnyolG+hcEg3BTVon9VDokpDZJy+mqZiCaDrBHVDINLOZ36
         CZhqo0YA+HvHrCg5Cj8an7Cu8kyDriz6dC582kbx7W71uSSj8K94BR5+4FVGHEZn+I8M
         nCLRLlQOqtFfHL3K7fnKqlk+P+v7YAFlWBw1K6iEBPkmRqgfn5s/Rth3zH5mk6LPHco8
         G+TanTUeNORW1dsDx1S5vgiNCXcG3jaCyj8GnBYRw7LAlVrCT4d6VX9d6U9tr9hyObee
         2M1XG62W1mtIwzkviwLZHY57xWmNoX/oE10LJQYOS6KMrjdbObKvRBOaR2CwOoKWlSkY
         DhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=h9aoJjn7zCSj1Pkjj2bqWl0ob9Ow/8yFS/2gWc5n74t2HBGOjcC1NqDUYSM8KQNV8a
         8jdDXBVqRyMH2TuxA7y7fh77k86VVYJeSJXG+RcnHf4lJe1FOKNQ+1KZ3ypN5MT73Q8s
         RDjJyrO4u5+u2t8VkEv3HjZyj4F2tN6l8SyGF6qbmHjxhG0dxVzboPKbznNpGwxlVPCI
         HhyzTne8OzMsmdAdPMWJcod55IS8d5QwF0sRlHtTVDB8myW4Gf/4/iuQY3UYd9Ddzpaa
         f7kpC4OtdANFGYKZHVwLz0No1BBBi8EeKmy/Q1m40HJMxaStg8X7vOdwpS0G8IIOVEeV
         ae8A==
X-Gm-Message-State: AMke39kE7S7HrjlpNcpnWojDLLIe8uswcO1Uu44vb4dHRKfUUUorWQAZcV+RMJHhKgEkLw==
X-Received: by 10.99.124.75 with SMTP id l11mr1633765pgn.46.1488906714173;
        Tue, 07 Mar 2017 09:11:54 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id s3sm946720pgn.55.2017.03.07.09.11.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:11:53 -0800 (PST)
Date: Tue, 7 Mar 2017 22:41:43 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <6ddd7a676eb7ab993b0d1c268752c36722375d21.1488906373.git.aishpant@gmail.com>
References: <cover.1488906373.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488906373.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces NULL values returned by vc_vchi_audio_init(...) with
error pointer values:
	- Return ERR_PTR(-EINVAL) when too many instances of audio
	  service are initialised
	- Return ERR_PTR(-ENOMEM) when kzalloc fails
	- RETURN ERR_PTR(-EPERM) when vchi connections fail to open

Similarly, a NULL check where vc_vchi_audio_init(...) is called is
replaced by IS_ERR(..)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 005e287..d2686b4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -287,12 +287,12 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		LOG_ERR("%s: unsupported number of connections %u (max=%u)\n",
 			__func__, num_connections, VCHI_MAX_NUM_CONNECTIONS);
 
-		return NULL;
+		return ERR_PTR(-EINVAL);
 	}
 	/* Allocate memory for this instance */
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	instance->num_connections = num_connections;
 
@@ -341,7 +341,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 	kfree(instance);
 	LOG_ERR("%s: error\n", __func__);
 
-	return NULL;
+	return ERR_PTR(-EPERM);
 }
 
 static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
@@ -432,7 +432,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	/* Initialize an instance of the audio service */
 	instance = vc_vchi_audio_init(vchi_instance, &vchi_connection, 1);
 
-	if (!instance) {
+	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = -EPERM;
-- 
2.7.4


