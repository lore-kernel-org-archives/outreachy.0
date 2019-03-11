X-GM-THRID: 6666820090157072384
X-Received: by 2002:a0c:eb86:: with SMTP id x6mr1431815qvo.1.1552302988955;
        Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls4463893qte.5.gmail; Mon, 11 Mar
 2019 04:16:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgf900pPFcumAFDMwjnNm/8d8EjBd29GHDbxuXYbRX3qHnE9UVk7SN4aJr/YhnqGNhBXy7
X-Received: by 2002:ac8:75c1:: with SMTP id z1mr4522375qtq.16.1552302988266;
        Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302988; cv=none;
        d=google.com; s=arc-20160816;
        b=SoWOCkTVReBTub8KN4YI86PptB2Q3Dz3h9wP5arZjY9g2I23n3nTofEDbdZH5H0LEY
         tJM3L+/yKIiiQ7SjhsFBYlAmLTP3Hu3xeBfU28ARQNxLB8SrOV7No0dW9RIRnB5oKgea
         6l/YTAntlnu4KTZMae7OX9XHTmNqH9+e+s9I/kUucvGnQxZ5RQBUOswPencj631af2nc
         Vv/MflvVKIq9Ecj6hz6FYKZzkLGAkcLK5GeTIdLH+9KRrCQvUOT5IHoWmX4Z4/Tu+f73
         AwK96OBYZE424/6fCjMuXNBcAScQ8Es5+PW+4p+/lHi2yfrXO5nLl8adqu/YP2T5aCBo
         tF/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=a6xE1j+ISmlA0M2fj6SR90txGTTdeoVpkfjjPIc5UfhEiH60yhV4rVi6DeWSa3e/z3
         b6L0iGzQtFsXYabAF11nAYe44CxBr+cJrFkq3YnWKllvC3vwnJVOcPnu5x6dlgM33LpY
         2IXPmq42Al1kXwRP9yfa1SWzMhevN4kUkjjh01OTaqVOSZlxjQNL8za3n72GQ6E6TnkU
         QAW7Fx/UegMlyIltW1thY7J2/3Ty0aikrA5+FQEJkWFKtYY7NqAkMCHgvwPb2JrV0AP7
         N6ti7Rr0iGM+4rSdXbsQlhTF6WsoCUCtM48AVrgeVY8ftXA6u91i6pn6GW/qfm4AZF5h
         5saA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cV7Mc/VL";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a3si245770qtc.0.2019.03.11.04.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cV7Mc/VL";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id a3so3446729pff.11
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=cV7Mc/VLYTl9CaspCfF4E48eS+a6lQUhM+kqTbrHGBDLxQRTT0i8oJ6JKa1tJFphWi
         VruKOB2auvORd1uQlZoMtUAtq86PDRJJ1RpAzP+sKSHaAOzo01Uh4fErheqg9JG1meZy
         sewTdn9dLz8vvvBReWmyIlkLbEY/mb/mttQkcM06ytLU55Gkn534ZnsbreQbn6Ml+THx
         8ci603tAmQQZGYEM91HPWNOmbbglN142ruazkYcm5m7tunRpnT26WnpAj5wJDldmy9EH
         pLdaYtP7utM5wPQp6ePTsXIEmDKJkwCVEhG8bYLbcFmy9DHj+LzysZu2RUczU4lJ/6KH
         LGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rGKMURQ6xG1PzW3wtRCSGXjnpNaavzuMT5kLZ19RmBY=;
        b=SaQsmnq49IlrBAlC3WP1MrI2NSvVBg+SXDNuoLCe5tCo/DD2HVpbOinH63hTgpYf9V
         PgcJZ9IP4cMAdsu/JLn7+KQKD2Xm5+IEaNoQ5rAui+R2VtXiWv6PzPBlDlgTR85oK4ji
         loGDlMX53XxC05m9iBjZYntETREdArQ27xPdfzGx6zmlsaI5JCkEGeWblugJXfroQUK0
         6TGm0nmDhsAxhUDDtNao4p40nkxX7Nd5C/SpIwfckiG26cvdP5xPZAVhCENJQbTNYat/
         04suQOQ1NR7BiayoT/QMPeB9kxOc2qRcfPCREU6LfHJrV93iBSpJ+HSavRWuPaxqYMzX
         Ro0A==
X-Gm-Message-State: APjAAAXR9KqwnOCvraFqJ7IrbPdDAl9uUmGil6izaW6EWu/wsjV7hT7g
	y57HGY5H7fZ5kA/KvSZqSAuq+UKjzDI=
X-Received: by 2002:a17:902:ca4:: with SMTP id 33mr20814122plt.186.1552302987189;
        Mon, 11 Mar 2019 04:16:27 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:26 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/7] Staging: rtl8192u: Remove typedef for struct _IbssParms
Date: Mon, 11 Mar 2019 16:46:02 +0530
Message-Id: <20190311111607.28766-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs IbssParms and *PIbssParms of struct _IbssParms.
-Change Structure name _IbssParms to ibss_parms to maintain Linux kernel Coding Style.
-Replace occurence of IbssParms to struct ibss_parms.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index ce79b8321961..d78bc976cc69 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1506,9 +1506,9 @@ typedef enum _RT_JOIN_ACTION {
 	RT_NO_ACTION  = 4,
 } RT_JOIN_ACTION;
 
-typedef struct _IbssParms {
+struct ibss_parms {
 	u16   atimWin;
-} IbssParms, *PIbssParms;
+};
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
 
 // RF state.
@@ -1554,7 +1554,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	struct octet_string			tmpSuppRateSet;
 	u8					tmpSuppRateBuf[MAX_NUM_RATES];
 	bool				bTmpSuppRate;
-	IbssParms				tmpIbpm;
+	struct ibss_parms			tmpIbpm;
 	bool				bTmpIbpm;
 
 	//
-- 
2.17.1


