X-GM-THRID: 6885724039617183744
X-Received: by 2002:a05:622a:216:: with SMTP id b22mr2897199qtx.372.1603207560469;
        Tue, 20 Oct 2020 08:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:470c:: with SMTP id f12ls820063qtp.9.gmail; Tue, 20 Oct
 2020 08:25:59 -0700 (PDT)
X-Received: by 2002:ac8:1a30:: with SMTP id v45mr2870557qtj.345.1603207559400;
        Tue, 20 Oct 2020 08:25:59 -0700 (PDT)
Received: by 2002:a37:b2c1:0:b029:12b:28f0:4e2b with SMTP id b184-20020a37b2c10000b029012b28f04e2bmsqkf;
        Tue, 20 Oct 2020 08:07:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzJHQuoDmNFltkBOagPMQqjrDvAGnFpucdtUCaRLb3VReFrSJiUhZiJcTcdi0KrCPsdKVg
X-Received: by 2002:a2e:2c17:: with SMTP id s23mr1436920ljs.436.1603206457076;
        Tue, 20 Oct 2020 08:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603206457; cv=none;
        d=google.com; s=arc-20160816;
        b=0Iy1NbmVnfvFSv8YK44Psh+Fn9NdZoBlm8REJL/wv8RQ4OzhErpoNCd1NW2n03F45i
         Qda/jfz8UMrzwqGvpuWs+EpyOGmfDVrtdPSA3MxHe2aago4zmfTuLtL6Wadh9gKtkryc
         RnClc5PiUJv+KGBA7sIkj0F6SwI5VHNsPs9QJ+cI3dk4zeyHAV5rfPzZMWB7I9QIBfum
         8P6l38mi8xwxfVubKTlcQKEA7KDuuWVaQjnUBIvzDjmDLlYwxDtmT2VWntdqHnXwGgBS
         0NNORu76fOzh5GFbHGGvy352p/PnleSocktVu4ZiWhroqYx1Cj6QZsS2hk9VOdPJ9YnE
         zVGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hWp6NSMp247SAdz6iVX4ALjI7Mu9VJRlD2AaL4lhjdo=;
        b=bcRtmV2rhR9LWuCDcEdeDq5OfrtiDDUpudUQUJ81YnSGK1SxNerqkgXPjawtfs1nbJ
         RrishBtpbn0N3xVSvtrIHQIsIr8JBaT7Luy3+GxtQlErY8t3NrVRATdfQoHxXPg6yaAf
         XEt2SixJL7rVfZC5Y6Z9WstK7phRbZVZjJyTELh0/xZ2G03H/cyXoGVcKw1GQ98PntHf
         h65k5sE7bDt107FWjUGFYnuxkbKlFLJhTJJXpLd+bSWsz+HTgDKEOLzEY68Eay7F1jTt
         fhk0YdTXKIzz02lE+HBbBGt/s6oshidyIJJfhMyHMjMxj3rWIjgKmG/ASH809UmtthOv
         a43A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sUJHXhzY;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w28si77132lfq.3.2020.10.20.08.07.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sUJHXhzY;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id m16so2386252ljo.6
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 08:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWp6NSMp247SAdz6iVX4ALjI7Mu9VJRlD2AaL4lhjdo=;
        b=sUJHXhzYv7FKEm9Swp03YHH1Y56chpz28irJ2Ntim+erm++ovTgoI4fSi4wu3Mha/B
         tzBoZ8snhrC0lWfdXft7Swo6qY4VFsZ/+HOqaOWjdLHDz3TKWzjKQLwUKpBFndJzyHN/
         ot4eQBoa69PXIwttJVviR446hZXsNNLHvk+GGYx/ASj9E+T4Zutw33qHgPswj2dCdwDh
         ZbJUuwYulteT/HfvMss//Q3aUb5vTlxIIwTzcjj8XB3IEKOUa23cp124mogyAQObzp7O
         ITXQogIF3emboJAKBMi3TLQ3HrrApHhPSIgEpELjsU8lup1QXAZhluc4KEFaQl3AVTxI
         rHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hWp6NSMp247SAdz6iVX4ALjI7Mu9VJRlD2AaL4lhjdo=;
        b=kUVfNocmofwizFgGS3Ib7dn7gq09MgskNaGR+HD6FfFmadLYigyxiYbPS9N67xYF1h
         fCijv0ngt7cyiZ/IBMifRgBvXlqfh2chFPvq5b2gflOi9ABUnIxdFBPo1WIvWt9m5OJR
         t//TCdZH6iwA7eoim2ZpejTA5lK5XantLwkU5wgz0hH99Up44StVtpdUO2sH1a3Af2ie
         6kJnahFTZQYCb7y90oWU7PwO518n7dKBNf5SM/4H7RVQwLu8NLeWwkvM/R2I0/Ut7sjK
         HorT3mRAChZMPihdznoZN58UjzH7nps7SykKntY+f2ED2G1HMPM8voWqimVXvK9+i3vj
         RpdA==
X-Gm-Message-State: AOAM532obCbQIGXCBpkwYtPYvG0XniqvekdpzeA1AzI/k1K4ro8vB17D
	/6xNjK0mzJwkMqa+3m+Oo/I=
X-Received: by 2002:a05:651c:11d2:: with SMTP id z18mr1323023ljo.423.1603206456842;
        Tue, 20 Oct 2020 08:07:36 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id z21sm359399lfb.20.2020.10.20.08.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:07:36 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/qlge: fix typo
Date: Tue, 20 Oct 2020 08:05:59 -0700
Message-Id: <20201020150559.35667-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 143a886080c5..2ff3db2661a9 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -91,7 +91,7 @@ int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 	return ql_write_mpi_reg(qdev, 0x00001010, 1);
 }
 
-/* Determine if we are in charge of the firwmare. If
+/* Determine if we are in charge of the firmware. If
  * we are the lower of the 2 NIC pcie functions, or if
  * we are the higher function and the lower function
  * is not enabled.
-- 
2.25.1


