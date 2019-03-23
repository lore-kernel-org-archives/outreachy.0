X-GM-THRID: 6671526888381349888
X-Received: by 2002:ae9:e64d:: with SMTP id x13mr11806940qkl.112.1553335899003;
        Sat, 23 Mar 2019 03:11:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a3c7:: with SMTP id m190ls630911qke.4.gmail; Sat, 23 Mar
 2019 03:11:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhOH7hreFCvwMGtArDs2YZIdHZBSIwleTbEH/JFtfawPXGCa1v/bRIl1tpd10UzcbwU6eH
X-Received: by 2002:ae9:e518:: with SMTP id w24mr11194267qkf.4.1553335898397;
        Sat, 23 Mar 2019 03:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553335898; cv=none;
        d=google.com; s=arc-20160816;
        b=Zi6BR/4cKCEla7V3sf/mzVMUcliCs2khJJiAWyaVKcBR7hJwC9DqUdc31INOHX2jEu
         56n68pu/EXjznVNLuexnPuRL936R+HVbOwuyaCOJiZMgCRhPBK+uBE1/yQuzt3HTjRlP
         Jv/Z5PKJW5rnn6r97kc+DSeht3lkiPDI4OL44i1YxxxwJuGFO8YT244BgsGKRGkvZMzx
         f1f7Ae97TTBrbVfqrArhkCTPgtzdowMp9tPQwMTCizkLx3ugC83miucujpJwtUFILcVq
         dgOP/py0EvVzBrUEavKrWOvUxAiGUsuyzxdMVKQyNjpbK2h93GjkVi1aOGE5K4eIZ5oy
         vehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=AIBK56il/1/+LZpyUebzNUTR0PEpIO1TrXIFupYZ+Ts=;
        b=Rc6ghdkFMpFcmrsPwc8jHkuPjkWA9VRIXTx2b5yQc8qlp/xW5YEZsB0StB+NRz//kc
         Onnb00+EqszuzyeVHxSDstnYeWSevJgm6yOsfycXB/ntb93QWCRMCpBJeNxEZusH4w21
         GxvqXiHSsp8Tag8Ayz4/s4+hqfWmc9c9OI2KjeeMSILqLOP2lN6PFptzRdxR5ff1zK/q
         cYaSjJhb+Mct2o35qrRVB4XceylHSX2/kk7WqsFt6QjmKJHc9iV+6+2t1TgJWzMdbDsD
         g6dx+xZl2Q7wrdheU0urq7Eq4z3VWtddMHbMIaneorhOwj9P35buFsAesRqA38ywNr0T
         tP4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cL5Bptfo;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id j18si643167qth.2.2019.03.23.03.11.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cL5Bptfo;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id a3so3155874pff.11
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 03:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AIBK56il/1/+LZpyUebzNUTR0PEpIO1TrXIFupYZ+Ts=;
        b=cL5BptfoOkZm8CdknQzHE1sVXpNihMt9rupveP9rE0bfKTLO+DM57zovAFLS0SvuSq
         yoBFC71UjcXWSAtYoe7vcKh1lChEai+HTCocefei+qiTkJNySux0cfi+LlYbUjCmMOdP
         VTCQyOLtyOTVHGWz//lUSMl76X8T/SGIsCnaCNzriPOOSQny46MZO6chzEDz8fob81IE
         dl85p8eylEtUH8b8kW9wMCmXJ6RhuO/w6e31AfPLtSzdigqSc0TpyrQBHmoVgEQhacq2
         76S+Bk1zHaLR3rJf/EC+QWdZBr+DHFjrfX3mXCEzSw7OpVxS9MUIL5Q+0JaeGXxUR0ei
         Dbog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AIBK56il/1/+LZpyUebzNUTR0PEpIO1TrXIFupYZ+Ts=;
        b=CD7ZOFr9W3fDozxo3GTnlVJk1tYVngRxinrr6mlEkn4TkcM/GUDzMxb+GdHpbZP4cx
         OJLvkoD/Cl7rrTdNBBF5EPn2X+ltfsaaWbCTrQcClnsl5rehP7O8KXBhnRq+46zWob9S
         iQYPfu/V9T4eBkcdNPfUclqCwi/yR08G93jbM9F2fcOpIG4UvkqbRBXF43D8Pm4R6TAl
         BsnTh/UBgBi6h/TvzfDhFIn5IQunIXH0VbDWS6aGbrUlKpN5UcHmpVeFiZageH/qhrF7
         PNBPu32Br4feRNhKOHMfc7gd3PIeHeMPW+QMJCesoMJQjByAy6ANMeAIPS2R+jwl+2bK
         pkuw==
X-Gm-Message-State: APjAAAVF0bBeZ1Aar5p/RGICwOU1TmB7HqxQ7xLod54ylY3fALNJqayO
	p1u7Nnvw6XVz3hOiY2DJuoo=
X-Received: by 2002:a17:902:7c8f:: with SMTP id y15mr14048401pll.44.1553335897994;
        Sat, 23 Mar 2019 03:11:37 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.231.40])
        by smtp.gmail.com with ESMTPSA id k26sm12274348pfo.111.2019.03.23.03.11.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:11:37 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] Staging: rtl8712: hal_init.c: fix line over 80 characters
Date: Sat, 23 Mar 2019 15:41:28 +0530
Message-Id: <20190323101128.3795-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

-Fix line over 80 characters
-Change the position of comment according to Linux kernel coding style

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 4c6519ccab30..382cdeeee272 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -100,7 +100,8 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 		pfwpriv->rf_config = RTL8712_RFC_1T2R;
 	}
 	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
-	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; /* 0:off 1:on 2:auto */
+	/* 0:off 1:on 2:auto */
+	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; 
 	pfwpriv->vcs_mode = pregpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
 	/* default enable turbo_mode */
 	pfwpriv->turbo_mode = ((pregpriv->wifi_test == 1) ? 0 : 1);
-- 
2.17.1


