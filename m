X-GM-THRID: 6394405934540521472
X-Received: by 10.237.59.226 with SMTP id s31mr4716603qte.31.1488813674197;
        Mon, 06 Mar 2017 07:21:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls894861otd.0.gmail; Mon, 06 Mar
 2017 07:21:13 -0800 (PST)
X-Received: by 10.200.5.152 with SMTP id a24mr3974999qth.14.1488813673746;
        Mon, 06 Mar 2017 07:21:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si84670pfk.0.2017.03.06.07.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so13505706pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RzdnLDvuN3OWWrKe09Gs2L1XWSfitulshWBWAEd+Ya8=;
        b=cCgRE12i78FezzVSEwASPH1qZWnXXL7JrULG/8XRktADvD1GRlkcqmkZifIKXfl/NK
         W3UJrseakMbc+ceqlt+6M/uLq+1zLeSAPOFzGM5Xw6Oc8hiKKs23I9Q8QdUwzAuT800c
         0IYL12VPiFUAukb5bDept8wscVT8HAhPO8S//rcuKXVcy6iLawoYxBFjyYUMXi2hjaYQ
         ioEE7GSEyrkKxdcpTuAccuOzyzcBdsMrAtPxvUJdjpV8JpFpNBQ/uIlPD9m4+4VcLrFd
         J19gGEDKFtj3I9mZaKBGZFI3kItq6o1ItMKYWRnBvJmxo+urPp0fKJHqodOXTEuqVl0y
         nbiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RzdnLDvuN3OWWrKe09Gs2L1XWSfitulshWBWAEd+Ya8=;
        b=tcSR7GHMUzfX1XVwPqwEhnvXVcUm8r+MtApyY2UDSvP7LqiaaAl7F739RvXgTJu5/L
         jcHO+2Jd7L697YlgSKF1hxXr7LB+zH0nODtQij8NuXyAGCG2lsYIOpxcl6+SckSpGDKT
         I+NzkHrcG+Tp/fLKvP2rBb7gm36QjTPISrMbvRI4gLEjXl94V/w7w6n9uo+TXuhx4f1W
         NH497m9iVP8aLS8tTbc5hP6BXmIXIeg15JvdmvjAZh4syOAXdaoGpwI5cH877gAbn9q/
         8VNbbdCHYL3ges/tqwg0R6kFkG5w3fK5stLsqTi+Ov9ObmKYkQ9+mrsZmSs9/9b2Psmn
         +cFA==
X-Gm-Message-State: AMke39k463EbpVpcxg5CiUk4YRwVY0Dso3PlAMSnIyFp9p0ya+KsxG/pTuNVUK54nZlwPA==
X-Received: by 10.98.158.71 with SMTP id s68mr22275918pfd.159.1488813673325;
        Mon, 06 Mar 2017 07:21:13 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id q73sm40272721pfa.129.2017.03.06.07.21.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:21:12 -0800 (PST)
Date: Mon, 6 Mar 2017 20:50:55 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: bcm2835-camera: replace kmalloc and memset with
 kzalloc
Message-ID: <1df03618ee2857c159255ead5e5a6b06b53d7290.1488813479.git.aishpant@gmail.com>
References: <cover.1488813479.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488813479.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces kmalloc and memset with kzalloc

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index ca6e9eb..ded9a99 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -168,9 +168,8 @@ static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
 {
 	struct mmal_msg_context *msg_context;
 
-	/* todo: should this be allocated from a pool to avoid kmalloc */
-	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
-	memset(msg_context, 0, sizeof(*msg_context));
+	/* todo: should this be allocated from a pool to avoid kzalloc */
+	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
 
 	return msg_context;
 }
-- 
2.7.4


