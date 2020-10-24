X-GM-THRID: 6887256226213658624
X-Received: by 2002:aca:c5ce:: with SMTP id v197mr6489880oif.93.1603564300130;
        Sat, 24 Oct 2020 11:31:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d650:: with SMTP id n77ls1147553oig.5.gmail; Sat, 24 Oct
 2020 11:31:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxit6etVFMFBWwMdGmLB3swXTe1IZycAQFpqEA3mYL/M396hNUP3xYt/WKGT4fhFIY8rtFm
X-Received: by 2002:aca:ad4d:: with SMTP id w74mr6456238oie.7.1603564299021;
        Sat, 24 Oct 2020 11:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603564299; cv=none;
        d=google.com; s=arc-20160816;
        b=BymYIbPQUZC4EPND1dxmRhSNXpBFxdOh05eF/46e6SW4/IJAbq1TXkUUIuzZLz4Zme
         oqR35HTLNe8IC75XHdG4y54vIKFdEjhky1jnOJHrrVi8b0kF3o1k20QrkVGby2aYY80d
         68lcjze05fVAMNvWfha4AW37mZP90/uWN9awSP1A3dJkqwUUUrN5d5MxE0EwrHAzOtA1
         XfBF2ohUR8DEyzj2x0W6LKHCWbEK7fAeu3vKeQi5i7jlTOzutMf4XyxyPxokbCY6U4+L
         HMxVlyRioNaMSxTVfuvsC0Hmiq2SExxwqFL7+ZHEI5SCVBzSwnLNEwdaezQlzMENq+Yi
         MA/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=MY2yoO6eZz2U+an1o7MJY9GCH/foQGo27yLaaCNEXbg=;
        b=WM079Qjzmp6Dj5vjoytnX6Qu4OD4EBshwQRvivUu6G8bXZRHTbwDqOSr92wD2mBlJL
         2fj31j+LDs4hkyYgW8N6S2SKYZ1+u9FEXi8HLY1S2F1vDh0dp40DxfKwNmM07gieP++/
         aijYHG7YY2i6kWkEoqaReo0noYbpMJYyawg7P8ybIrwNVAboAbWnGR29FeVB3KV6nLGi
         k7rwJc9Du1FzpgEM0yKJD0zscpUvmkhEoilj2N/1rEWKYTvxuEL9Xi3VMveZzoZX3NDT
         Az1yI3418NPEjugLsvTRK9agxTrYJcFB7uCehg03oGNMegSh4tRFM6izxnZ92C9BtSMJ
         aj9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2p3y98Y;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j78si377213oib.5.2020.10.24.11.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Oct 2020 11:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2p3y98Y;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id bh6so2676036plb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2020 11:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=MY2yoO6eZz2U+an1o7MJY9GCH/foQGo27yLaaCNEXbg=;
        b=t2p3y98YPa5wlh9vOmx3aFAI7PTB/Hfh/YKAK9+5pXcd6ld1QwRrs2E3wFG/I5f5VR
         wJaf7Z8ihzEyZz/MY9AcKPhHk6OFm1o1f/616Uu50M1AU/aKPRpfXfaZ25n6wCkhcPpT
         avSomRZrcw6dq2+T+n+/u3K8jkSRG1m7r06KCcelSKixgllaXuO7bGaJ3Y5sR+yVXOKt
         B+MSTryoVfpK3RAzfxaD1KK8m+p2HNPHhrexCV5t7qXeR0IYQh3CQK3XE8dPU6LDFAGp
         cISaWS4jO/C6Pbou4YzcrVqApzdiH2hxBEU4zY9WklFTEZq9cMgHodbrFAtagIGHpy9y
         SFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=MY2yoO6eZz2U+an1o7MJY9GCH/foQGo27yLaaCNEXbg=;
        b=n6w78GvotUIG6V6WBrsTmTy/O41qlcp/ygJR5vv5LTX+tf29aTj0b98aoLRVE4g2Hp
         Abi6iacQgMbhdk23iA0UiL91TIy1o1TY9koa5bzFkW0PsKq3E3WsgU883/pIFC+ZFEnK
         bVbohKkry3D3QPi5RzZWrmmdX/OlDmjhgSTv9omicS0KZjZ8RVXKQKGKuRdqtIGLDrRq
         4MkznmZcGuxX13n4n5ZTuCsMLx02MNYEm5DIdk1CpuuEhSIPpoEWXOqqrF3hm1rO8yaw
         LR8QwrmOHyJQ6fzWkkN+mPANsV87H9/fySa+5yIuAaYhZm9gDp65RDiJVRn4HXb9Mu7j
         rQIA==
X-Gm-Message-State: AOAM5305OrbLxrtmotWDBxvJu6/NZFXcX4Z+Uw4Eoeyc8TOsPQso1Ta9
	KZzhZ3sesGbqJ3Rvcoyaksm2ZOLZnM2XYz17
X-Received: by 2002:a17:902:8c8f:b029:d5:f064:3da4 with SMTP id t15-20020a1709028c8fb02900d5f0643da4mr9061059plo.3.1603564298204;
        Sat, 24 Oct 2020 11:31:38 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from AJ-T14 ([122.201.22.243])
        by smtp.gmail.com with ESMTPSA id i2sm7152463pjk.12.2020.10.24.11.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 11:31:37 -0700 (PDT)
Date: Sun, 25 Oct 2020 02:31:34 +0800
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: most: fix empty /* line in block comments
Message-ID: <20201024183134.GA15771@AJ-T14>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

fix the following warning generated by checkpatch:
networking block comments don't use an empty /* line, use /* Comment.

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 drivers/staging/most/net/net.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index b6fecb06a0e6..bc0aefe804b6 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -171,8 +171,7 @@ static int most_nd_set_mac_address(struct net_device *dev, void *p)
 		(dev->dev_addr[0] == 0 && dev->dev_addr[1] == 0 &&
 		 dev->dev_addr[2] == 0 && dev->dev_addr[3] == 0);
 
-	/*
-	 * Set default MTU for the given packet type.
+	/* Set default MTU for the given packet type.
 	 * It is still possible to change MTU using ip tools afterwards.
 	 */
 	dev->mtu = nd->is_mamac ? MAMAC_DATA_LEN : ETH_DATA_LEN;
@@ -388,8 +387,7 @@ static int comp_disconnect_channel(struct most_interface *iface,
 		ch->linked = false;
 		spin_unlock_irqrestore(&list_lock, flags);
 
-		/*
-		 * do not call most_stop_channel() here, because channels are
+		/* do not call most_stop_channel() here, because channels are
 		 * going to be closed in ndo_stop() after unregister_netdev()
 		 */
 		unregister_netdev(nd->dev);
-- 
2.25.1


