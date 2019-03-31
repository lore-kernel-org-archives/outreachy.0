X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:cb41:: with SMTP id u62mr4271itg.1.1553998944913;
        Sat, 30 Mar 2019 19:22:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls2251910ior.2.gmail; Sat, 30 Mar
 2019 19:22:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8HJkPUY7DgQrd7KpCR3T+/1zU8A0hkFZSON/5BNYRkk8724ad4okNQYGXxdXWNb2JM2J4
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr8180178ioj.16.1553998944252;
        Sat, 30 Mar 2019 19:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998944; cv=none;
        d=google.com; s=arc-20160816;
        b=wNH/4EhG00KdopIJOBlmhe5aaySkrTcLgrUSlBzCIkrD1jTqggYKAnD3b30mmM+7m+
         zP4YnftsyOTWIUlIJIelzIf6VAftD8oJl7pGfdsSFi9hJCSqiipbQt/8KSfZQKxUusbR
         tN9qYYzZpOhKU3w7Q0Wtg2ZDGKwJXERJgpXWp7Cut+ISYBnXlhZpXNYTRMUx/7ohoWgx
         7oy3Op8uQZxcTo0jcNQagB8Js1Kk0lH0kkPN+muoiCpCZ0drhIN5U9Deh2bIHJlWOClg
         MnM/SqHBZ3s4x0EgzBKaBophPXyJSpRiulisf6xf7fOlVFtH8XDJHPfcZZyGlRSgL+Bn
         odFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0jhEcoBFWEbReR2wwFmh4F+zqw68OKNOSPCio5bGhT4=;
        b=PZW5lOXTcZWkhauSnJFhGoyN7/fNUAD9xL2WgUtRCZZKYM7AOjhvJzxsKcm/Fw86mL
         KiGAj77pHE6FzVXZ4neujYUUSnfJ9il4vdENQUqsBZBYlZ2ggLF6R5ONtrySYdQwNQAV
         81w27cGog/DjR5kbGnRhZv03waMCBrXYF9cNvD0Jtb7gipqkCRA2aytDtW50XDUy1BGo
         fQqEmovKu6L7mty1EyH8j5YtpiAUd0rnRZMKVkUfgjvDTFPwk6oLVRurVMDwRxFEpIlk
         kEdn09jKqI4nLLpPBo6CkzjljyGZXibMY9HvElILUk3pjsCn17EPiOu8rVcLwI4QFqZa
         2zhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcuCliyP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id e74si310530ite.1.2019.03.30.19.22.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcuCliyP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id b88so2268037ybi.6
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0jhEcoBFWEbReR2wwFmh4F+zqw68OKNOSPCio5bGhT4=;
        b=ZcuCliyP7xpUe6Y2SPkwMyaGMpItMjT4xz2youHgk0o7vWO4fOWhjdpm7PU/67k1n8
         0l+7qI1D0Ep6HeRcik6bQgULh5XtcDfVbv6X89H+lbdnhAZSJH/RplC6m/zjyo8JFNUw
         mJvyGoZ0EoxZSgTMTsrkzfKxu7t4XaMq8b++kHZPHeJcyps3hpLuKw47RFlHZOh1F/mJ
         0eE2+39asHCYUpCRA3Y8gh9tXYD7Ys2AqqEWB0y5V29bDz//hgVV8YiAnkmrL2vyWVJG
         ncTzvYOJYhIM5GhKykHkMrXsWSUaH1gh/uj4Dcp412QiPlyqnXEKjOWrwe4s1UFEnajP
         D0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0jhEcoBFWEbReR2wwFmh4F+zqw68OKNOSPCio5bGhT4=;
        b=nSxN8Df0qQV3X7hQbJx6eXTkyg7ymvsGFkx3bcaxXmKLwOyPo0nV2j1as22xG1/Aee
         v54PKylyb2t0ZDikckQWBpAJFZW+iOBKLrSoJUIdpPBGABsTZu52GGAYEl9srJJzwVfo
         1+JKf+9bxkgG8M4xYZQI56KjaqeQGFB4eF9yiTna3UKxgFGE9MN4+eAJNHDfI8eEVJpB
         myXTvyofWkdwdEugUJR/gYhjsMWfkvWi3ZEGptcPRA/uTrss3qf4t5wxusEwhmSNDLoo
         i8rSPQ79wX5bFgMpgfw/8UeKTcsWzZaTkfRne4yl5Q+jahW93dV2UGJBGiAK9eRiULb7
         ixHg==
X-Gm-Message-State: APjAAAXnipF4aFoNyrrLB6eIYP72fFn9QMbnaZ7HbKCBa089U990EZ6E
	DGzoP5/oVhIUtMEQ07/aLRs=
X-Received: by 2002:a25:1945:: with SMTP id 66mr45566892ybz.197.1553998943696;
        Sat, 30 Mar 2019 19:22:23 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:23 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 5/7] staging: rtl8712: use list_entry in function update_scanned_network
Date: Sun, 31 Mar 2019 07:51:53 +0530
Message-Id: <20190331022155.68569-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to wlan_network
in function update_scanned_network() because it is a better
practice to use list_entry for such list manipulations in kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 05bfc2a60eb9..1a15c45aa83b 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -370,7 +370,7 @@ static void update_scanned_network(struct _adapter *adapter,
 		if (end_of_queue_search(phead, plist))
 			break;
 
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (is_same_network(&pnetwork->network, target))
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
-- 
2.17.1


