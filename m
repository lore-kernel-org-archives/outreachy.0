X-GM-THRID: 6254513741412433920
X-Received: by 10.140.30.99 with SMTP id c90mr17271387qgc.2.1456481116674;
        Fri, 26 Feb 2016 02:05:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.148 with SMTP id 20ls669859iom.103.gmail; Fri, 26 Feb
 2016 02:05:16 -0800 (PST)
X-Received: by 10.107.130.28 with SMTP id e28mr6323304iod.34.1456481116384;
        Fri, 26 Feb 2016 02:05:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si1951973pad.2.2016.02.26.02.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:05:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id a7so2944067pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wt40/nul7vaaJ3fPNNm5oDJ1vT2PLhbdKPUxW5k7JbQ=;
        b=qRrn/rrG36QwH90Q+saUWuK3ZgW5qIIhg5L+9b4+BNcLOXTjTt1S6bc/qYEYI6Xvoe
         uSIeTXdr5eCzetRrYzneNjAoZT9vChXpED1Apo8e5Q6CiqduOr3BG5l1GqEzlgWWflIe
         lLrexNHyrZGI8qpbXPycUFMqs+NTeQp0ApKap2LSbgqnUggoffsJx3lJ6yb4/8yGEmaG
         ze3vBV9r9wvN22fSN/ImwmnGRnBJ1pcZM61bo+9RFi4juEakOy8QhBccc5vPWlbManze
         mi5LOOWTVbmYhjKfp0yqWHLGyVkD7wIv73jbBohBpnYh2bf9S0D70+oJknmQz58qJHe/
         NpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wt40/nul7vaaJ3fPNNm5oDJ1vT2PLhbdKPUxW5k7JbQ=;
        b=eand+hxNVsFd7RQWHs7GJDOXQebUkiDXhLX52A9924URUsG9i1iGEtRHERx72Xsdzy
         +tej5HMjTp7uJqkXBGJ/2ZO04FCLcDmVoE9ZMzzAJ/QNb6b9GIiw5jvGsWfqwljWmiFc
         SDmDJ/ji+0pxBKRIHAwrOn9qHD0UQwFEbz1SKlEGhkMkiZbKpVQi8t7V5NbSu/OD0j8r
         g2Cz7RBdHksX6brIB1zz0zqo/VWwWXLPIo0eIB+Noo7a9SAJX8An0aJ/gc8/NOIAHki7
         moqLZ07Fit2jjHfMGvAsRO5brOy+dkBFhRZCmyPdBb1MivwnVwVFVQr1L/5WN3h6om6j
         ZmiA==
X-Gm-Message-State: AD7BkJKb7T2jMY9j4dBzSPFrU6TMBsyLG4Cqg8MIYmideUrQy6Cpv/LMgZL7BSZ033yzxA==
X-Received: by 10.66.146.100 with SMTP id tb4mr772943pab.99.1456481116252;
        Fri, 26 Feb 2016 02:05:16 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id cq4sm18151876pad.28.2016.02.26.02.05.13
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:05:15 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:35:07 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 3/5] Staging: gdm724x: Use min instead of ternary operator
Date: Fri, 26 Feb 2016 15:34:32 +0530
Message-Id: <1456481074-9898-4-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
 <1456481074-9898-1-git-send-email-bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.
Changes in v3:
No change

 drivers/staging/gdm724x/gdm_mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 937010b..6bedd66 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -433,7 +433,7 @@ static int gdm_mux_send_control(void *priv_dev, int request, int value,
 	if (ret < 0)
 		pr_err("usb_control_msg error: %d\n", ret);
 
-	return ret < 0 ? ret : 0;
+	return min(ret, 0);
 }
 
 static void release_usb(struct mux_dev *mux_dev)
-- 
1.9.1


