X-GM-THRID: 6675179920364142592
X-Received: by 2002:a05:660c:60b:: with SMTP id i11mr1928301itk.9.1554186437938;
        Mon, 01 Apr 2019 23:27:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls618963itg.0.canary-gmail; Mon,
 01 Apr 2019 23:27:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxWlrdDjdwB899TXdleu+bzau9c4AbJVZMc2VGArxIrpmna7MJ3QS5tF22Pje2cljacjXQV
X-Received: by 2002:a24:4609:: with SMTP id j9mr7388994itb.38.1554186437187;
        Mon, 01 Apr 2019 23:27:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554186437; cv=none;
        d=google.com; s=arc-20160816;
        b=jVtKn9jbu3n8S6+Cs8fAfsJhEHoQs8qH13jTn9oOBZ8oEpG/s6PwoJMtL/yHAYDeMU
         QgoBotqALvdtQ+JyqgRrSUnDgdCJcvPFhKI4yaFhXhB58cyRgOdxix8Q33WIWSTXLrt+
         yk6krcbFfpOvyKAhQrpBRP56qcCH9Cm/uEfaAC0AWbxVw8uBLG002DCVrX/Npy20RXxw
         PpXV9HAYZcVPL+h+UyFSYwGO+Za/yQI5qVaY7As3SIVBSOsKu2Bjx7dZf14RmZiGzTrN
         1fcUZWPucKlovly6Pnjil0YBQBQvRKf5V0JHBnPz8YlFXhg78IykvrvVwz4GOha6L1tu
         hHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=X9GR3CLbWVa9TL9q6zUVTuPSOvqbSDa5Sb6sqMfbzxU=;
        b=YjB5zo08J3NLNwyEtZsULH+oYn5Qq441SVHrJt33kUUJX8ikrGpbdfYeVnd2A4Qs5l
         AOsPdQJZzKLSBOpAo9qwmxfg/5KaVTGr9RywyAxcwbVsaGE2d5GujlZS8gz/gxnoekKo
         to9ORJmXF9HxFHWmZxaC7AFXXKaU/luTPq+GNliFpPe+BPRAT3lNOVaPWKfQxywNlRQb
         odqYzdSQ4bch1YSnrg52y8veS7VANHDuR+x7hgQ+cjdu3zD1kYe8NEcjIaSsER6qUbkR
         zkAJOjWrdCNEQXKS8MgtwICRDZO7a0nmkLQgIcP0NLptBmDhWnF+OgTKb1AmFSCL0IGj
         hlUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=alw3BRGy;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id r17si1465420itb.4.2019.04.01.23.27.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:27:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=alw3BRGy;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id b65so5721518plb.6
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 23:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=X9GR3CLbWVa9TL9q6zUVTuPSOvqbSDa5Sb6sqMfbzxU=;
        b=alw3BRGyRrMcs5rS2ii2aAqvpnbYjfRE2w6WByO1tKidyTA6402gPoCnlbHNtnq2bV
         gIaxceZd0Zk8aMFCnd7Z2zpB3/SkK+F9LV5dfDxQwAcY68XpP46yTt2zP9HMWtsyZwD1
         YHfcTkiesG+Muqprpfo5k0iRa44+B027l1r1ZZy1zL5UjRTvWoCBxdQ/2nXg+b8UKs60
         w7+ssT5g1E5arN8yMyieZIsZssaSiG/1KhVjnvVTShdXlOTQ721W8Se1lsnUsuMqnUay
         I7gcVF0lAOyv/I9cAXLNhjcqBz0SYG6PoKPZDkewYohnoLmBrft0dsN0pj5Qk9q9eGTN
         Zkfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=X9GR3CLbWVa9TL9q6zUVTuPSOvqbSDa5Sb6sqMfbzxU=;
        b=bqth8dRANlbImM3p2D/TaX1f6dezD+TEV4wKNBj8LWAq6jLPRp2ZlWd36DDyCKHQOP
         Id92AMTc5/NC0JGgvMiOAEzKnMr6GWUrKsWFMcE+j00NZ7dKwTlAi/ceDhy+AFn/AMz4
         BUGdY++znxvfXMe+FQ44Kh2QqzqdHeS9Fyxk4/+8vA7lurLZJ5JpxjYFNPfVsfVJo1xe
         3HtIBzzI55i/mJMVE08ZTeAd3fD4V68Mbtz28WSt7rUv4ZkPkJAMJi1kwPlf+xOAphUY
         XIZTOCEzwOe72AyJfISJ8xTgOhg/IEZuK1cuATXQeHQ0gH81ti23uJpMzow2gJlsGbU4
         MUQA==
X-Gm-Message-State: APjAAAXjYv2jDe5Uer7ncXVpjZ1fii5LaLR8Q52sv958WIGPAAK5Oylk
	ODa213Hc+Fou9tXCJ6XVIk3uLhJ9eKw=
X-Received: by 2002:a17:902:f08a:: with SMTP id go10mr54485022plb.121.1554186436423;
        Mon, 01 Apr 2019 23:27:16 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.14])
        by smtp.googlemail.com with ESMTPSA id b16sm17223156pfo.168.2019.04.01.23.27.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:27:15 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: include: Remove typedef for struct.
Date: Tue,  2 Apr 2019 11:57:06 +0530
Message-Id: <20190402062706.13340-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Linux kernel coding style guidelines suggest not using typedefs for
structure.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8723bs/include/ieee80211.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 9efb4dcb9d3a..ce523dfb6faf 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -202,7 +202,7 @@ enum NETWORK_TYPE
 #define IsSupportedVHT(NetType) (((NetType) & (WIRELESS_11AC)) ? true : false)
 
 
-typedef struct ieee_param {
+struct ieee_param {
 	u32 cmd;
 	u8 sta_addr[ETH_ALEN];
 	union {
@@ -240,13 +240,13 @@ typedef struct ieee_param {
 			u8 buf[0];
 		} bcn_ie;
 	} u;
-}ieee_param;
+};
 
-typedef struct ieee_param_ex {
+struct ieee_param_ex {
 	u32 cmd;
 	u8 sta_addr[ETH_ALEN];
 	u8 data[0];
-}ieee_param_ex;
+};
 
 struct sta_data{
 	u16 aid;
@@ -870,10 +870,10 @@ static inline int is_zero_mac_addr(const u8 *addr)
 #define CFG_IEEE80211_RESERVE_FCS (1<<0)
 #define CFG_IEEE80211_COMPUTE_FCS (1<<1)
 
-typedef struct tx_pending_t{
+struct tx_pending_t {
 	int frag;
 	struct ieee80211_txb *txb;
-}tx_pending_t;
+};
 
 
 
-- 
2.17.1


