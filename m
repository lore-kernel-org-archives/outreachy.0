X-GM-THRID: 6956170409670606848
X-Received: by 2002:a19:700a:: with SMTP id h10mr20137679lfc.178.1619609633089;
        Wed, 28 Apr 2021 04:33:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls7566667ljp.6.gmail; Wed, 28
 Apr 2021 04:33:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4IL6phwwSvyZfJDTpCE+hEsGwXZwOivR5SrU4Qyi5x8KCeNKlaE57K2MQpOq/lzmUTCX3
X-Received: by 2002:a05:651c:307:: with SMTP id a7mr20503838ljp.166.1619609631098;
        Wed, 28 Apr 2021 04:33:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619609631; cv=none;
        d=google.com; s=arc-20160816;
        b=Ug4M6dnZCRMmvWmXICuni6kOPifuLiDtjBjZbxtZL371lo/0efXgXsjyB8520nQfam
         TdWeiVNwlmzonglQEAgi+Wf04ZPi6PRYVNQ/H3i0vbPyqTWGb8EqqUZXLcF4PdpxEUjb
         GulAmpdI10MFeA/CCojOBxMriBJb9NPw/l54qX9saosHkER7K9Zp4epiRIk3JAd9knrY
         a0NzzUmaeD8ejU9c46+eYoCUQOvfxFrHdQz51YKbDye36RHZMdYioDD5MiJoccyKWjfS
         MgsHKTlLtBRuvesTqKgK9Z5+DLXriNunaRY6F49Lzaqzxo4jPbimLuSmjZBDbMMp8G46
         /QNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SRL7LAkBzsLUShMKaYemtSvs+IVP4TH25c50jQgyGbc=;
        b=jyYp3INwuu2ouWB6sNVLeRWs18wKBe2Jq+oTDLFhbHXzJIlCRq7wrxBcd3MV6ttlGE
         foT6sQE7aH9b2emjEPwRRLs7spx7m4gEGYmwyIlsyZ1ogewiqt1bIbIbx7I4WD9MQmku
         nhmm2nwm7JDv957m/S/7WbK2gF14a7RP8aJnBuqt6tFP62rU3lg04Eja9VBLGdKFPIbd
         GB4mt3CX3LTizvPu/D2XJd3WxNvAWnXG+I+Qia4ZmvvFr8hsUZhtGbe8j4rCjGHt3Ykz
         hxnDdVq1xy2UlUHq79rKOk0HZE6xJ5Y0IMWntesOr66fePydbydZrT/TiRxkaszOoe0c
         v/2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H22f8cen;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id l11si1285587lfg.13.2021.04.28.04.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 04:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H22f8cen;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id g14so14086233edy.6
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Apr 2021 04:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SRL7LAkBzsLUShMKaYemtSvs+IVP4TH25c50jQgyGbc=;
        b=H22f8cenNNUgyJ6uU1FRqxyvANwieddNRC0SaSE9AWvvRIu/qY9xgul+uvp/EZ1jab
         6OxfuFXHEtQvscV9yZTCaK3gyXP3Us4OXlyRDmnPwCPvj3+jonhU78rdVHGuSY78FyIH
         icOWJ0nSmxenTalBCqaBaft4/j3eLuqK44WiMwPcIgCpX7qXVAhO8q8xkGk2vu1PjqJU
         Jl7YRdTUbtnxjLgAKXfYt7EuvXU/+qImrFu32lNNe4HYl/BtGIsPibtE5lU2Wc1EhTBA
         dJcgQ+XtQaHnsCPGbzk6N0fesutFyOHwAOUOhZqnt4WjgRPp1citkMhU5TgFHeNtXyFo
         2FrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SRL7LAkBzsLUShMKaYemtSvs+IVP4TH25c50jQgyGbc=;
        b=YZg6JqofpDk5WYpkFR04G6J/j4nFfTOYCDX68rlMPAMvtELXG27xzYEi/jgUqIwqrb
         HCF8mKfNuDARdD/cuzu4aW4YxyXGW/9EcrT54EBrkNZ+kfgrPHDfmetib+KR3xjFP+CW
         fouincc9q82x4O9WIZm5KhVSfBrAoMxRI5rptQhQfH6FkOpm6rtjyMJl3KZo38drQrKR
         EqLLmxRu9JiY5DfSdMfwWiQsv1g5fD5K4dXJQdNF+kYq1hOL0+QpWzO1vjJNlNlVkdGi
         JrroC9LQLkjD3+QVeYfR7hyGQYC9f1pra1Uv+GLgtp8/Nsx7iIDebSLxSTpPJn60k6eY
         bXBA==
X-Gm-Message-State: AOAM533YQqpTkd/Ivax4c4V1BYb/XQfN2yJekYnQCmRusEZyKMTo8vvK
	HPuPa7EVbx9JiK6GiASep2kUPiu+9Wet8jy9
X-Received: by 2002:a50:fc99:: with SMTP id f25mr10711029edq.147.1619609630443;
        Wed, 28 Apr 2021 04:33:50 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id u19sm4677187edy.23.2021.04.28.04.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 04:33:49 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/2] Removed set but unused variables
Date: Wed, 28 Apr 2021 13:33:44 +0200
Message-Id: <20210428113346.28305-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed set but unused variables. Issue detected by gcc.

Fabio M. De Francesco (2):
  staging: rtl8723bs: hal: Remove set but unused variables.
  staging: rtl8723bs: core: Removed set but unused variable.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     | 4 +---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
 2 files changed, 1 insertion(+), 8 deletions(-)

-- 
2.31.1


