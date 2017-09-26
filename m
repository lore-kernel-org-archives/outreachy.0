X-GM-THRID: 6470000031137005568
X-Received: by 10.202.226.211 with SMTP id z202mr5670505oig.66.1506414319195;
        Tue, 26 Sep 2017 01:25:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.86.70 with SMTP id k67ls6380136oib.7.gmail; Tue, 26 Sep
 2017 01:25:18 -0700 (PDT)
X-Received: by 10.157.36.232 with SMTP id z95mr839988ota.36.1506414318547;
        Tue, 26 Sep 2017 01:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414318; cv=none;
        d=google.com; s=arc-20160816;
        b=z8zHEcyCFLeYZz8+zgVwws0BjXICGwaxbbHCtEX1XBw8z+qwT29OCS5RXBMTuqKpDX
         VEqyNoX7D7g6IRfbhuHgy06TMfKGg87l45kcp7qw8OFGp51QZHpstm3JhZhIGGaOVpBl
         AsUmizqUer2XC0lqgy+WZ+kznpghazJICwmj1uQDNTEuvEM70PSCJKgUyjxxSjrz3fSx
         VEw046lhFm5powrUobyoCCFhd7qcyZAKRN0IE/1fjER3viWdvSNmx53aPJIaVimy/hHO
         JXa7iObbYwZ5YmX04prt7O7kfGfD3thL/PBxFExndvnKKUgKMjxZkFo8qU7D//sohVW0
         cMOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=ntzqoKhbRazmx/Z30DmDWB74EL9TKq5i14CA+PxxyIM=;
        b=vn+cdtwT0C2UgQfLLnvLKALyPy+GBiNLdXig7baVNxyUkLsMjGspiC0otan5SAjg0/
         ZeLHdFzSSm3m4jzF6UXi1sbEWZPHHnBY9ZT14BQ4EgfvhxSsNZ4jWIfMZToI2mipBpdK
         tTtRGyuVH+z5BCs7gi/LgQ+DqB0QvftCDNEl4czu/2f+7UpR3IP6+bDNtHqe7mFpFNHc
         B1jYd5+QDNl+2qARBguoifUNh20Kytnh2HX83AFHNzauMO0JSJZ+Nd9hTrnayDl+wAyU
         C7om6kMENxTQNfaAck4ZEP0fkVU9AU+UlJUSpoljwH0AzxOeUZ8OxlJJ97OE7iBHOLCk
         H7CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uJDpju9E;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id u4si322664ywc.2.2017.09.26.01.25.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uJDpju9E;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id g32so4186499ioj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ntzqoKhbRazmx/Z30DmDWB74EL9TKq5i14CA+PxxyIM=;
        b=uJDpju9EJDkor6CtVdQQwCaJS+scGERyabJcJIwF4RMw2zJadTlitIMKA/qW+PVpEp
         xyOPgy9h/e/V6813QpzehJcJ2TO+ipx0t6CjkwgJDGyliFTcQ/ps91oyd8hV+vON/OxO
         C2mMncJps9XOZqnLwBoWe702SWdAd0f8rLGrGqtx1dW0ufa0/lV1LsYeRcfkBgceMNNm
         Fzao0kE2GTpMcsJwv5imLMSLLzaVVs9ZlnUV1DMz0TyTbPpz7HUiqguhEnZ9fQsWkBql
         FMFTKGnIwKGacecISNW0jQEiTgpHY9TiFvL9qI7fg6FuPRK5TrobvmqfTZZ6WaZBOtsn
         Hi4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ntzqoKhbRazmx/Z30DmDWB74EL9TKq5i14CA+PxxyIM=;
        b=UCZu81pAI/j3hjp4EVZ0Aq+9fOOnOh+qldYNvHe40bJj5KMtsmYXbK09gd5xXGEsoE
         vnqeH1PPgGPm/paXMWOdTagSnIi9VTtX4wJBqmlfXel+iU2HG/QMH9McsOMyaO0bylw8
         JoBuMPZ9UapuLtiTp+1lH+wRjYX7dQ8sNe4lIW32ubEyeqEXtxDIZ9L0y9LCyk8COFBS
         oZ/2J4HHzWL/iZKrDj9EcP3eufWXtf4UXcO1kCQTEt9d6Ja0XFMjMbljkkYpwlkLY3t3
         KM9Ir9MeWvgpRNSUQGkb/PfyFbGzXBbMbFsGOmgkqdpkvWdYvs0WsKpOFDy5+jngvp3l
         PGxA==
X-Gm-Message-State: AHPjjUif0sQHx6W4wkoSqxC8IUJHLSTsrYKGVCWwxWcOyyhKCNyqSTBs
	G2m3Vq4YLqNsH6HR7tGZLbN4DdJUOuc=
X-Google-Smtp-Source: AOwi7QBwDpO3GbYmLTN/jVecI4UIPjAmyzsdUh1xHSrgD/BXxbxREH0g4ZD7FQqZh52B2LCX+SRonQ==
X-Received: by 10.107.173.34 with SMTP id w34mr13650711ioe.14.1506414318310;
        Tue, 26 Sep 2017 01:25:18 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id l73sm797705ita.5.2017.09.26.01.25.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:25:18 -0700 (PDT)
Date: Tue, 26 Sep 2017 13:55:12 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: vc04_services: fix typos
Message-ID: <14b2c42fe27d209a1833d6fb7802c9a97142fa7e.1506413998.git.keerthigd4990@gmail.com>
References: <cover.1506413998.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506413998.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

some words are misspelled. Fix typos.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 52cdf4d..1144d9d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -70,7 +70,7 @@ enum mmal_msg_type {
 
 /* port action request messages differ depending on the action type */
 enum mmal_msg_port_action_type {
-	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unkown action */
+	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unknown action */
 	MMAL_MSG_PORT_ACTION_TYPE_ENABLE,           /* Enable a port */
 	MMAL_MSG_PORT_ACTION_TYPE_DISABLE,          /* Disable a port */
 	MMAL_MSG_PORT_ACTION_TYPE_FLUSH,            /* Flush a port */
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ee92189..66a3a06 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -187,7 +187,7 @@ extern int32_t vchi_service_create( VCHI_INSTANCE_T instance_handle,
                                     SERVICE_CREATION_T *setup,
                                     VCHI_SERVICE_HANDLE_T *handle );
 
-// Routine to destory a service
+// Routine to destroy a service
 extern int32_t vchi_service_destroy( const VCHI_SERVICE_HANDLE_T handle );
 
 // Routine to open a named service
-- 
2.7.4


