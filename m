X-GM-THRID: 6394401254530875392
X-Received: by 10.13.243.65 with SMTP id c62mr2689823ywf.5.1488984606145;
        Wed, 08 Mar 2017 06:50:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.136 with SMTP id i130ls1030188ita.19.gmail; Wed, 08 Mar
 2017 06:50:05 -0800 (PST)
X-Received: by 10.99.105.67 with SMTP id e64mr3104165pgc.169.1488984605459;
        Wed, 08 Mar 2017 06:50:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si620315pfd.3.2017.03.08.06.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:50:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so3637042pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FFCdbOGmWYvRxMul7/FgmfcDviVKNimFXydsLvHcU1s=;
        b=t4uPArD5GH/yYACkOsHUvyFx8vzdD+qDmcpvd4mF0EbC/yokKM6Nb6pQZcX/JcxGgr
         N5LoBDBBpBzENZa3GrRS4YllhgZ5XU/PHzX55oHd2kfR9KcZtJmrpkj0Mo2OB3EN2tmh
         UnaZVjJ1VSklUacoaK3JU4GllD27mH45rp8KeebFPAWcOcyY70TcdeDOiBAzETAOLvHX
         Z7lTu7kae74PJO9lQTNo2fDBOSBiCXFVBLPPhNgsaaRpIpXLeNt/aNcUs+Wyjgx8aoOm
         SacCuVvdDKCTayBk5OsGXT88+I6ichd+qvB1KkvFCHw4nuIYQz6YAAhadU2zcDIE+uxh
         0zDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FFCdbOGmWYvRxMul7/FgmfcDviVKNimFXydsLvHcU1s=;
        b=Rpsr9hdIBf8eFWiI5dyYkSqjYHEXHxEUhrt9WsVEmRLsmEhQtD1bbfdT3JQO3l0vBK
         xf/eaEUAsfk/oebgCs/qXAo49PduXGXhM200yr71MeIJOQapNm2tRO9adR9J0sXTE9kT
         Y4grQ/ew61aY1aN3ddS5Hfw8dagXjwjQZmvPbk+Sw2UI+z2GGzPPlPx1vTmsIFPpG2Fb
         LcMlTu3WqNEyu/OEKGOFqKUuGuKb+rLMOumb+KO1Bv7E6pDYi4YTnRHKfcxTgagUV2dE
         pMYZyH+QT2dD3jxcaigO8CJWF4AcPODLAlsBueveooAYF35fP5bdb8MhVODZOnqdSjDT
         ZdAg==
X-Gm-Message-State: AMke39kp6QAtUrFnMZFJzvVzf2Npgz7cLXuulnARQth2QzMD/0XrNrlQKb/h31StsfGaNg==
X-Received: by 10.98.4.71 with SMTP id 68mr7539934pfe.92.1488984605011;
        Wed, 08 Mar 2017 06:50:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id d2sm6859622pgf.35.2017.03.08.06.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:50:04 -0800 (PST)
Date: Wed, 8 Mar 2017 20:20:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 7/8] staging: bcm2835-audio: fix memory leak in
 bcm2835_audio_open_connection()
Message-ID: <2eb49060dcf4112b917c0f7f7a7c3d6cecae7b49.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

In bcm2835_audio_open_connection(), if VCHI connection fails or
initialisation of VCHI audio instance fails vchi_instance needs to be
deallocated otherwise it will cause a memory leak.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 77657a0..560fa12 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -408,7 +408,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
 		ret = 0; // xxx todo -1;
-		goto err_free_mem;
+		goto err_init;
 	}
 
 	/* Initialize and create a VCHI connection */
@@ -419,7 +419,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_init;
 		}
 		ret = vchi_connect(NULL, 0, vchi_instance);
 		if (ret) {
@@ -427,7 +427,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 				__func__, ret);
 
 			ret = -EIO;
-			goto err_free_mem;
+			goto err_free_memory;
 		}
 		initted = 1;
 	}
@@ -439,7 +439,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
 		ret = PTR_ERR(instance);
-		goto err_free_mem;
+		goto err_free_memory;
 	}
 
 	instance->alsa_stream = alsa_stream;
@@ -447,9 +447,11 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 
 	LOG_DBG(" success !\n");
 	ret = 0;
-err_free_mem:
+err_init:
 	LOG_DBG(" .. OUT\n");
-
+	return ret;
+err_free_memory:
+	kfree(vchi_instance);
 	return ret;
 }
 
-- 
2.7.4


