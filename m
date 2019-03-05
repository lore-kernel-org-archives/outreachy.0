X-GM-THRID: 6663618170330284032
X-Received: by 2002:a67:85c6:: with SMTP id h189mr2003220vsd.33.1551803523356;
        Tue, 05 Mar 2019 08:32:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e895:: with SMTP id x21ls4341782vsn.1.gmail; Tue, 05 Mar
 2019 08:32:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqw88BBsdv3XHWCqvIqA2cZ7FYtDeh4KTktyJqI7emEAASz21p+xeX4RtBbU9Gbw17YVJxLx
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr2083488vsl.44.1551803522599;
        Tue, 05 Mar 2019 08:32:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803522; cv=none;
        d=google.com; s=arc-20160816;
        b=objyQqwa3WdfcIiKqw9qp6aWA24740FfIgn1a2gNKeOgeL/Mb15w8aUQm9E36k9Kq/
         R1q8uzbdAn9r/3DvBKGBb05qdmnb2yKXOjR9BmXiR4x1Hk5JIrk1xNdnppLwLX4UEVms
         i+IjbIcu+mvGABs6uX3GItMoKcW56DZyKKyc2S/Yxx+9VT0/kLQUG8fK6jqUNx0/k3hL
         l1uDBYg9mqgQ3LJ0qLLxhDzl2A0lE4pUdeRiwmufiNe8oBBOtauTMySF6o+bymA6l2HV
         ehHvVrqXwAYt6lsn/71LxYeI/lrXkhTfSo26xVnDMUCq2MsccZMadn7I6gdMhnkotCP8
         B73A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=usrSDo+gnWYSQ56Rqm2+rdaqxMUiD6M1wWr8GanqvJo=;
        b=DCVKHkgnT6+jCJuMIMIYVjWFA9+soUKCieSWXQY2tF6Igth1NWcNTTaUY/8LCvoMSm
         s3PTtpoABc4sx24c/oU3oPpBdmu7RvezBZ2NbHsmDeIJYnvjJWBQ1PDV+m7+Ysthr3P9
         E5miyW187j9Bh02u1mZ+hLRurWagWOG1YW9GaW4YKCRqU19hX9AY3n5ughgOXR1UznCm
         v3EjEespp4cwcQnl1nUgz0s4p/Syp8KFX3b8Hd7Oq4EZAF9TvIuw1fQAuxGAOibEwIGA
         XStH7UnJnCEicrJaY3xC+4dz3c8pZ7xy6IWdEBnWCDKUYYlsYeboweTIEnTvwOApXVLc
         tH8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H6OpawjY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id s73si598225vkd.1.2019.03.05.08.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:32:02 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H6OpawjY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x330.google.com with SMTP id q24so7976584otk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=usrSDo+gnWYSQ56Rqm2+rdaqxMUiD6M1wWr8GanqvJo=;
        b=H6OpawjYsOD3AwYfY+m+n0hZJ4f0wxgg5JSZZs2Ll69RLPeH2764AH9FMwn2+GcvQC
         tww8t5CbtGOE//oC/KOhlVAwb63o9pU69/1O6AomqeLWeq6DZ42XjF5qPrzcGTXCn3NJ
         GF2TYEZ+DG6sK1TQO10HEUBLifn7+7lSZbnumCrjk8EAHyRXWHTNUzVZD16dfrJ0d9rg
         idErzM76kd7wsuSz8t+bgiW9kyRIYT11QfcjMeofnoYS7/tQGTBpu3K0B9jXce4pKhEp
         YTV4XTO28WDt1KG+epGwqjNdKGPDtWh/swFcwNuphBCWlv2se7ib/hFpT9cSiSMbn4BZ
         P9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=usrSDo+gnWYSQ56Rqm2+rdaqxMUiD6M1wWr8GanqvJo=;
        b=Z2GVlUnygvh9TOFtj1cRTCHS2/3zapCAuZ0AcyYNhrerwotZ2GaWRBxv8WZRROMEb2
         ugrdFmdshIsvfwc+xgf7S6KEd2OUYmZsTSGNIg94uzm3WiuM6mvBKcRM/YKdCMkV1CGN
         toweNgn2zRfiQxFIz3sRyL+utCcHCwrJL862LOf1RS6UlkBLXNIC/8uJBgpG9k/BwZdF
         87xMJGVxNCgz1GmdXqfU6Bh/mEA4wDjdP6BXschYbTxvQdye3eCcPRwqlRTFZ2l1Uc2b
         fkfmWxPSDHWf8kVO0JIVpXWQ5po/ziKpaPFmwqUEdadi/p+zUxNscWR65Afo33ZltnwG
         A8Lg==
X-Gm-Message-State: APjAAAUJ/htrjm6kq2qHkp4wo362kRiHEtxF8RbhNe5kiEkcTB8unokM
	Eadi5141dKLUyrs+598VVaSwmlCoSwY=
X-Received: by 2002:a9d:7597:: with SMTP id s23mr1411231otk.25.1551803522065;
        Tue, 05 Mar 2019 08:32:02 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 39sm3871425ota.11.2019.03.05.08.32.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 08:32:01 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 0/4] Staging: vt6655: Fix checkpatch.pl issues
Date: Tue,  5 Mar 2019 10:31:54 -0600
Message-Id: <cover.1551803156.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset fix line over 80 characters, correct spelling error and
fix space around binary operator.

Madhumitha Prabakaran (4):
  Staging: vt6655: Modify line over 80 characters
  Staging: vt6655: Fix line over 80 characters
  Staging: vt6655: Fix spelling mistake
  Staging: vt6655: Fix space around binary operator

---
Changes in v2:
- Dropped a patch
- Changed subject line for first patch in patchset

 drivers/staging/vt6655/card.h | 6 ++++--
 drivers/staging/vt6655/rf.c   | 4 ++--
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.17.1


