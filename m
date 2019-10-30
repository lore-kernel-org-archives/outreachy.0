X-GM-THRID: 6753034664415330304
X-Received: by 2002:ac5:ccc6:: with SMTP id j6mr534335vkn.100.1572462324548;
        Wed, 30 Oct 2019 12:05:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:30ac:: with SMTP id b12ls3564uam.7.gmail; Wed, 30 Oct
 2019 12:05:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYdW6RUO3H3s4SiKVDvvxtZuvC2apSFzbXSiiT0JP0iBTe/NEFGjfbU7AP/5JwP4n06akm
X-Received: by 2002:ab0:1d4:: with SMTP id 78mr741667ual.6.1572462323615;
        Wed, 30 Oct 2019 12:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572462323; cv=none;
        d=google.com; s=arc-20160816;
        b=IO+6nc+zBRY82vhB52CO/1dWuXU8ktaFz0Hbgg+IPiJJFa8Ll0Kno20KqZCGdBgzQT
         r7LZQdUMraEj1WePcqoSJ5vkK+gmsICMW9opon42/G0LYIOoqaPE9Ifa77uyr+dQjhH6
         83V/ssjSAT95rsC/PtLpGG88dfjhUgjWnA9XSwkK9BLZwS+lJ/YwmXApbnhHXm8l5/AP
         mDH+4scZXTzpwZs7CMF14dVOZX3wKShPkGEeqPk/nlvy+pLSm/BoZcj1k00SnwkflURf
         9/Nsts2/SawVig8CBmmT17icn917ZF/mw0YFMyxrVvQ5qew711d882hR4y373b455ll8
         HPQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GIfcfwZSfz3iFqYkkCsQDsEpxbNUtoI0tD1NbKhoPSw=;
        b=SCjNk5V7gN7Dl9VbUFa1N0fYJgEVvmVRkixKaiy0u2q7+p2WH+qnhwLc2XtlALOA+c
         AxYHVuAKxNcuoSzy1yHvFlM08bJMvyJeJp1SceDSGOEb8XGzqU6cXEw+8/RntZyqryg5
         K/qzlV7PKfEMBXOI2MaSowgrHc2BcjvpE5tCo7VVD6gR6Kvn57n7FLcvz1EIhuqtZK5Y
         iYvbJOUZBC5twGEJT0c4BPRuUQpmme6OkG1j/Wwwo4eSGHqY4tPsyvGKy0LyvdxRHCfL
         1SIXyJyUgXZYd/JY60hH+chB+usS9os58Eh8m3CvCmnAu45Ks/naGeIuAwMQOpoebzna
         uFfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4etqiVA;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s19si75048vsj.0.2019.10.30.12.05.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 12:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4etqiVA;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o49so4748214qta.7
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Oct 2019 12:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GIfcfwZSfz3iFqYkkCsQDsEpxbNUtoI0tD1NbKhoPSw=;
        b=U4etqiVAXYGLuwSnkCnKmAeDO4XYNCdR0mgSrR8JvZeQNyIwor8I4gBMU2o1F2uVs8
         B2XmYPHf1WlDyU7sX5GBdYgynpwJr++CmY8p5jKmzWxmARa539d3tShPdv84iDmv+3BT
         x2cdXvA6Pr703pxNBkGkNNHG3bWzelCxU1ITY/wVJxzsJQqLKs+SeFQs99gx1HcMZ9E7
         Eqi0jmhJW2OP++aJy/q+58eqLaNXg9mgYMQgdzXAnehZUFW6tO0fE7kIpuFo/vFgkg/i
         pjoBElmuqvxxxCNVvJJ4cfYqOOccvKSoHuWX4Dk6IaNwf9mqL97os01S06dWIfFdetuW
         7PTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GIfcfwZSfz3iFqYkkCsQDsEpxbNUtoI0tD1NbKhoPSw=;
        b=bt4RzVVrnevAEboL4RAXPJS9ouNLRAjhBdyQP6IjD25jr52XwDsmPGUB8qiK4649ft
         NIMh0Ui2wkasehvT7H+clvdWW0Vj2l3P3Q/nbZs2lHWm7yCe8+9OFEKIseDQv0rSZIsu
         ccZgTdq9/YMnLZ7BcLB30eBkE0ekmYrOiZBKuBiSW/67HOGE2lafaBTx9K1XlsKiDNNQ
         CqVGe2MPTVVAAqiPdrrGidMjQzjtmlu5b2Y3lIxB8+NBDLVM+icu+U7a0Lc4mmHxfkZ3
         C5RCWIeZE2hmLILg6WdR2LSAXf1IN4N6RfOv9aMupDTVH6IO3aaqu3o2XSaqa3ajnP2g
         D8UA==
X-Gm-Message-State: APjAAAVIEs6g8mtv0pXFYRlm1bazlZrzFeORPM4F6ED1gjto8BJYh0QC
	WMrkfWdIfFillh8DeGHFv3b3ii4Y6oA=
X-Received: by 2002:ac8:4a8f:: with SMTP id l15mr1734494qtq.220.1572462322849;
        Wed, 30 Oct 2019 12:05:22 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 12:05:22 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	nishkadg.linux@gmail.com,
	kim.jamie.bradley@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v3 0/3] staging: rts5208: Eliminate the use of Camel Case
Date: Wed, 30 Oct 2019 16:05:11 -0300
Message-Id: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in tree rts5208

Changes in v3:
- Change the subject line of commits to make it more clear and informative

Changes in v2:
- Place the changes on variable's names in the use and definition in the
same commit

I compile the kernel after each commit of the series to make sure it
doesn't break the compilation.

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1


