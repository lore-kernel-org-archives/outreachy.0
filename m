X-GM-THRID: 6947467648210829312
X-Received: by 2002:ac8:5716:: with SMTP id 22mr20951097qtw.212.1617583364283;
        Sun, 04 Apr 2021 17:42:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls7880628qkp.7.gmail; Sun,
 04 Apr 2021 17:42:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsBVHNJVLeylGup0gStsxyAEWYVtHvYn5Z5IRTSMdbzTSiirV2JCzVQCB75XwcSJgiFf3G
X-Received: by 2002:a37:6243:: with SMTP id w64mr21725677qkb.295.1617583363497;
        Sun, 04 Apr 2021 17:42:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617583363; cv=none;
        d=google.com; s=arc-20160816;
        b=G9/oXM36cH6DfFefsYEMlR7HBCpc1fJTpJnoTG4ufgxYZjTcC3+n2KPmG/sQn6KBdN
         jR9x7tuu1Ajymd1cxTpMKHeA4Yy3GYjczLBDYlpNsnw594xPQ7hRBssHMv2W0UcZfeiY
         7OiWabc07fWVRK7xCLLQ1ku2d0Mo8Q2Fg34T2FaUKdbEbeICzsew8Fk1r7s3gPqXGkQh
         tq8jpx35CEx5DxbCuxhuHG7keMq1LH28ATvjrQ7iFZhMLRTOTGHQD70D6onioId0U3NE
         rvH9kyJZGwmABAwTz0na8VL3uhlketcQ75ei2yBW27Sy7PQCTZPrnoII6aRFI80t+Jsb
         tQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=IroJdoAcq5zAI1honZ3ThwMkWQDS5Bqq0q4OifWOrBY=;
        b=JShKd4A22Gozc0InA/hacCF47pSECX9UrWwS7LmLh/b0of5i0vmRzzdhbyffHhuh0O
         sJ2qtsBDQJnxOH29GgkAGGLV3Y9knDOAkdcidWNeqTMHE8s4NKrNQwdnqlHr8yrvAGsv
         gnZqpM1UR9vnjovi3Hp9L/OEi1dJz9AFQRqsbkFHYEzZf4FgO9lE5QvAHgscUX6PPv95
         SYEOD0ufFaBawCe3oWf/hHGFLZlCtjWjh24yJj1ZAROMWuri037WwEzzhoQ3TtNo5HoU
         6/6voSjVdGPm8F24RI/S6E42PEQ/GriSqGvfW0aW7xFtFnFDoRoBRG3iZgogFtcdB5K8
         +DlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3C6WhOM;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id k1si2882482qtg.2.2021.04.04.17.42.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 17:42:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3C6WhOM;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id t24so1159884pjw.4
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 17:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=IroJdoAcq5zAI1honZ3ThwMkWQDS5Bqq0q4OifWOrBY=;
        b=i3C6WhOMU0EGF4ZLXdWYwphURgSehOFih2BYREbGOAokXJ7mN1DWHHZcFPF3r3lAZU
         zekilOVO0OAJ/QLe/J1Q/dLt0NqTBP8TxHNnDvo4ECHR9o1QCvRwkFwt/DGH6taUAchR
         ModzHy0esq9zd2fKxkn/lD7HhWA6zfnk/xgt+Y9piYPpkJkA5fQcj4Utz+gM1MztnT0v
         uiqfpOaJoReWJ91Q+7RJWbhs/3vyObiVvGEccB8zkM54rtOCS3a3Z1hUEQyNIGHQuzqm
         h2FPvaLt5rJl47YRSqAcO724h10Ns+UA0p8hb8vDhft8U8DcuX60ZICALDosO6Wsn2EI
         W21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=IroJdoAcq5zAI1honZ3ThwMkWQDS5Bqq0q4OifWOrBY=;
        b=IbFxw4zFD36ujPJpUbp3drxMhpbVQGyrjlZVVsHgY645A23m1/Q/+Zd2w2mJsrFB4y
         5EfSdJ3xA/nDqQWcboPzkNE6To5hmLBk5NYRxdCILYc5r2xKdNzzsCoghlk8jfiUDKIk
         2+u9h14B0nb9p1WOq3m0yAODQMyDSJcb+xgficOTdaxrwir33/RyDC7EZXSqraCmuYnz
         eR3kxle+eg9XV6Ql0805igAKa3ylcGDhoKuq/VYkScPPnZigqUOzgt0KRdjkwEm1XW6u
         mP8Kobe2wt73noy1uBujLaba9jQfzIFEuJH4Cxo5y6dQSxDsqWZyHvK+pX1DmiyEVWfV
         cJiw==
X-Gm-Message-State: AOAM531lgqPknKi/Adkda3+c0qWQbrJFwxsiFKWiXEHF8gQTwjfFGNQ5
	3r9rElwSICQ6V7xqqd1CWeA=
X-Received: by 2002:a17:902:ec06:b029:e8:e57f:680 with SMTP id l6-20020a170902ec06b02900e8e57f0680mr6438673pld.8.1617583362893;
        Sun, 04 Apr 2021 17:42:42 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([2409:4042:4d84:a21:5e54:ca6d:ddda:81d3])
        by smtp.gmail.com with ESMTPSA id q19sm13364813pgv.38.2021.04.04.17.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 17:42:42 -0700 (PDT)
Date: Mon, 5 Apr 2021 06:11:43 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: manish@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, mitaliborkar810@gmail.com
Subject: [PATCH] staging: qlge: remove else after break
Message-ID: <YGpcx9MZuZJFy0Z/@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

linux-staging@lists,linux-kernel@vger.kernel.org
Bcc: 
Subject: [PATCH] staging: qlge:remove else after break
Reply-To: 

Fixed Warning:- else is not needed after break
break terminates the loop if encountered. else is unnecessary and
increases indenatation

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 2630ebf50341..3a49f187203b 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -935,13 +935,11 @@ static int qlge_idc_wait(struct qlge_adapter *qdev)
 			netif_err(qdev, drv, qdev->ndev, "IDC Success.\n");
 			status = 0;
 			break;
-		} else {
-			netif_err(qdev, drv, qdev->ndev,
+		}	netif_err(qdev, drv, qdev->ndev,
 				  "IDC: Invalid State 0x%.04x.\n",
 				  mbcp->mbox_out[0]);
 			status = -EIO;
 			break;
-		}
 	}
 
 	return status;
-- 
2.30.2


