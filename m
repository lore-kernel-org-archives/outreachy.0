X-GM-THRID: 6675276130832875520
X-Received: by 2002:a9d:6343:: with SMTP id y3mr3537060otk.38.1554208886334;
        Tue, 02 Apr 2019 05:41:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls3108605oie.6.gmail; Tue, 02
 Apr 2019 05:41:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz04HqIXTOmS1rOXmpFB7rL2n1/besVbYbkw5pOIx0LvskZ0Liuxfbav7qK0VEPp53wwXfB
X-Received: by 2002:aca:fdc3:: with SMTP id b186mr7060395oii.18.1554208885595;
        Tue, 02 Apr 2019 05:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554208885; cv=none;
        d=google.com; s=arc-20160816;
        b=Mq74f+URamOxkZuurR0MLIqbX4nJxolS34YDoEFqcifoQ3nKUVFEqmOcrSuj5Uz0ND
         YzWYjGsTmIA4cxLHJhKAdzyEdyHsbw9hkGxX4hq49E9XldBXQPeVT9O1UxTLnRXK7Ab1
         bYYuNLsJ2xPQduJ2ZC5ypzOkbiCF/7Pt90M9X0F07BPIOyoh2lXrJnCfXV5bGne1hOLR
         WJd7Og+lkNVTAJFTNhDWUygcEaCdDPz1dUy8PvSoyZnTdd1+hGsMs6/PWYPmb26IG/Qj
         mS8elhCpPKS9AgNcxwnfMchOBNLQZ40S8CAB61q79Yfv2hSQdnV2vyBmmMPmNFOh/dQ/
         MxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Kw12YgNYeBc621USTfmch/hM7ld54mQjbk/M7JlZwDs=;
        b=wMIfsO8TJNWwQ5FbTXZJX1ipcdI9jOuFzw/hSvE8wqVEEes1YvSpgjJvjVS5kZiLMV
         UiAJs1yHPNj5yy/pQ9KZ22XWQWdITrMkGpXDTy1WriIgO91BOF+GGh2fbtgXD8M+Azh3
         DafUEvWeioj+ORd5NOQ0NEuFBFmg5JJlFYd/j+PvOsYt/jhf54B3YZr3ZuaAVcR1fYGT
         s16oqcS7WYj5sJ1p4wAHZOvUElFyGHMnxJb84J18lG6xjHhG29W79o1s3hfLFZo6KQnH
         rENIHojbqOExKFSwgHOsAzLVXhpOpbr4TAJ5QDN3DNLQTFxuVpkfrbe2/ztON2gPAT3w
         8wiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwKtQf6r;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r62si161822oig.1.2019.04.02.05.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 05:41:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwKtQf6r;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 8so6337565pfr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 05:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Kw12YgNYeBc621USTfmch/hM7ld54mQjbk/M7JlZwDs=;
        b=lwKtQf6rIVviXvnaKbgkoguRYvy9NEnVPC/MQ2UiAof8iwzDbSg7QsYg5dIfx7qD8E
         7lGWOhyZUias8Iw3iClGsAH2j7xVE/+BUiQ/QJiJ+l4S/TZ0LAKW63a2eRcok6+fMekl
         0AUVHRmR1bQcQ3mPHVt9us5uX95tnzNRSfcSqEK9eib/Qipfn8RxQauU7+BQWfLb3gxs
         RCml6xaD6t3By3u4YXb/tPVduIKYfCY9vtWQXh/J8vhxqhDJWHXAoX2KPhz563qPXFf8
         Ml6OZPtS4C2J34DaGALdvKCzKN9uTyD93QMVdE84gQ00wqEEmnFOzRhPQ4aHjwvIfCkd
         k5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Kw12YgNYeBc621USTfmch/hM7ld54mQjbk/M7JlZwDs=;
        b=S1P/Taq48gYUJcHMPi4qqCfpTRA+Z+tdq3w5mlX6aMcd19BQ1ZYLWmhbjf7BTWRa6Y
         mkRO5WMXNd7RcWB0rZnYX5gZY3tLW9lUUVrG3XBJ/M42Bk4buShHYExMa5e4ASN9FhKU
         f+/VnSQvDoJuV5JnJWdJYOC29w9wk6NmWLuAiVv3+DkTg97Pg/FopjivNL8tuYS9E3ih
         g5+5QiNP/MExaPzlqnxsxY34Z1UNzcWzLu4yV+vlnBytP+xS5xc90UbpD1XRH/JJ6rac
         WjGpJQ7Nin6xVrvSHI1CyT7zpD2zY2gCspukshnDkjIG24YoLf50l/OP/fxx9IfeyYdm
         5pyA==
X-Gm-Message-State: APjAAAUX1BMqAQ0Uo225Xj+xh5YP0OatTMgDg4pe54Vw4q4IgDanS4W/
	QHmndzJkoE9XNXs5mic9bjXuvX8R
X-Received: by 2002:a62:183:: with SMTP id 125mr69801831pfb.146.1554208884611;
        Tue, 02 Apr 2019 05:41:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id t190sm22650949pfb.33.2019.04.02.05.41.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 05:41:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/2] staging: rtlwifi: base.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:10:23 +0530
Message-Id: <629f050185c487686882839655603a6804e03ce9.1554208601.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index 35df2cf..e9830b1 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
 						  IEEE80211_STYPE_ACTION);
 	action_frame->u.action.category = WLAN_CATEGORY_BACK;
 	action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
-	params = (u16)(1 << 11);	/* bit 11 initiator */
+	params = (u16)BIT(11);	/* bit 11 initiator */
 	params |= (u16)(tid << 12);	/* bit 15:12 TID number */
 
 	action_frame->u.action.u.delba.params = cpu_to_le16(params);
-- 
2.7.4


