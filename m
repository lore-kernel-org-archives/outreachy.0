X-GM-THRID: 6666794148561944576
X-Received: by 2002:a67:ed05:: with SMTP id l5mr18429590vsp.23.1552233972721;
        Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:94c2:: with SMTP id w185ls132238vkd.1.gmail; Sun, 10 Mar
 2019 09:06:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6z9piZW6OvylPhS8i5wRg0S9xr+DRNZt2zoq1YekeXgxJW+n7tOzJaoF36iBqAbn2cU4Z
X-Received: by 2002:a1f:aa03:: with SMTP id t3mr17981571vke.21.1552233972091;
        Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552233972; cv=none;
        d=google.com; s=arc-20160816;
        b=Xr1dQWo06XueW9dF7S+tVIJYZyao9oAx46kKNnnhTElA2J7ulKTiAb1O9ZQufwx4P2
         C7egqD/Dzj/6foGWqpJe+fO8lPhnGtGICEZstP2IEfbtIsQSKVCr1iLtnmvjQ7plNTBE
         EVmtbVfVNWZTaUy7cDHMuxJfgbU0i0oIpxvWiPkqukVXAftSYhRnD1X3YLoF9OLzgsT4
         ULAdpmWVDeK4snTdSSjdwysFlCUolMr7E502Q1ekoVearKMlkO8NaPGqrG9mTSb8nBbU
         OHbQFWknYfXMjWxa7p17+GSrvCRZXsc9HhIsEk0iZvkLW9SOdR8ipOWxIfq3FwYBFFej
         1aIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GcVOIvrV50lDsoD0pLfM8nQReP3lIaU7j7myhkQaFZg=;
        b=fpEVUEDGsFJf5p+goEQugNFFiZCQ8b4aqZrZf5phj2vl5NHeAyzmQ92zpUtNE0FjAA
         lskVIr9ZaUQ9KhuKEPIU0YQcTp3m52D/siKguLiOqHRD0hZy33o26XbdqejnIzisqbrt
         qpWLgrJexu1DqI3sOBkno0cM7DCZEfADyzAI9gNKdpPQ35Xi3r/E8UB8Rry+0Km3wpTS
         CANjA0Y7t33bZvaPeltFqNipx9vNFAEXrmLhsoCFNhTAOZgaIecRNRvqlIpCF2cv+369
         kLYf1JAKCu5ohYNRU6h41oNSV9K6sJM9FtBBbQQMjKMzulEw0iVNlOBWZxHE/wOu5eM6
         5tig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEftzgwC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b19si125777vkf.3.2019.03.10.09.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEftzgwC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id r124so2095080pgr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 09:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GcVOIvrV50lDsoD0pLfM8nQReP3lIaU7j7myhkQaFZg=;
        b=uEftzgwCWc2p4PxMlstSEyFFtHENYbJ2wjYLrMBBxXy5gLSSRo4UZj4v5wj+32LTjF
         BVQEMH3a6rpkgDZsSGVDqr/Uu/znE6mCas01qM8IfqV4t1CG9ieDpCvJ8qImv+z87ZRp
         QzRNx+qcxlxAdBBxjRkNYPD5hyh5RQuQSDVw6exBEw8iLYVqGLFq43GQ/i6InUxvdEga
         AG8+gHrk7unbIWgKynUW+DIrfaARGkLY8PvCoTQ1vVAOUnHRr7Rg+Dk64evNWNiSuNYN
         yaqwzmfFHDeXwoUW5GXL6/rTjpuyCNAMkNh7gLvM+AHTdPircezmQu5vlYrRMDCgb9J0
         YnDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GcVOIvrV50lDsoD0pLfM8nQReP3lIaU7j7myhkQaFZg=;
        b=ef0AjqNBdb4vUZD9K6+jd/BCmUht/cITu3iMUeIPFOf8lY6NDwIltkOWRXeELOauEL
         uMGq/vyX+E6X7HgWfjXjKif6uBTySCtkD6WYm6nFX39FLv4hJG+n0Rf0uFybgottYXwS
         30C0Zp2NL8ikZbpfTktWgF+AoaYsCH1wGB6ng5v4wN4A8U/J9uQHh3B4MEgzzsfIxTVK
         sDd9lruvDu5Sdn/Qu5Um82wJCyB2ab9nC8wKc+3o3zGZCtO9cPmhafkI9dZcjr0zMXSY
         bGnLYFz7iOAp6qtAtu81hq0zoYvRHWjYEnN80wbVoY+VHmTn+xb10Mra+Oid6I8NRDLH
         DkeQ==
X-Gm-Message-State: APjAAAWsU7l6eZyK59f0pb/S36n3enLEr7BMrZUG2Qc7J7bSs7oUqdoB
	3QPvXzmNkSueElM3N3fBEu+h38BB4sY=
X-Received: by 2002:a17:902:2ec1:: with SMTP id r59mr29214478plb.334.1552233970935;
        Sun, 10 Mar 2019 09:06:10 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id x23sm10000292pfe.0.2019.03.10.09.06.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:10 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Staging: rtl8192u: Remove typedef struct types
Date: Sun, 10 Mar 2019 21:35:52 +0530
Message-Id: <20190310160554.4479-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series removes typedefs for various structures to maintain
Linux KernelCoding style.
Using typedefs for structures is discouraged.

Bhanusree Pola (2):
  Staging: rtl8192u: Avoid typedefs for structure types
  Staging: rtl8192: Remove occurances of typedef struct datatypes

 .../staging/rtl8192u/ieee80211/ieee80211.h    | 30 +++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 12 ++++----
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 10 +++----
 3 files changed, 26 insertions(+), 26 deletions(-)

-- 
2.17.1


