X-GM-THRID: 6661069764566188032
X-Received: by 2002:a24:3911:: with SMTP id l17mr1219884ita.40.1550901160684;
        Fri, 22 Feb 2019 21:52:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls988760jaf.3.gmail; Fri, 22 Feb
 2019 21:52:39 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbVkGD2oai+AaUeftjLvonPfJGMGOOx1rjd0Op9z49nNlxohlgIrEv+oO8RSe3EhYWKf4p1
X-Received: by 2002:a02:6614:: with SMTP id k20mr1135418jac.24.1550901159783;
        Fri, 22 Feb 2019 21:52:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550901159; cv=none;
        d=google.com; s=arc-20160816;
        b=ryVbZBCk7A2byUsBSTPCPt9JcXbTIF+ZeiPYU05CTsu6Typs2rd/yu826wp326NIEp
         etiGeutd86Gv1xf1G3al2PAqEFHcbheJ9IZUWfVkIPNwe9kSS9kHjyLLc31MjImav4CQ
         E6pdoLtERdgT6JkzY0IX6JS20ATTU4aU/AFoS56AUQHSyxnDD6jF5uTL3Cn+luMdJT+K
         rYPE7O2bbqOJXG2XLxEMEdOo+UVrPTonk8OdCjqT3Dt1nWphrDmjBwS0DLZIYlj1x4sn
         +DD79juj0l5z/ckFPeJaKU6HsL8zcIAbmA21ia1pNhNk1fcxsXqwsAjHFBCnjogS5jLZ
         nctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fxkl+IeiJ2E9q62tBSU4A5ydlQQ1TQcOzS73INYuwTw=;
        b=nIZeZE+yn5KV10ZyqonMOfSvrI5py0JQ8PIqdFX8sDZNevZuRxQeyW8jcIRqEmpobf
         i2c4vMaCdHrmovFRDEylmV9vOS0u4g03zJhHss2Ef1MQWkNZBv9abkNiHt8OQoQl6jcU
         8PR4PSpsQZ3slSDzqUv4Ki2mb9+2rdy3a0qLeAQ1roGPPbkjsiKylRLsyAlf4g2+D4GU
         /dxP//v98AhaIoI9JXevMmAsgq+FzpoN7XOn1EQypGbxRdnANYUr0tOydHz1fSwAEdoc
         chIkP5Kz9OpT3dXR8SdxSwmXrTNtfT475I2MxZy6Oyt/FpCYc51OKtV7JZV5Ev2Wib17
         5vuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPnzEOE7;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c191si183914itc.1.2019.02.22.21.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 21:52:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPnzEOE7;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y10so2058464plp.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 21:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Fxkl+IeiJ2E9q62tBSU4A5ydlQQ1TQcOzS73INYuwTw=;
        b=SPnzEOE7c6qphYjCG6yuUeZVD2PsH2jzAlpmsry85+A48ZB7L1MYJyLQE3cvZBuH8+
         onfgdekkx2SGmOOQACfPJZYMaNx6ojJIp301BKWDOrasI3LX24lBrMNJa3+0InIQNSzx
         XDpyhBIz80XOpHG3opO2J+a72h/Np8dX+mYA5D5+Fl8b6Jb/l5K8H5lzyAfHvDlksvhY
         RN4/kv6NOgutIdDDJTq9VmFbryDGYH1mc3U4Zx0mKwQyQA93n62eyxwfaNWGFfs3hit7
         U2GtmDXKy65aPTIIYCV+9ce3JL0hwLLPYA0p3ho0lCu89PRQmy+9zwqvJTJ0tTDfEWbj
         A6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Fxkl+IeiJ2E9q62tBSU4A5ydlQQ1TQcOzS73INYuwTw=;
        b=orUKTonba8G8PUeOLM+Nbqp2D3WZb/oTVwHDnKGb3ioXet6fSbUf2Au8FGPXDW6t3q
         Oo18gFVqXrrISicLgtD2ayAc2ANonCfJ9bKg3kKTc73wG1BQS7K8vIo4KRt70uPO7o7E
         ulOcchWOerh4Zg8Y4pNLWt14NaJu9MO8mbMPVnjshhObMbcSd7Y9y1JTZCgc579N+cAI
         97QFj/aq/LMHsJUP8MelC7mmf4++SwUc8zIX5VCOXjKccoo9SjjW7/Wd3IeLHBcwAYm5
         Iwmfdj04pIGYge0RpBX8dtFfhmopghhFh3H+OzckDt58hhTm+Hei8P0NlCqe2xCeWppB
         qt/Q==
X-Gm-Message-State: AHQUAuZmqIuixmn/Wf1+ORo0JOA3KaYnC+ZYTsxFvRuwpTkaLWGtHGpS
	TEZE1MCw34fn0FQVRpnFOtmxqkxV008=
X-Received: by 2002:a17:902:708b:: with SMTP id z11mr7925879plk.203.1550901158858;
        Fri, 22 Feb 2019 21:52:38 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id s2sm6243190pfa.167.2019.02.22.21.52.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 21:52:38 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH v2] Staging: gasket: Replaces symbolic permissions
Date: Sat, 23 Feb 2019 11:22:07 +0530
Message-Id: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Replaces Symbolic Permissions with Octal Permission which solves the
checkpatch.pl warning:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: Subject line modified

 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 151e8edd28ea..60590ea4b760 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,7 +40,7 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
+		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
 		.data.attr_type = 0,                                           \
 	}
 
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.17.1


