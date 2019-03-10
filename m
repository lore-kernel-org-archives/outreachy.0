X-GM-THRID: 6666794148561944576
X-Received: by 2002:a62:ed10:: with SMTP id u16mr10445860pfh.32.1552233973923;
        Sun, 10 Mar 2019 09:06:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls5154672pgp.9.gmail; Sun, 10 Mar
 2019 09:06:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxfvNuEgV012x5k7BCKbbAPXex8OFize5jSR0wFbS8HtTI3T0KwRsFJPHcgHexN4BfYIMN
X-Received: by 2002:a63:4922:: with SMTP id w34mr10653192pga.22.1552233973087;
        Sun, 10 Mar 2019 09:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552233973; cv=none;
        d=google.com; s=arc-20160816;
        b=MX1uqxe6q25Aj4/jkzdyb5bcv4oZ8D1sIPeHIn6wzV3RxEvHrKdrAE95Zf7FsO3jc7
         WTEvJwpdED8SjZkPOQf7xNGlnM1TwKb55cIfShMqO/K7IlK1tZsUXxSIi3SEfhcmQShf
         NpnWVqBWZmwL1aPlNifbE+y02L+5c+57wdUKRxYvbdE/HCio6rfjqQ1qS2muOnebDvY4
         MBWaW9t/+CZ06orLzFc7v8dxQFcs2FP/zaTgFspSmNSt7RZaR4/IK/Ow8P5eT7E3VmIl
         aWdiw5uerchm91+jp6Gv8KAZcJyytwc5xGcL5lWuhNsZXr+6x2eh/ptdERVTbOJ9PtI9
         a0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=xbkIRF/Fns/lr68f2bndVP+/ipylI+pZP2PeDI8tIKc=;
        b=XEVLf64//MkWviuIXTQKkM45YTxavTbkpUbfVpMsfQidFzsP2AgnwQSztjuhlPFg0e
         OFXDx/57DTUrY3Fa1Gk5CluUXKUBz5v8G3imoyOZ2BaNIG9nMGpS/o3PSbDUm94wP1++
         bztdhGrEil7oIBtkU5KCBs0jrJ/6XXOTx5mHjSOIfgVFhDpT7svkqwIRiORZcC6eiLsV
         xsb2OQqETLz07hrI1mUdLowofNDzE+KcIgcor7J0pKWEcWCJdDjeaaG28HiVsYjrANKn
         5tqgQZEjbaXzLHwQkKd46uH9Dcr5k6IqFzVAKSf39jtEXignKFsgK7idASrxDBxtku+5
         fj0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nqs4Ko+u;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id p15si167737plr.4.2019.03.10.09.06.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nqs4Ko+u;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id q17so1839486pfh.10
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 09:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xbkIRF/Fns/lr68f2bndVP+/ipylI+pZP2PeDI8tIKc=;
        b=nqs4Ko+uYEAPFSZO8gd+h7LcQBXF8QFD00A49NCPLukq+HPE5mgntIhPQBtavNR3hs
         1a8qFj8GG6fIL63mO3Q8Fo0/Gs+wmJyZ4oyjo5LehBIyVSca/1b1Lnch4cnxpYVELucO
         UzydEAoOXQtmQexgiQgBupXEcZ0DB6G9OS7/IK0REXjieetkx9GA0+hNbg0eMQWqsIWg
         we5Eb8052ZoaZsK53dABlIukLs9APynqS2ckYdqlMwDgtBHy1VrUZ6wGi2Fkwk/sa5ST
         /Iit5Wm1IpUaQ90G5YDjte5SVuMIz/NqAJKt6R0CZV0FZ0Oi7kCXtsA9hIH/Xn9hzYPC
         x7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xbkIRF/Fns/lr68f2bndVP+/ipylI+pZP2PeDI8tIKc=;
        b=hk4TgA/oeKODr5qE6E5nc40lrs214qldF4pIOpjRiDgXV0iOIdlwVTRNDdLQEwBKXA
         ksr6Jar6RhbjDH5f3JYgqYh7KPuBaYhb+eyJB7tIVVLUI/TBrsk4ogFfDnJnU+uDJeTO
         84wsOlj63fp2xASkvJ6XsQNSkXPfOhRnhbFL27Wzx/ILlSTUW9VtjrvfaSp/rdhkDoDM
         W0hN0SITrgXZ0rQhkCW0pEa4Q7zaJp+DDxnzmoUpanWubFfPeT3iQmVG5S3FKIg+uYgM
         dClub4NvkwUQJhiHMBG/rUDFb8zBKnkAIP2xwQ+GtwHmncpNttg3kn7n6wgwbGppbvjn
         jRcA==
