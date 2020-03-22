X-GM-THRID: 6807150938444267520
X-Received: by 2002:a6b:6c09:: with SMTP id a9mr16919488ioh.60.1584913334026;
        Sun, 22 Mar 2020 14:42:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:e316:: with SMTP id u22ls429268ioc.4.gmail; Sun, 22 Mar
 2020 14:42:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtXdSdTM5PeqCRysAER0x/0WU71KZN0pCBQb4ALqEicnIW+nFqb8Q6aN17ggggqTmJfolgn
X-Received: by 2002:a5d:9142:: with SMTP id y2mr10542754ioq.185.1584913332772;
        Sun, 22 Mar 2020 14:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584913332; cv=none;
        d=google.com; s=arc-20160816;
        b=x2UkfFmGCvEKvacvWmq04eZMOj6s/86h11K2tQqQaeJ4yvL+hnlD1FqVbr/PH2nwEY
         0U+UtoJ6IUl5EFk/gjpDCio+7h6dueuS33Aq6w7QLnhmMFB8leoR0y0Cyem5GmTxwC7N
         yowjQTcgEM+0Q57Ai7Iw7ABgch8yTajzrUX/4kjf3RtzCQGCu6oEa179K6qcFpR2N+ba
         Sd2AGSANI7RKGm/SMGXar1vJQkmBaMjdA1xxaJkYg+mr13aYsp9p8eWtBCpavYGKFSBu
         R9JVoBHfeW3X0/x9IylgYnsx/eccelmi2MX1L94GgL4CnPzd8SnsLxwtC1Bkbdo866p1
         +91A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wQmvE/z+GY1tjI59+Is+YqbZ5drbkOwcVkpsEBbYNs4=;
        b=k3MI+eUOqLM1QN78nfirzp/ju2QuDclPOSItWIVoCtU2IONmDeXQMD2vtBlEb7ZB1U
         QpOWEGEDmQBjmUFfLkoJTq5cZ55Dwj9D33bgK9L8u4zWSoUAywMMLJ7+PI0bn4G2zMP0
         5wP6B1+f1D4EMj+9Rji4+jIafM16YzuZpL2I2vxuQXTzPkzRXaZkNFuKbNW6qrjU6ADH
         ywrCHpkXh/AHB/ign9T1a9EAJA3dwOGe2Arb4mnCZnH+KeBiSJoRXf4OTAolUlZBAo5A
         PmilKnortDOTxTvFImahy7WWeoweKZ+94fL3uR9rCA829V6n8Tj6KgnF/fil4zGVpy5S
         0Ylg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b03dYjji;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s201si799520ilc.0.2020.03.22.14.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 14:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b03dYjji;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i13so6479225pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 14:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wQmvE/z+GY1tjI59+Is+YqbZ5drbkOwcVkpsEBbYNs4=;
        b=b03dYjjiWMMpWwP2mk6Hxy3TNfDfvvZPTK5mXQL32bh29qg/vacP7I655aFaRySppS
         n1X8jeGxMPukdPpkGEQsNwdzH4y39WChEt66O/xht9jluGlFg5qa3LAv5JYvYEDwiKbp
         XSVZpDnk0DkIyO9AwFLflnEyr5neNVf6l02Dh0Crd+OtcJGqtK1rC8ho2KHrhqMobZ5m
         o5aVFhw2EUqsjfVc04ltAvC1O9gxioNJQMrdK4ci9jFgzlHkB1O1hjfClheRnyWwsfZz
         AnNS5fmrg54dZstZGR/gmfgRmJQMzUN9XxnE8hKtUvjygR8RBfoE/eTpmNm7sxh8IIP/
         0j7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wQmvE/z+GY1tjI59+Is+YqbZ5drbkOwcVkpsEBbYNs4=;
        b=i8HBfD9Yhb6bXqawtV+/b8UKkjF0T23KqdyBTobPQJbjY7ut5Drsk9f/qoAvqyd3l3
         /wXCJnH8/3YwSYnXQSt03aKCivR7Xxd49kTG3yyOXhdlAMhNCQ8KlDfpXOMBGqcZKeCF
         yD2e1Ar8ZvJxiYz64wleaNkBW6cffh9yW0/7l7ELmrBuOLwk8C24vO9jss0JPpf0hQSh
         ILJE4EKk7p5k5V3+/+BIeDtvEW1cbOtRJw/BSOiS4pi+0VKYmRoOFgPMmj0aVyH7Mi3d
         0NJReFASN5WBi8mUHarzTQjZtuMMVF7M0eJqvAdWjV1Rsqt/CDUr5drpOYzfB2FE5L9e
         Q5Wg==
X-Gm-Message-State: ANhLgQ2IZIu17UFTNUx3sjMXBaQBAOL63S3mMjYRZC//qvgj4zaB/mUr
	GTnt2e0d8NpCnbjCbdKNHmwJJeRI
X-Received: by 2002:a63:1404:: with SMTP id u4mr18739218pgl.172.1584913332018;
        Sun, 22 Mar 2020 14:42:12 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id k3sm11341331pfp.142.2020.03.22.14.42.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 14:42:11 -0700 (PDT)
Date: Mon, 23 Mar 2020 03:12:06 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] media: staging/intel-ipu3: Simplify single goto jump
Message-ID: <20200322214203.GA20307@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

On successful node setup, the code jumps to a cleanup label to perform
nodes cleanup. This only call to cleanup using goto label can be
included in the for / if blocks to make it look more associated.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index e8f33539a217..bd8cb7571038 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -1295,15 +1295,13 @@ static int imgu_v4l2_nodes_setup_pipe(struct imgu_device *imgu, int pipe)
 
 	for (i = 0; i < IMGU_NODE_NUM; i++) {
 		r = imgu_v4l2_node_setup(imgu, pipe, i);
-		if (r)
-			goto cleanup;
+		if (r) {
+			imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
+			return r;
+		}
 	}
 
 	return 0;
-
-cleanup:
-	imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
-	return r;
 }
 
 static void imgu_v4l2_subdev_cleanup(struct imgu_device *imgu, unsigned int i)
-- 
2.17.1


