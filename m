X-GM-THRID: 6469693451646533632
X-Received: by 10.25.21.19 with SMTP id l19mr512381lfi.4.1506342890294;
        Mon, 25 Sep 2017 05:34:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.71 with SMTP id p68ls1202747wmg.2.gmail; Mon, 25 Sep
 2017 05:34:49 -0700 (PDT)
X-Received: by 10.28.212.73 with SMTP id l70mr31046wmg.14.1506342889337;
        Mon, 25 Sep 2017 05:34:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506342889; cv=none;
        d=google.com; s=arc-20160816;
        b=rGwI/uQTrBLeFLyGnLPugRLxK7Tpb9hGCBzh02aP743upwLSXvG9pj6obOeiwuXgxW
         K32vnU9Wx4dnGZuxnpraeicFhCKU5aNOLisdzRk5g6x2vjpcLB2u2t29FSRQTXdMYOqa
         PnL4FY+FOY6qMfAHkLk221xmF65p8ubvGM3iJneLx/4F8DmGm1J9UkozrhA+3TqYWAKs
         u9I3ViDvEfSxhoiOKMt76mISIaVkxEsgyNucoOrGQHl8f8uOjl1KsaKbn1YIFeQ4gVOz
         ne/7h8MLzem3+o2ZXkctCPohUrtEXyVht2F453/YfLpuBtXoMpM/eVGn05cpe0HMIxvS
         4Ybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xCGsI1hw7NbfuFuzTu2uC4Uvgq63UGvOUUomZnsN1mk=;
        b=pUq+hwEOT07cXnJ55gYfo5xq8unIcCZaXqZbpOKHZa7jHaI1EAiuRg1+cC696toFu+
         cplefV4AVillTZC2GxFXuDFJ2IkCjwegT9lwp7F28vIh5IG4qYr38Q8tJNaqnqOamXRo
         jj9dvIC5lqmSMX+OXNr0z3nj/B377Apx0e/PITAlshqAwm80sJUlmIp7Q/DKF04+nPFY
         X9cApox1Sc1ZxfvSP/XwD/0JYG8dHqSSw4azg5UaQMXrMlpmHVbIq/ahZbAvHVFWBU1t
         BttteBzxVrpntCdZHRK/3kalg5GpKpfcMcdrUwxdT0IjQ8uG+I/1eS3xR6LzLY3jXcQN
         Ub2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQpE46IB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p70si467710wma.1.2017.09.25.05.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 05:34:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQpE46IB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id n64so2104014wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 05:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xCGsI1hw7NbfuFuzTu2uC4Uvgq63UGvOUUomZnsN1mk=;
        b=PQpE46IB63XO+UqoB0OLIF3xllgihLrI1psDlJW2A49KwrcZ5+Czi12nzySsTnLTOI
         vIriDALi/jTb0emhScR5fFdri0Wg6wOA0kod2TdPBHBlhgSgrOWhBJxLQW2BPrYtQCp9
         ERDsBV6DMqmPqgrvu6F23iVWn9yfC+Rq59GqEZIpjoSXT2oWBWFze+jbQ+0T96JXTYyr
         1diU3SKmKXWTpm9B0zM5KiAjiswtaNooRj5vXZsTfWHN8/fkLfXMFwYOXQWbDKlMoX6X
         IFniMypYrjYKAw/JeFvadcFfowELYqTDSIqwd1FirJJQ9d90WVrIwKNy8LYIKk6ygYoY
         zSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xCGsI1hw7NbfuFuzTu2uC4Uvgq63UGvOUUomZnsN1mk=;
        b=tWHtAEmnFSc9dOmBNdzKd3GliLJJd8UimV6UuSNhVtJQHHQ/Yod/x/UOw/GKzM3O8v
         yBH4BZ/44hgE+DoX8ipy9RIl4R78/NJoT0Cxa3XkerlaGTBoPa0ucof5ELXDrnoUZAbX
         Ell3A7tWB/TL4FfTyMJqz1AP2nMUy/jUoKFNxkB4ImlpOP4OdT+ehMdjYLs8wG7eZEr6
         oobc/LH9dt/ukc6v15TzcHMm+4B3TAEE6w6ejTW+pMci36xvJ8SO4ec4s66HTMn43vbF
         pPdCZKB5J3sIXRlApy/f1P7ISgqCaKT/A3ZOV7dyYluNHkD7jjrZ6OiXaw7VIxLH7021
         ls3A==
X-Gm-Message-State: AHPjjUjh776WgXhCt3hXycCOiig/2Wxy7HWPAzpgYWD/Z0HIx5Y3gnxy
	rJ0+J2CvGj8PL2eRTbtnHWLpovwZ
X-Google-Smtp-Source: AOwi7QATt3MVVUXgjlS2e50zT2+1WwNQtPXtL31uTYmOpkUINQQlDkqDEePqlQRQmvsrRjHUtHqbqw==
X-Received: by 10.223.171.206 with SMTP id s72mr5887151wrc.27.1506342889117;
        Mon, 25 Sep 2017 05:34:49 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id b47sm8401102wra.73.2017.09.25.05.34.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 05:34:48 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/3] Fix checkpatch.pl warnings
Date: Mon, 25 Sep 2017 05:34:04 -0700
Message-Id: <cover.1506339722.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

Use __func__ in debugging messages to display
the function name. Also, fix checkpatch.pl warnings
related to the changes from 1/3 patch.

Changes v2:
* Nothing changed in 1/3
* Added 2/3 and 3/3 patches


Georgiana Chelu (3):
  Staging: rtl8188eu: core: Use __func__ instead of function name
  Staging: rtl8188eu: core: Add spaces around '+'
  Staging: rtl8188eu: core: Fix line over 80 characters

 drivers/staging/rtl8188eu/core/rtw_recv.c | 30 +++++++++++++++++++-----------
 1 file changed, 19 insertions(+), 11 deletions(-)

-- 
2.7.4


