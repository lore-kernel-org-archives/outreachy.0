X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6512:6cd:: with SMTP id u13mr20659146lff.326.1617706247407;
        Tue, 06 Apr 2021 03:50:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls3507376lji.1.gmail; Tue, 06 Apr
 2021 03:50:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwr5C8yJ8Gd9b2tzPXJlEcKrYAMAr2qeD4AKALwRd56KJDp8cp/f87RqxxE/p/ZAK8yKtfJ
X-Received: by 2002:ac2:4d42:: with SMTP id 2mr21235761lfp.51.1617706245727;
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617706245; cv=none;
        d=google.com; s=arc-20160816;
        b=HoU+juxcK4RGkFo2HUKOEx3U2dd9DJwPlNfK9W4tJdIzMexWop2yR6267seNVbb/xm
         GqcFJ4XTCgTSU5u1xrRvl7Kvfr7lJvEKTx67PCE0oFDdqYdCWPLO/kIXNzxEoqZfy4Ar
         lYHReiFMdQhwON5rno8loEctqn0om8yeURvbgbk3AZ+HCy1VHirqEDMZ/O68Nu9KBz06
         4XrUeBUMMgOJ1TzSaegJIPpfVRjteeYGa5bmRAgAyUkP7fILvpvm0vzs+2P2MewH+2IM
         nk2tdVz7bETVnuTQzjBSiPK3UVDoa1IDNhlWd5qigf5tlElK2Zj403sCRQOJ25Me8HXB
         Tu2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=voeJK8UZctSGWfEQTJd6w+TBRfsLZUxUu6rMdpQS8erVGIsZazWRDsKSOE/hePtWXg
         CZMtYrWnsYtaKnAJJD87LcpjJPHYK3+NocH2ZuGvO6qolUiiact5gp3bfiKYqCE7+qTw
         m1AB6B3//hPKXAEFl1Vz5LWNHa0MuuX449kRm3rUzK84jBEVWRzI+jzkOxaGasiY9ESN
         7Wf/XiyCJSee3i1yiMdYT+WzKQodkd/B18LRgqkNUF+xByLD2TKRd8x+gPs4Cmj+396N
         Swy7Kv1jmThmyYKZ8onAlLgFeJDmPNoi1nLneF1+bd8jBgLMEZXX8fLMMsKYIL+fYmn7
         fLTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G/bHtrar";
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id v203si1646305lfa.10.2021.04.06.03.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G/bHtrar";
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12b.google.com with SMTP id o10so21967950lfb.9
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=G/bHtrarF3eRtDCKAeVoMEvOieVKk7gdLzBy5N20Aosf+dmmu6i13fbjp5Fxj6c559
         rqlEGsSoPdjIucgOaeLbQfvxYGLrDNoAIUpQ3p1Jp/HY8P15PCFtWl3Z6FKsY/6sY1I2
         l52JxUoTMvzGn4DsGOVc3gMgjzV/GfjYzFi5Oty0mXuQ9CktQHCKXLmkQBSp2KPJlB5I
         IUcMq8V1uSlWwNTpT4ch8hQO4UqnPn6Fq4m5TUubHIc1rHIfoJhu3BLgiFGiKK3Mqldl
         WytWe/hbRKZ8zWaNkB/6JrcAertI927g397TR2N4sZGLeLkkbI34g7UYZ+Ivz3r7Xc2/
         aC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=Oj8710PJD0IG/ibryjk7rYYgtAdae57CGAOPUvAAT3Gc79aOs1ZSSEDATRyw7pWWuA
         VgdpzmK2k6wYT20W29SB2m+mlGYMg1ZguDSJnpc/WzN8zhC5buvIvO8UFwy+RTKUgqAs
         wZxW66Tr/i1HBAPdkDvmmhe7K14B3H5Nx/8ukrI5aBrKVA686ccpzN0bTeV9bpGejyA5
         k1gc+Dto4CUnmn6yOomyCUDFepoMjcS5KvS7qBwoixw2fJHMaAHC8ALSN7x2iKdn8jyg
         XAR8d22S4jH8Dn7fAqiFKULPjoq8HFEoYun2UAIXyHfUJdDSAaHKRrDj1dyAoggr5jsQ
         jMIA==
X-Gm-Message-State: AOAM530ikNQzZB+d44cZC3Zfka1nK9pjI6SAbiVodbM4TYHfKXiFoAop
	Vzl3O353/12lB5ORL5MGiUYMkLOSVJILkQ==
X-Received: by 2002:ac2:4d9b:: with SMTP id g27mr20869389lfe.113.1617706245170;
        Tue, 06 Apr 2021 03:50:45 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id f28sm2114689lfk.67.2021.04.06.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 03:50:44 -0700 (PDT)
Date: Tue, 6 Apr 2021 16:50:35 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: Remove extra blank lines
Message-ID: <af750c2521fe0b5fbba719f3b5b7344620fc7514.1617705825.git.zhansayabagdaulet@gmail.com>
References: <cover.1617705825.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617705825.git.zhansayabagdaulet@gmail.com>

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


