X-GM-THRID: 6254601286083149824
X-Received: by 10.140.201.75 with SMTP id w72mr6727639qha.1.1456262843225;
        Tue, 23 Feb 2016 13:27:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.23 with SMTP id y23ls2520780qgd.35.gmail; Tue, 23 Feb
 2016 13:27:22 -0800 (PST)
X-Received: by 10.13.219.80 with SMTP id d77mr33944713ywe.39.1456262842714;
        Tue, 23 Feb 2016 13:27:22 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si4627929pfa.2.2016.02.23.13.27.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so122641026pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=a/eFNUdmG03korZypj0nn148BTc5R0f8F9S9DnzqAlc=;
        b=HuWRHLfrwXX1FjwLmh8CfSgBwF82bdsmK34GviOo1SytjwSMmxAxgQ+sUdKsBgwEpC
         lzGFaRIuajdADhs39FAS87QLG8t3ETN3I3Rcmzu5E1LvO+gU4JzXadLsS7rzE0ULCoho
         7UXMR98TddIEhzy3whdyaXNr9QrG2SDDcluiFHmJ1BXbbpf4Co6xIl51u/SSUl9QNxUn
         XNb8+5mNNJI3JEOoa6GeaIjpRr715FcACv7RfoAXP+o7px4RzXzEpcSp24uUA66elv0E
         kpWBbb85TYEoAfXG9DoAyxzzNqogBqoQfojsEOqZ/VmkQv+gPvrDdrvQQgZAUPVtKPZE
         HyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=a/eFNUdmG03korZypj0nn148BTc5R0f8F9S9DnzqAlc=;
        b=K6V7lpLT6JTMy/0IqJVC+DDIwcLD0C6fg60eHXOCW4UjorKZ6Rs/bQg4piLrP44xpG
         Z5Fa5jyTwUID8+uxIy9cm6keyX9Z1kQT8XGPm8YNoVAv0Z6Sgr/e7DJmK9dUTzYDVase
         HFQaSaL59HNulcGxVejZ/M+B8oyFa/9GbwOP90uN1z3Z1aSGuCJqfNNyOMjiuJSlWSEn
         SQKcz+BF24HiN8u9+/FlnjePFB24UurGeixg8qYJRkTdUNBwiFP6WAOF69HhXXTcUyTu
         Yf1pFfxFRi+vmMtX3yeHRWSrHkVjU/l0SFoTZvvv+kxTSP1zuXKc7AR3FmllWmL9i0IQ
         8HaA==
X-Gm-Message-State: AG10YOR/b0yN1m3XTxCU9i7c+TkwJD7OGLzWBet6lJaxUFCL1DjH5cvW3n5fKa0SAkZm3g==
X-Received: by 10.98.69.78 with SMTP id s75mr49951578pfa.102.1456262842534;
        Tue, 23 Feb 2016 13:27:22 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l24sm46200884pfb.73.2016.02.23.13.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:27:22 -0800 (PST)
Date: Wed, 24 Feb 2016 02:57:57 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8192u: ieee802111: Drop Useless
 Initialization
Message-ID: <20160223212757.GA24454@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed initialisation of a varible if it is immediately reassigned.
Changes were made using Coccinelle.
@bad@
identifier i;
position p;
@@

i =@p <+...i...+>;

@@
type T;
constant C;
expression e;
identifier i;
position p != bad.p;
@@
T i
- = C
;
i =@p e;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 789b7c9..28737ec 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -254,7 +254,7 @@ static struct sk_buff *ieee80211_DELBA(
 static void ieee80211_send_ADDBAReq(struct ieee80211_device *ieee,
 				    u8 *dst, PBA_RECORD pBA)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;
 	skb = ieee80211_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ); //construct ACT_ADDBAREQ frames so set statuscode zero.

 	if (skb)
@@ -282,7 +282,7 @@ static void ieee80211_send_ADDBAReq(struct ieee80211_device *ieee,
 static void ieee80211_send_ADDBARsp(struct ieee80211_device *ieee, u8 *dst,
 				    PBA_RECORD pBA, u16 StatusCode)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;
 	skb = ieee80211_ADDBA(ieee, dst, pBA, StatusCode, ACT_ADDBARSP); //construct ACT_ADDBARSP frames
 	if (skb)
 	{
@@ -311,7 +311,7 @@ static void ieee80211_send_DELBA(struct ieee80211_device *ieee, u8 *dst,
 				 PBA_RECORD pBA, TR_SELECT TxRxSelect,
 				 u16 ReasonCode)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;
 	skb = ieee80211_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode); //construct ACT_ADDBARSP frames
 	if (skb)
 	{
--
2.1.4


