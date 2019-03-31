X-GM-THRID: 6674586427975532544
X-Received: by 2002:a9d:3b06:: with SMTP id z6mr5299871otb.47.1554048254950;
        Sun, 31 Mar 2019 09:04:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6c4a:: with SMTP id g10ls760669otq.6.gmail; Sun, 31 Mar
 2019 09:04:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaMQ2mhNY1oqRvCkL9SeYB6qvg1I1oC84KUoiF99Z5L0Mo3asyrp45MpWqh3lBIrR6g39M
X-Received: by 2002:a05:6830:1006:: with SMTP id a6mr4447935otp.51.1554048254206;
        Sun, 31 Mar 2019 09:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554048254; cv=none;
        d=google.com; s=arc-20160816;
        b=MWJmTugvaq2NMbOPiSCMVPIwxTCfYOlimuqNMilvb4H4NuQK6NQKIlF9vpC6ZHp2Nc
         2/kSTtMLARiGRe32u/cedo0M5MJs1r/uCYQxV2Fdo2WZSebUUkF8a0nDXzRIlR8Wh5Uh
         OPfURxwvXCvt79GS6f82CfF8dEu1kBsTEcWwO7rh8PsoFLA8bG3M1r3Oz/yJGvicNax6
         SZkbm9lVnYZYxXLL6hgi6vSfx43bkRg9siXo0yePrSgLJI85g7AvFTa1GALnoHNXhMP4
         HPffAe0AM+tV+9ndqJEjhwN6kb+WVhTBgbEzT1OZtlo41xa4pd3+7k7RfjIiASpYSfHm
         vCMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cHma0T54EbuV9qr+vcZ/Vb6w6MhHxuvSkEN6lY58B6M=;
        b=OvtEPmTvpO5qxtsy5nSkQJ2DlbyUOOntTIRlSpQD94f0RKJkKC46siwmagkBBgr8xh
         8DdNeFihpwmdvW4cHXbhzermWsA1sURAL1G27qhJlCbi2X1Lh1EyPyxaltzC6vrYY82n
         0Ftb7nVpiyNCKo6PS0ogzdk9ezBoU92+pzjUTH/4fmXNgD4Mu8p5najZC+S3EwtYXZl8
         NJgfvDJF5bXc6YOkCKmpYuCAC4Of5kD9AcVcncXMdDiu/fKBw+EnmNnd3Uo3FO9GdONR
         cVFLQS0Vx+GPFoGw84T0LxGdm1+QiswuDpIqQPZg7HB1aT13hL/06LPqav4UX1C7MqvE
         52Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQWgdSNw;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id 196si355049oii.2.2019.03.31.09.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 09:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQWgdSNw;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id i2so3474422pgj.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 09:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cHma0T54EbuV9qr+vcZ/Vb6w6MhHxuvSkEN6lY58B6M=;
        b=PQWgdSNwCZa4ZCIx3tKsn+PNzyUoqL20iH3RRNwqYb0Qb0kPYGDgseIlKM9Jfz5FZM
         zEzaH4HltOIcwDKVy7OQxntXzYihLvhazvJpc607CPmbyPqhtDbysTgvx8vMD1Dexj7A
         vUZEG85KQe5I1hyMY30IliAqJkxVaeGt2zYWGxnD2c5itWtmFbC5GcsRi8e7XGkHQS5F
         VAaoqWHeyGHIwWu9cI/SO2M5bp/PXb+LYYZDM++g0mfwTLlC16VuUWzXmYzGsVh0vHfc
         zuu2eSqJ/fTZ8XPxR+j/cNFkN58E+l5qlh5U2BxIUqkmIiPkjQHDruK/WAuXdnoT7O0G
         5TWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cHma0T54EbuV9qr+vcZ/Vb6w6MhHxuvSkEN6lY58B6M=;
        b=XBv/DHDVVGDoPTHJaXD4ilbufUAIjdgfxsZb9gQkkKKPXzM7t6vkypIwI+5znQufpC
         hiY/7KmDnO31E7YC1KqdmbKQplp5USLWi1FjoCsjSznuYOwZulBGRwuv14TRDWnVeEES
         Rs10sCooV64pq2RYxunJsgyRqpUsSfw7p/nhqFLWt8Zvi1Pt+Yo4dgZ4ytT4FwYAf5j4
         nyRP8JRz5wFJ1eHpMYr/bBI8x8je3Zm4OfxdC6BlpXXrOy6iSvHCxMBoTzo44QLCjQzg
         QPqfg030pFACJtqVDfxx1oSGqrOWVmZpOn0EhtrDlrQH5z8Pci1ExOPOxOTSYoZXL9oT
         EfIQ==
X-Gm-Message-State: APjAAAUppVtlJyaU7JkWtuD8U2ZgBO9BmSYmlPnBwDkoCeozSo9yQDAT
	0YIs2ByCAJQ3R8LK9KsriWczU64M2R8=
X-Received: by 2002:a63:d1f:: with SMTP id c31mr32468232pgl.353.1554048253882;
        Sun, 31 Mar 2019 09:04:13 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.112])
        by smtp.googlemail.com with ESMTPSA id l63sm11328156pfc.89.2019.03.31.09.04.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 09:04:12 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: hid: Remove print following unsuccessful kmalloc
Date: Sun, 31 Mar 2019 21:34:02 +0530
Message-Id: <20190331160402.27940-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by Coccinelle
Remove print statement following unsuccessful kmalloc when there
is not enough memory. Kmalloc and variants normally produce a
backtrace in such a case. Hence, a print statement is not necessary.

Found using the following Coccinelle semantic patch:
@@
identifier i,print;
constant char [] c;
@@

i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
   kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
(
if (i == NULL)
{
-print(...,c,...);
...when any
}
|
if (!i)
{
-print(...,c,...);
...when any
}
)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/greybus/hid.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index 0b72e1b9d325..8ab810bf5716 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -292,7 +292,6 @@ static int gb_hid_parse(struct hid_device *hid)
 
 	rdesc = kzalloc(rsize, GFP_KERNEL);
 	if (!rdesc) {
-		dbg_hid("couldn't allocate rdesc memory\n");
 		return -ENOMEM;
 	}
 
-- 
2.17.1


