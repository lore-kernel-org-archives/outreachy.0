X-GM-THRID: 6672752996979310592
X-Received: by 2002:a9d:61d9:: with SMTP id h25mr691439otk.27.1553621380829;
        Tue, 26 Mar 2019 10:29:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls4567023otl.4.gmail; Tue, 26 Mar
 2019 10:29:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQTIR2BmSjzJNnlroGUVE2F8f36M5F1Kq2adyxx9zYDp467gGVsYFlIdER5xO422nq2FeY
X-Received: by 2002:a05:6830:146:: with SMTP id j6mr771504otp.23.1553621380057;
        Tue, 26 Mar 2019 10:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621380; cv=none;
        d=google.com; s=arc-20160816;
        b=oFMeQ5OfvjeE1LZl8QDEQc76PaF/aODZwCQom3bKOxgwnqHj1PtFtNSlkQwzdsk8Ts
         CfIxuNW+3ZrJ/+0w0lEQR+LJ35odUYxDdbeiqxnny53ERnIwVDQYVYUHj/8i2Q0ihxux
         2VOc+T03wviN6rf5zlml31vKr2iziMFOxq5MhpwwKSwS8SuAMpU/kNzaVA//x52pnkTa
         HG/FOU7o9JyT9+8zjpj5JKvwnhYxqaBTmy/uX/BS9fTRC+n+7e8eSxprtO/OqiDSRVeH
         n6452eDaq5DRQnvvLrw2b6xIogdvzrni2oMddGmntUeZWdKiwPUCDEJyK9u9ahI/R4QK
         h7uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=KrNr9WgZgPzMBbJl1FHUqn8DMD5xEJXh+o7zn7EVYVM=;
        b=CYAy4t2BXlrMQdG7hckTjnX26VrENtvLQTwjFQs84StO62uLQh02b9fscFGbxRY80n
         BFjpGCcRo35GiMnRm/CC+SDDA6FQ7TEhWgvJwUC0zZzIAgpapJEg1j7dh4JLAdYSsnxu
         afxTFGmj3ngpRI7M5+f9bDjguJjRt5E3AkPknRrmLJgW3wCtOGr+9XW5RCgw0wmGhwPf
         IAwHGu1Ax1v70keTmxZoIEYFRFe37tYB53DQxi464kPblb2qrrMLts6F6FaMxLWDO0j8
         /Bh68jqGu30H4A6YyAyz85zqWUOXkvoPYLDDNg6TUdfkc9OUDou1dWuuZtnXIXxvv3vC
         Ygvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCy4laYv;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id x31si1083381otb.1.2019.03.26.10.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCy4laYv;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd36.google.com with SMTP id c4so11524792ioh.9
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=KrNr9WgZgPzMBbJl1FHUqn8DMD5xEJXh+o7zn7EVYVM=;
        b=bCy4laYvMc2KS0eStaTTm2bq5Wqd1Zof9Wgg67l1X8rLA7+oShxBqWpLRxeI5fO735
         wAm8xw6Ljq8WIXEAmA+BkiAGuc9q4te5nrw5FCiaAEAJ/fxVR3c+UBztTMzOO9y/MbuB
         QkSNZSDq1/yFiFf7jWLA4SuO6yd8A9hDB/P3w6e65Wh2NwS8amoPIjlaxBTTguQCtSpk
         +5TCHjhxD75poposjgRM45zEyORl0Ya8bz6IL1dgzBHAVEMDWArSPYgC8TGRco1hKjHK
         E1rC73TyYFFNY6RJxgUEnPxLpSueTdv8KWHJJKHcF7j9cT/3/molo6wqb4LRlGEDxXIc
         kf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=KrNr9WgZgPzMBbJl1FHUqn8DMD5xEJXh+o7zn7EVYVM=;
        b=UOd0QrbT9R4AHbyAk+VqqcznvwB3d+un33CK6bQX8vnzKWPtBdGWb/KQvbG+BIDwow
         oEnwgveGtrr4LaV7MoPLG7Tp17a0dasd1nIiHzbEfh9Rfedyh9Eec1fMDZB4qFZhfjgW
         gldYI5/PZppK5z5+bkMTKBvFXmXoQAKEKVsIgDz7Sqi9yUrQB05dTL8nkNozxHesmKE+
         unVkBXaR6gCmrKO9/zTYoeGAYOCU4TWtqmA09wSl5bLQOX9XzCXHe1CzFYASHJ+WQjpZ
         uuNruoTPrN3Y2LS8BX73Zmk/7Q3eAxcX3uYWNTK449znO0GOc3u2Li2q5Ui/8EDpCo4I
         gLEw==
X-Gm-Message-State: APjAAAV+1hS+1HF1ONTwJh28rDEGFeGqJr25TV0dfUnmE8wxkLMbikw4
	GP6Tj6toBaoULNv7worYb9ktee6KYIPw
X-Received: by 2002:a5e:c004:: with SMTP id u4mr6621604iol.13.1553621379750;
        Tue, 26 Mar 2019 10:29:39 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:413e:2bc:a081:9d66])
        by smtp.gmail.com with ESMTPSA id 15sm7263263ita.34.2019.03.26.10.29.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Mar 2019 10:29:39 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8712: Remove comparison to true
Date: Tue, 26 Mar 2019 13:29:30 -0400
Message-Id: <5dc2490453ad07dd2815d71caabe52957108ebc3.1553619382.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>

Remove the comparison to true in the if statement.
CHECK: Using comparison to true is error prone.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index f0933769cd36..bce899884ce2 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -532,7 +532,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		    (pattrib->dhcp_pkt != 1)) {
 			/*Not EAP & ARP type data packet*/
 			if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
-				if (phtpriv->ampdu_enable != true)
+				if (!phtpriv->ampdu_enable)
 					ptxdesc->txdw2 |= cpu_to_le32(BK);
 			}
 		} else {
-- 
2.17.1


