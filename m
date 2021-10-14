X-GM-THRID: 7019053574676021248
X-Received: by 2002:a17:902:c713:b0:13f:295d:8064 with SMTP id p19-20020a170902c71300b0013f295d8064mr7716530plp.74.1634250761608;
        Thu, 14 Oct 2021 15:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:1392:: with SMTP id t18ls2760412pfg.11.gmail; Thu,
 14 Oct 2021 15:32:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw50GI7rOssohzisc49wwgzMDA9vV1cQjv9mmgjR73/9MsW+bjm35Du9jgch9wE1zo3aKIL
X-Received: by 2002:a05:6a00:815:b0:44d:2193:f688 with SMTP id m21-20020a056a00081500b0044d2193f688mr7696710pfk.4.1634250760422;
        Thu, 14 Oct 2021 15:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634250760; cv=none;
        d=google.com; s=arc-20160816;
        b=ahE27K6aAWA4GnXRAy8S3ZI4bCUO0F6yUrFyQ+YFRyH0H0IAq58eqa7jOHx2qXFFE8
         wDDLE3S1IgCJu605x0hMC6Ry1a2TS2zToHMt43EpPMKhWfvoz/6UhOAxIadNNrrXBnCt
         X6hoYDRewTM0+pvzsW21czeE/QLmP5RimuxW4Meruo4/T3BWDHFdojBxq5b6G+h36FdY
         P9RcR6sWBUzyo0Cgw9U0VJeqEu5OFSjuSDEVktc+0nOaVL0gEhe7riveaLvwIvGarmac
         Hm65ik5Iy7xTT2A19v3qa4+xNZJ2Hms8DVO7PtjaefALQ7R4ulyrvZLIx0DCWFr8GuNK
         FgPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iEph8p4I8zhpdTceXospMI3hSEvSJ9T5jF/S5ktEhio=;
        b=iokNr3091KeyuQcxLEw1Xn+nPSnaTqhNMarCpvc6iptOaS2VgSB1k1HFDWXeoG4bgW
         nDwitoFQ1iCa97KnU/5LhFtcETW9AmFljmZAOjXOxBe73ocz7M2lmAZ0l7Db3hHtGXug
         uemMI2Jv4ub2a6POihEJcQbxJIqTFn96qhw6Y1r08vXkNgRRP6d0Cb6opjHO12Ms2GPW
         pRuv0LL/jtr6LNypsjaWxqkNCPAeiSfOU5z5lSdrz0RNxu7CvVoJPlyKAWPd9ExXWdEt
         SkU8Qe3jwFtbUJo+vkm7Ahk/Q5lmfuUYKyeV+OLDrvYlTqyCCCJMpQZvxCru6I/WWkL8
         CqmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=J6Yvd26h;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id y3si1229708pjt.1.2021.10.14.15.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 15:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=J6Yvd26h;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id c29so6730140pfp.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Oct 2021 15:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iEph8p4I8zhpdTceXospMI3hSEvSJ9T5jF/S5ktEhio=;
        b=J6Yvd26hbH3L+h+m3SafNQ30XNtxQ6jG/vVlZK7WeAOSvg4/u/DTPIzcvgrtOLvsBM
         bWXdHE+jnRi6l1SQ7VE7oZy4vZ8ArR0wQ0/CSc4XkdmxCYdZ8XKVpBZtdXdvOTlGau6u
         FbabD/XKnCXIeXnlnUaFZKn1ERjCJkXssqHWXpg/dFpHVw3MNB1SwYjoIhRw2pnJcqQH
         w5QcQNu8g/HL3hnPhrV5MruAU1VgmtOz23diF4iQ4btGomjWzecVlxMN1V7oIjU2XvIQ
         pUb+lBxNKlbxihbsVW99XxKcV8P1RX8GmKfZxlUzsCljM7432CO3Nxf//DaSeLKvzG/D
         bh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iEph8p4I8zhpdTceXospMI3hSEvSJ9T5jF/S5ktEhio=;
        b=Xzf+lPMlPTUv3rrvEeJidACkNhtMtCfOmX0X5zXx/6luplZuA0xLc3EKNOg1G8YYMV
         ySxgkc0AZ7PY2UntzLliAljsrslJetGJZw+3d72jIxDLx+QDFC9g8kh5d3AVIkNupgQR
         qBCJy2knaC7sFcydtBkp+ytMu0n7FaDLDdsJC4+WZhF5EmpYPDjfkbcQl/qD07+2WGKm
         CTHe2VLgCtzEHKwPVVDDe2CVyoh8zyBbbYbNNjnbCj6Lur5r6yEOcHqtbDQwicfwJzcC
         2KIWLOYFtnE6SR5IB6xt8feDwDNW0EIKNTNzhh3E4WiVWDwC0cYGIoRxzajH7Q2cmd+Z
         nS3Q==
X-Gm-Message-State: AOAM530R/Bw4DgiEa+r8ejjoer5FAhqoG4ziYwRWvnRzvA1/+GI6Q7Uc
	AzhVynNgw4RBDT6ZfeMZVs0=
X-Received: by 2002:a62:641:0:b0:44b:74bb:294c with SMTP id 62-20020a620641000000b0044b74bb294cmr7989194pfg.12.1634250760119;
        Thu, 14 Oct 2021 15:32:40 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:1fe0:8576:d777:cdf7:ff9b:ef62])
        by smtp.googlemail.com with ESMTPSA id k3sm9773770pjg.43.2021.10.14.15.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 15:32:39 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: mike.rapoport@gmail.com,
	outreachy-kernel@googlegroups.com,
	mchehab@kernel.org,
	sakari.ailus@linux.intel.com,
	gregkh@linuxfoundation.org,
	kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>
Subject: [PATCH] staging : media : atomisp : input_system.c : fixes the error of control reaches end of non-void function [-Werror=return-type]
Date: Fri, 15 Oct 2021 04:00:09 +0530
Message-Id: <20211014223007.596789-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The compiler cannot tell from that code if the function will ever reach
the end and still return something. To make that clear, replaced the last
line with just "else" which fixes the error of "error: control reaches end of non-void function [-Werror=return-type]"

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 .../media/atomisp/pci/hive_isp_css_common/host/input_system.c    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
index 8e085dda0c18..91bad8f34efc 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
@@ -1587,6 +1587,7 @@ static input_system_err_t input_system_configure_channel_sensor(
 	status = set_source_type(&config.source_type, channel.source_type,
 				 &config.source_type_flags);
 	if (status != INPUT_SYSTEM_ERR_NO_ERROR) return status;
+	else return status;
 
 	// Check for conflicts on source (implicitly on multicast, capture unit and input buffer).
 
-- 
2.25.1


