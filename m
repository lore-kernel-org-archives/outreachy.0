X-GM-THRID: 6536210357179908096
X-Received: by 2002:a9d:53c4:: with SMTP id i4-v6mr13684127oth.30.1521830064407;
        Fri, 23 Mar 2018 11:34:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2cc3:: with SMTP id e3-v6ls5901307otd.14.gmail; Fri, 23
 Mar 2018 11:34:23 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49dDJIXkk7Cx+rBg5UTj1roHInS2bNIxhwIFPVry4XOkXnw1QlJhtlHYKHNcThY9HxwU01G
X-Received: by 2002:a9d:3684:: with SMTP id h4-v6mr899650otc.44.1521830063497;
        Fri, 23 Mar 2018 11:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830063; cv=none;
        d=google.com; s=arc-20160816;
        b=mzQLFBmXC1uNKCl9wAaFrvcx+5JDPzjkv8MqjuWCFH+8YXN7vLfIimI/3xl4r0zpFe
         mUhz4zSsgnkuXcklLQdqZ91YZyzwpa5I1EPMZNGzhxM7OwWtyDUko+EMqKrErP6uEPle
         FxdTFjU6q+bI5sdfw53J77jPyBeRc2OkcSJ06KF7EXzbh0z8fdJ9nHtGYEh1TzFVDecC
         k7xB68N/HJ65y6u0Lj0b+g3m+dGg1RAeOy7Qma6BL+0qoQse8eQW7yDd8ug1D7HZsnOw
         Hdg0+k8rvkERKfFUMQ+KnapdNcVV0kkyDEAZroakL02ffwnVP5E2kIu5h7QXL+NS7/j9
         8FVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=2MgT3ZKdV+asrkA9OxrIEOupZHtXy4QVuPfyPAeuHCI=;
        b=jkCYbkyWkthjxHNL1xRk0+NAPedCO51q2f080Q61fmFi9zI9v+TuvVjvKWkFE4hXwD
         39buGNyvWNoDfKS35FskzmEw84Lw4KaNbxtYsEobmUueHZbrE9GwaOFCz+nUjNhbnZn9
         RNWeH0yoahbpsX4vrFhf5spQpUxiVeEP60asuLTRvdaqUESDzmNyEd6f8RxrmDuj0vAE
         A0G7XrF6OyWob/x722ZiL80+DJjLD+2/JurIRFri5Gu5XQNupN77JlSwnyl/CsMG3MR+
         7zO4J/dJ+erx3UV/6VKUgEzq4x5NPz3lGy4hYyZQ03Cj38ztrbnk4PJa37tkZmwhIf71
         Bs3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=DrBbTM//;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id 15si694076oix.3.2018.03.23.11.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:34:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=DrBbTM//;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id m22-v6so7951479pls.5
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 11:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=2MgT3ZKdV+asrkA9OxrIEOupZHtXy4QVuPfyPAeuHCI=;
        b=DrBbTM//OFXv/wGMbuI3l6tc2tKJm4xA2jH3pJAmcnnCdK7T8BEollyXAJAUCu7XZ+
         kGBiyzXPY25+jk0qNU0O/gOLSfWzgP32ujhLT0eT5aibSlK4Lez9DfvHAWPFFXK1sZ/M
         1L1BeO2h4YSO9llJJPe998yZB6zgysjlbKLWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2MgT3ZKdV+asrkA9OxrIEOupZHtXy4QVuPfyPAeuHCI=;
        b=sI9UPMtfBsLzsrq5YwinJeApuMoJ6JzM0YHk2XJzlsOpTRx0BhVJSk7b7PsdA84xDA
         IPHy2wZ2C8dT2QjF2I3zMxlegF3+tAVnzCtpK+5Yzv3OOeIGJvk1ht17fVjvwUv32eSl
         T/ooiXxKj66YZArB2mPy/N6QsPLupICMMWZ9TJ9dkLsRaA6hlSOtzjfucYTh/5/Z4/Th
         3BZO2FvJdc+7Uc8MhRkqjY5V2yLN2dSfpm1OUXIwBqi6RwMMBDFr1FhxtCOoBlCtnEU4
         KcUoqkpVShWoSOKnmvsv5ckpALnxhxNC8D5VedAGJv+8ZHwukAdXL6ZBNAX7kAPgab7R
         5BNw==
X-Gm-Message-State: AElRT7EVnSMOmIFs7VPpA21/W44rNMArQ8cAo/1WlD6FT/YSIp6zc3eK
	QlnrjLctC9ctYuSplCyBXcP4TA==
X-Received: by 2002:a17:902:7c15:: with SMTP id x21-v6mr30226336pll.3.1521830062265;
        Fri, 23 Mar 2018 11:34:22 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id e14sm17799445pfn.180.2018.03.23.11.34.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Mar 2018 11:34:21 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 1/5] staging: vt6655: Change CARD_PKT_TYPE from typedef to enum
Date: Fri, 23 Mar 2018 18:33:56 +0000
Message-Id: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Clarify subject and commit message.

 drivers/staging/vt6655/card.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 487039a..be5254a 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -39,12 +39,12 @@
 #define CB_MAX_CHANNEL_5G       42
 #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
 
-typedef enum _CARD_PKT_TYPE {
+enum CARD_PKT_TYPE {
 	PKT_TYPE_802_11_BCN,
 	PKT_TYPE_802_11_MNG,
 	PKT_TYPE_802_11_DATA,
 	PKT_TYPE_802_11_ALL
-} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
+};
 
 typedef enum _CARD_STATUS_TYPE {
 	CARD_STATUS_MEDIA_CONNECT,
-- 
2.7.4


