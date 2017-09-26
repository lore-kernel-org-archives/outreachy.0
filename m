X-GM-THRID: 6469960425637150720
X-Received: by 10.28.4.84 with SMTP id 81mr194268wme.28.1506405050335;
        Mon, 25 Sep 2017 22:50:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls3141304wrb.13.gmail; Mon, 25 Sep
 2017 22:50:49 -0700 (PDT)
X-Received: by 10.28.173.203 with SMTP id w194mr215372wme.16.1506405049787;
        Mon, 25 Sep 2017 22:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506405049; cv=none;
        d=google.com; s=arc-20160816;
        b=DSjZ8xH6uHkN/xjP/u0NOMlu1sIak7fTpurSPIedbXIsDDx4Iu5l00DXIzoaj94SWp
         j8o+QKi/DWXsxdUAmNv+ld2W7EXOHOV6S9fEaJpegDLm00/dvPlGAmqSqilte/satj2x
         WnUnICuIn2LHp3LdcAZ+nATLP7o7Nhbp4lU84mLejkQsHFxxqdqQMxRSb9ptHWZfu7A4
         zuvRrycfmE/kfAp0Li5/trCfUxi+wqEFzuzUt6XclOep0HR3jtFKqLFtXy+XirNjyJa9
         UZgyTsCg/OEcivM6EIU6SnsN+vgjYFhJl4ahkUTyK+Sa1icTCINSQa6m1p8YcNEPvYG6
         FDAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=g+Ln6Vi8EhFVKgRiL7n3eUtrOWqOCLrhgmn4Rw9JbLM=;
        b=b0mj43783tkevOrXq0u0Ek0Bxcw3MlkyU2KnI5nPJk0PeIA+i2TCWev1VoR0XGMq7A
         NNU163r9NnLf3hDHBWRDlRRWY9DkLqBRyoktnTUoVFjuZfWJtdPb13pdoyuNbzT0iuoj
         87K54t1XUNrFIohd7rqUE78sS5+EUKFSiyT0lMMcEnl5e7CPn4LNVcV8BvhkfS0gSW+R
         I5eM6TuBqRyH6yU/3tp6t/9y2tFRTdPV+MRwdU+NGgI8yusrbE3Qezhy/EJ3EqPUCkYg
         vav2WVrtOnAC8rW1z26TAJeDILbzmwp/Rpdyuf1tSOqhv9BO84ihyGI/i2QnsehiywHb
         3uVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RrTRQs4b;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id j4si108825wmi.2.2017.09.25.22.50.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RrTRQs4b;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id r136so3784546wmf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 22:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g+Ln6Vi8EhFVKgRiL7n3eUtrOWqOCLrhgmn4Rw9JbLM=;
        b=RrTRQs4bmJN2Q6WgV5EkTQg3G/4n8YNJeXx1jDEmZ4r21/3L+bPcPlRsm3t1juckOL
         Ely5H05sXrwKKSDgXU2bXODyhhz8uG8m/21wqcZ1eoYeNn+MQnXJ+yWd0uGS0iO+8uCF
         msdZQqXZqoL5EFk+aJTo25XCGu+ImMuuQSntrDeSxQkGwiH9AgKL08DX4OB8rq86Je8x
         s36snmAE0tLe88SxeNP4m+C9b64IZBXqFuFBePOWaF0dGpgYddxs99KIeKuNANW0hwuc
         fTZScQiqJpgk5zR1VCzDiCYltmgvOK5XQdy0IowTy3V3NT1Dy/GBGVl+zPxfZs8jhDQ3
         XpDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g+Ln6Vi8EhFVKgRiL7n3eUtrOWqOCLrhgmn4Rw9JbLM=;
        b=p4SHjFGEoGqHYzZoiwe4P5oqj1CpD9gAZIZj0gT51pApTxjo7GRLoH2HH28BWZ3up/
         miLpJtoR2ARlDlc+SGkVoa6lNu1mpGWsOeYNriP0+TpLiegzGK/c5zzm8CEzzBeuERFS
         X1xUGsUpf7PUvKZKT/g0Zwkxi+LSkorlvnEZwAs6hawX3IfSVvTddRBw0ovvvkFG7bMA
         5dpYGKpuUQKLO6fHGZKUmdUUF/5JGe9tZxtZPL4K0hm+5hj7lt5ldeYNYBvplqT/Ih8T
         ti6WskTOvWmUDHfh0wRf3UFa/0xkMF/j7E/uRrnTHlZ2f+sbvU1a01fVuJOQLRbsWNAN
         RQ/g==
X-Gm-Message-State: AHPjjUjnlBnUBqbr+1HNvJ2YO95wrkJ8ZfYQEIeFnKvpmDggRXgyTJ1B
	untQcf9e9wZ+Rp1QV7deYXA=
X-Google-Smtp-Source: AOwi7QC4GpDmH/EJfXHNZysiAZ8kJsLgZ2fbsMRhYx4JNjvWP7eEKXDXJRaPp+sedJj/3jx7r10HNQ==
X-Received: by 10.28.18.210 with SMTP id 201mr1806895wms.135.1506405049496;
        Mon, 25 Sep 2017 22:50:49 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.7])
        by smtp.gmail.com with ESMTPSA id q188sm882013wmb.43.2017.09.25.22.50.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 22:50:48 -0700 (PDT)
Date: Tue, 26 Sep 2017 08:50:47 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8712: Fix suspect code indent for conditional
 statements
Message-ID: <20170926055046.GA9014@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:

WARNING: suspect code indent for conditional statements (16, 32)

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 0978727..8f555e6 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
 	if (padapter != NULL) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
-				precvpriv->free_recvframe_cnt++;
+			precvpriv->free_recvframe_cnt++;
 	}
 	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
 	return _SUCCESS;
-- 
2.7.4


