X-GM-THRID: 6474240568402640896
X-Received: by 10.159.197.2 with SMTP id bj2mr44229plb.55.1507406366396;
        Sat, 07 Oct 2017 12:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.198.129 with SMTP id x1ls458748pfk.13.gmail; Sat, 07 Oct
 2017 12:59:25 -0700 (PDT)
X-Received: by 10.101.92.11 with SMTP id u11mr377331pgr.141.1507406365541;
        Sat, 07 Oct 2017 12:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507406365; cv=none;
        d=google.com; s=arc-20160816;
        b=IPa2HoWnp5FcqsbA4NxoVBoJQqMapeofcqxgFn63nD/Tspp4JhUWEy1FQe9974srEv
         zQGrlSkoXBN036gmZBGNUr2SPuf7MN+PsgH+GlK9byqQy6eKV3QYlhWMmYsJC+tG6AIS
         cyuzyiieQhICcB+rfckjtnrxBlwdui90i4wyoAQFSRLz5OPMQGfr86jSzijxSir4dh5d
         IhER+f3ILE5+s9n0ZE7O4EdIwoNJ5mTbUiiY10mmBCGwinoyZHNtq3KqIMXQk6+AqubK
         YqrUGto4Ux2vXVEG85gqH0eonzXPVDf5QDnmS7dOah/3AIjjJCM1/E/AjoHdAOJ7uYPi
         lIfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=8YMOmUxS7tYfh7iICbF+KpyzEm9JYh1k1YFmAPE3OxE=;
        b=Sc/KWTFVGGLKPWbvI+mETqCtxSJt8k+9O39irayMNIDFfe0Yk2FmT1qqz9biPoT5Ht
         lhhQ56q4KJCpskqlT3wHMwbd/7In7xz3kuLlWhW7xOLiz5CUIj4HEoWTlFj1WQxVP12L
         pfBsNhDceUFCwIAudHMqGjXXzvFjcojCmByWXuQ/s+mChATloQpwHM5IDj6htATN4pAZ
         j9o15KPZJO1NVg7QzEy0eo5gI42xZHV9Xy4xAaVk4eeEI8DDyHkE3+0hmT3IiFP6EoSD
         0SllYJ3QguDXayJPukl1hQHbqo9vNJQUemHS/za2kiSaIz0EhBfg64TDiREbQY74jciU
         jL6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EV0VEvJl;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id j10si487924pfj.7.2017.10.07.12.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EV0VEvJl;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z80so1384763pff.4
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8YMOmUxS7tYfh7iICbF+KpyzEm9JYh1k1YFmAPE3OxE=;
        b=EV0VEvJlTZmY3k+NSi9KaWKw3ItKu7K5iWDrkRkR8x0D43NPYSBfd9k9DsVtv4l/ck
         J6pPqoPyoK0vY0NAtJm0LJJ7CAkJ35VeWQGFgvfYrdkERV4vIgIpvUOqXqe8Kxt7N9bq
         B+Jj2n5AqKXe/AOS/dWb9XBNYjsr4jw0fGZ35oXxmPE+9YokIvB2gTaq5gLXySAIg6BU
         m/n6lF8Id7+83IHaOWHPTns77LjDMG+ZYSiCBYrEAd5rZ9h4OLKftHuay7630tQ63qqU
         BKgovtBEynlAdG+CBOCu5y4oL7YfSFKxu8T6dwv+r1rTqx3t3ulAybcsUBNQ8M7M2vIr
         //tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8YMOmUxS7tYfh7iICbF+KpyzEm9JYh1k1YFmAPE3OxE=;
        b=J5X/4tPV58Anv8YIA686z5bTLH9dFXfOOf25AZRnqeIdnF5yBu9tm7ppLXDczph8Nz
         waEeXVMfx/R0rWmBLCquR+Xz0aVwNsTyiHhC121VYWJmObSeGc6jmRIrPLloBN7KZ7xj
         lGTf1N7N4MCRBoZsQsTeDgy1AzcJznVc9rGGvaaTnqNe8Ppvbx1AWgsZB5bvQpj7T+u3
         /D9AniMVvpwM62DKTwHPrD7yiGW0kdRdJoYxr3SyB+4hiYdSIVTdfUUimyECGq1y7asN
         e2f6m/Zwg5TpA1FIszTBkzJr68p9tA15oRsQPp8qqBWFVdbq2EXyM6kPYXNwU7Cu0V46
         P/Ww==
X-Gm-Message-State: AMCzsaXBRKAc1MBi7YtNGJyC9jPoNFCJhk9QzPJzqBqxQCA6Qmdsv9z5
	Lq9ns91Q1FrJxCIpW9XHZz0RYPyD
X-Google-Smtp-Source: AOwi7QDFX/UOwowqi8wjJhsJUuEriyiGRi2FD1D1OMhSt2k0FBobyQVJqFsIA8H3PvXbJ/0znC/V2A==
X-Received: by 10.159.218.6 with SMTP id v6mr5436165plp.1.1507406365226;
        Sat, 07 Oct 2017 12:59:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id p77sm10681171pfa.92.2017.10.07.12.59.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 12:59:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: ieee80211: Replace list_for_each with list_for_each_entry
Date: Sun,  8 Oct 2017 01:29:18 +0530
Message-Id: <1507406358-2502-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

list_for_each is a macro that iterates over the elements of a list.
list_entry is a function that takes as argument a list pointer and
returns the structure that is pointed to.
list_for_each_entry is a macro that iterates over the structures in the
list, rather than exposing the list spine.

Here the  list is only used for its entries,
and thus list_for_each_entry can be used instead of the
composition of list_for_each and list_entry.

This patch is with the help of following Coccinelle script:

@@
expression l, list;
type t1, t2;
identifier p, v;
iterator name list_for_each_entry, list_for_each;
@@

- t1 *p;
...
- list_for_each(p, l)
+ list_for_each_entry(v, l, list)
{
... when != p
- v = list_entry(p, t2, list);
... when != p
}

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
	- removed braces around list_for_each_entry

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index cbf8eb4..1781f11 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -447,16 +447,13 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	switch (ieee->iw_mode) {
 	case IW_MODE_ADHOC:
 	{
-		struct list_head *p;
 		struct ieee_ibss_seq *entry = NULL;
 		u8 *mac = header->addr2;
 		int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
 
-		list_for_each(p, &ieee->ibss_mac_hash[index]) {
-			entry = list_entry(p, struct ieee_ibss_seq, list);
+		list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list)
 			if (!memcmp(entry->mac, mac, ETH_ALEN))
 				break;
-		}
 	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
 		if (p == &ieee->ibss_mac_hash[index]) {
 			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
-- 
2.7.4


