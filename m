X-GM-THRID: 6803716874412490752
X-Received: by 2002:a17:902:7241:: with SMTP id c1mr13827627pll.301.1584113807142;
        Fri, 13 Mar 2020 08:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls4514452plq.7.gmail; Fri, 13
 Mar 2020 08:36:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vta8GeyUw8dilGtZYO9rHayAgQ0o9k+1Wh6ipDxitKUx6EEZVNhmcYrR4j6cU/RH+23JHum
X-Received: by 2002:a17:902:ed0a:: with SMTP id b10mr13923334pld.6.1584113805631;
        Fri, 13 Mar 2020 08:36:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584113805; cv=none;
        d=google.com; s=arc-20160816;
        b=vm8bv1NksyhNvyP0OtvaHTzuw/DJNHcL9ZSP6KgiLDxHD4B5GXKvafvDNdNhta1W0h
         09YLjz235DFkGOfEKnGHki4CfZaO5ivzA2joByCa8Eff04gSuumpHylYy2D2LvuVEmWi
         upo1SW2B8aQaD54pCGiXkm+irGyChumNYbWzgtr/OP3klNB1pFLt2Lfh1g2YtryNB+JI
         8VCicHjs9dRbQ/AuMw1XSSnMj+LPkd7YiviAH/FI5U6BpsIXX7nsGBbGnvinH6Vth9eX
         7L2vxCn9j/GeBsDExqmS5UPf+ay6KcloAWK9dxlpBYUV2+JpWR/Y+e4Xd140CoL57cDd
         IRcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=NzJUsILpGLU8bVga5l+c3XbbwOaLd+Ur/lCuhoi80Fg=;
        b=eABKS8pQcabXkufzsN/11u4hrgWiys9p7NrLAfxdLAEmExQs5q8yGcDvT9mQ/kVNg7
         OR5N/GciDgghcj6pJTl0kMVhF8N2mt9kmHuYfHF+9y90kIvfAFhG96eLNi22LMjeqw80
         a+8SCiQocr2DVKaKcTWkWwLIVrVtNpNMPiqh7QjnHCUEz8Z72JgLi6droqlCI0F4ZkBA
         RdftL3Qn0PRPBSyOO7nystffR7mhg3j9Qd9IPTL9GE7KMcdhlBqZDmwjKlMVzEafXbk3
         ioJHNbaQMmwFPD937mLs1QMsegH/gEpB35gkWbsuztWfHzl4Z4YXvlIFifZmCq3YgSQX
         odkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hfLkrtYp;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 59si361631ple.2.2020.03.13.08.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:36:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hfLkrtYp;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id np16so4309869pjb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 08:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=NzJUsILpGLU8bVga5l+c3XbbwOaLd+Ur/lCuhoi80Fg=;
        b=hfLkrtYpdcWXHpkMuUYTNA/1O9RDS7SX6RbpUfY+p56YFR4MU4NZCZSDwjiGmtLFzs
         HBdycOAWcEZiQoodluGu/2uqQAol94aUqt9mGj1FS5mH83UgdSQWlRfiFiH4COned1Xu
         BvoCj/Mnd3PjlXIW5zXXYoysDBIoyuxAt/0U9s0irDEJHpzo5yZxjE+P8gzgvjqINBZT
         V+YEvPtRQKuV0sjuw2yPeR1YocRPyLNK445HCdb1xGtni4rbQlo/EFzvmGsF4+2ANx//
         KVfQnxHspy0v7ImsigOK/t3ENtdTyuw7EB2/oFLSIruH05gyOGj/PHGECB0qabJFqBq0
         561A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=NzJUsILpGLU8bVga5l+c3XbbwOaLd+Ur/lCuhoi80Fg=;
        b=g1Y2FLzDdAhwrPPq+ttzNzhOA2WDpG6EJ4TB7n4qWXXqp8JwMafCNiWggO5LH3B5PV
         DD24UKGRc9InQsvoYP6NQR3pRoK2PIHWZwg/j4K7j4QXCqKvmqJ1Q13EaxZFRT/WGPUq
         SnIkPG+sbnlqIwGq8G+cT62DxxkN3YhkNS98lWMmYckwh829mcmoMbUKB4I6A4mkN/ih
         pYkaYE30PvEKxgByjc9phlo8pBIlHmzm5Ns3Z6CwBq+mJApGBJBv0fBbOjBXF1oP1kFg
         L9/wh1au6Uvg/9nnVL3RTnzc+fNTML0KFBFlXLcpeCzrYP4N6L7VxkJ9+ccWclqM3t8q
         kQvQ==
X-Gm-Message-State: ANhLgQ01caRdraR6QN/BuPcLW3gEQztW7OpfBWDdW5MLzJHDXsj5GUCc
	M7QTXvMG7zABT+5JVKpfWWk=
X-Received: by 2002:a17:902:b103:: with SMTP id q3mr13719426plr.262.1584113805273;
        Fri, 13 Mar 2020 08:36:45 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.225.150])
        by smtp.gmail.com with ESMTPSA id b9sm28175860pgi.75.2020.03.13.08.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 08:36:44 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 3/3] staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded variable
Date: Fri, 13 Mar 2020 21:06:10 +0530
Message-Id: <d2f2d2774ba625346b067e53aa5cfa99816133c6.1584113084.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>

Remove unneeded local variable and remove blank lines.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 30137f0bd984..9ff35a2da024 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1390,10 +1390,5 @@ void rtw_ps_deny_cancel(struct adapter *padapter, enum PS_DENY_REASON reason)
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
2.17.1


