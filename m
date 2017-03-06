X-GM-THRID: 6394401254530875392
X-Received: by 10.13.219.76 with SMTP id d73mr7195557ywe.126.1488812612282;
        Mon, 06 Mar 2017 07:03:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls13939640otb.2.gmail; Mon, 06 Mar
 2017 07:03:31 -0800 (PST)
X-Received: by 10.31.5.144 with SMTP id 138mr3542827vkf.21.1488812611888;
        Mon, 06 Mar 2017 07:03:31 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si72138pfb.2.2017.03.06.07.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:31 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so3742038pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=D9krprNcWCO3LwmyS4WB4ouBLtBRLeX8nXqb6o7sC/2zgnEZXBqLX5fyO7vH7lmxpF
         F27540Qnr29X0QOYy3I6rpD+AEseJWSaIt8KgEBQmzPl0qgQRdHcTQGcgDMbM1Dx3QsK
         BRW8moAohddyDysYIHa7LfWeYsVBxyZRY4z6cto4RTIbuNlVxJXu4wXQVpRBvSOLZBlH
         yddvjINnu8KfTiBXo7ZNgrO+xQVnPcSxKYSqraAMDciTGGq/YI891w+ELvQ4A/fbtMCH
         8ooARIq2BKrivcJrV4bT/4e/3FQr7Jrd+gk6LxeSQqePQ6cboRmBF6nPnQIdJtC4gmDD
         7Jpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=41C8GJvVhsnFe/bC/sDyOY1NoZHjd0ajWlQzK40hYWw=;
        b=repGpN3XebkijyY4ZUfBfQqrrxozy+/9pJCIUtept1eAVYEmKIbgpex7OHxpSLtZ3w
         jWJJ9ZI1vT+optblHBMQdWQkmUIMYNaBEyrhbxj2F4k1ZyrYTwJEGQbBI5H1RSgr3nN0
         Qf7sv5vElqHDbkM5rNwe7jzMnCgOUgaHFGfXUTEMtxR8xeHflPR8AI8SiABduZTmkqEk
         olpDkh2uQe0WkQ7mP4feuFFJMN6HzA8ywbt8aiHckoowQCHbRIaS8M6qLpf28+apUc1B
         fQBa0hPYfCIW6K3xOjb83RzJjgpyQ6E9wct+3eu8czct2orxM7rc/RX0BAheYElMGfUy
         nWEg==
X-Gm-Message-State: AMke39kfziusgUeQPk8okv53SU7ugbo1+Abbph5rpkMgQ25zg2JXfUBbJun8flRO4L2E4Q==
X-Received: by 10.84.132.33 with SMTP id 30mr27144179ple.44.1488812611574;
        Mon, 06 Mar 2017 07:03:31 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id s4sm40212764pfi.74.2017.03.06.07.03.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:31 -0800 (PST)
Date: Mon, 6 Mar 2017 20:33:15 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: bcm2835-audio: replace null with error pointer
 value
Message-ID: <268cb7b0ba699ecf52cca746a1194b9e037fa795.1488811728.git.aishpant@gmail.com>
References: <cover.1488811728.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488811728.git.aishpant@gmail.com>
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


