X-GM-THRID: 6675276130832875520
X-Received: by 2002:a17:902:7d98:: with SMTP id a24mr2131380plm.7.1554212874914;
        Tue, 02 Apr 2019 06:47:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls237425pfa.3.gmail; Tue, 02 Apr
 2019 06:47:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqynMru7ytmFcxr769chem7oRKdQ1MAsorJxnIfPUaYRiWL1MpB9JlSjD5Lo4W/fqKpJN5AP
X-Received: by 2002:a63:42:: with SMTP id 63mr1306720pga.48.1554212874291;
        Tue, 02 Apr 2019 06:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554212874; cv=none;
        d=google.com; s=arc-20160816;
        b=BHC2ISfmH1N+1cUU64qT8tibfLRuTicsK26jHpe695RQyF2UECnVjgoE9GPvh2QxPu
         WEUytj6xEOa09FJCf8zxtCNEgHABzGmaYY8RXeJHc+3rmRREBpyQL6/ay+wFJWQspTbH
         tJcCSkWUg84eCzygZho06ETHK+/9Oq2ZqUltDzAugcjY4355dLunREyOHrPFFi68J80b
         xSuZedvxXAdDsL/BmGUMoZ5mKKiOk6T11mfiBsogm7vhSivvwyvTGHVMReoW8pjgkhvk
         Xy28f1idFp0Mm/jTE9MrIoVE7cDi2+hH/O2+ZEiJpNj6P2iIQZKHc4VCIVilWj6yMQLK
         Wqtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=SZMmA30VzagHh/9XSM341bI19Ijh8+ISZUjUWUH+iMo=;
        b=ugrBk9Q1qw9NWRaWPkU8rBuU5tZ0oswNl4DsNIAHBwcjuahyoEsivZECST8myBa4GR
         zcqWoP+ERuEC6BVic2mIddarGX85qFTeiRLYmndUdmh/4hEwd/oVJHZRGCNMVNtcXgzQ
         tMT/MXyONCEjEv8wkPAw+ylPu4v0bRejwBjk6u7S0SBK0eVFi56NHL8D0M8S4xqKL2+j
         lpH2KuFDPTBpWRQVzsy4R5xdYm6LOkxxusiB+2chgt9SSlmdKJfGtgAUjmlMbrWeqLRX
         k+riw1HsW6EXOuCVyQvhe7IbOklPc/UE6PRWk6v6lfxhzKTbBmx9/OIAAV/EZ0FVOKPO
         Nl1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GswagT8p;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f23si916501pgk.0.2019.04.02.06.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GswagT8p;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 9so6402834pfj.13
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=SZMmA30VzagHh/9XSM341bI19Ijh8+ISZUjUWUH+iMo=;
        b=GswagT8ppXCzzCjNHzrPwWqObukgVm3tMjCcszfGmlbHm24Xn7tcdR/mBFXW4mOWc8
         BPt4cz67wNiMjLM4foF/iarycjj8fqnnoudAwNVugsbdGozKSy+DJXvTi01S2dzgm89w
         NQTg/J3A4C2t6il8l5/FPzWutxFxYOU0vRN+kjy0Z1LjdlbyPC3FS1sbU1bRVGMGNePV
         QbzXicY5GRws0SzbjgQ6fMU0/VtVKHb/ohhX/ykvK6Xa6T7GIC+vFngaXc74mPuLd98y
         FL3fVEQrs7N0mvIhsNubxXRxhMFcfYSME3obr6h1azd4g+yIsVptOz7SxUaBOoTjV15S
         0YtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=SZMmA30VzagHh/9XSM341bI19Ijh8+ISZUjUWUH+iMo=;
        b=ZqxDkH8ldIINpBkVfYovcOfSyBiF+8x0v9kElLldhVPja/31zoEU9Ia9Q/WOSyQZEb
         Ndi3YJtLl2WmP7Au8oWwwhcSd1XGKE8Hm7MM5hASZB05FV4AtphvHwYHrer8ATzWzlFP
         1/CTmSJx+GTh3//CeUZoQnBvx3WEynFYj4xMJyBqXxydCRUBG30dw1XtmmoW8Q5+FT4Z
         Pf6j7Ff4kxSBdi4J/+A2kYFjYt9slL4qIBT0C4/tqLZyrfT0zFXHxn4RkqzgFHMFf1f0
         Tib6pnEsdTYXUd3J0SUXjEEhfwtUdqE8JawtO0pt0ojvKWJobfxdEzsnwcfZGRnd0mcW
         1Tmg==
X-Gm-Message-State: APjAAAWZ5c6pkYxoFaqOAcrVtycEpWdQ2BH5YYv91/6OOqwU41aQDtEH
	gdl0gQ15HPZ+6v9GsJ7RqQvn1ES7
X-Received: by 2002:a65:64c9:: with SMTP id t9mr63542816pgv.221.1554212873756;
        Tue, 02 Apr 2019 06:47:53 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id 14sm29392779pft.137.2019.04.02.06.47.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:47:53 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 2/2] staging: rtlwifi: base.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:17:30 +0530
Message-Id: <bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro
and remove cast.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index 35df2cf..e4e35de 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
 						  IEEE80211_STYPE_ACTION);
 	action_frame->u.action.category = WLAN_CATEGORY_BACK;
 	action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
-	params = (u16)(1 << 11);	/* bit 11 initiator */
+	params = BIT(11);	/* bit 11 initiator */
 	params |= (u16)(tid << 12);	/* bit 15:12 TID number */
 
 	action_frame->u.action.u.delba.params = cpu_to_le16(params);
-- 
2.7.4


