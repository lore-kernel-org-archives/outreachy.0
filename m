X-GM-THRID: 6675306415104458752
X-Received: by 2002:a1f:29c6:: with SMTP id p189mr9259573vkp.16.1554215896663;
        Tue, 02 Apr 2019 07:38:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254b:: with SMTP id l11ls2137935uan.1.gmail; Tue, 02 Apr
 2019 07:38:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTrsmx8lKCeYLa1VpWyfvk1nBF35DWmgs2CRTRBv3lNUv0fwCIHSlbb7PI+V+7mkG1UNQe
X-Received: by 2002:ab0:7718:: with SMTP id z24mr381816uaq.20.1554215896044;
        Tue, 02 Apr 2019 07:38:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554215896; cv=none;
        d=google.com; s=arc-20160816;
        b=eOvX7SfKx1PD2emGGsQAB/RsmIcq/bQcOOi0ZIVGpaTXGyHpTIhWhcjkbcQTcS2d2Y
         hljxxI8ki4Ovmt7P8kFwvPyN7WgHcW+tGgOjInqYz3CFb5v9qCUhwXcTLmZGJZvmsD48
         iYKTurci5FcnqhW/eMo5fNeZdl8qWPpMPhfrpyt8jRT8jbgI5MNj4fR3Bpwsu3beAUZe
         3hhDaa49zoc+CYr6X88MqNuqsSjqVIDmQSI2gE46LT9GakIBQaeyztFLhV1jMc4WcAP3
         6txGsHYoXs1C55TEjtoxM9a++G3uOVhWtou7fVZoaCgLlBz3aQN4nqTXTP/+/64TJbLL
         iZIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=/po0EISnhiE3SY7+NH7MWd0Pk7MoJ3yn2dqEvUAVeKk=;
        b=R11KZ8KPk8cGyim/fjMBRhsXygbCfzjhbAMyHcB8FDK8xOjizoQ12gDljBHbs3Kk0M
         YLCSb+Llds3waUkI6ygWcKctayRxRFhx8zmocjVyGnlDDpmmWtOAiZ/s0b8fzQWsBx08
         XJTbGX/D0EsBfJhZd/0BNwBr7Ybs236lXF6wZouAg5H/oWb2cGg5o02Zb4Epf1KzUFwq
         blIU1T4o46xwNR/jbvb6pA69e+pOa4aHQym6OtdKHoNrYIRA/36PE+X57flaZvtN8o6T
         xiJOs9MQqpblOUwPm0G+xrIJyAEDf76FJkK3DS8N+2ZW5u0DtMbl7SJl6q+LB6oVhQsp
         DqWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SA9try7Z;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o80si709610vke.1.2019.04.02.07.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:38:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SA9try7Z;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i19so6492660pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/po0EISnhiE3SY7+NH7MWd0Pk7MoJ3yn2dqEvUAVeKk=;
        b=SA9try7ZRBZvtjIUO5U1hqr4qUrTQFwWH9E81OmHSt4M4bB3nA9yrEFq75Z3qPryUB
         7XC3RpaN8Eri1/S9G4Tp0/xMTqbdgpl2YEEQokujAA6oNEZKE72OQEA3IdAGfiIxLXSS
         T80f2IRgKtYVgVBOmA1/o+JXuVnxIO42m5c4NOC8GeAcU2ZCrLnJlQzeJmapoSamjxEJ
         J/MINNaeABeB8lcPpa/wauHIwDoUSf08GfKc9Tm/+klyqtgDsscmqPKiTr+2qyyK3Zff
         fxkwnrjjlRzsnaOtj/1lMqo1gZKpL/gztNGTJZOG3ZeoozMS8tEVBzKU2QVtUKQw0id9
         Ukrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/po0EISnhiE3SY7+NH7MWd0Pk7MoJ3yn2dqEvUAVeKk=;
        b=VnCPCQhXnxGKG4e0MOMiwdpkJXYBlZBwGzF3RlKI5rrwUIkfvyyoMZ69FGHeqMZWkk
         I/OVwIWIZLLjQRu5eEXF6wI8gb01/DICa6igksS1BQcrurPH1Lpzi/hENR4iOm/BTV6v
         W5vaOPywf//M6whqVbWpMx1uiVHro1fKS/WMfwiynVmHH8OROmXF1P7fXL/jS4JnEZPA
         t6brvGbA1JGKaG2fx+T0ks/XvU7TPJUoeFg/L1HuqUuUnNcft5DIL+Dk/lz6I/X+b0Od
         Hisets6NzkVHCb7bfcx3ARY7qX0nrl2kOldb0Nm0dzIcId7cpDTqC0eZKrjW/YZO8EG2
         gpRA==
X-Gm-Message-State: APjAAAUVqdDz2Q1JytD5d0XC4VpvDypoqN1uivGUg+jM1Tj2rKkFO2Ki
	cE1Tufs0qi+SXFEZfzfohOH2S0LL
X-Received: by 2002:a63:5ec2:: with SMTP id s185mr66805571pgb.27.1554215894848;
        Tue, 02 Apr 2019 07:38:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id j22sm17603660pfn.129.2019.04.02.07.38.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:38:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/2] staging: fbtft: fb_ssd1351.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 20:07:44 +0530
Message-Id: <09997b0d3c5667156082e07f46fb9281d03f8dab.1554215607.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index 9ac78ce..900b28d 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -81,10 +81,10 @@ static int set_var(struct fbtft_par *par)
 
 	switch (par->info->var.rotate) {
 	case 0:
-		write_reg(par, 0xA0, remap | 0x00 | 1 << 4);
+		write_reg(par, 0xA0, remap | 0x00 | BIT(4));
 		break;
 	case 270:
-		write_reg(par, 0xA0, remap | 0x03 | 1 << 4);
+		write_reg(par, 0xA0, remap | 0x03 | BIT(4));
 		break;
 	case 180:
 		write_reg(par, 0xA0, remap | 0x02);
-- 
2.7.4


