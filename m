X-GM-THRID: 6810632543470092288
X-Received: by 2002:a17:90a:24c5:: with SMTP id i63mr3026169pje.177.1585723978075;
        Tue, 31 Mar 2020 23:52:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls16025933pls.6.gmail; Tue,
 31 Mar 2020 23:52:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypJDBUcL1+3SogGY1Cn32z02RjHTjX4tG8ry8r0PJ3PiUn8e7wvWsIpZAZJNPujhCUdUmmtl
X-Received: by 2002:a17:90b:3796:: with SMTP id mz22mr3181737pjb.15.1585723976776;
        Tue, 31 Mar 2020 23:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585723976; cv=none;
        d=google.com; s=arc-20160816;
        b=Zz2wwKAtz0hk/998MbTtevVgPOi60OrAejYrnHCEGbr26kY6GRyLoYfFrb2DTpsbTG
         PTlC0pEnwHfaV8XvLRJWBcyJltflnBAosBsrRB2fp1ZPoYDd8tbsm82pggWUlQJnseif
         opj5kIBV8ecZMdbeVXtbpFfwqpOD6Gx1/88qUL2l/3oRjRCOeuweBGSJnxDoyxkEHDqc
         DlWtjyS8fx/tmPcByhHU6XLMuGD3xzuztBwucIgnEbT73TNg8wIa0mdEg68vOmkVHf+Z
         x4Ze6tBFKa/4W6qfBE71CKYhfhthmhKsZuoTTH+5ZQDnt1mdb8yKFjcMK6DZ5nF9Rd8y
         iIAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=e+Q4XLATe/RtK+0L0UWlqmfSgAY7yyUXJk6d8M+29mgRzhS/L6ZmlIIZmeSD7Yx6yb
         IhT/HE/xVIcRWlOed5KrngjpkSKOJeOgM1OKdcnP66zBAt0nsee4GoiFAWE6XnG1TSJ4
         hmwf1/Otj1l52EES1/Cl9tlGWTSf9u6GdPWcmBG1IEYoZDGiW6ATE2NowDYcIaknY2AQ
         Aid9Zkx0ghw70mNCnJHVFC9ZKIx6hij5+8Wmvx5VMK3WhTYoH0VsNo4lYDVPuc+TLE5G
         FgQFziBAIwk5LH04UrHpG5wZuxWue7bcovbo39YAmfoYyTzLZGCW7Ztz2IHo/X2nmGUR
         QqRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9ZoCs45;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id j44si342042pje.0.2020.03.31.23.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 23:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9ZoCs45;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id x1so9233611plm.4
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 23:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=D9ZoCs45jGH8fRiymfI3LOLEH5FcR7sG8jp7RtjbCpt2QbLMzLsWwQKw/JD8XToSPk
         cZ2aWXVacflRlRenpnFQP9fj0gk17Mno/sGLsjCQaZCKAaXDOMn1ayKfhRT3ozTnnaWz
         sF1OwIMgmua3/kJW7YRkL7RUvPKfiwNxRPde7G9pfoxJQsx9yzX9V7sKtnGIe6NKQgO4
         dWzrEa9R4Hjy/b+6mkhZPq7K8rki27J8lelGbGvxepozF1seEowMdciJ+eaRsQ1SCk2s
         MmP+PRUbLr7eyotZ0MgP4YqtoStp4fyoX76Z/pQmdc0bgbCmXDE1cejhXonP4ZUbUdcm
         3WYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Dh1fOQ+1sbSzPKBCHzNugL9amcLF99YyjosDlJHY5pY=;
        b=OSUtxIh9EXomj6pu4qpIknF6VRPEnMCoikjtIC4yzHg8V72RuLiqSr4YndfjKZsIeu
         aFOXIhmbe6Kj87CRr29A4kNBOjTH8KHMgF+3BtknQgX83uOB0skbuHCkwB4pO4h4OiYd
         0Xpsksvo63Yhv1agZV/IA3RYqT40KiOT4V7gDVZ7d+/EAjTdYg5xZNonGwAlKOJFO1fX
         IAr0upqT60gt8POz0kcEKScqfUPntUkR3g/Kiwf42OEL8htTPeX2IRO/j3VZNjQAywaK
         Wk30PNF/vRRD3pP+wNTXNp+OjJ5kjpXHPcWlRW1tZ2TULwXj9zxBNi8LOKEMoZeFm5+s
         O/Tg==
X-Gm-Message-State: AGi0PuZMoYYlPsfsUdiRHVPgIYQGYR/pzfrPL1BNUolPN0knYM1LOYL7
	UnVeTRNEA/ubHXuxfmtgCUY=
X-Received: by 2002:a17:90a:bf03:: with SMTP id c3mr3251377pjs.12.1585723976403;
        Tue, 31 Mar 2020 23:52:56 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.224.231])
        by smtp.googlemail.com with ESMTPSA id m68sm4635849pjb.0.2020.03.31.23.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 23:52:55 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	manishc@marvell.com,
	sbrivio@redhat.com,
	GR-Linux-NIC-Dev@marvell.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 1/2] staging: qlge: Remove extra blank lines
Date: Wed,  1 Apr 2020 12:21:19 +0530
Message-Id: <20200401065120.17459-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200401065120.17459-1-debsoumyajit100@gmail.com>
References: <20200401065120.17459-1-debsoumyajit100@gmail.com>

Remove unnecessary extra blank lines to improve code readability and to
adhere to the Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9cc034..b30992825612 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -119,7 +119,6 @@ int ql_own_firmware(struct ql_adapter *qdev)
 		return 1;
 
 	return 0;
-
 }
 
 static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
@@ -358,7 +357,6 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 		for (i = 0; i < mbcp->out_count; i++)
 			netif_err(qdev, drv, qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
 				  i, mbcp->mbox_out[i]);
-
 	}
 
 	return status;
@@ -406,7 +404,6 @@ static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	}
 
 	switch (mbcp->mbox_out[0]) {
-
 	/* This case is only active when we arrive here
 	 * as a result of issuing a mailbox command to
 	 * the firmware.
-- 
2.17.1


