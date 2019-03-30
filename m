X-GM-THRID: 6674191522051653632
X-Received: by 2002:ab0:74d5:: with SMTP id f21mr4270190uaq.27.1553956328700;
        Sat, 30 Mar 2019 07:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d4b:: with SMTP id y72ls1120712vsc.1.gmail; Sat, 30 Mar
 2019 07:32:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwham6fp3wsR617ESBmmsUjqP+0idF6LVOdu+48BhJRI9D5X3vWSjiOv3BQrRRg7YwzTsfr
X-Received: by 2002:a67:7b56:: with SMTP id w83mr5610902vsc.14.1553956327923;
        Sat, 30 Mar 2019 07:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956327; cv=none;
        d=google.com; s=arc-20160816;
        b=ljbjSYV2ZAM17rg7vg+ekDd2fkRmPqLsDlVcLxRZ5yeUfXSJiamBMtALsggc2lIUqw
         5Yo95wzZRa8pfI1QV3Ni5f1bM/vh+D5p7AebecA0FGm7OI+CC47r7sD/WfcpDq5ThLWn
         t+FOdIy7GbFwFevPH68TasvHslSDknG8h526G1aFjDMwoA2Ya4MKOuxKJFtCR9drpnJI
         w9OIVZAtTq1xh8Rz+kd1UGQL3++cNlKDLa6R7bghwVd+UI3Pak3fBzI9wsBm6hNxlBJD
         m51Kwq16FXPmgcyLa6rIeyqggXkOZPnoz2cr47PcIrnhFt4IWJde8k5HRsM3gMMsktw7
         MG+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1UmQ1/ivb40hGNWeSgChIL4Ur1eX1P+h7Ggfm5Uca2M=;
        b=yhbsqPiSID9+WPR8Q2vDRAsaZvU+zQjMGx7o7xK8biZ3UegCmAHvIOp9fqyyBzxiia
         grBZgFymLPloxw0OeT2n1ui5Vm/5UGjR1Sh1T5Uy0MId8wfqr2EU43CP0EmFkhf9bWLc
         Kum0qEf1fH+mf31ZOuDvzcOT6A0l0R0U3q0Mx2Quk3kLeiUK20upIoaPhHJ43gcay4nm
         2obc4BLvpdPRxLK9JkIWnb1lhO/zwwLouZ0gjnLDotQxwXhz/oTC5CndxTGeiQ16RbaX
         /aGBbP8lcqlCnYYbdlZP1+Lm4GBuZHgi2Sx4cxFhizWPvvUvHHC+6aJ5FoPf2xZM7JUo
         klLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3JdO+An;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q191si317076vkh.0.2019.03.30.07.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:32:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3JdO+An;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g37so2356856plb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1UmQ1/ivb40hGNWeSgChIL4Ur1eX1P+h7Ggfm5Uca2M=;
        b=d3JdO+AnU94Wqboonk4MuHM3PLEKzAeToFg2FwVETFifIpc4Iv5MQ/XDvouEsGZP0G
         0gtlcU9if9H3PRr5jg4nm3fseb7Hzit3I+uKGnEml/S5kO4eNIjfZm69fRLkxzxc800g
         1dcFDiDIxsQBHDzBt6vm7k1v/xUe4dKQZhvs8QyfgSw49oG+ulW8dwM31ifqAGQkjeDk
         rhdelvi1C014jHolYfU06NwXxo8gS9a3JYgoEAOlcxFAuXX+OBHMSUE+eUO4YzBnpIv5
         A0yeT5odSfAAUDV63HekeG09tll2Ufj1/Uge5bDigk5NRuLB1Lqcs1/y5kRtyixcpKfy
         qYFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1UmQ1/ivb40hGNWeSgChIL4Ur1eX1P+h7Ggfm5Uca2M=;
        b=cUOOrEWnsGAsIO3e9eOP+ux49xdYeNnspFUgO/24UBuXDoticcUDA/Xnp2Ltfqbpko
         FHspWW53c+TfwW1YCpZGnDTW7p1Dje+hZyjoGeGOCR4OEieJeWywU6MnsXH2dkA4vhzC
         Ud8wmnT8c1/ElfQS5vscJlXnjIbKhtwaTtaaqLb1nNqWYtWCNjme/l0eLVni7VIis3sA
         X+g3Wch4GFDEUQbK3CQ2tV/umKSvQ/LkTTrXoUO8ZD4sQtkCBqDDj11XcAWJQcD0GA3n
         ar6tBsCqKPaTK5iA8w017l0gBZ/vi5Ra6ybQtQ05YBCyQftK85Vx4KgrF7qIiOoPSr90
         l4oA==
X-Gm-Message-State: APjAAAWREDdU+6sF9qpmP74fhtBt/IBmnRPeGbazHePEul6MoQ/EG1yo
	RHKR3UbufYQlXcQModDEY/OFQfmQ
X-Received: by 2002:a17:902:8d97:: with SMTP id v23mr46812299plo.298.1553956326777;
        Sat, 30 Mar 2019 07:32:06 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.32.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:32:06 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/5] staging: rtl8723bs: core: rtw_pwrctrl.c: Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:29 +0530
Message-Id: <3dd337c654a95afa0dc7d2ea749fa19162756eeb.1553955183.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Return value directly without saving it in a variable and remove that
variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 5c468c5..1013af1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1400,10 +1400,5 @@ void rtw_ps_deny_cancel(struct adapter *padapter, enum PS_DENY_REASON reason)
  */
 u32 rtw_ps_deny_get(struct adapter *padapter)
 {
-	u32 deny;
-
-
-	deny = adapter_to_pwrctl(padapter)->ps_deny;
-
-	return deny;
+	return adapter_to_pwrctl(padapter)->ps_deny;
 }
-- 
2.7.4


