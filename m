X-GM-THRID: 6470000031137005568
X-Received: by 10.98.76.206 with SMTP id e75mr301711pfj.10.1506534620721;
        Wed, 27 Sep 2017 10:50:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls631508plk.12.gmail; Wed, 27 Sep
 2017 10:50:19 -0700 (PDT)
X-Received: by 10.99.114.19 with SMTP id n19mr368160pgc.91.1506534619356;
        Wed, 27 Sep 2017 10:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506534619; cv=none;
        d=google.com; s=arc-20160816;
        b=jm6BFVxS33bYbJObyczCFuIyixcgWwU02jMXgrC/QLxpghpNLhcS8YPvIspJaEsDgu
         vJkqdt6f34VL9QGMiN6tzKpp23At8/DWBANt1WWgHztlTZOprbY/vFGvgGdlm22yphAi
         o7ItOyNrbWVFWo7OSuvbbUFVDVtJ+QReSymW0GF8M/1xv4JNcVHr1roECt1UM0oD36Z6
         U5+ua3hLS2WMQVPW1Qsy5x3ILMZOiXHs8Z6USC/59EhvYd1hkvuolT8GpNr9GhR6jPQN
         1+hUir1bctBEUDth0J7cFAKu+IEeLTnRS+mWrs8dHp4dtiB5WMBHr0eV6qNsbdh39erm
         PLUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7WlLLiPoOpyglRDxBkbQ1WTzCoIs2jSZz8xVOpdE1Mo=;
        b=jSeIlk4mOxGHIiFRwF47G1cVgPNUkfi7ghZSRcUNhzvn6wW1fzxQsziIGlb/m0bxz4
         wyXrIIamuR5+Ls+UVn1Qgd/sJZnBV7Ff84FKjqMrk+5t76MvDbSsb890SW3uNs3Z4Mf0
         ik0RiHucTzjJVBhx8ZkAN6nrtoAvjIWE9WMRCe/oVYeVmzz0KiDoFkPbgxxMCch2Xfp0
         kb6hSLTJFUzhW1/zMs5ThtNUEKKx9AMr0ZhRdKF+0OEYAlGbKTHe1kmLeVhfdhOkMw9i
         9Gh4x14R8S33F8k1/KigFUQ6ONzi/qqjy/FkHdhxWdgNnd4feKNqnAPZ4XCXpK+sNKI+
         K1WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iT5eGRtz;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id p73si885921pfk.27.2017.09.27.10.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iT5eGRtz;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i23so7360144pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 10:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7WlLLiPoOpyglRDxBkbQ1WTzCoIs2jSZz8xVOpdE1Mo=;
        b=iT5eGRtzbX/sz2JQitbhshOZrbs5+bokaQgVFM67c12XOWPCCIVBb5oXHEfqjm/Epj
         AGpZhBG3+8uxtXBkYyKKTGWuCTmDdsSGLnuyaK6cZLs4Tqt04029ue7b/fEQpcw6slnm
         5BdE2zzQ6DEmcSze44Av+xuidPxC9S2AE0x0vBciSWik1Aq/VwA+d6Sgqqw2de6/H8hu
         xa80mK7KzMPu5vOnS71OeshNq+34OWR0+PjzK0wPUgC6RCt4NUXA3JTRO+9xnSJq/e+m
         12lM9NQYRQNm0PH3zgGK0G1Qsu2EPVW/KhAd/DJU0GbgbSumh1G17xGhF/7SGrMoOhwQ
         ayAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7WlLLiPoOpyglRDxBkbQ1WTzCoIs2jSZz8xVOpdE1Mo=;
        b=ofWcZHcn4r1Q8bOQcRW9RtoONsJ7RfP9jZhVLg4uLMWTSLH/D9wumt9pOmqJCgTare
         ghsMu9ASK7dNxc6XeszlKvDrrBqW4D623kubAF9JdKAzXwOoCmCkEIh5s8jRxK6uCRKk
         jgDRjKqZkLvuLgSiSlnsD13aJVks5ulMhjiFZPhPw+sRLjyCz15SeLp7k7a3wB0quIvS
         Adj8s8AeHJTcSVbWupig5+ncvF4fshE/d9GJQ9rnhT9D3D6oVK8xZFzhxM0QmJggsTdS
         +/HhWpBDN/CXjKbtnMsOg/AMPG+V5A/+CyvXi7P4W9f6Szja/sLFfJO6KrHb1cwCwSuT
         +8XA==
X-Gm-Message-State: AHPjjUikMMfAzvuqmsWmVK1+5l6huDq7U1j4m3Cbl9YErDRvo0eqtM0i
	YOad+G/iFiHSKQaoPAnbtwD73uVF
X-Google-Smtp-Source: AOwi7QCgjmAN69q/v3Cb2xhIVATHMMrQM/V9VNFcWD2K+DaFInOR6sKd3cd15Zl5eSpyUKrM4lYsTQ==
X-Received: by 10.84.230.134 with SMTP id e6mr1896675plk.46.1506534619201;
        Wed, 27 Sep 2017 10:50:19 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id m5sm22542419pfg.12.2017.09.27.10.50.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 10:50:18 -0700 (PDT)
Date: Wed, 27 Sep 2017 23:20:13 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: vc04_services: fix typos
Message-ID: <4e680bd818dbb437c6abd06e88ea2b7c7c57547c.1506534236.git.keerthigd4990@gmail.com>
References: <cover.1506534236.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506534236.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Some words are misspelled. Fix typos.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 changes in v2:
 *No changes

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


