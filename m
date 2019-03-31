X-GM-THRID: 6674450234072891392
X-Received: by 2002:a81:89c7:: with SMTP id z190mr5464968ywf.25.1554029364080;
        Sun, 31 Mar 2019 03:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3a55:: with SMTP id h82ls1979063ywa.8.gmail; Sun, 31 Mar
 2019 03:49:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwj0wnT6qsmRIb7nkdzEurksOscL/eDz4XtDN0eEHs9lJueLT465sMxvqKnWeokiv6BGIms
X-Received: by 2002:a81:994d:: with SMTP id q74mr5487299ywg.18.1554029363594;
        Sun, 31 Mar 2019 03:49:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029363; cv=none;
        d=google.com; s=arc-20160816;
        b=nM511EKvzjPKuc9UkVq/BAz28QFsMr1+9A4mGruUkQlhkOhMZh4rO6lEUTrUsMyprz
         KV3QsPJXupS/WQac7PNzUHtNz8RvBNL+QnYU0HpoRUI0GOTQsdRGLRJ4Zdu3zsySp6tp
         QKW13O/uaFBjoAXnQneMzLURuTJk5UkmQkg5BOkiEMsnpV9Z0b8P+zBFzaz3n90Ygx8e
         hm3aQOlJDUEAHIQY4JnNQMSwzwlWzpBlGDt1iEK5lmBv3b3RyIu67VIBBbAOLrTGDmwu
         7uvbRfmBYgunOqoqJmirnPnZHzayriJVQw6wB6CB6SNl488zXi8Ird0EKfw5eVpZksm1
         XO+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=wbarUJeZ9Bxvbzp67O7Rlageuey5eh7KCn2UMj/VuW7FP3VV3CgKS14BK1mZI+MIs6
         jtkw3GGwSt9l1kocsE1ma7J3oCIGLKa4zj8DIYL+GvyZ7/l1eG1drqRctUMtssXp2E8G
         4+7BjKvBXSI9ZnE6CIKYdJK/7ZVtsQfV5tmL9tCONIZHpORdTPNaOmtx28DQyPpRXo3Z
         4zfS7Oo7Vik9RiCkKhgvl9SOU1yvH20tQEOgcAFgMRjL12GYI5zKTJSS0GG6MiMiBxMP
         SrfnaOHxMMSPJn5oYvzhnEYrEsFrRK08FTosp/Weh1wC/N6g3EuGYjvCwvxmK1KMxLtq
         kmCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaI+tDhZ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e23si384949ybb.1.2019.03.31.03.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaI+tDhZ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id m10so3062742plt.10
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=FaI+tDhZBu4IjszHpmrvcCXIohgp+PUuLZlOOQWOJxBugk5GjVUqEPmlm4Q8aVzV2P
         pYVfTXap0J9HeSuzYfjl8RTkKyRT7eCaliZZDNK0k4eKS86lZk4D4yXmbP3X/uoYvbeA
         IOO/KobzTU05Dsrf93Ug8D85QYKQlKD8FwqKE0vjyOzF6vwveJMH1jeCfKKZT5KsiS5/
         w5F9sKgMYyopk1KIhbwkwcH7ZIaYUEQHoxozxh1n9Smfrnb6m0LNbIMuMEIGh/9w3BWE
         J8hXh8IHQANeA9nCA4C8vq1+Z9mzrd7IbI9fTOq5UzMUIIPrOYxKuj0LGhVGkWghWXel
         q0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=IBWoLDq0g2PkSewtMs8EHHN9dPOGB172KocK7/aqx/jufOMKySygUTSZTXyOKYUQXv
         qMZVOkM6QgpC1QmxJsBRUSXVyJypq/XMvFqfSaINnowP0g/6yYxsaD6yw0Pj5MHpY/tD
         hvIvX4ZKJ3uWi2rjMsoZ+ovBnur6YxutKY3liU48vQ8v7fQ0GmOxP5L/PMISkPaJEEpK
         TKlBZVDs9q7JgT/J9fUfwfX9hR5kJx6iNMo/IfnLeZsRjQP9vfsQxYkmUJDgZw3ZBJcw
         QjpjTNkKVH/HQIRsf2oYjh7F39Z/vXqeJxLwBDv+1BsXkmBJqUanrRW3KQAzEqdYNdB3
         rlig==
X-Gm-Message-State: APjAAAU+HNq/iJmGUdAvmJxHfaBsZn+akGBmQeFk7YK12RuS8mHQ4nHE
	G49GBFYCljBE9q7Vr89aHhZZXsQS
X-Received: by 2002:a17:902:b181:: with SMTP id s1mr58160933plr.321.1554029362562;
        Sun, 31 Mar 2019 03:49:22 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:21 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 4/9] staging: rtl8723bs: os_dep: ioctl_linux.c: "(foo*)" should be "(foo *)"
Date: Sun, 31 Mar 2019 16:18:39 +0530
Message-Id: <61af3b275f0e59084f5ec17295a9f5febc24379f.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Fix issue - "(foo*)" should be "(foo *)".

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index d68d9c8..86c7c9d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, blInserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa *pPMK = (struct iw_pmksa*)extra;
+	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
-- 
2.7.4


