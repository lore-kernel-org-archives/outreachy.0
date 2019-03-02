X-GM-THRID: 6663863789016842240
X-Received: by 2002:a0c:d03b:: with SMTP id u56mr4975524qvg.10.1551551714290;
        Sat, 02 Mar 2019 10:35:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls659131qte.5.gmail; Sat, 02 Mar
 2019 10:35:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqySFzM/6409mllGwriql13p5anBa7uZQFkRb16k/21so+9GOmBYNwGTqod5XwTLNHVOYVik
X-Received: by 2002:ac8:1997:: with SMTP id u23mr6691429qtj.11.1551551713871;
        Sat, 02 Mar 2019 10:35:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551713; cv=none;
        d=google.com; s=arc-20160816;
        b=XTE53jzgfd2jfq9o3DHfw0Ar12k1B9sljaTjqSVkPpCIg565OW/lPLqxaxhQEtTJI+
         TWiNKtPemVhi0m2c3r8+hjR7d5ucmnFAkaqLW2cEvz4lGhAFbHG8tAt/ygwfmPu31G0q
         /GcX+tpV/povhO/oAK4sogz9CxbbbtuWCkAH5vzxeco34pQs9L0fBuvgE0uKn0wMobZl
         Ag0drtX0O0s4dSIbyu9xfGMGn4WOvHNF3a/08ZBZL8WObMqIcLblKsLy4GUD0BTEJ7Ba
         29P0wJXNVOQmR2jR9BMb22aG5D/uJJ2arEsaEdUYG80qPCPHbbqh85Bm8XHJrCUubs9j
         RG5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=zW26iZrlDUtutbtkOfuQK4Px3uLzB+usqYXLd3bbGPPdV5hK/H5fEEs9uBBoVGg2mq
         FERPFgv33PsATSMAJ5udm4Lzw9jMTRw/183fxGaVShDslQ2zY2PfxJk5B+AHqTCnOdDz
         mM/w6lsHS7mPUGTIyvrd/lC2yI2HVYqWyPlvlqJ+CZ/8tnpRbEwRycR3EZZpkd0Jc8Qj
         q0N76ca1Vlov9ZOY8LhGsJ11Y6321VvIeARr6dMAmQ0NZXHtgQ0mFEa5A7TMdFaxfkTd
         +u4lv4meQtAp9xi//kAm4L8L+ZiyHw606tP3bm+eBABATAqAbcYvcYRCmi9pq1w8Cad/
         CmCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k0tS0qYo;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i11si102758qkk.4.2019.03.02.10.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:13 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k0tS0qYo;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id e7so806141oia.8
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=k0tS0qYoAM+sxhDd46HQ2S8FoUSqLJpet4qpHnOqM4ZACeWGJOdBZbGRfbGvpTd9ZS
         bTHWtT4WSt2oHG1o7opl69NNS3UHrWEX76cj6gaRwKr4NgH9ioaRZGCI4XAqJ/kvxlwC
         bcwRUFvYAwgrknpoj8wVX0ioAmTyyP2dvbkmb9KEPtvCtX5sSIOtZDUyS66vfR2CRace
         Wo7gzOuY1fq3sjs9WJ2XeZpgRfE+R3wFsQ55MTINTUdp4MF5hX3FS0h5EQAk1irFGZqk
         aP1hEsjRJvHVIj5iOjtDVA7J9KOf1dffg3N3iKMUkBEEMoavM5htVAlE2pOFypaQKi7d
         H4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=ATAZkxeGLcs4UFChvIFuwBVWPnSpoWRMvXBG85uKmPrK6lugH7x08LQD2pZxD63A2T
         g4BFfXHXsJRu9Vvs/RV8tvwxUS18uzkmNLGDLDlo8hmq897qGl1bhgsMeMYKlJY3MRes
         +9TXudQUa6LJXoYSHsRubKk0klTwb6GhOxWlwsxgHOBuITgGCDg/DEn1X7Uz4uk1RnJ7
         GMnbkGRtrcbPHJ30+jspZEIQJ1ZyGF4l1RRrViOx4KfR1OncF4MBUg38HlqsgePq48aV
         xPuN2G/rVyS2fG37rtyw5afxBknDN+bti3e0DcbORJp1TSCNQEhTaSS9rIYW24XGGQcH
         sHQw==
X-Gm-Message-State: AHQUAuZhqlT8OEGGSMpD51y8W0nfZQjRi0/5bmq+0lwdXWY++3gs8Kqv
	30LfZ3Ju2TFOLgHDgE9sm733SSz+KNk=
X-Received: by 2002:aca:4e06:: with SMTP id c6mr7278440oib.71.1551551713030;
        Sat, 02 Mar 2019 10:35:13 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id r9sm533883otp.81.2019.03.02.10.35.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:12 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/8] Staging: vt6655: Remove unnecessary blank line
Date: Sat,  2 Mar 2019 12:34:49 -0600
Message-Id: <2e8ed4e3819b14b237f9275b731deaa7d09eac79.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Remove unnecessary blank line before end of block brace so that it fix
the check
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 4750863c1bb7..40a8f1ce837c 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -593,7 +593,6 @@ void MACvSetCurrRx1DescAddr(struct vnt_private *priv, u32 curr_desc_addr)
 	iowrite32(curr_desc_addr, io_base + MAC_REG_RXDMAPTR1);
 	if (org_dma_ctl & DMACTL_RUN)
 		iowrite8(DMACTL_RUN, io_base + MAC_REG_RXDMACTL1);
-
 }
 
 /*
-- 
2.17.1


