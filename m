X-GM-THRID: 6401412042878615552
X-Received: by 10.200.41.78 with SMTP id z14mr4021824qtz.23.1490444886000;
        Sat, 25 Mar 2017 05:28:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.61 with SMTP id f58ls10179308ote.36.gmail; Sat, 25 Mar
 2017 05:28:05 -0700 (PDT)
X-Received: by 10.13.235.74 with SMTP id u71mr4581402ywe.115.1490444885630;
        Sat, 25 Mar 2017 05:28:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 190si1131173pfv.3.2017.03.25.05.28.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 05:28:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so2433450pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 05:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=G28Gpz8N62Ul28KJs/w1/3/YaTlOdKoUx//V40loZ0o=;
        b=CYEy/wRfao7Ze1DcSUx3DnF9nnUzS4CE7CdjDPjOLVgvx7w9IBtnkYg5LVqH2ztELF
         y7sg1BKt+tvzw5oBEptyTpVzmbyIHgNKgBBZ6wXkxOKJZMkFWFaT3+uDDdDRqdax83Yv
         hrHGxxZnjRlenczP4G6utOdGu9FrZOoilShW2rDr+pIQ28WWI1TvHuuV2VBaFI+0KG3+
         SrreKYDQtgmCZdUt0WtpB3HnyNGHT0U4LjltG3pZ8pxfKLScMWZHw/LZop/yM7UnIFWO
         fl7MNjrn2eTCShrzD0W4J2CyVClM3fSV8JH2wzmT5wTKzjhTNaWRYj+r9j76pLvk1jAy
         QNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G28Gpz8N62Ul28KJs/w1/3/YaTlOdKoUx//V40loZ0o=;
        b=XGawTWNvakcTVWHYGOChFtZA62Ymc4/Hl7i9/5wtXz+MZbR2Z/Lv77ReQOzy2OwQys
         qNtFqOkWZj8pLHG168GIYs545QF8cCAAo8NtZ/aDiGHAuKAcJN9UapZOUWyOOohEiRKy
         IOYFywsvwBw3O/QC3H3mNchOfvBHN3COztOuD/Y5kkVNCHN629d4ULEOxtgMrSps9+4R
         c+c6qZAu9wP8Tp7mqy9fnaJV0GZkdZ9koRHYgmpGUCwlH/JEBD2OZ+FilgczIVJLXttK
         7D+0vakXx69xRX7LdPYJK+UVuSqfIw69pCZSeWKM628O+Ixm3gmnlRJudhm51Ti6ePhw
         6yyg==
X-Gm-Message-State: AFeK/H0Sk94vbKgZULkQ/zmxs+sfjUYhCEVtPWpBpVTWt+C/NkEGBRkKaifQWHTjHPjoCQ==
X-Received: by 10.98.68.82 with SMTP id r79mr14869498pfa.41.1490444885404;
        Sat, 25 Mar 2017 05:28:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm10396156pfl.105.2017.03.25.05.28.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 05:28:04 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: kadlec@blackhole.kfki.hu
Cc: pablo@netfilter.org,
	davem@davemloft.net,
	outreachy-kernel@googlegroups.com,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] net: netfilters: Remove typedef
Date: Sat, 25 Mar 2017 17:57:54 +0530
Message-Id: <20170325122756.8743-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Remove typedef from struct.

Arushi Singhal (2):
  net: netfilter: Remove typedef from "typedef struct field_t"
  net: netfilter: Remove typedef from "typedef struct bitstr_t"

 net/netfilter/nf_conntrack_h323_asn1.c | 98 +++++++++++++++++-----------------
 1 file changed, 49 insertions(+), 49 deletions(-)

-- 
This is my contribition to outreachy project nftables.

2.11.0


