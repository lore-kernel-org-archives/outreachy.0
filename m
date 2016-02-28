X-GM-THRID: 6256357613460520960
X-Received: by 10.182.112.193 with SMTP id is1mr9363371obb.38.1456671770071;
        Sun, 28 Feb 2016 07:02:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.134 with SMTP id s6ls323437igh.19.canary; Sun, 28 Feb
 2016 07:02:49 -0800 (PST)
X-Received: by 10.50.124.73 with SMTP id mg9mr6429528igb.4.1456671769622;
        Sun, 28 Feb 2016 07:02:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22f.google.com (mail-io0-x22f.google.com. [2607:f8b0:4001:c06::22f])
        by gmr-mx.google.com with ESMTPS id im4si291304igb.2.2016.02.28.07.02.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:02:49 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) client-ip=2607:f8b0:4001:c06::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22f.google.com with SMTP id l127so163645490iof.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZVSr7ptraVipbA/+Olm9oVymGiWEU0Mm+3zjSr9PS1A=;
        b=HlbQmfZN3ciShoZ+AgWuszXvezGgEIw1esoGyyUS87sk3oi0fL2gJtI6SLhQUu4dB+
         qLeXQ2oG8iSsCWeHGvM6BNN/UkkFYlBjTjjpNjSFAVUjVDrBJcJy1oOjjpeNTLnQVNqX
         CAIEF1CbUrs6B5+1aWp5xwAMcYmd/zV9NlfEW7BWugjeo+hZwNMdAC5kTQbBpWJqczZY
         yafHpHRm68OYK3DbxYCIMrkzgNN01KDiinyT8P3nQte0ttGNcmB05ujk2SexcwkduoJR
         ZER9svWezOcA6yrpUCJh1hdImSaFAIKqVj5sbLgOPpgnKQmucRAKyoD6SCfu2jhpIdau
         eKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZVSr7ptraVipbA/+Olm9oVymGiWEU0Mm+3zjSr9PS1A=;
        b=c6J+Z4g2Gfnti8k/PMId7oOpFzmSVIFpXiKYSYWWc2cPXqNAGojJGaF48052xtMtkF
         hvsWuqT6G0/b2zXk7wJTEMjF6rHl51yTzzpH4480uDKBjx5hdrGDMqLzA7QIGEitGJ0t
         oevFRjidRgE81hWl+CVS8nUQ2a5jsg/x4OMotNwnL2zqQnzGJfZu3c0Z+EKxES75NuRe
         saEnuYkf/Sn+FVMIaBPwKV4hlZBg7PgPEvHMxJ9AYnarUYRc6f8IXiHUg7ByEA7B1Cso
         cv2TjGzfT7bRV0kjfcuXpkxn++PFZWevs8+7ipgDxPBSsC8LdCPeK8Wkg8oDc0WTvvri
         lpMg==
X-Gm-Message-State: AG10YOQnqfUqzwH4SowmAEg24HQv6jVv6+YgVA2IvLxRZmINEf1dzdhf8NJil+vHFkSFmg==
X-Received: by 10.107.7.37 with SMTP id 37mr16587985ioh.17.1456671769452;
        Sun, 28 Feb 2016 07:02:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id ie16sm5134886igb.11.2016.02.28.07.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:02:48 -0800 (PST)
Date: Sun, 28 Feb 2016 15:01:59 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Use list_for_each_entry()
Message-ID: <20160228200159.GA6547@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry().

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
 drivers/staging/rtl8192e/rtllib_rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index af64bd3..2737aa4 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -402,8 +402,7 @@ static int is_duplicate_packet(struct rtllib_device *ieee,
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


