X-GM-THRID: 6806074098795413504
X-Received: by 2002:a5d:6ca7:: with SMTP id a7mr7808310wra.157.1584662613489;
        Thu, 19 Mar 2020 17:03:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4ecf:: with SMTP id s15ls1737524wrv.0.gmail; Thu, 19 Mar
 2020 17:03:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvB9QoMLf9i2waC/798yD49HKloLqk/3+tdVpiPSv6/i+djJh+Z7IlRYNefJrFH6G5H4yuH
X-Received: by 2002:adf:bbd3:: with SMTP id z19mr7315391wrg.228.1584662612350;
        Thu, 19 Mar 2020 17:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584662612; cv=none;
        d=google.com; s=arc-20160816;
        b=Lf2Qqn8H64u9LaJ3sHrPUBEzRlyb2FV4FY+hj76ZxAtzMYMAZQvGq6l96Lffm7k/uX
         Jhbt/zrNNvGO2u6CYVvyi4YqmJIhlLMLFSt+JyTRqCmhxEPiuCfPgCNRguLfAdw6oi9A
         2QtaM9oJQ+SPaN7h3H8DDMw6AEXpDjw5/w06NyoDXNXkOq+z+1f521gIZZXB5U4eiYNg
         XrXc+z3hYEiG3nKEONGxS7VFwrL3kg5V4GfH+0+NXP3TGJP+CbwTIJRO5Axcodsfs7p8
         z4Q5F+abkuiAfrPB30SXWFaZ9gG6GWAGWhi1J8ljJ8u3bZXmebZiXaYNP/KubZkoIKf3
         bZOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iTFr/VEQR7SifVujcaUBFUJXxQM3bfuyVQd+i9bx7lQ=;
        b=yUNfjEuf42urG3ZtXNQf8WlDlODRoKYZuWl0eFo1bcVC1vdZK6BN9eJfMN0IEVyFrn
         yxRo+ZA6dv9QHT5eTeJDPIOCpDuTh2D/H+AoVHovR1LERq0DnE9SCbtqHlU+W1xu+P15
         ztGqgT7xZGSmqkIL3IQ6/dPwJa9r3NcNd4+f3G2fEc9NmQ+m0mtTRhMsfEvY8EH5IEK0
         Qx7Sr4tI5GaqJXpT1Sgelrsp/vm0mnw3RB5XUbf6kFGRo8QnUNEY3F0fiXo3GUqQsNMt
         xvCpO3UnqAMH1CpDSdDP00E/JeLzIMB6tvmMVC/Jx5UUPhegvM+UNj4oZrcHRawT3sD1
         c7Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIR+XfZr;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id v12si146837wrp.5.2020.03.19.17.03.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 17:03:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIR+XfZr;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id w1so4572820ljh.5
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 17:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iTFr/VEQR7SifVujcaUBFUJXxQM3bfuyVQd+i9bx7lQ=;
        b=EIR+XfZrbS9End2cMT9rLaN30tykK2NmIa1afI2RJeYv2C0Ec4nO5G2JYmmTKbvBL1
         n6FxDnNKrI7pFOaLeymV5R4wnMtakRb6cQDo1+6/6VlVtk82Bire9LRj+QHX2Ehk7bd6
         s5oN4CcV1GBBVkaiFumziAsOBdt2XzTrgs4LbfoxCVoKQqvVDF26C174q/lWddJnoRyB
         x8waXCIfPZVHcKNmS0q63vrZNyodcVayEF+WreaRdMDX+M8JvyjgJ1dVWcnP3B0jaOo2
         wyVCsXxWCejmaxdRq4pk1ozSm6McypQ9C08wptXmj6dFfJvi0JBVUDEzNYtohODguvRY
         6DVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iTFr/VEQR7SifVujcaUBFUJXxQM3bfuyVQd+i9bx7lQ=;
        b=YjAI1devnj/hvWHkgl1mSdcAL6qBgPF7/WL9kVMF+PL0j919niKVnHl4ECa/ZGkpQX
         2ofORnNxr1ao8soBwDOS2N4fClVYym5HNjRFs3lndlAo5fsrfyhqmRVi+3OkxmQgxwQy
         WQg3Q3bsHwNi8k2v2gCGHci2dAiB86HkXPoplXp516R81xkdQrGNG7FYQSoA25pvrXcT
         51rLQJpkFBptM1cGy60joIyxC2jW2nG5EO5lZqrd59kqyokooGhlSLVpM1GNm/wC0TtE
         VBxfj/t1hJqtIbEQiec0u8/OAFg4hE2bAHRLdEmoOtu8aUAj5ERWox9ghAagx5E6H9kq
         miJg==
X-Gm-Message-State: ANhLgQ3X+seyJf9hBULYkywhZwljX0nHHQWGigsOs65OHm1wmSj18iMk
	TheAr5fTY5t/2UXZGjZIuNKswprwtaI=
X-Received: by 2002:a05:651c:1026:: with SMTP id w6mr3586362ljm.168.1584662611803;
        Thu, 19 Mar 2020 17:03:31 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id g18sm2240089ljg.59.2020.03.19.17.03.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 17:03:30 -0700 (PDT)
Date: Fri, 20 Mar 2020 03:03:26 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: Remove unnecessary braces
Message-ID: <20200320000326.GA9349@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statement block

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 1a39a96..2402025 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -44,9 +44,9 @@ static int init_mp_priv(struct mp_priv *pmp_priv)
 	pmp_priv->pallocated_mp_xmitframe_buf = kmalloc(NR_MP_XMITFRAME *
 				sizeof(struct mp_xmit_frame) + 4,
 				GFP_ATOMIC);
-	if (!pmp_priv->pallocated_mp_xmitframe_buf) {
+	if (!pmp_priv->pallocated_mp_xmitframe_buf)
 		return -ENOMEM;
-	}
+
 	pmp_priv->pmp_xmtframe_buf = pmp_priv->pallocated_mp_xmitframe_buf +
 			 4 -
 			 ((addr_t)(pmp_priv->pallocated_mp_xmitframe_buf) & 3);
-- 
2.7.4


