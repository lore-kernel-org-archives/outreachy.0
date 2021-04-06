X-GM-THRID: 6947995602558910464
X-Received: by 2002:a05:6402:3115:: with SMTP id dc21mr37588470edb.173.1617706288133;
        Tue, 06 Apr 2021 03:51:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:27da:: with SMTP id k26ls5535454ejc.4.gmail; Tue, 06
 Apr 2021 03:51:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5zOb0Q3nUAjviJLvPQYySHvvT18GCb6asRYAIcdNjh5m4qkHoCAgvqWsVebf9QgK8eu3h
X-Received: by 2002:a17:906:a84e:: with SMTP id dx14mr6538700ejb.332.1617706286639;
        Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617706286; cv=none;
        d=google.com; s=arc-20160816;
        b=IEyeiYwD/onrpMMi0ihQMejUvv2Ovcfh0WsaP7pGQNkOqh0jqPp17GtPYCIC2ONEeA
         PLkfD2eDFHD4ci14SCNXe2v2hiDi5Fc9G0ZsKGWDLaRk7g11G1Hx5Ha5UQYYmXYdGZgN
         Gkyl0/dXIchVK9gO8tmlKV5qTJDZAiVO3dff43rYcFgk/aSit5yTrNkPiK8rca4XvuUY
         dLVPxsnpBZ526zkgaV3cVI5khmsEEoLOD2Fla5bKKROxSESSk5i3m8bxQnirEOdC/v6t
         TuD/DNrdw9Fj3i/qqTULUiFO7W6btHnXsMwzeAGYr7AGK/+UZNuc2onB24eo3ZekS9Gg
         mcgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=a9jWO01eQCvaSALTaYkYaRpgTZuO0r7x7rAnN4myhxg=;
        b=Yk8oA0i/Xp29FyoYdjtPQDYoyLXxJUF4x7VX1/5/UDXmf87eUdT7qv8EYDiq91lRDY
         pBg2w7FBrt3Pn4qVG6fN33X3uNIq+FxRbq32jS6msAAAOxaZG9Optsh/bODOjpsLbgGA
         ZgY6MnjTzyfjglsea5OWONflvYLvqY30fFhft/3LhNG4JHjSitGsBDWzqDhvBnYAlN63
         ULFoAXZegfes6F8+ihSadEMPynf3JdHEcTUWYZUThWl4fbwizap/jdpDpulmCd+kL079
         T9yml/8pCz8YFDzRPN2NFPBw563PY2eHRdO/CjFHqGLloqwvm4cc3rY3+h5FfzQTUqQT
         cFfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B3Ep+wEx;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id df6si748627edb.3.2021.04.06.03.51.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B3Ep+wEx;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so7061786wmj.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a9jWO01eQCvaSALTaYkYaRpgTZuO0r7x7rAnN4myhxg=;
        b=B3Ep+wExrgNMtKa8EakKLL7kSl/7DSbnkWpxxMYEK/oxjgbZMOvAqWvKpIsing3zxu
         s/npRS1/OSQ7QHLFmo9WBHjnBYyR/bDsGAhqJl7QNr/Sud+rYToJarxr5T8+Hc4ryr/0
         9AZsOP/HlHrK2zB4vfvN7ZYFmAWuYqdBNrlh6aXuefzF/G1/qxOorPfPT0Oq2TDETgKZ
         D5iWK4t92EXRlKNVBANM6GuCqsNBiHgKYIjxXaWt72JFg7Zn/OMDc8608cOa2JzREgMb
         k8+6Aa09jjGL/mcik6of57bEFbKnArDko3tnTriMdAtAsHG9HFcSqdrOh7j2md/tvXQe
         GoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a9jWO01eQCvaSALTaYkYaRpgTZuO0r7x7rAnN4myhxg=;
        b=UksefELse0CP0lezRqD2eU76uofG4+5Cj/fYyXOzcu72Kt91SjrLmHsg961kq00BE9
         es3IubMGzKIGsmHkjOGfPBRf1+K+NFI6ECIl6lIxBjrSVm9egQCm1xFAE8wN91SyJvWM
         7Grmc9qgU/nZIiUOXZAHl7nNmKQIP2491+clUVKd0jiDmnqnNXQe2/WP4DZd5q4NkuYR
         esJUCbQKb6Jpn7qJ33D5wPNGrynm+Nyn7S9DAK56X09HfXpsn5GeP33YwuW51SiupH4e
         AOjsthgRXQRPUOuJ/DQR+fMwpC3iQg9WtkPSRvewOp15EhkqsjHZ2U5ydjQlnLCaoHxn
         2qlA==
X-Gm-Message-State: AOAM533dwyPeziqJEm2CLun4NfK3f5SDlnxpUsIr1hVT3HKiGgN20Ttp
	vY9a90QY81n7FJjXQPHUv+s=
X-Received: by 2002:a1c:4686:: with SMTP id t128mr3467097wma.156.1617706286497;
        Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id c18sm5044229wrp.33.2021.04.06.03.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	driverdev-devel@linuxdriverproject.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: staging: rtl8712: align arguments with open parenthesis
Date: Tue,  6 Apr 2021 11:51:24 +0100
Message-Id: <20210406105124.78498-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up checks of "Alignment should match open parenthesis"
in file mlme_osdep.h

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8712/mlme_osdep.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_osdep.h b/drivers/staging/rtl8712/mlme_osdep.h
index 9eaf94f072ff..a02c782588dd 100644
--- a/drivers/staging/rtl8712/mlme_osdep.h
+++ b/drivers/staging/rtl8712/mlme_osdep.h
@@ -22,8 +22,8 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter);
 void r8712_os_indicate_connect(struct _adapter *adapter);
 void r8712_report_sec_ie(struct _adapter *adapter, u8 authmode, u8 *sec_ie);
 int r8712_recv_indicatepkts_in_order(struct _adapter *adapter,
-				struct recv_reorder_ctrl *precvreorder_ctrl,
-				int bforced);
+				     struct recv_reorder_ctrl *precvreorder_ctrl,
+				     int bforced);
 void r8712_indicate_wx_assoc_event(struct _adapter *padapter);
 void r8712_indicate_wx_disassoc_event(struct _adapter *padapter);
 
-- 
2.25.1


