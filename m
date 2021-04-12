X-GM-THRID: 6950266407606026240
X-Received: by 2002:a05:6512:b14:: with SMTP id w20mr19538485lfu.528.1618235001015;
        Mon, 12 Apr 2021 06:43:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls1280855lfa.0.gmail; Mon, 12
 Apr 2021 06:43:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytpSeX8bOPGgXAeAGwLESfsHJ3wJwR4z4a4ykozIDl+GiJl1hp1lgZQKLZGSfnEk168KSR
X-Received: by 2002:a05:6512:1081:: with SMTP id j1mr19068084lfg.569.1618234999270;
        Mon, 12 Apr 2021 06:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618234999; cv=none;
        d=google.com; s=arc-20160816;
        b=KsIm6EY4lB5jWOaL6nJT1DbpRpsvE2C5Dr/GIx5b7u6jrmO6wRCMuBaLu9cW5ZO8Xh
         aqQ6/EMtIfzoPdufmtYJSKlJ1tctBRtyckL/HGQThTEMqeibCSJMx5+3FbgUZOu70nrg
         epsgRSuPJbnYbZaLiS/LFVzbgc/XtKsvP6i0bTWDAImUwHOmQU7Y1NHtr1lCsTEhwi4h
         btBUa402VNfGJCiWoEcBP21BmUdf73PR28+8XbMa9o1McyHu+kXjbW4ImvZ75I1uMqBq
         o8INuZU9k6S1631vDVVfLRa8uZNM8Q85WYcdnsuFLJuBa33dgY35vMULgO9SnvbXlfpT
         siuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NycMU0cz3kJfBn80ZlCBYweE/JLtLsmBXUcJn2/DB0g=;
        b=KsM0b7NmuGwoiRdRlg1YcjB3rGotO9/tCAAX6J1g3XXqrzXkIyJW3XVP3OMWznQ6pb
         VkmTlqGQBMnvCMzc7wm1O0abDV7l4aJfKvH7PZBqpaq1vKe/YTH1sAmj5FGkm3q2HIV3
         4rNFp/9QFWmW2Nlf8elNzR20rMW1Cv4KffQ1c5Tzzo2SRYMtD3/W351dm+F/z5MQSoeM
         Myo78oNU02plHorxbFUBQxP3HbQpZ0ZgOX9fm/6IX+sA7b4v4TnHjn6B3UrRHMf9pc7w
         ipfFRFz2fEEBawyVy6cdHvPMFRQhR47AmKB4vvx203isBDSgjY7W2pZiNaqd6WxXrMqc
         up/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSNuqAES;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id v203si741186lfa.10.2021.04.12.06.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 06:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSNuqAES;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id 12so6843313wmf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 06:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NycMU0cz3kJfBn80ZlCBYweE/JLtLsmBXUcJn2/DB0g=;
        b=ZSNuqAESESzRNHrvcezSyPa8BAQkVixnafp2tzGO0dkZJ1EEUb8Wl/KCJX7e6j4jCG
         cKHd+NpbLjIZNNPbMqA7rW0fd4C+Ojc7tUQiSjdY3aB6WaklUf5Lvjxvp33rObgYMZfo
         KH33N3HrMQ1jwSbupofwA1/GhJdtsFAQpK17Psf3rNAM482IAXLbwwmBWeIsC7auKjBN
         VWa4ltBhdfq6cEpNWW4v282jdZlgnyU/tjK2oiebHrnRHnIomET3eSPKFhk+3bPo56rc
         aqai6Mo7EK7wJYm7qRijOAPLm36+oHlOSMvur3bltweo72qIP2meJR+HvR8IHI/GrMjC
         sqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NycMU0cz3kJfBn80ZlCBYweE/JLtLsmBXUcJn2/DB0g=;
        b=r98uSGtHMBoK2KU7+TFdGGDjfJ7dGK6m5COheUvRs1AJ+JnRkdk/sBsn3wOrCD1uzt
         eutSqC0Tplj6ZW87bR06oo8pfhTENwfoconZyfAfdPx4YAPD7g56eDbteXznBYu0k0p/
         D0bZbOpkneJGSs2EVgW0YHXsSJBIADqv8ID4QW5qJcjFECYTvK/risrBGA6maSqFX/PG
         EsQ4Lg8L5zDfrCTGrH+lb5PyKtg7qAPm32F7Sg8/HEDvYbmYB+GV9z6JZaVieOx9rsXy
         wpLBzDZ38K8C19NpI2P96+R+LSc7POKFWyrEKbjZDJDuU0ZzCSriwckq+uQZGNk2iBI9
         vbug==
X-Gm-Message-State: AOAM533AQ2B57CSi52eDhosm0LGmRMMnJgX4ulYQlksSbc3F1SkFgen/
	eQFj2p1OkPEGG3oyHkQipOc=
X-Received: by 2002:a05:600c:4f13:: with SMTP id l19mr25592568wmq.89.1618234998788;
        Mon, 12 Apr 2021 06:43:18 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:813f:b20e:675a:834d])
        by smtp.gmail.com with ESMTPSA id f6sm9313922wmf.28.2021.04.12.06.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 06:43:18 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: hverkuil@xs4all.nl,
	mchehab@kernel.org,
	sakari.ailus@linux.intel.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH] staging: media: atomisp: i2c: align line break to match with open parenthesis
Date: Mon, 12 Apr 2021 14:43:01 +0100
Message-Id: <20210412134301.11587-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Aligns line break with the remaining function arguments
to the open parenthesis.
Issue found by checkpatch in file atomisp-gc2235.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-gc2235.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
index 78147ffb6099..6ba4a8adff7c 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
@@ -171,8 +171,8 @@ static int __gc2235_buf_reg_array(struct i2c_client *client,
 }
 
 static int __gc2235_write_reg_is_consecutive(struct i2c_client *client,
-	struct gc2235_write_ctrl *ctrl,
-	const struct gc2235_reg *next)
+					     struct gc2235_write_ctrl *ctrl,
+					     const struct gc2235_reg *next)
 {
 	if (ctrl->index == 0)
 		return 1;
-- 
2.25.1


