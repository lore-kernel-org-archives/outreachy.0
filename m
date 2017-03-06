X-GM-THRID: 6394401254530875392
X-Received: by 10.129.32.68 with SMTP id g65mr1619121ywg.154.1488829605073;
        Mon, 06 Mar 2017 11:46:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls12299385oth.45.gmail; Mon, 06 Mar
 2017 11:46:44 -0800 (PST)
X-Received: by 10.157.56.155 with SMTP id p27mr7625823otc.124.1488829604765;
        Mon, 06 Mar 2017 11:46:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com. [74.125.83.65])
        by gmr-mx.google.com with ESMTPS id y90si208979pfa.6.2017.03.06.11.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 74.125.83.65 as permitted sender) client-ip=74.125.83.65;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 74.125.83.65 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-f65.google.com with SMTP id 25so20627798pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=u+iaX3iNkbuLLmfy620SSwjjHxnwLKbUEtTcde69SeRbroiXwsgF/mTjiKhpS48mfv
         oDkSsec30oYbIUcJ1T8JHj+qb7ibhGEHgQa6zTtAVw7w1KHxFka0bmt+ZXcwjS0uC1Xx
         Y9NvqPKAjFZFksWtItBdRV2DUuxamUKIFYNLTjfCx/1jaGCiZmrQJY+W++nwxM92yswr
         ffrXgXIrA3ccHvKrDbI2kwo5iYi4tKwKBz5VW6HNI8q2Aqp3AAG3lilfmb2WDV8mZO7d
         TMiy9QEGgiNuzB7ifaEc054vlJB8luODPL4v/oVYCu899xEu028eP85HP+d8TvXJfRxO
         4L+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=gTWu2J+wpy4d5awM8aYUsJo8hpsE1AGyOxXwIpu5y4AwoK3R03U9RNcCput+U3hdRz
         23gg8fMVkFF5HfpGW7O2E0NaIXUPQQJZ9R5U6CcypGs1OOY5UlkhHWFK2pzbvNEkBL3z
         fzjy9Z1vxGVJS5NQfRzCq4t8xqC3bArVp/ibIhpOYzXvMjBsFCJkSc39Tq+L9JbHsO7Y
         aBxa26mEk9lDJB/tP5+BBfQclwnEg+NG1u0zkYSkC2L+0VXXZ1N0t8icHYt1Y21RqqWP
         K6Vv/Lipirt11k60J7eO6qDyIEfpqtUl2e7kRw6UQXJ1GvCYKQcjT03zsz0qslI6ki3p
         KEHA==
X-Gm-Message-State: AMke39loRN9uLRPIRIpTe8HtGZTgAb113wHgJJJNfutTToGtC70D5SZevXVSMVoDaOnS1Q==
X-Received: by 10.84.233.206 with SMTP id m14mr29218349pln.153.1488829604491;
        Mon, 06 Mar 2017 11:46:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id h71sm41168702pfj.65.2017.03.06.11.46.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:46:44 -0800 (PST)
Date: Tue, 7 Mar 2017 01:16:40 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: bcm2835-audio: replace null with error
 pointer value
Message-ID: <268cb7b0ba699ecf52cca746a1194b9e037fa795.1488829304.git.aishpant@gmail.com>
References: <cover.1488829304.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488829304.git.aishpant@gmail.com>
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


