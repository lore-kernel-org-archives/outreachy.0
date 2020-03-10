X-GM-THRID: 6802508842899865600
X-Received: by 2002:a0c:eb92:: with SMTP id x18mr18608232qvo.15.1583832512911;
        Tue, 10 Mar 2020 02:28:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls794461qke.6.gmail; Tue, 10 Mar
 2020 02:28:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vulIZCD7Qeqdz6K7y3Wfi6tvYE/J0mO0NX206L33OzaQjBZ7dYQti+hVsOkcxTeIVcxI/zK
X-Received: by 2002:a37:5c9:: with SMTP id 192mr19287929qkf.103.1583832511762;
        Tue, 10 Mar 2020 02:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583832511; cv=none;
        d=google.com; s=arc-20160816;
        b=GqUA/qAQYfdCpqpEg0XLCEAX1YB3qTmnKKEUsXlY1VvEYYTx4EoBgu/nRcsOqYgt+3
         KTr/to0Vdp9ljM9kDaAk5Tkr8ux3fF+ugGSvtWSm6gwpDzGEWwQsIPXUKo9APLSAoLlM
         gSbmM84SKFHc22rjExD40og5s3gCPnXV1aFF/nHVCoZQOHIA2eTE+IJCr1bkzDGR9MZ1
         HuQB8T2Zz/t2O0FUEuDVrYjZWguq/tzuQ2TJYVj1kn+L77tY4+HOfPe8BcVl+2lkUpNB
         qeHCSeF3oBi/sYI9YJGHQSl/4rMHWwGVLXWUgu4U1QGkXTY8BZ08jjyROjgyNA8Zp4Td
         /cyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=shxEsCDAGQbCnamTJQqOtORKbkO1asetmK0VBQ+ikHk=;
        b=1GPR8WVXFLQ1pMpaHFVvEV79cVb9swjKCfDxURiapV+d3NwBevCUCOeTLVFrSoJ9r4
         jRnKWzEbkfYdAOhqXBppUBuH/Y3wnWdcRYX20AA9St2Ryav40SAJwqo4DsQBgW/5m/OE
         g27o1QsgjoRdwwhKFE+St+9bUdR89MpAxossAfFDR/PH11YZAOAB5YNjuliksKWCCEQR
         En5iVTl6546t4IG/NImHUwZpq9gzrLqxK0kHWABQNcHyk03z2pLKhEu2c9sO/+gv18Q6
         StACnkvlTIBaIWcT2BdsnlGZJe25qvek0JMf2E5iHlb8Gu8210MVeAWjdkN5ETRLDFF6
         lKpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PK9ASpMP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 198si675883qkh.7.2020.03.10.02.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PK9ASpMP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id f15so177629pjq.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 02:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=shxEsCDAGQbCnamTJQqOtORKbkO1asetmK0VBQ+ikHk=;
        b=PK9ASpMPVu025TynyB5+LDgmXV5t7nnAMkJ9Kk1pk6L9PNKBy5UQSjInT91s4BJai/
         TjyWY2morY1SbVbd+2Qwhq8tJehtxtHVVDeVT1zsgiTqrdsHe/7bQcB/VsYPVJSbguYw
         f8WJoGGLYJ0nfmyUw+CBbx0x2ngHtPihhhhJ7RgAnA7NVtHnuAZDpRL/tgMDQNdGs6LR
         zcsITabQPUY09m53eQHYIf3F/KSG+sutnH1l31IBAK5yIJp6pMZidh8n4OBdrvlaLLnf
         HRIVSf83DD/yDBPAKf9J6sdtErNYnxYZQH3/Kshc1OErZjy2F/IhE/PLFHOlipAYx4t+
         lKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=shxEsCDAGQbCnamTJQqOtORKbkO1asetmK0VBQ+ikHk=;
        b=V6Wr7tS4kKk8plfAO5nI9Q4YuEQdEjSnq8RsWqZyVmxmEJdc6MUu0XynEEOZiL7pwU
         lEFB+8L3Wu3EBgLWzeVYjPWEEvsIrFHZ4a+BxJG3kMM2lKgAfKhlhgiIGTxbmyMWQ9dZ
         f1ixZl1HS2NTNyJlBixrXFbKITvi9/IDac71CG4Ct/tjPhQAadSTXiociTb/nhSZko2p
         9bsIBD2dOlT+CGA77eF02MBdgBIHG+66edIIdmDmfXsIdDMBqGPSmhAfpwmYY9ZTVe+c
         jFUkMZCWqICRGkQpsYSneWG10BQ4f64/qcCaVOM1Bhx7RQFb4DtyVMklNlgbqM4NSZTt
         ZwiA==
X-Gm-Message-State: ANhLgQ3ACqhgf/C2YJL6freSgV5GvF6EHG+O7Su8HelaDExNm4rr0ugh
	Tyv/deblojaRj3mZ+mB1sb+N/XKk
X-Received: by 2002:a17:902:61:: with SMTP id 88mr19731072pla.313.1583832510729;
        Tue, 10 Mar 2020 02:28:30 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id 18sm48261826pfj.20.2020.03.10.02.28.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 02:28:30 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:58:24 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH] wilc1000 : rearrange line exceeding 80 characters
Message-ID: <20200310092819.GA20959@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

A long if condition exceeding 80 characters that makes evaluation
appear confusing. Rearranging the condition makes it easier to understand.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/wilc1000/netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index 045f5cdfdca0..d7a632c92a76 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -802,8 +802,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 		u16 type = le16_to_cpup((__le16 *)buff);
 
 		if (vif->priv.p2p_listen_state &&
-		    ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
-		     (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)))
+		    ((type == vif->frame_reg[0].type &&
+			vif->frame_reg[0].reg) ||
+		     (type == vif->frame_reg[1].type &&
+			vif->frame_reg[1].reg)))
 			wilc_wfi_p2p_rx(vif, buff, size);
 
 		if (vif->monitor_flag)
-- 
2.17.1


