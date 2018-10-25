X-GM-THRID: 6616182704123674624
X-Received: by 2002:a19:a551:: with SMTP id o78-v6mr19195lfe.8.1540450077382;
        Wed, 24 Oct 2018 23:47:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7b11:: with SMTP id w17-v6ls316788lfc.55.gmail; Wed, 24
 Oct 2018 23:47:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fZll2m2xDtqPQKBvMz8AqiA0ZdXfMQbO0VBE0XtT06DOqkYMmsjiE3nz5p4YAEHSjTVCvb
X-Received: by 2002:a19:2c8d:: with SMTP id s135-v6mr18511lfs.30.1540450076159;
        Wed, 24 Oct 2018 23:47:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540450076; cv=none;
        d=google.com; s=arc-20160816;
        b=XlwYVekrB542nblLHINp/nZ9gBYUchjqcfVPlVLSsyENkqPSxgx29k46P6kuPkRaD2
         jjPHOAFkd5fmuKaUsi0Fs+OCFdRp8oVFO3KGxdAFvmHC3PVjrUT3/LuufENuIicHeFeV
         HUTltRywkPt87UHogJpiY/paNgw2fjiGpyiY6OIVX4wB83MQojkeb+vxT3hP3thr231P
         boMZhOAu4kmarU+pFn2R10FgMTimxpp0ptxMojMsPRzxMeiS/N54p/a3N0cKvrVfinec
         nnx+I7/jIGQmrJtizxt85tdBVu0L1mdhiKJCQDtxDwCOemXq9ZllTLNojHBdl83khn2q
         6yPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4bjPY/9+kOMpLAsG4AgU79iRt62nELwZgxB1PsizjwA=;
        b=w8X6Ndyq8THmLao/x6Hp+9a4bENaMZbXx+ifIZH8E6AMVBIm6XpTOFYv19vaC+DAHO
         rc90blROSEzT/vhiTeyHnpNJMzUQxfcnXbc2wONivxsx91Ey2m0M/krAgkrYmRlzPAq1
         +ebDOz1M3PoKW1jsZX5MlwhNtTvSXiNVNR086jotgyJSIFxYE9pK88cW6QjfIKlYlU6G
         b+E+Ht/vdbyyAYZmdLRSMPPwdLHz/G4j7kqhDPJ7fJitFjIpKMHPRBP1MHUGzpPnD3S2
         2dUuemG5d/sVZg6BLgp7xKTlSaWEfLZKMYxnFaurmUcvRZIgjeZSo3BBXyZzDrSQUMUO
         yH+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JSsjziPl;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a79-v6si249089ljf.1.2018.10.24.23.47.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 23:47:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JSsjziPl;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id q6-v6so8012256wrw.11
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 23:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4bjPY/9+kOMpLAsG4AgU79iRt62nELwZgxB1PsizjwA=;
        b=JSsjziPl3rGizbbzixUn6FkvN3Vu/2tXm85Kf+1miXf21HsfjsxdGaBmXTPTbJ8cSn
         gcLYbIwO6yTYcmOQ6tQQIrHa7/gPFv5oYU+dlknjvIrsxzxNHQnNRccgApS+5RvEHFGA
         KvoqDabm7a8ndUVeoDP0b5uNvsZ1XvZmH1kC6klMf/9EMmkMdKqNkNX7k9cfr/8KW+NC
         ceyNCe8supgzfZk3ZjAbIU7CxLssby1DqkUd8mXUYQmUhAzBW1ypDV+cscFVZ+eph4v1
         g38HjX82Qpv1bc5GahvfkfFPVWomaOPK2YNri/jiLmB7J/4t9C0oh8LRUhsMT4oDLmE9
         asvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4bjPY/9+kOMpLAsG4AgU79iRt62nELwZgxB1PsizjwA=;
        b=OE3MtzSSlrUsef1s57Nc45vGnrPWOh6AGCwvlDjLz0Pq3jdtczml1dzqgYH2djsG5c
         gI1H8LFqJOdrEKJUy9oKbt25jo0fd2wiFEURgd+KN6/A1cRwCHs4YqmrQuGb2ntpp0pu
         V2xRdpCH9Hl2QC8pm9JcaPrvpHhnYNH6Ksaj/94bb8+Gk9ZKft8cIzegfDXl5HaWdnGP
         JT/XHTFRisJOhxCWHQXUIVZAsRFkU83oKI/dNPBRaAh3iUmaMfzdJ4nWDkxI/3eKlKB8
         uugdH/CGGODFukKM0O9syuqY29y/w2EPguY20rAbjB6w8G2di6WJJ6yQ/jGdVSS/qmbW
         sjCA==
X-Gm-Message-State: AGRZ1gII/8z+AjGi2MVu1wqOb1qwvbNEXuhX/qLgnzkaKk2jXTds7L/v
	g34rAyATB8LesNg9povfgYtmDuAJobA=
X-Received: by 2002:a05:6000:1008:: with SMTP id a8mr421262wrx.271.1540450075237;
        Wed, 24 Oct 2018 23:47:55 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id j189-v6sm401067wmb.12.2018.10.24.23.47.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 23:47:54 -0700 (PDT)
Date: Thu, 25 Oct 2018 07:47:52 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Reduce line length < 80 characters
Message-ID: <20181025064748.GA2067@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix checkpatch warning by moving function argument onto next
line, which reduces line length to < 80 characters.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/ms.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 9f846e53abec..c0d1fb10ddb3 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -1735,8 +1735,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 						i, extra[0]);
 					MS_SET_BAD_BLOCK_FLG(ms_card);
 
-					ms_set_page_status(log_blk, SET_PS_ERROR,
-							   extra,
+					ms_set_page_status(log_blk,
+							   SET_PS_ERROR, extra,
 							   MS_EXTRA_SIZE);
 					ms_write_extra_data(chip, new_blk, i,
 							    extra,
-- 
2.19.1


