X-GM-THRID: 6802879895263248384
X-Received: by 2002:a63:4c0b:: with SMTP id z11mr1975282pga.385.1583918920779;
        Wed, 11 Mar 2020 02:28:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls739604pgn.6.gmail; Wed, 11 Mar
 2020 02:28:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0xe7Vss1xyL0lleAilA4RUc0lcE684Xv4masvTBOcxBiLkpO/pI3qCLHgfY5NJNQKVXMg
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr1929885pfo.169.1583918919310;
        Wed, 11 Mar 2020 02:28:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583918919; cv=none;
        d=google.com; s=arc-20160816;
        b=cD1brO8Kkm/zutEmHQD4GjIsOcGg6M7WRs4dXR8et7784y7E5b95mKEUZ96gicrLoc
         wklZ1eK2E8NrOvpjCLCBQtabxfA/W4Oc8frBXeHGBudMzBJQ8p27Pa6d44yiArEs5PJF
         vEJ1NnUZUnkiEkG27LeLMEfkzDuuVVmMNh/CLRAIGe4Ea/zZ5/wfLoQjHvIXgrj3gmqQ
         TofWB8ku6Ltq5WNtE9KoyqI4fGxxQbv2ZgHl85wIH+LQVgmbH2A/8wl0TzRPsJybTNZz
         b6ZIZPlftRqQq9OyS4UmOIy8zK2pvfpFDUi0BEk1SgaZa45p4KrGHxq60dFlbt73sGrg
         4LMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=UTp2fveF8iezWtaNnux5vkxyk15IYBId+ULwbxWVmHk=;
        b=idD9V+apkm+NnLWSZNo/5LE5/F7+1Tz53e0Ge1lkgTUU8XnDx/oo298csJ3DPzSSoT
         OA6WK1e2uoC/SsXnF6xMJji7MaTAeG+erC/qqiV05HHq4Gw2K3ts1evHFC7DEZm5gReM
         yrM5Nx8Tfm4MNWA2dvN6byJMWLR1kBE66SCBucwOJXD4WxHLchdmd/OOOyiai1he7G9W
         OUL4qE/K7Wlyg/tdwPZBcJ0Dk5PEEXwn9MwENO5jMHV5FJ8WvS1A6k/WIa5oUTdCwgxf
         s51QLy6ZkgS3D3wG8KeFvu3uA1icY9TyMITa6mMS6f48hzBEN1q9F8QD6xjmY3L6RHfi
         hMbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b79MMABC;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q2si335277pjv.3.2020.03.11.02.28.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 02:28:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b79MMABC;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id l41so715530pjb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 02:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=UTp2fveF8iezWtaNnux5vkxyk15IYBId+ULwbxWVmHk=;
        b=b79MMABCpyjnDUa3T8/kTgIxJU8pASfQPqNxUtEwTrF7HuO4I0BkLOVUtTsgKV4ob/
         03rkJEQlI1XTwqMF5C5G5G7ekuxGDW/FTdNvxrtIMfKldwWVVdBiKGGr4cdQaERpagDM
         YlnVWyjNxQ0I7EErB4msoFU/wcSrg8IweVtbnTmoCwO1wdQcFy61b/Fks019bnv2l4zN
         rT96F6zjm2k71o1W/+zi8HK+Jx0hdpHPr3o/NwvdH1UlgK59B514pAHBlrBWGfu/xMt2
         HzP1TWziXJTITduNp531lfbPL+N2en5ETLLaZ8IFzSvDLPPunF0659iIF1i7eGdmChRe
         WFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=UTp2fveF8iezWtaNnux5vkxyk15IYBId+ULwbxWVmHk=;
        b=IBUg3BsaIUUIYRUJIHVzcwA1EgcLoBDUnk2hNctXvzTzghqBSKDW578SnXd4HE+LG7
         qlFF1jfNgnaqXpcnTfHkv96ywQiRfJafmUQagCHxm5Tl+q3AhxW13s9qQFrSf/KEX7kB
         KsaYX3E8ObUGReR6mc5dTdfE2BFTS7ZSK1jF+GFyoLer+6/BBo7f02Evu5vY3ZcEI1uo
         aGN0cWVni7RIjnnJ3ry7tHocHo/UsWzdm7uoyKT2yvAhh2jvlewKSgrxsvsdNorCUOwU
         j6xc80d8Qpp3pZS1LT/gD2IquJkOhH11UCCdyq/nhbg3coXx+HHlgvQCUqVyhC1QcaM8
         qLyA==
X-Gm-Message-State: ANhLgQ1kWdWcC+vN4i3f0WVaUzecg/TXM1jgaKXbs42zv00tHg4sG4O7
	UhyQCpt7lso8IwHXAyoPCNk=
X-Received: by 2002:a17:902:c084:: with SMTP id j4mr2175190pld.227.1583918918969;
        Wed, 11 Mar 2020 02:28:38 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id x70sm40630287pgd.37.2020.03.11.02.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 02:28:38 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 2/4] [Outreachy kernel] staging: qlge: qlge_mpi.c: remove an unneeded variable
Date: Wed, 11 Mar 2020 14:58:13 +0530
Message-Id: <6f5c42cce80a33a4b638bbb9d3994f85554c9a37.1583918265.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index bb03b2fa7233..eae168e94b82 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -90,9 +90,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
 
 int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 {
-	int status;
-	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
-	return status;
+	return ql_write_mpi_reg(qdev, 0x00001010, 1);
 }
 
 /* Determine if we are in charge of the firwmare. If
-- 
2.17.1


