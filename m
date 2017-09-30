X-GM-THRID: 6471369058680832000
X-Received: by 10.99.181.19 with SMTP id y19mr876738pge.47.1506734590098;
        Fri, 29 Sep 2017 18:23:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls1855024pgn.22.gmail; Fri, 29 Sep
 2017 18:23:08 -0700 (PDT)
X-Received: by 10.159.252.11 with SMTP id n11mr879813pls.11.1506734588936;
        Fri, 29 Sep 2017 18:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506734588; cv=none;
        d=google.com; s=arc-20160816;
        b=aexCQ5EKH6rp4raRj5AO2fCACnCtZV0iMH1RyOZKHNq132KvqghQjJCjXLjkSthMAg
         L6PEVhkkItqI4NXU3Vf4p/cFSIH0IGJqspZjGeCwUUW8+y0rHca3YsdLLErVSdDswrtt
         fNEez+NkNM2STKAAXzecEkc9iHOIP43/EPtnu02MxhsfppmCLvjL4a2ZR3cTq5vsfk6o
         5OJCZLMSueCKTxvpEvaet1DdYYKAyQUI32UHr0qjiIOluriLJ91bPl9bOwVpfsN71vly
         wyDbvOruYiCdbXecw1/1bHTTr2RD7rBmsJiixsd1MwVWxkm1rwtapbwCyx86sN8DsxQY
         h1nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=TIsqjMQfJNZWVX08OiFwyCBFJRBzNdb+b+tgrZW9wxE=;
        b=Jvt16ubulHjfSlIRfRwBXX9w0fG8nY1bGzc7Mcs5OzQ62bMMhgH8D4ooaVpxD7WzjO
         tXWCe8VWPRlvFBzwzdM8tGVbxWI3hgAnR4Hu89d5YFy1+TUDAlY2GhynlWgQFEzvHLG6
         RPvQhXhHdylk0saEoYznb/Wd61LVH50zGAqSaz6e8XZUSHyC+JXc0Y3VmyStGmcd55pi
         87443OvArXCJs5OEsn00niQmHlyepmmgPr75LfEss1GbGdbULJj8Fspwdiqot0sAxqg/
         +VztQ4rEm0TTyvjA4/yMkcFanluVkNrTJchDM6Fbm4FGVnUDYuiQ1s5x5k5wjRcGV102
         VfPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVwe9Ekn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c200si590940pfb.14.2017.09.29.18.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 18:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVwe9Ekn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u136so790813pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 18:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TIsqjMQfJNZWVX08OiFwyCBFJRBzNdb+b+tgrZW9wxE=;
        b=bVwe9EknSrfqZAeb39Gv2jVeGVh0GeuR6NX4r+jo00A28DmnUqsqsK7cc7Z/Hjkiz5
         akKp/m6Ml0sGvwpZZ37RhCrU1t1Px8V25Cg5lqJIVC16cPj8WpTwOXwrmDOnP51W9Zam
         oDsJuXFJ2zVXpOusvpBXNKSZ2Kk/uALKrLYZoJNvCE1XUHD0u90zbtuRarj1GGi+mJd3
         G/jE2wc2TXiJaC/q/LjAIBoY2dHPZwVVvVpVIJ+UQhvCodqXL0FGNJtUxfvj6JMHOxeJ
         rQ3Grt7gNK4mpN6bsywXG6crKUVtstukKruHmgtfNcJ+Xt/L6ORJeFlVNw765Sv71YFG
         ALNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TIsqjMQfJNZWVX08OiFwyCBFJRBzNdb+b+tgrZW9wxE=;
        b=r10RGwcGlYgd7CF37+NbZK2rxwoUK/fOtlIbXk4Us4ope+ENgj63sVtYSZRltshcyC
         C+WaNIAxnHdVQTGIwgj/X9wbnAtsbcf2o4W4R8JTOQpT8LsOjTlRIGTXGmBRzSinF+OV
         WZb0zSI3qNAoOFdR1MHDyiqxAi3Njm6c01sHBjCNnKCJHpqg9DUgABw9roACibWO2tZQ
         vJPXE6opAnJBSIPprtDKxUTQ9TyOWXzR8w5IkFR6OT8XYgfIY1gXMMQZ+Pu1c5gpiwzn
         lsT3y6tAtV6Ku/CV5dE0BB0IGmwHDdV/XS+ddkgPiaIza15StrGXcWSEoZHszrlQTfBn
         AkKg==
X-Gm-Message-State: AHPjjUihvlni1L5PG+3qrSOVnn9blv6lXzWzH4sXrwf6TCk6i3RNtPKJ
	iZVtMZKxp3lBM4fhSBBr9gV8bw==
X-Google-Smtp-Source: AOwi7QBU6qbebBkWdMivPAnDNhKN7wSPQ3wdNZ8QFe8gDcWpA5W/GxGJsV5ReZSDIzkvp7iDh6lwQQ==
X-Received: by 10.98.102.20 with SMTP id a20mr9444339pfc.208.1506734588590;
        Fri, 29 Sep 2017 18:23:08 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.215.134])
        by smtp.gmail.com with ESMTPSA id k89sm9822712pfh.52.2017.09.29.18.23.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 18:23:07 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 06:53:01 +0530
Message-Id: <1506734581-10932-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

For variables of the type struct list_head* use list_entry to access
the current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
identifier e;
struct list_head* l;
@@

<... when != l == NULL
l;
...>

(
e =
-container_of
+list_entry
     (
      ...)
)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 22cf362..f9df4ac 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -152,8 +152,8 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 			while (phead != plist) {
 				int i;
 
-				psta = container_of(plist, struct sta_info,
-						    hash_list);
+				psta = list_entry(plist, struct sta_info,
+						  hash_list);
 				plist = plist->next;
 
 				for (i = 0; i < 16; i++) {
@@ -323,7 +323,7 @@ u32	rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 		plist = phead->next;
 
 		while (!list_empty(phead)) {
-			prframe = container_of(plist, struct recv_frame, list);
+			prframe = list_entry(plist, struct recv_frame, list);
 
 			plist = plist->next;
 
@@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 		plist = phead->next;
 
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, hash_list);
+			psta = list_entry(plist, struct sta_info, hash_list);
 
 			plist = plist->next;
 
@@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, hash_list);
+		psta = list_entry(plist, struct sta_info, hash_list);
 
 		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
 			/*  if found the matched address */
@@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
-- 
2.7.4


