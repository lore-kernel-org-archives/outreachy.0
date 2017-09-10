X-GM-THRID: 6463987902323884032
X-Received: by 10.129.202.16 with SMTP id p16mr4931895ywi.67.1505014463081;
        Sat, 09 Sep 2017 20:34:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.130.67 with SMTP id t64ls3618878itd.5.canary-gmail; Sat, 09
 Sep 2017 20:34:22 -0700 (PDT)
X-Received: by 10.129.53.68 with SMTP id c65mr4382579ywa.16.1505014462326;
        Sat, 09 Sep 2017 20:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505014462; cv=none;
        d=google.com; s=arc-20160816;
        b=qHpilUPRtsl+cXP9bl6u8rihFkDtFrgcbfbquS1p6ym5bxzFkW2CHdt9Dy8MB8DuL7
         xzXgEbcNAY7UD68BOTS62UFO5dZCq0BsBAwhR8BeEsQOIs1MmMDCEwEqb8dtmPy4apPU
         sFLTShszYhrbyMxa4Y8f9ToAfjuaPDsGGWni8yIpdmbX33qmY0kSj1mwRwMEXp4lV6TE
         8XzW5SU8o8RDa1YkIoDBdhSCEeowVdTcER3PH/+L0VseQwDcfIiYVp0mzzBgZgG0amV+
         RypJ4RILvJOSwc7GPJ0TW3A2fb45q/eHvpZj3VP7cNcCzIZ4gojZ8StVyt8g96i+qqeE
         XuNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=APP/l3Oj69Cj/HzhoFSc0qjdpv5lldoPpmGEhVo4v1I=;
        b=zzb2MkkOGn/OOm7znb8P+LOsY91u8fjA8L7/bygvDgiYPnpxNlayGtLhqmqSKVLC1L
         Ckpw57VvAxgXW3UBeauk0C+F/Y6jfiUaRGjzmC7SPShASM98pzHjaoQz8lfNtw7LpEQ1
         TmQiwj6qlB+yc6vYTu6g2MP85LW/Uw5CSBV/uwjy+hwH2wMmZEye69UHrp8oltaR9/j2
         B08nTja1vgGn9tJbqRKVsKk1jETgqXf27sSJKDDWaLuFBLSa66LcasAZO864UeSrarN5
         EYtUE/2zYmaxnYEfE6TwyyIhJBoSsE8c0ZFyt+XLFRRnPFN4P3bq5S73UR5TCBC+f9nt
         D9JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kBzXh+8i;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g19si616675pfd.14.2017.09.09.20.34.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 20:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kBzXh+8i;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so3087908pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 20:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=APP/l3Oj69Cj/HzhoFSc0qjdpv5lldoPpmGEhVo4v1I=;
        b=kBzXh+8ib5jYY2/MC6n7bCdng0ge+vwhEhRJIaoRmedMQeq+8aOuW1eUcmDKhhNHBX
         M57+8Ip7bAkBUehvN8yz6Z+t+KSZjEK0IUw5xY7OJ+GBRiwjjs7yeU81Qlfj6W7Edi47
         xjTyCoh91DCR6hrWYgaOc0lsBxVUakQ7Vhx4DoqlYfDt0Bo380VDQIhrNdsD7zR7FJlS
         giDc83/c1L5qVbtfTRhmM2AZnGFQ+WhQT+rPGfyK/uO+Pt6m0SLGaFuyR6kTSlFPIGWe
         ESnvlYyvBN2NmHWcuqrkYvcNnPb27ujhfiMc9kqVHLMsr/VUHpctXbhMKlFlPxQLEZPq
         N7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=APP/l3Oj69Cj/HzhoFSc0qjdpv5lldoPpmGEhVo4v1I=;
        b=TpIACJIuuBCDhss3U2MRjj0Zth4Z8ACj9e1mDb61n/o/6i57Fft2421M+SiVJApvqf
         TjntaQYvrZAja8eoNDyRt7Cg3yh6zvQU2eAzzBrntQj2qYF/AflrNFvI7rpqieZX6a9v
         fUlNxoZrnLQD/cqC9pAv9uiXpFeHYiilpOGYRao2GVlEa3veXdkOKsX1y8LO046OG63m
         8aTdyZssY0n9uA9MP+k9HsBB6xdaTujXqqnBx6RU/5wEaqpjWJtszcsfyuJTvR/Gx5VX
         hE2PeHIb4QZN+bTtXTZbZiIOoXFFGE329B/ZqrWCmDQ8TxLg7kTWtdmrAXnw5wU2nnQD
         ttGw==
X-Gm-Message-State: AHPjjUhSSPSzVR6sUA1PP2Kj6/4RyKSaAuOtvD5AETtIoWE3ioLQP66O
	e5uALef/aS7k4Nf8l74=
X-Google-Smtp-Source: ADKCNb50C8raPIedGZMdK5gov2xBM6woe/ndmQSrrXd7nPtWGXoq8Fr0kNFvQid25AQZfJhrHC+Y5g==
X-Received: by 10.99.123.91 with SMTP id k27mr7842147pgn.23.1505014461706;
        Sat, 09 Sep 2017 20:34:21 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id w24sm9383735pfl.83.2017.09.09.20.34.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 20:34:20 -0700 (PDT)
Date: Sun, 10 Sep 2017 09:04:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vc04_services: bcm2835-camera: Add blank line after
 declarations
Message-ID: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch adds a blank line after declarations. This enhances readability.

Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 4360db6..7a7b00e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1982,6 +1982,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	struct vchiq_mmal_instance *instance;
 	static VCHI_CONNECTION_T *vchi_connection;
 	static VCHI_INSTANCE_T vchi_instance;
+
 	SERVICE_CREATION_T params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
 		.service_id		= VC_MMAL_SERVER_NAME,
-- 
2.7.4


