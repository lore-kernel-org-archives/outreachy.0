X-GM-THRID: 6947995427572547584
X-Received: by 2002:adf:e78a:: with SMTP id n10mr12816792wrm.26.1617711001824;
        Tue, 06 Apr 2021 05:10:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls11736271wrb.1.gmail; Tue,
 06 Apr 2021 05:10:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx3fkT+id9ZzwT0Ja52eak4hFK6bfJJMvsZCPcVgJsHgisXnvr06fjcNhfM39JKSVzQfI23
X-Received: by 2002:a5d:4bcc:: with SMTP id l12mr35096112wrt.343.1617711000400;
        Tue, 06 Apr 2021 05:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617711000; cv=none;
        d=google.com; s=arc-20160816;
        b=pv71V6VS9uvxUNeLxMo0Iuf0bRWrPPTRFBVyydEtFzEapggkMONjCfSd9mBrLnnVE8
         kom6YjaFY4tZJCxb66dPdpsXU2yel2LeVbYo2oSDptDzuu0QG9QwHIBQ9wJjPIAY8YyK
         4K07cgin2pzSVbwaW3y99xmlUK/6sl+tmWt61whyqp3VDxuhIF6ZX306GhveSOmfNQrd
         iQAajcq1ic3N/r8DvHjVVwD50D9nPZwzFyX6sCE+EmGbex1IbLYlalfY1xjDUd8Gm7Tv
         mO5yxQnbufPOTKGvck/aHH8dYQ1/TkNRNajxDiSgaC2aNrRANh/8mqdu1RRP3ewwqWPb
         pK9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=I3q/V0wAAgmRLZQWaIxL0op2BHvukzSG3rjkkqch1ZJSgdBPbZvujBE4giO9jRdiKz
         EiaJ2HhtISMr0yjUFXz6LiAXO1JcEu+nVv+Sca1BaQJu7rXtHEZ+mHtgeBnlpr9a7XVr
         7Z0BfhzY049OTvNH+PaZGNubkS0vOP5rRuRu5fNget6e8/1q8dGcj0mp0XReKHP05s55
         htDXdAUN2ZTsX52iBmuN9P73cJ2SXWsER6mLAGwoyq4BANxNZJ74yLKRQKdx8U4ZAS8Q
         Mh9cT5enMP5UfId/FFoAhY8zVfYR6dxSmxMFM6XDVvn39XCEPgalAr2+gQOJUtSpBTHd
         nFsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1R9xTNR;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id h19si221838wmm.0.2021.04.06.05.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1R9xTNR;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x231.google.com with SMTP id a1so16224078ljp.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 05:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=S1R9xTNRJ6qErMKNLecSOhfU0ZS5czLdE4zGKv2duJ4rxyIrJrsJJXLABBX9ZOGg1V
         A1Bm8UIrJrHnmZ8hoei+UoW/blHMCIUDPhlv7EvUdh/Dv8rDByVmxiBPoH9KvKE+aWOT
         gHsLe7LBWEPqbkPySQBR5ZC5zV6mdCYuDlUF561lLCL7HzYv2CZrG5lEzEXAxi5dDUuy
         pIdDyfR34V0GOtMYbLw8dv/KaNYKpVDyggmUYkJlPs1x/pdDBAQuPAjrwrh0AvKRImOm
         IwZdOnovvQ7xG+LxXWakHhEqwJhuTPSgzyPQ5REigQePE+zTAKo+ohP3jJwCl7JdxTZx
         xjAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=EURWaSSujgNz6gANKBG3XUAhzD5b8yrSSm3GkhwIkXE9PN641lr4whBKFEovM/M+RX
         USAZGzkDqG7oMIgDXd5voKT8d6VdZFJf4KN55i/qEyU+G0n1tOkIbeqw2daung33tck2
         YauD6MtrhRezrDewbrmgvLPwX9LjU9CI6dAosuV6Rfb8/EWwMb/C5vHLzLXEQgczkmi8
         g66cFxetcoAIZya+wiU2e5zqT8Z4/D216dg6H5B2dkV+/fumIBg8WFbuL4TIzP8imSxF
         i7UMxoa6JEBE6IpiMDkdN5zUySj3nZDAmGcWPsdZaBhZHo+SIzQu/k19hL1bNo+4QcKo
         ewog==
X-Gm-Message-State: AOAM533PcfCYj6w2YHqybSFMwYssvRhncNsIov2WLLRdv41M0AuYjLWM
	SZ+NiZG2LHabjnT46ZL3/hnve3GO6En5Ag==
X-Received: by 2002:a2e:9715:: with SMTP id r21mr18955331lji.224.1617710999935;
        Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id a7sm2135510lfo.177.2021.04.06.05.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
Date: Tue, 6 Apr 2021 18:09:58 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: rtl8712: Remove extra blank lines
Message-ID: <f61f6d330bc3fa53d4d420754d1d461b6cfcb2de.1617710602.git.zhansayabagdaulet@gmail.com>
References: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617710602.git.zhansayabagdaulet@gmail.com>

Remove extra blank lines after an open brace to adhere to Linux kernel
coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.h   | 1 -
 drivers/staging/rtl8712/rtl871x_mlme.h | 1 -
 drivers/staging/rtl8712/rtl871x_recv.h | 1 -
 drivers/staging/rtl8712/sta_info.h     | 1 -
 4 files changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.h b/drivers/staging/rtl8712/rtl871x_io.h
index c20dd5a6bbd1..c5b12f74ebf8 100644
--- a/drivers/staging/rtl8712/rtl871x_io.h
+++ b/drivers/staging/rtl8712/rtl871x_io.h
@@ -123,7 +123,6 @@ struct	intf_hdl {
 };
 
 struct reg_protocol_rd {
-
 #ifdef __LITTLE_ENDIAN
 	/* DW1 */
 	u32		NumOfTrans:4;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 46effb469fd4..d7d25f240111 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -77,7 +77,6 @@ struct sitesurvey_ctrl {
 };
 
 struct mlme_priv {
-
 	spinlock_t lock;
 	spinlock_t lock2;
 	sint	fw_state;	/*shall we protect this variable? */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 4aa39f4f3b84..1c8298bde033 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -37,7 +37,6 @@ struct smooth_rssi_data {
 };
 
 struct rx_pkt_attrib {
-
 	u8	amsdu;
 	u8	order;
 	u8	qos;
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index d042d900f30c..9b7e5ffa380d 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
@@ -36,7 +36,6 @@ struct wlan_acl_pool {
 };
 
 struct	stainfo_stats {
-
 	uint	rx_pkts;
 	uint	rx_bytes;
 	u64	tx_pkts;
-- 
2.25.1


