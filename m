X-GM-THRID: 6473410411176656896
X-Received: by 10.202.87.207 with SMTP id l198mr8517507oib.9.1508352609287;
        Wed, 18 Oct 2017 11:50:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.231 with SMTP id t36ls1407685otd.19.gmail; Wed, 18 Oct
 2017 11:50:08 -0700 (PDT)
X-Received: by 10.157.11.106 with SMTP id p39mr9376371otd.84.1508352608859;
        Wed, 18 Oct 2017 11:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352608; cv=none;
        d=google.com; s=arc-20160816;
        b=Wj37CEP5B67XsBRlclrLbiDngaWlrLgnnQb40C+HXV7gDDW7JUrr1b+CfHlrJENKDH
         CrL37GzmNh++H65wzTPVrWumTT/ayaWS9dgSagrf+gwg5cZm3nTSu/+9YcBSixPWZS0T
         tyWr17jqPsaQvCCoWlbqFr8D6Ypagk8ey54EJpkMxAE/D3SX7BFJg0awtS95DWric3PG
         bO6Umqziy/sB8xasK46S5klgM56je3nqFG74gXpt2u2gJ39tXUoWbbOIc13dGAZFHbL3
         sbnG5igMntphGDLOuVtsiVW4ew+Ehc3qgAWUyEgKm3w5BHB7AWHI+3xfKcNpv3slenhn
         r4uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=MvlC3LAYYHnV2txzMmj40oJUzL8TVSgCfa3/Z6hFz0pKZyVL1IJzDZRZhRov3KwOA2
         doYULj96mO+HGbG7yfdC1Nk3JtH2MlsqzCz0MamBmIDGx1tTv4DlCyvADHZYogIWAlVL
         mb25KFVo3/a6Z5/GzQH48MCNIA+FAlBkLzZu9yFmOIqN7rbZ5kq8mh56RumTAKfeyCPF
         Z9zuq2dsGzyzlLRmR2DozQze/A9Bd+GcUg6H7QlCKL8lhn5t2w+A+BWW1HBHPNQuu6OW
         yL7DBIdJ31DJUDzSipB33amEjPxjetGrNXOM/nABQjUJj2IHJhKLcRzFT3SSZmqoeqFl
         V65g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QgsdmFJe;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id f22si773418oth.2.2017.10.18.11.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QgsdmFJe;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id i5so4605335pfe.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=QgsdmFJeQBFfTmAYzTVKkj/n/KRxtJlGJADxZj0S4fjJX1ImUo9HM61E6HZ5LdVLKq
         jbXmiHzRtHuEME1HMu7N8qUQxhcOBieiN1g8S2NoCt+EGOMo+eImokG28ZCac/hPk9/m
         w+LoOEJCVqZBAy/Td6wkQbhZPNDViDY96Ps8/my+r2hcc3GDj4FeV4dFcksz5PMsxoK7
         pvpVTZ1boY59gSJq5oA+ROXrZMPoBUbCIM6hqe5zINcf0sNsAjQvtyV2nSsdSuj9Os2H
         7oIEXd5qQTGrvfh1TGuc0xQsDlfaLJe7YEpyWKssW4t1chHtbty2WLj5yssVI74Ce7ut
         Gg1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=K+AJuAciZsjNDrkXrm0wQ1T6f5GXA7pPIXizJ2kEHa+w61qMhhObB+7khj/on8Sw4H
         uEIUzu4U3adnt8Rz+wtHG3IVR8c3F6S3l06SvwUA+mQPfIbOvil9EPOnG1CSuGm5grT/
         ehMM9FpxGMjW7evwURyjknhhq+r7yv04FEHpwk9K61o4rTUHLR9ypXCzt3btZNlJ269j
         LE3nhdwwT76LONVI/n6n/BLRV3rMb7ehFXDvlBKEufGMKnE3PMkQOuu2wjI4BbgPhQk/
         uHx29sA14W90J6fllaFvXjq5jgk3z/UkTgprnM+DJ8+0YIRTTPhvbg/SgzzFpqHNr8Xj
         VZ7A==
X-Gm-Message-State: AMCzsaUKjfY4FX8HM6bTQJ7oOuZ9ElFho9FS3WdIRySHQ68LNkvn6RgJ
	JsADuakzId+xK8Nt0UCWb1I=
X-Google-Smtp-Source: AOwi7QDD0uhpkXjyNSPFqa4DKqaO4MkYBiHVVqfFfS+juQRb5o5CpaqNr5/b+UjpVBjkjUAfSyEEjA==
X-Received: by 10.98.155.218 with SMTP id e87mr15581010pfk.96.1508352608533;
        Wed, 18 Oct 2017 11:50:08 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id y27sm23921603pfi.107.2017.10.18.11.50.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:08 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 3/7] staging: lustre: fld: fix line over 80 characters
Date: Thu, 19 Oct 2017 00:19:42 +0530
Message-Id: <1508352586-25475-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/staging/lustre/lustre/fld/fld_request.c
index 5b18083..081e137 100644
--- a/drivers/staging/lustre/lustre/fld/fld_request.c
+++ b/drivers/staging/lustre/lustre/fld/fld_request.c
@@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 seq, u32 *mds,
 	target = fld_client_get_target(fld, seq);
 	LASSERT(target);
 
-	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
+	CDEBUG(D_INFO,
+	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
 	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
 
 	res.lsr_start = seq;
-- 
2.7.4


