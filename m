X-GM-THRID: 6666820090157072384
X-Received: by 2002:a81:a10b:: with SMTP id y11mr14735169ywg.15.1552318920711;
        Mon, 11 Mar 2019 08:42:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bb8a:: with SMTP id y10ls665485ybg.15.gmail; Mon, 11 Mar
 2019 08:41:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEGM6EJuITdiJCoaQZWgkf9vTVAlFX4tO4A3NGqzl52+AY8Sj3FLTCXuag7OqszE5H88QZ
X-Received: by 2002:a25:d393:: with SMTP id e141mr13913550ybf.3.1552318919877;
        Mon, 11 Mar 2019 08:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318919; cv=none;
        d=google.com; s=arc-20160816;
        b=bZoe6g5e+9Ie0WwEilM/fD5Fa4MmptrVa/kTLI942qaA5HT2u9kmPw3lF5o4M2P1yF
         b9ArXHfnllLT2cEVHEKIJVLkjCcuwnLuwW8/QHs33wz4myxwmkY70oBGcFNEI6S28cTd
         KlvB3X28kF/pkulPOn1EwW8L1pTG08OVrTskxprZxNYilZV/3qDuntu54FJuldpPRtp2
         JEU/LzFIST8PPaj0Gh/cjhXE7uSsytDBVjfbxxhC8xiFYk3il1YF9QqGwkfdP0sCuhvQ
         +mOoCD7KoaZsFwI2GSLUcvJF+XD3yhmk/FjYuqcLe2mxlcK1ubTz7NDS3tU+hNWhBUaZ
         EGhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=PdeLdN8EVoZA7QvZUFOmpoxtMMvnOwLSsbCu49op+XlSQ25KZV0HOulz/XSn3858e5
         BP5Tgt5GKV6L5MDb/exD+xUhcQ7Ng6edyjdRBQxoFOQatRGu9HG5flxFvkiF/y9h5uWV
         Y1R0NUlb3NRkzfF9ZVJazfDRGU9ZvzZarSqGoI2rmwBcZVPXMqOv4I2SGbu5k3fdvScg
         Aj3Fyi7Js8DaLxWWxM1coMVR9LFcSp17w4Y+n+Ab6vkK8rscrirOLke8q0tmXbR5RQ5g
         6p8H36eeseIQQpI+cbfbWdU7ypPrQ2QaB98ZhULU2CfQ6p9XJekBdxTVPud30sgjIqpH
         1KYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICVEl064;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w7si254750ybk.0.2019.03.11.08.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICVEl064;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id v12so1333980pgq.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=ICVEl064PEi3sU2TeqSZ+O8cJwcUGiXGTJXy3aWV67KK442IE+3r303R9VxI+O2QG1
         EK+GGUgjHRpuFtwTqckL0UkWFcTsYeXb8CN87D0F2yfMPP+3lxWU2Z5jw//SSDLMJ9Tu
         3/tXje2xMIdXK90jigpU+9EvOE0HLj3w/wJoey7RfNCrbnxuNYjcXS/Qb49I/uIRqdg6
         Ef1+flK0Eq2ZHwRX3x0xM6lb+kRoT5F6M0KBFqA8UDGuzKs/zN9GsDjbLhjHVg2fJK/Y
         rgP2JmF3bpdQ+zuheB3uTnZFwMJwLZazjf33wyRw3b7BHvnAOlW77dqqmEoSwDh4YJrg
         68hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=TWtmcwHbu6/boohCzEQHFCiUuWykQS35scZEUYJRozmHQ5ayc1fQFpwuYNRJLmVaAa
         rphEQoVpII34nqnhFmBdhDQZLFSeBD4LJXn0Sf/zZ67paX7aKZ52ZNYTksCo9bXN4T8D
         RBimyC504EGiJfWoByncC6Fh4tk3hZXwXVjpfQFjgfGCF6/QpE3ZnyW7GPXCLnumdVnd
         AKoVBqWcZN9PkLh/H5qAcYfg5g/BixP0kJGW/GMgRJsdhOvTopGlJCS5e6kPNA95NZQG
         GWauxmbMnTVFEOMLr3vFMuwlj8LNeNZwqShGaVrrYMCicvTDPHfc4XmkkklYKPXBCGz1
         Pbnw==
X-Gm-Message-State: APjAAAWJ15u8EV7hpkeC6C6edmilLGXL2Y60DNcyBm0AJruh0FpeMlwq
	S2GGPByTealn3SNOAa5euKFGiHIfYn4=
X-Received: by 2002:a65:4843:: with SMTP id i3mr14442654pgs.176.1552318919361;
        Mon, 11 Mar 2019 08:41:59 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.41.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:41:58 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 1/7] Staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
Date: Mon, 11 Mar 2019 21:11:35 +0530
Message-Id: <20190311154141.31401-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs bandwidth_autoswitch and *pbandwidth_autoswitch of
struct _bandwidth_autoswitch.
-Change Structure name _bandwidth_autoswitch to bandwidth_autoswitch to
maintain Linux kernel Coding Style.
-Replace occurence of bandwidth_autoswitch to struct bandwidth_autoswitch.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 8aa536d79900..ce79b8321961 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1462,12 +1462,12 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
 	long	threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
+};
 
 
 //added by amy for order
@@ -1871,7 +1871,7 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
-- 
2.17.1


