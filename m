X-GM-THRID: 6468588291165782016
X-Received: by 10.28.88.197 with SMTP id m188mr216564wmb.4.1506092701164;
        Fri, 22 Sep 2017 08:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls1386632ljd.12.gmail; Fri, 22 Sep
 2017 08:04:59 -0700 (PDT)
X-Received: by 10.46.82.9 with SMTP id g9mr1208770ljb.42.1506092699478;
        Fri, 22 Sep 2017 08:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506092699; cv=none;
        d=google.com; s=arc-20160816;
        b=AVi321mzwLYjaf4nE4CRFgz7Ij1v6YuPlLcx/mOh10G4Wzc0n9+guKUiYNfawMZ13k
         U1tOX5TEgYyPssuURgidWf8HVqO9nJh76rjhDKUBahxPJO2D/zY/C9rIBTHQopj0BjmQ
         3i1beeF0m1sFsWa4NwcopMh69K65Hkg+KntOGjHHBayUpAjtqPsVDT0X2b5wld2hhyHP
         gch2vCjRZGO5cFmehxLivNnM2kVXVeLvL2DJf6yKRV/t4PDpy8meLGAdAlzrhLgOkabo
         EgjQWulMdPsn9WSPkKy4n+iih/5tkQrfZ4GPiMjcSr861yHucO82JUm7h5mNCyOo08yd
         uoLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=hyFt4yzHrgCAoYMhMLQdUOHCZ+BOCrVLKdkWNASuS/A=;
        b=KSvZbp36QjljBVclAE2ewhhU338fkOZRMS4mRwFWTecOQv9sDfwe0mMi93B/BYAAHG
         Zfvx67XtxfcTnSO/7ywsBIohnCmU3N5bXKLfrJBVsEFSWUhpLynN6JvL04gZXCcFyUqi
         esqlNis2C/v+pF/jmuyjm7bEoTY7EcVm22PLMo2tieciyvtfQtSKDuD8GL5omyIFk+o8
         FrT54ROypYbT5dh2+JZumCDsokltkF6hIrZrL0i9VlLWaIZcyw8lVTJBii3wt9GQPKsH
         9y+ZBafWVowFKioesQcGbNfqFfT+tziuXdquXx2dZV/NgSWLafBm6u0J4hooERJk5JTP
         zfjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LG3B82LQ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id t142si172487wmt.2.2017.09.22.08.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 08:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LG3B82LQ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id m127so1566059wmm.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 08:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hyFt4yzHrgCAoYMhMLQdUOHCZ+BOCrVLKdkWNASuS/A=;
        b=LG3B82LQmnlcuR8E3KhckJVUf45rBEJJE/5nlsiIxWZZdKZYo8H3JshTjPpuAsqjor
         nN7Q45xw/ulxJmaeaC08PFqbBiO6zPBaRiKEPCZKtQDAAUOI1OhcBuF+rGsVxmulF+uq
         UZrG51DxhHpfylaQK5Ude2VTc4vgVIp4lZYip6Dy9dpTAna4s8yLUDMGzRLNKfc9L5zf
         KBhd4cOGJ0nfLdyQmAJn2o4cWUH4YKcIvw+zCKgBJ49aMb0qYI7x7IaUkooY2N1J4gr6
         OSsQQnOMyFH8iE5ktb3/Cdlmq6n/XcNgdFXPfz2VNGqwPnoj6XUIK5WO93OIHMo429+t
         Qy3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hyFt4yzHrgCAoYMhMLQdUOHCZ+BOCrVLKdkWNASuS/A=;
        b=R1CPxSQcRTIML2jkoVE5IouYgDG8NlYFvB2HY9EcVE4cxDB+skyazOz7RiPBeJMoml
         Uoq3cOju0j7hVR8d9oT5GA74jtQYykxxNzow4+pHGMl2AYRSVZPLDWLKDziiSPCtIGDq
         IraDoZV2oZ5hRfSwK/fmA327eQIScHkvolt+WMAYzxOF7y7M4gT4RY3HlNcZXbszMdGt
         o/X/y+czrL6Gz/mNHSshtJ1gqNFq7CSVivMzCo4iYRpDavHlab/Kls/WyhC3lUvY4p3f
         R6uOkLPqxMu1+kVUKWT+r3vtn4lxbG3d7FQCMKy6efA1Pzrjge0qeFmvkxMchrku7H3y
         q3tA==
X-Gm-Message-State: AHPjjUiV6bS5nPykRzlfIdKpMrAtp/ThttiYWCQb5JyBLKCSVzKb9vat
	95TJMG8Kl+M30oOCKT9OtX0StLz4
X-Google-Smtp-Source: AOwi7QBsteiAMnUvFzeVI4DG0upAkX0KFRsjPE45VG2lC1jOzEtj2R29RO9gAPFwSlHKEySvZwOibw==
X-Received: by 10.28.186.135 with SMTP id k129mr4480029wmf.100.1506092699288;
        Fri, 22 Sep 2017 08:04:59 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id g13sm55258wrg.63.2017.09.22.08.04.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 08:04:58 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Staging: rtl8723bs: core: Fix coccinelle warning
Date: Fri, 22 Sep 2017 08:04:50 -0700
Message-Id: <cover.1506092223.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix coccinelle "WARNING: Comparison to bool" and other minor
issues reported by checkpatch.pl.

Georgiana Chelu (2):
  Staging: rtl8723bs: core: Remove boolean comparison
  Staging: rtl8723bs: core: Code clean up

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 68 +++++++++++++--------------
 1 file changed, 33 insertions(+), 35 deletions(-)

-- 
2.7.4


