X-GM-THRID: 6256356270602715136
X-Received: by 10.13.204.145 with SMTP id o139mr9600841ywd.51.1456671457285;
        Sun, 28 Feb 2016 06:57:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls2105847qgp.17.gmail; Sun, 28 Feb
 2016 06:57:36 -0800 (PST)
X-Received: by 10.140.157.69 with SMTP id d66mr9332884qhd.13.1456671456609;
        Sun, 28 Feb 2016 06:57:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id iq8si688115igb.0.2016.02.28.06.57.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:57:36 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id y8so66791958igp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CETyJthxfxTEu02q11/B/zExvV4SpGJ+XzdPhCcpUrY=;
        b=KKd/pV8AOkaEERqiaycfxz/KYq6IzdTiskGxi8hjcRExrZc9wsdEsQLixTnSW6hniy
         BJBES7lp+ZPAZYorX5WPeiUmxsSouFAAU3xWO9OUZcgic75g4nCTD1iAU3jaZqQqkCz8
         Qi8AeN71DV2JOXAXuW14dhVhQ4Vf7OHAOhz79Mz6+HratIOSppLdyfnWBatOiVxao0f/
         dTjg4t7StN9IA4hmLvgjkgbiuaQ+BJyevr0ntjRM8BmObE3Mh9mzqdWiq33R/XjgHBlW
         3a9Br3Ujv9A8nfDi8wtuVr8HntYJn2/ZKVc2QleO3dqWtgTZ6RwW8yJl2Naa795n97Wd
         fWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CETyJthxfxTEu02q11/B/zExvV4SpGJ+XzdPhCcpUrY=;
        b=cYnTDP27ksl/FsNKmPZtPSFkydnkTtM6ryo0oJl9L6qt2C7jJCtAwvNxaEVZKh4u0+
         G9dW8ySLR0uP3RTJmvch5S3zyqTQzAQTN3LD7TVOqgRY8ocnzmcXSc/MS6cfgx0R3y2c
         hSPVgbG2zveotOWzRIqa8SjnKg1q2r6b2hmdS6Q86Nr6uimq4MOMwzLm0zHXm2de1wqg
         OFuqelyaHPScm7u2q1fCJ3agwoit4ZDFKeDS91KTXlwIJ6L3PSSromAgioEM94KmJqVC
         ee22TBBM+nPyFULw32na0NEktN7+uqm6bODPRq2G1tt8ZVSO2ZDr9OCqKKw5tGMOTkFl
         zWfA==
X-Gm-Message-State: AD7BkJIH46C/nlsCt3n7NoNGWP0XLX53qp7A3rkavIPBzP9nPTAJ1hbCYDcZN8e75QHz7A==
X-Received: by 10.50.136.136 with SMTP id qa8mr5899687igb.39.1456671456438;
        Sun, 28 Feb 2016 06:57:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n4sm2036896igv.3.2016.02.28.06.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:57:36 -0800 (PST)
Date: Sun, 28 Feb 2016 14:56:46 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Prefer list_for_each_entry()
Message-ID: <20160228195646.GA6457@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry rather than a combination of list_for_each and
list_entry().

Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each_entry_safe;
iterator name list_for_each, list_for_each_safe;
@@

(
- list_for_each(pos, head)
+ list_for_each_entry(var, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when any
  }
|
- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when any
  }
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 9dfde07..7d1edb3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -452,8 +452,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 		u8 *mac = header->addr2;
 		int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
 
-		list_for_each(p, &ieee->ibss_mac_hash[index]) {
-			entry = list_entry(p, struct ieee_ibss_seq, list);
+		list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list) {
 			if (!memcmp(entry->mac, mac, ETH_ALEN))
 				break;
 		}
-- 
2.5.0


