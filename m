X-GM-THRID: 6811287541311864832
X-Received: by 2002:a5d:8f07:: with SMTP id f7mr5395394iof.170.1585876462786;
        Thu, 02 Apr 2020 18:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ef16:: with SMTP id k22ls1767806ioh.5.gmail; Thu, 02 Apr
 2020 18:14:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypID7ygjjBQjCWA3ZhESbkT3wvelxtb7FNBm69zAE713rtfi01728NU/tuYQhibEPU+pFdry
X-Received: by 2002:a05:6602:2352:: with SMTP id r18mr5476433iot.165.1585876461579;
        Thu, 02 Apr 2020 18:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585876461; cv=none;
        d=google.com; s=arc-20160816;
        b=M+pQKHc5uU7o6VbDYRHV8YWtSHU4ZtNufw8JB08Ltth1dRZXdbP7HRB5hts6W/UdBW
         Z4knL/6b0tz85yQQ8J5lH7STTqQU/vVN0WPE14k0Y4q4QiFoqKP/dU99uT456zDg+Rsu
         HgWdm913YXl5md622BadHUZEufH6ZTUuxkxxEY5Xv9JRjaZAIomNSQugWqT51xP+z0bU
         /DNLyyNc/VwxAsHf2RnvDn4LpLektGEk2CwQxQQ9E/QEIY3H2fPjX8CAii4QLa3Hfemy
         ypmOqhFe1FNs7Gadvj+9Mu4UUcEHLamqqvqtKA+2PD7a1ScMuuvDbbpUDFbYMUFWi1ny
         jrLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ryUvoN8jCd5YBUPZnh4eJgi+B3u6IQVeH4BPcfn7O+E=;
        b=Jq5x3bIZVf7GF7fcJWSxitcVDARIYGsJWZJ8Q2IpkeQiRt+ezGQsbn7BcUxgupLFSu
         EhSWhb6XaoPRQuYFmRp2dZ9MvXAI4HVADIMzEfHIQctqTFGtouX6wqw9/fQC8ABf/Tme
         TXfjFOzDU1fSeTGi44dZ2rGCBJxka2d6j55dCFaxbKaeIWKiSDvnLM2rCfIIxGvhl0XO
         O2Pa4Tw+LEo0s7S4XC1zWYCvTgy7dTgBrnri1EmIqz7QyXmWchjKwiMo7EIXSLaVJGbL
         6gy6Iyi7TWAUfzWjYoJo7vZ7981A1J6kbsJuRtUNqUhl9VHwFdsGEmHDDoepn0jnxTll
         eDyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7zqAqCs;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t125si568369iof.4.2020.04.02.18.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 18:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7zqAqCs;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id t28so5650684ott.5
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 18:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryUvoN8jCd5YBUPZnh4eJgi+B3u6IQVeH4BPcfn7O+E=;
        b=Z7zqAqCsxRzbSP0XUYcHRcMs8xLF+LTZCLd2Nc3KToRfuQye83OgwEyNRj9PcYUNGb
         EcAPP7AqUFe+mFTmfR5kPqygK30SwuyMI9jPoD6x6lZinFlKD2DBbF3+N4agdifG/sit
         DgD6pwuUYKOwJxZy4x/YpurrYoAnioApc2ZsEHdpIq2e7MpWzJm5uaB6KmzPFdE0Iobe
         jiMK2ugBkvu1ljfL4BhkgRgwogZwSaHkXpYbB84p4RQnehugQbXr6A4ibJGV+tuz3HLb
         5BnCgj1YyR1ThiHgN+6aTL31XJ59ME5kcCYcVuXSbHv58MhNR2BY5ZT1aBt2nu5Ii7yJ
         kKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryUvoN8jCd5YBUPZnh4eJgi+B3u6IQVeH4BPcfn7O+E=;
        b=g1cr1H691vs+iDdfm+BSCJ4tsaOQz73FxuVgP3t7cn39Lb71qkF1CcUqMsNy1VDkU4
         CJ07OoHYrFt2gJdGWIzHSzYNbEsLOjUs3amcoU2LE+XOYAlsEU7ECG/WjwKFpaKJ8FKy
         ZgZeh6D4sT2mFThm0M2IQbcQNdVQSlNp66eGpEY3e5GsVvBXUcHTVjWoUKEzMG0XJatH
         qAoP3DRz7N+rZSj5y2XRWTk/Xmd0lEHCe+GeuiZKr/XyiQiAGV3qbSUKYelmRGRv7xeF
         /cnxg69qH1F3++ieKJ1sQnQ32b6hQ12XrlpE3F15SluImTaFR7zZ73gNSyH1Me+7s9sG
         f6yA==
X-Gm-Message-State: AGi0PuZnZnbksIzecXS6IwCtsNffmG10CiMiJ9BBEtIOoZ/Df6BUWDJL
	ads6FK3E0l8b/qq3eukzemfylsCPMNWPDw==
X-Received: by 2002:a4a:e78b:: with SMTP id x11mr4924316oov.45.1585876461083;
        Thu, 02 Apr 2020 18:14:21 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id e64sm1804828oif.10.2020.04.02.18.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 18:14:20 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Harold=20Andr=C3=A9?= <harold.andre@gmx.fr>,
	YueHaibing <yuehaibing@huawei.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v2] staging: ralink-gdma: Remove blank line
Date: Thu,  2 Apr 2020 18:14:08 -0700
Message-Id: <20200403011408.860465-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There was an unneeded and inconsistent blank line. Likely
added because checkpatch got confused and was reporting a
wrong style issue. The blank line was likely added to
silence this warning.

Does not fix report. Still reports:
'Missing a blank line after declarations'
'+       struct tasklet_struct task;'
'+       volatile unsigned long chan_issued;'

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Change 'Move' to 'Remove' blank line
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>
    Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Note:
ralink-gdma does not build; even with make allyesconfig.
I did not find a menu option with make menuconfig.

 drivers/staging/ralink-gdma/ralink-gdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..0418af133b13 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -124,7 +124,6 @@ struct gdma_dma_dev {
 	struct tasklet_struct task;
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
-
 	struct gdma_dmaengine_chan chan[];
 };
 
-- 
2.25.1