X-Gm-Message-State: APjAAAUVnpAuOBBGTiMMfcwvvHau3dD5007CgwCtppBOwkeLgwh8/mQT
	7CFe1mF3ZMfST4He2rtauBxeKWUKN1A=
X-Received: by 2002:a63:1044:: with SMTP id 4mr26208417pgq.324.1552233972588;
        Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id x23sm10000292pfe.0.2019.03.10.09.06.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] Staging: rtl8192u: Avoid typedefs for structure types
Date: Sun, 10 Mar 2019 21:35:53 +0530
Message-Id: <20190310160554.4479-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310160554.4479-1-bhanusreemahesh@gmail.com>
References: <20190310160554.4479-1-bhanusreemahesh@gmail.com>

Remove typedef for structure type variables to maintain Kernel coding style.
Remove all occurances of typedef for various structures in ieeee802111
module.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211.h    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 8aa536d79900..b1036d522640 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1462,23 +1462,23 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct _bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
 	long	threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
+};
 
 
 //added by amy for order
 
 #define REORDER_WIN_SIZE	128
 #define REORDER_ENTRY_NUM	128
-typedef struct _RX_REORDER_ENTRY {
+struct _RX_REORDER_ENTRY {
 	struct list_head	List;
 	u16			SeqNum;
 	struct ieee80211_rxb *prxb;
-} RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
+};
 //added by amy for order
 typedef enum _Fsync_State {
 	Default_Fsync,
@@ -1506,9 +1506,9 @@ typedef enum _RT_JOIN_ACTION {
 	RT_NO_ACTION  = 4,
 } RT_JOIN_ACTION;
 
-typedef struct _IbssParms {
+struct _IbssParms {
 	u16   atimWin;
-} IbssParms, *PIbssParms;
+};
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
 
 // RF state.
@@ -1518,7 +1518,7 @@ typedef	enum _RT_RF_POWER_STATE {
 	eRfOff
 } RT_RF_POWER_STATE;
 
-typedef struct _RT_POWER_SAVE_CONTROL {
+struct _RT_POWER_SAVE_CONTROL {
 
 	//
 	// Inactive Power Save(IPS) : Disable RF when disconnected
@@ -1562,7 +1562,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	//
 	bool				bLeisurePs;
 
-} RT_POWER_SAVE_CONTROL, *PRT_POWER_SAVE_CONTROL;
+};
 
 typedef u32 RT_RF_CHANGE_SOURCE;
 #define RF_CHANGE_BY_SW		BIT(31)
@@ -1586,7 +1586,7 @@ typedef enum {
 } country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
-typedef struct _RT_LINK_DETECT_T {
+struct _RT_LINK_DETECT_T {
 
 	u32				NumRecvBcnInPeriod;
 	u32				NumRecvDataInPeriod;
@@ -1599,7 +1599,7 @@ typedef struct _RT_LINK_DETECT_T {
 	u32				NumTxOkInPeriod;
 	u32				NumRxOkInPeriod;
 	bool				bBusyTraffic;
-} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+};
 
 
 struct ieee80211_device {
-- 
2.17.1


