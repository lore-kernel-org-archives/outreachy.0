X-GM-THRID: 6754760383787958272
X-Received: by 2002:a17:907:10d6:: with SMTP id rv22mr10926164ejb.331.1572740368937;
        Sat, 02 Nov 2019 17:19:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:88c:: with SMTP id e12ls2719510edy.2.gmail; Sat, 02
 Nov 2019 17:19:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyosDEdGRJg9qYC01gXbU1gP0JflLznmXaVmZwVNYYlq8le9ETdq8xK7pqfcsy5Zpe0csyK
X-Received: by 2002:aa7:c894:: with SMTP id p20mr300071eds.145.1572740368102;
        Sat, 02 Nov 2019 17:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572740368; cv=none;
        d=google.com; s=arc-20160816;
        b=sgA89Fgs63hFaZxQ2Zh5GeftYcpCn+53tSy6bh69lN8PfKoGRxP7u1CxTFF3SrdHn9
         UKxlL2oHJcKLBDlCPiNwAcWLmiR431v4+3dM6Z7QuI5yl3knsZARRwHVKx/Xo+mFgvux
         13p4ssbY22N0CP0EJoMjeYcc8zjoIwVf+clcxEGiEx4rTxKg1RRMB8j6D3ndqvzj5X3C
         +H/kMMO5zKUxLM03ZyJ+njqNPxuUQ+lE3GJBKf3n2kx1wjgnOoX380z6+kvDFRoyfag9
         BPSYg3KR3zHzU5VSv+oFEGhcrmScITiROzkQcgWN3gLs14sh89aElOumxfhrtb51ojLo
         n5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QXQf/PlX7f9870L+6yHJToHI4phVQ8UWkAZkgY66lak=;
        b=ZXW27zCVIYRzsnZuCl+7qs6wdyXDTQgcs3bO1C+M1u8HFfTJrWuKY3zfHdrX5U2okp
         WagyGLeDNoHs3RTbjHfKLRU7yPnc1pN9i8MZpuUrEi89VIRrVZvfrOhgmRuBTZ12aC/s
         vCkhO8QPDMnss2Zze3qB+ANmy6RcfEdYwsBXFVr7YExX5UTU/2RlOxzLLVQLLU+bzRDS
         o9u1GULPA/apTI8Ar9JdAHFP+glLezThr80bYNK0MvF97vRxQMZU8Plkl0GiUOJgG5u8
         O9gof/j+xn7ES367Wbc3AqQ47Ilhm3pvQlZhiF9ZXbbgivKOgoDcJboNi/A/Gw/w/mm8
         TzEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1fsM077;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q17si1078567edi.1.2019.11.02.17.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 17:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1fsM077;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id q130so12474620wme.2
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 17:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QXQf/PlX7f9870L+6yHJToHI4phVQ8UWkAZkgY66lak=;
        b=G1fsM0770UisA8wnUUkNaO8wAQnnSzJi0XWcjkDd3pLWeaqoK9/aqWT3oZuZ1mTx6h
         67b5fIYmlJdrgDJXexxoy0D9rx6F0DPvNXQujItGiKzzil9AvZBI5tmlhsxLJYtbbBDi
         MxFrdYAocLbMZ1qOVRajgjMoPPM17uU5ioKejtAVoKUIXZVSWAjfYWLI/hD8qzvR77Hp
         toZgSmm2X2ezJBYwkqoJjx/ztUPOFqpvyfxW/fQ4fPGVGevrnQkxMSuzqB5vRZUHeHPG
         8zyR1JTa/5uK6gjTIJGjihv3WTAViTUWDjcDTSszY4avVm7OkrPFZ5oic5r9WTuluYX+
         zyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QXQf/PlX7f9870L+6yHJToHI4phVQ8UWkAZkgY66lak=;
        b=hxh7eIIn1CBf6E4py2TpGm0dgzkwzuUsYMZpky1m0NWHmVahkYuHxf45X1ESgM/hST
         kfiUlONRE/Dp0QCUSuZ+Nw3XmRC72BfLcZc9CotPZLQ2VFGWXtMb9EmetiEz3hPqC0se
         Qag0kfYEWIL8VUtTpS49IBnx4RtFSRvVgMq8Mirnr+4Q93+Ff3OvviVMMAcRU9Ci2vKu
         s1SIbYj7Te00aE3tuS8xzrdN7xbZpUMcIc5js65mGBts1GjLXlNyDT4BUP1izXuTTKWF
         EWgdj3vymwNjdPJRDsb35QlW4wNzfuo6HLIl1Zom8pYupVVoRxLHoJqNqJ0fvfZNQNqU
         an4A==
X-Gm-Message-State: APjAAAVeS/rbDg5G86d/RI2clfD8XKJ6DglgKMgJm6eLrNJSLhCtGbGA
	8Ypkl1X2on1hycJ52VA0Us1yuJYC6qgEKOU=
X-Received: by 2002:a05:600c:2904:: with SMTP id i4mr12837622wmd.113.1572740367585;
        Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id d2sm18237934wmd.2.2019.11.02.17.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v3 2/2] staging: wfx: replace 1 by true when stored in a boolean variable
Date: Sun,  3 Nov 2019 00:19:11 +0000
Message-Id: <20191103001911.10066-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191103001911.10066-1-jbi.octave@gmail.com>
References: <20191103001911.10066-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 1 by true when it is stored in a boolean variable.
Recommended by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/queue.c | 2 +-
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 5d29bce65f71..71e92744fed0 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 			spin_unlock_bh(&wvif->ps_state_lock);
 
 			if (vif_more) {
-				more = 1;
+				more = true;
 				tx_allowed_mask = vif_tx_allowed_mask;
 				queue = vif_queue;
 				ret = 0;
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..ea5707ff8847 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
 			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
 			i++;
 		}
-		wvif->mcast_filter.enable = 1;
+		wvif->mcast_filter.enable = true;
 		wvif->mcast_filter.num_addresses = count;
 	}
 
-- 
2.21.0


