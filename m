X-GM-THRID: 6399870143121326080
X-Received: by 10.107.130.199 with SMTP id m68mr8632645ioi.2.1490085897088;
        Tue, 21 Mar 2017 01:44:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.99 with SMTP id i96ls4227057iod.45.gmail; Tue, 21 Mar
 2017 01:44:56 -0700 (PDT)
X-Received: by 10.99.151.10 with SMTP id n10mr18968300pge.9.1490085896600;
        Tue, 21 Mar 2017 01:44:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si3338048pfx.8.2017.03.21.01.44.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so21062976pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TuCJUdY76TH3BWzMIo+ePhVuIQlDlPWjlig2ne+8zsk=;
        b=okn1OsEGuuhmB+Ndhd6X8sHqOGn2B/BwY936YYiMOdgclHdSj4VaLzYvnU7lEaNOK1
         tswBIu0A3xTau0Zt+ht5AH3SKG+T/s4CgLI9Om5FLcuVsq/VlGs/lLmAWkBHDV0pjlH5
         5N6qm3+SXB4wLp6+LEVVhgMTbVPd3kFn5GpeTCgDQkfNwjXeg7Hw4qCgZiiLRVWnt2vt
         KrgS6NTfYxueIUMhc2RXwfEPabMUZ4xcO9HONWoaCxFMbUCh/0+BdEEOgUsxOt8gfSMr
         LvcQqTTCyIIFxH39gazAEkksUO8vCPQeUeg81pIjmvz8J6zf9DxrGNc5cuBTAtaL65ng
         y1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TuCJUdY76TH3BWzMIo+ePhVuIQlDlPWjlig2ne+8zsk=;
        b=gwXRMp4T9ytONkd1+E2Ign/Ssu2+K6YJbJ+YJ4IaEADO04sNb8kny3xSsFppztP6Cn
         6nfxfptz1UItJGLHKj3OJDw6/vtsb+2/O/Ezo7eEpPd9DWDnrH0/B7BSywhVaSwl2fj0
         pIJIp+kRRSc+L+8/PHk1ZB56O7pBy+wzfz1j3OnUD6t8y0LSf9lHJ3FHMxHvaGbyldRy
         lcGGBa0QORoZ0LhvF2tuPVubLGYFYGcO3hWDR9z+jfOASIC5XIAE/3eE6KHv1qZrqW4r
         F04nX7gJSuVjK5vPbHppZYJVQi5z/LWH1SOU4iCST+8YZ+SgahlcxaEhkN/8apGpOWcF
         t7Ww==
X-Gm-Message-State: AFeK/H1pQKnVY97EsP7IoVoDvyHmjMRkyyonlU1AjE27Xjgf16mkKkfawciFDCmUAdDIBw==
X-Received: by 10.99.64.70 with SMTP id n67mr36672464pga.53.1490085896386;
        Tue, 21 Mar 2017 01:44:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t70sm37673692pfe.64.2017.03.21.01.44.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:56 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] netfilter: nfnetlink: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:38 +0530
Message-Id: <1490085879-1827-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure. When NULL
represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@
e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 --This is my contribution to the netfilter project of
   Outreachy Round 14.

 net/netfilter/nfnetlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/netfilter/nfnetlink.c b/net/netfilter/nfnetlink.c
index 68eda920..c39f16c 100644
--- a/net/netfilter/nfnetlink.c
+++ b/net/netfilter/nfnetlink.c
@@ -232,7 +232,7 @@ static int nfnl_err_add(struct list_head *list, struct nlmsghdr *nlh, int err)
 	struct nfnl_err *nfnl_err;
 
 	nfnl_err = kmalloc(sizeof(struct nfnl_err), GFP_KERNEL);
-	if (nfnl_err == NULL)
+	if (!nfnl_err)
 		return -ENOMEM;
 
 	nfnl_err->nlh = nlh;
-- 
2.7.4


