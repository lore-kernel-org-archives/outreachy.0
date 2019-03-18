X-GM-THRID: 6669707520918945792
X-Received: by 2002:ac8:2c29:: with SMTP id d38mr10278885qta.17.1552913818862;
        Mon, 18 Mar 2019 05:56:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls7562116qte.5.gmail; Mon, 18 Mar
 2019 05:56:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgosnF8qqYtyQlLd2ZWld/rKhKkW9WQ/LVJsQak2UVRG02CcgzOH+meEE0d1oCWoCEUfd9
X-Received: by 2002:ac8:2e7a:: with SMTP id s55mr10249611qta.34.1552913818299;
        Mon, 18 Mar 2019 05:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552913818; cv=none;
        d=google.com; s=arc-20160816;
        b=LZzXTaXR+/3aNp5PN+lL8z0Ay9hcClixxVOVVBnFwrGDnXzuNHs9rUhtRn4Gk79qmg
         lxe5OKY9wC3oasg5/sELZTw/tNKIIfnyxH/A/qYPQM/BggMN40PRMJ3QnV9uRITJRjUI
         tu/v3d9t/+WzzYOlAbsRxFAXt9cyXJG0XoRAELwtOmuPuW2sA2Fxe0gFI9Hi4nBA4bGm
         xKgiX+1xhMteQcE8jfe2WLI2GnkRr8uDmkJk5XL4x0cYbU/hWkPtLlVNK6MtUF7Y3uZu
         pYfiAutKqz01H8VbnKVmWf5ODwFF3KOnlEJa92wx+Z0y5yecv9ylqovw9YQkzqNmGgYm
         MiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=WISqS77VITdI7rBKyrJSKzPS19Poihi2v7JOo6JiRCk=;
        b=g/ELKu1TCVFzLyDnARIDvunu6ZM/xYAzkob00VkcE1xQWAKtUoVAgRud9otj3jOlyG
         KS71uPEx3woSZkMLBRb1qJy3m5468UGtUCI4jZz2iIJa6wn+wFif7tq3Ff9JiCPvWi+t
         1d5bYRYlAwF+CfZtNRHvpA5Y2cMJK3s1FV2eYVDiON74L0ZyqwRV+IRWrNrN0VZ9pr9Q
         ZJhSpan7OeMtU5M6dYMyBykioAob3CUVla7qbxWfHCYjB23j1ig5eCHU00mco/o0qSSj
         f+Nel6YqS/NvvGaGEYPUNQHFjQcEKZzteu5R6rWxrEnAyySG/zq+3gFFmEt7Wl7c2x7i
         YyDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=peSZC5j4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id t17si64133qtq.0.2019.03.18.05.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=peSZC5j4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id b2so11299367pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 05:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WISqS77VITdI7rBKyrJSKzPS19Poihi2v7JOo6JiRCk=;
        b=peSZC5j4P/12fTxgmkFUiRHpymi320K1U/toK77UlEbKUhxH+fB+uj+2D0jisMYAOA
         2yQHvWxqjTtc1eH3rFQ74K+/s0aJceX5Ya6OiTpb97siW4AmXDN1NQv77fyH/m7o/AsW
         ErBnlMqdxTbt+3yWXVGEqkr5OQlFiyVOm47eHONaOw4jMqAZ97wSfgkrZVW37v/pMEX0
         sDCQDcbOS+K0iJfnJMhO7LFdf76dluljkqPCMiI1yyIa8bIc4ImGL1KZ3SWKyG6gGRVY
         LuyBaSS8qhtWWf8sNcU/rR0ixyCOFr8P1WJe+a2VjANJo08ip51Gfg5ItHf/qrX6N/pl
         sxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WISqS77VITdI7rBKyrJSKzPS19Poihi2v7JOo6JiRCk=;
        b=HALMzhuCf3G4JfYwBrEfr4ELaC7G4EuTWs6N7S0GCfZSvkQb+AivgNmNjwhXHycFB2
         KsVqh1/b9l9VjXBH/BbBvV30e/qy23ws/MunXSwLaaJwJZDQK4tcDjwgbqv8+2Ro346U
         GVGupiftADLRUPwLn2ueAHgm/Wq5ea0cvcpLD2gikkOGN9/q0rrH2le8O/FjmDVwFo6x
         upPCCpAt6MGidaVqquhsFBOt26bkTG7fdyzxP7ElC3hOuat5FUN44qjIXApGP7wgxwzb
         30UFnatY3kqMecgK11aTpzNsi6xmpsDzrA5hHpH1gIFD7GtmaDNeLw6y8LQJ+AwOhQp2
         pC4w==
X-Gm-Message-State: APjAAAWuDhRJsCweK/wE8Ux5c0KCOrdVSdLv//pJVYdCZA7v1Bd1K8bB
	NYjWRYkUslxwN2ojT23UWYs=
X-Received: by 2002:a63:5317:: with SMTP id h23mr17374593pgb.437.1552913817934;
        Mon, 18 Mar 2019 05:56:57 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id i72sm20541856pfj.147.2019.03.18.05.56.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:56:56 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_pwrctrl.c: Fix a comparision warning.
Date: Mon, 18 Mar 2019 18:26:45 +0530
Message-Id: <20190318125645.13077-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190318123121.11548-1-sanjana99reddy99@gmail.com>
References: <20190318123121.11548-1-sanjana99reddy99@gmail.com>

Move the constant to the right side of comparision.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

WARNING:Comparision should place the constant on the right side of the
test.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Correction of log message
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 6a846d08d449..7b16632048b7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -374,7 +374,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 	}
 
 	if (pwrpriv->pwr_mode == ps_mode) {
-		if (PS_MODE_ACTIVE == ps_mode)
+		if (ps_mode == PS_MODE_ACTIVE)
 			return;
 
 		if ((pwrpriv->smart_ps == smart_ps) &&
-- 
2.17.1


