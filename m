X-GM-THRID: 6675276130832875520
X-Received: by 2002:a25:3494:: with SMTP id b142mr4243690yba.48.1554214675326;
        Tue, 02 Apr 2019 07:17:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4d07:: with SMTP id a7ls229923ywb.11.gmail; Tue, 02 Apr
 2019 07:17:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwz468NlWLNvRVWgTe4lZmiCU2UJjVPyJiAl9wQwFCbkNquHd+9sk9gj83GG5m+V4QFjUTn
X-Received: by 2002:a81:9b45:: with SMTP id s66mr7794295ywg.12.1554214674779;
        Tue, 02 Apr 2019 07:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554214674; cv=none;
        d=google.com; s=arc-20160816;
        b=MISv9dOjSFpNeb6U4JCPdG8H9MXSylK2TIjhjhhy2BBNgW9JRLzlwaDlkBIUas3yu3
         ZA4PRNlOF8n/eKg3GSTEXis7xqTqcFtFNasVcVReHMR/NK2wxEWJNRWM0Kbe/OQXH2TZ
         d9cHRndwjdFFP9WK1AoK+apZpJ3pHEe0cT2sl49NM9CSGzKCvdV33LhviclnypWNTzzX
         RVQnplqIPdKmYQWVZGuXLW/5rBPrKO0pzEU1zfgQXDtkN4VmspuDQzogusnw2Vnf7J5e
         VYQ4H9O1krmtwbBccmqDT+g7wpPY9RlENuZGtyzcCBotClwpXzy7bjVxGWWfQxbbr+GA
         fAHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=mWWXBhBEZYp5eV+0RS21gF4PfTD3xicWMd6lHKogAYg=;
        b=wAlc0la0w+y207dq8Sadv3AAux5l6K65YUYGAUZ9aNawTCQ0gwjJFERYzlXm+pp3xf
         vlDECOc6y75sOaK5yf007zcaOz8Yy4M8uALfzhx4imWcvFsZrN5DCDDt3JiwFwkvybM4
         szprLjFGjzfRsX+IpicyYKjHm1kCyLKOdDZWC2luuVOd8isXJBssu4KLKw7iJSRyJBBv
         C7ghnHC61rg2yY7bNXDOP89k5qLdG/WdhbHF3vS30fwvrAfE84tr//2nDwmWJ4WOoHVj
         IBFBmZ3ARudeSiJ2uvUPFLJu0E3zOH2Yty4BtBU/Epgc0FfZ/qcZ95BCrZPsl1xZI3Re
         /G1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tyu18+w/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id e23si716394ybb.1.2019.04.02.07.17.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tyu18+w/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id b12so6667614pgk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=mWWXBhBEZYp5eV+0RS21gF4PfTD3xicWMd6lHKogAYg=;
        b=Tyu18+w/nvC/T5803sqY2K/XKIakPyBdSBi5ZYgce3XT4aNx8abCg5kZhdxEcM9KbY
         XK3q/1fR1kkRxsrargt083vBJh6l/e6Kid1vdfjaOGVD3AK/QpqnD6jZAQ42mwAmpwK5
         FjonCAoAUEnn6FM9B5pKdZRC6ozrlOfu7FDbW5oCLKM6coV1vUoVbytdPE1ndAJPNcNo
         z5lQzoN7tTR3t8zsvJeEIOwG1AJAgKfcz9ApuFwJ0c+vkJouidP7u8pALMvFsQRDtEhI
         7ejRzh1URQR0P3/qEiwQQ8SvY7jatSd7v6Mx8wC9pP5n64x8dkQQRcDAJGIRnIAYVHix
         JXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=mWWXBhBEZYp5eV+0RS21gF4PfTD3xicWMd6lHKogAYg=;
        b=VlzSt+oQXJIBSNFbnm/3cAIotOMtUH4c+DIT5orjU5lng3+Xw90jlR7WzrEqv/qhpf
         DKAUfMAayJf0pNsh2lG1G5bqTTfLmfA+bY4ngpMPxM+mo/80k2MeXnkpaYwzY0dXsEhN
         TOjKKnIe7c3YsR5LmkRjknLDsQcEbdrpX7B97UPudRThxfgcjNo+8YfBeSK9IONJDJZc
         66gefUwVsmpXb7JHJmOv81ZURw7P4vtJJNluyKalpwY0zsRHUtzsBhjdmYgt+L6v1pue
         NFX0ivYWU2pdgLVT0u6E7oUVhG1NaBDcj7SNouY2kflss6R+8vX1EZI4AS3D6riHhito
         rTDA==
X-Gm-Message-State: APjAAAVhG84DbynXRoQNS92NQCYXz2dhjVV/rQN8tzZ9sIZX/b6ecfNl
	WcbeMi/dIh2vc+L1RiOuG5EwEA9n
X-Received: by 2002:a63:5a1d:: with SMTP id o29mr62577803pgb.320.1554214674133;
        Tue, 02 Apr 2019 07:17:54 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id h65sm35764281pfd.108.2019.04.02.07.17.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:17:53 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 2/2] staging: rtlwifi: base.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:47:29 +0530
Message-Id: <0b073615468ab6edbe23a10ca9a1ac6c21406025.1554214359.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro
and remove cast.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index 35df2cf..b8358eb 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
 						  IEEE80211_STYPE_ACTION);
 	action_frame->u.action.category = WLAN_CATEGORY_BACK;
 	action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
-	params = (u16)(1 << 11);	/* bit 11 initiator */
+	params = BIT(11);		/* bit 11 initiator */
 	params |= (u16)(tid << 12);	/* bit 15:12 TID number */
 
 	action_frame->u.action.u.delba.params = cpu_to_le16(params);
-- 
2.7.4


