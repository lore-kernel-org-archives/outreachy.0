X-GM-THRID: 6470101655297720320
X-Received: by 10.101.74.130 with SMTP id b2mr7155956pgu.53.1506440494194;
        Tue, 26 Sep 2017 08:41:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.3 with SMTP id p3ls2605523itc.7.gmail; Tue, 26 Sep 2017
 08:41:17 -0700 (PDT)
X-Received: by 10.36.65.2 with SMTP id x2mr2294049ita.55.1506440477514;
        Tue, 26 Sep 2017 08:41:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506440477; cv=none;
        d=google.com; s=arc-20160816;
        b=ZV5T9PMLa/xIV9+2bzt1thCsErHjLLC5JcEzeAOgrFOsc17ToclIhTElaBFHxUw9kA
         KoM1VdHkS/x8c0MOszJG0SxvrtMUgOvOV3EFVdn63b6UvHipjBgvPM3sj3qGJOtPYE/i
         5M1rnhWlbhK5LVGyg6qubTVlnrmWcGXO6uPSrBSoag1Qbc8QOhlEpbqZUJxQl6MJrsov
         u6HzNfJm+rNSKqgj2Y9GbsbbWr1vYZgc5OMrAwSCXlJum1gD/wMtELnCnFjN07HMraHD
         d38qNQPLjwDDQdSUCEh3v+IyOJ7X16jqPPZekPNeQoYwJPBMszSccEcZtStircx7snhw
         rRIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Y9+dUSaRfXds4LMxWZ+s5Gb2WNQanyhGZdsq67OtSL0=;
        b=p0o3SSU00gNuCJWceywQzgyAlptQTVNyGJvpv2qZXTn41FGSjdhMJF2n+CFAd57eS6
         sKQX/BLcn/whEZSS/zBC4kOTjuDpsd5s1lBS28e9PZWYWcMi53hBrwqaNCOU/J3opNIA
         5sT/GAOe276U9GaUvX2QKpeacyb2DpX11ksFlHChPS4hHreOnlhAw/q4B35FOVkU9NnH
         GZDsoZmxqgsoF6kWor1sLpkeN35n4MVEcUmnUczZX7IeRMqQWdFzu8lbU1bhEHm2v2C9
         v1YAx5Y9NAnJGxEARgDl6qeaaw2Gwvg8spFt53Phsg3GIviIlj+CTDz6CjO5H6N+2ruk
         GTgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I5KZkzYw;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id x71si731638pfe.0.2017.09.26.08.41.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:41:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I5KZkzYw;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id j16so6980428pga.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y9+dUSaRfXds4LMxWZ+s5Gb2WNQanyhGZdsq67OtSL0=;
        b=I5KZkzYwjWVycMCxov4kfyEfhruBOb+/VjVuB74iSZf0j3/m6hDgYRz1oI403kAfvr
         I0r+Y/ZUzCdDnoxsR4VxMXKaNcbCP/VO2FTSAZY0DhQzlfoDpoaaBYwVvD4/cgh9A2X/
         h/EjF6/T2lIY3g/C5zVKfaGSrm/gXh/9eBpEArMoL5BKf72EGYQ2oe/5Ov+N4mjmly1o
         ltcxln0xzIkK9+gf6ZUwDCH0BO5gNcfFdi3dOL6wPmIlBW2tVdcfh2XQP9BBq7EpxVx8
         6jQetl7EAdYTkSQxccCApfU4riwrpThLpleZcQTlXCQacjHcsSacZ5Wswz7L6A6joBxk
         /I3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y9+dUSaRfXds4LMxWZ+s5Gb2WNQanyhGZdsq67OtSL0=;
        b=RPy1D7zzMNSRDbF/Gzr8iZSemtK46pTw7cJH5GlX1xhLBJYSQt/VVRkVVPRHAj+VO/
         Pv5745E0Xk9Kx6sJaTZLob+QzjtIpiM4+jr8ZwC6uHE8l2023MduR1YL4Lo1CQOON09/
         ucTveeOFF/MfcKznWW5frqoZavFK0t5PKJH3dhZ7oyV1TDiMogIhFpHFCWlYm2vvdOFD
         CWTpCMRB9FOEinwOewp52MAer6EBzEI5DadpOxGQLw2DOvpG50WDZLTgoj6QwMRFLE2N
         jer0/UAjMjlC8OE7HC1omzGwwvB7df3KxzTRuruogPyEWA8QdOilkcYJAD6XQr3Ur7Jq
         BFBw==
X-Gm-Message-State: AHPjjUieC5WV1e/l0kyh/ppEjn3qvHDPBEFDwG4b2rjsrqhxEtBYYrW/
	L/DRQbxyiktwMgQuG373smk=
X-Google-Smtp-Source: AOwi7QCmmisusIDKeeog3g1tSw3XW7Ni1HVPftfaIHdSdRGBDGfyQO0wledP182GKUJlYZD+XN34nw==
X-Received: by 10.99.115.92 with SMTP id d28mr11563398pgn.280.1506440477122;
        Tue, 26 Sep 2017 08:41:17 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.3.154])
        by smtp.gmail.com with ESMTPSA id x4sm15795181pfb.101.2017.09.26.08.41.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 08:41:16 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 0/2] staging: iio: adc: ad7192: use private driver lock to protect hardware changes
Date: Tue, 26 Sep 2017 21:11:06 +0530
Message-Id: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

These patches 
- replace mlock with private driver lock 
- add lock where there are hardware state changes 

Changes in v2:
	- more descriptive commit messages

Aastha Gupta (2):
  staging: iio: adc: ad7192: Replace mlock with driver private lock
  staging: iio: adc: ad7192: add lock to protect hardware state changes

 drivers/staging/iio/adc/ad7192.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.7.4


