X-GM-THRID: 6949235058169348096
X-Received: by 2002:a67:d88b:: with SMTP id f11mr6551823vsj.22.1617994871620;
        Fri, 09 Apr 2021 12:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls1631557vsr.7.gmail; Fri, 09 Apr
 2021 12:01:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5xuFhDz4OR6zKR+s7ZCks2eKb/eWT4nGT5ylpte+HabT9RnZgsyeSRQ9ryfC/s4PExrvM
X-Received: by 2002:a67:c01d:: with SMTP id v29mr12471777vsi.23.1617994867664;
        Fri, 09 Apr 2021 12:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617994867; cv=none;
        d=google.com; s=arc-20160816;
        b=ImjphPQ5pQjgB+FcQWzWe6YI1I+jLVDiJboxGswhFqjhjVbdYBYe7sKQ/BX9FQKyL8
         Pv5dVjDLtwTD07u/oZ1pyFqxIPyMd+0i6TyfEzvTQ84eWk5saPs1+UL7d2awpaRNYauS
         d/zgTr5P2QBc3IwG5gzeIRgAkM89pIghwp0CGZje7T1F5fnpk0WU+8gdt0AXYvVPR+Kj
         /oLkwMFSNAk7nXINxxzQnIVppd6okifdCNiuF6ZKm1DfWafA9GGo+fc0t7ZSgWjK2yXe
         CBrXcqRJs09aeDzsnB6/o0vQdrwaptClPyRF0DJ3vhzwxcKVjIUQH1E5Av7lnXThUGMy
         0Eog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=x9RZ29lxXI2EMOo8VcDY6H7j93lSk5LdfLmzVMobZAc=;
        b=FM4PgineTwpzQ2EG19PV4U0OUNfhksRGzD+XNNACUagZ3P6A3a1jLOtav9TWVhF6EM
         8lP1OCzg2xMTEIpFWDEKafiRoE3KA1JiXA8oF8hRQ1nefn38HO5BzcnokQmwtRxS6QHh
         ajX1XPWpEr3JP/Kyd6PGjMYGGCWKDf4cYsaa9EcKQszcYd3/Gw48KunNx2ikeyMoyhi1
         0wubk6XSXXqzvCWkR5QcQqok/O49CqbVh2P7poJa1P31oX957FnKXHCvhi+rCN3USdkx
         Ow2mGIrbmjfNTGiLBNeQnYTegO+USL7GEGCWcSejTN5v+Yv0ZvSbmqapqGZG+Rn4UPct
         qFvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ggNdrJEt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com. [2607:f8b0:4864:20::f30])
        by gmr-mx.google.com with ESMTPS id y15si187172vsn.1.2021.04.09.12.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 12:01:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) client-ip=2607:f8b0:4864:20::f30;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ggNdrJEt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf30.google.com with SMTP id h3so2433356qve.13
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 12:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x9RZ29lxXI2EMOo8VcDY6H7j93lSk5LdfLmzVMobZAc=;
        b=ggNdrJEtMe70DykOxl7JcGyB3Cy/Ge1LmuWHtH9bwpy8qtDes7cEIVI+ecqqts83VO
         cib4ulPzT6RrN6sAahwPETkUvs+1TGiRulb959tlz34IwhgWCWRh8kDWY6ZtBGJGwMc+
         Gqxu6toWZtKZKEWVWbj9Xfe9zzh58ua/qgn97n/qtz6X53Ql3n5AAI3UtaDNT24qjs5o
         XsoQvq2FSKLNfMhrTLZDZ/NtvBw/KCvjM9kZ1+yII4LSLJwiDSPnE70I66/q8ytg9Q+Q
         7uXU3gZ9q+gFrrE1spr+LKrUWFoNaxBxTpcOprA0xBKKAVX1JCC5gtjnC2MvOX+oUSut
         FHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x9RZ29lxXI2EMOo8VcDY6H7j93lSk5LdfLmzVMobZAc=;
        b=bMkyLJZF1HlKz+9hvUQAR+I2Vtd4ctlTDFo6XCPDnH4FT2ju5OmoqAQIaRz7oBkgec
         Lm/6hkxrdp6CoD2OhtOJ4CCe3BbbO0MpkXltFmumOjZVh7DoBQnuQEhcQrFKaUUxkFh7
         F4yMqegJz/s+0a8M95k/5k/iaRXRC3E0gFIKeXQnocjewa3/d9xbXLB50y2scHixPLln
         miLxYx6VPxZD9RT3H73GJIlCFGeD1O6ADU/rW46bnHwOU++9XoXptNS5BHxrEijqjjV7
         2T/HwPEj/LVuRKgEupirn/NXDnPW55QAnAyE1jzxoQlHUsmSB1lu5PnUlDdnwGTw+4Y9
         vYmg==
X-Gm-Message-State: AOAM530dhwin+ydBQxatQvsu9Yf6CaInOgiFSWb4K4MId0P644SzZ3YN
	QcpJnDda1BGr76KUtqhtfz0=
X-Received: by 2002:a0c:c488:: with SMTP id u8mr15234090qvi.47.1617994867308;
        Fri, 09 Apr 2021 12:01:07 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id d14sm2519392qkg.33.2021.04.09.12.01.06
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 09 Apr 2021 12:01:06 -0700 (PDT)
Date: Fri, 9 Apr 2021 16:01:04 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH 1/2] staging: media: omap4iss: Align line
 break to the open parenthesis in file iss.c
Message-ID: <aed4449f7f054eee329a808527c2a08d79076c78.1617994571.git.alinesantanacordeiro@gmail.com>
References: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index dae9073..c89f268a 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -960,7 +960,7 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info, NULL);
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
-- 
2.7.4


