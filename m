X-GM-THRID: 6802954785072873472
X-Received: by 2002:a63:441e:: with SMTP id r30mr3062922pga.51.1583936919796;
        Wed, 11 Mar 2020 07:28:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls1039624plo.8.gmail; Wed, 11
 Mar 2020 07:28:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuukktKCQriOnuDv2HxlcLSSSWlD/muiT1UQKq6q+/ZgbiceusMqSgRDBdVFouRyRfiFDci
X-Received: by 2002:a17:90a:37c6:: with SMTP id v64mr3821136pjb.20.1583936918109;
        Wed, 11 Mar 2020 07:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583936918; cv=none;
        d=google.com; s=arc-20160816;
        b=rzNB4dHc2oKIBaKcZJu4inlfaRRMzChNdVHE0dTANJSY+Uc9eU+EKZYImzRGXH/h0p
         qjZhZEthO6tZ1ewzJvc9bbw4RiaSN03r8VAtCCyCwo3zjaoV2jkQqproR9o68g6HK9WS
         cUtPeVOR9lkWScy3Eiqk6q4Kztl0+6x9ATYxMchYjI0QecuxB9jXKhPiOWoUTwR9bgXt
         97kUv75XzRnol46zGVXTxPwUXfi4J+gy2Dg140aGEo3XJZ7NRwG4rBYwtOKmpcasVAvT
         xsxewO3nXBDjRdyaDtpVlHgLJdT32LNIh1TUCV4cS2RnnyexN+hzfcMNJkwyozfkDMBf
         jxMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=83bVdU5IrymOOxpgtM/xoBx6USoQ8A0BUMkWqTYiRDI=;
        b=ArXzMpIcCaR/mew74NEzNeBi4+gCTc1FVwz/C8xY3QS88+NtJryTS7LJO0hCOpZdqD
         omebolwzfhXx5ioGYhyfiOK1nbOarpQGr3mNoM6uBFl3XeOa06769ISX16VJi/1sTjLV
         W0sg1kY2ySkejS92Be5zMBg1EgF52h6UemK9W8XPc6QMZN6CZMQDbRlNQ6cOQjTVCFeM
         QzFhz4WAud3y4S522lUN4yS8LgcV8Vp0JG3qB8se1w8IGnr4R0UOUpm3EGft2lR9ucJ6
         xFRHh7dAVd9MWtxzOdkfDqD1tD0sIYrx4W1RHAwktLDK147rorvA6s++NEQ5plj7kNla
         HVoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=V8RHIZXs;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h10si151947pju.1.2020.03.11.07.28.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=V8RHIZXs;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x341.google.com with SMTP id j14so2146132otq.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 07:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=83bVdU5IrymOOxpgtM/xoBx6USoQ8A0BUMkWqTYiRDI=;
        b=V8RHIZXsq92oKJNjIGrbTDe26rrgKVV4kb0LB8f4N0yR/Xjap2fSFD399FvGdnq7Pj
         qwZTdAIc/62Z3gKZgS1dk9D36KDflIpuz0sApiVlcZMvZTFxCjcDqiNlYdPuP86gkAQu
         CVzm9IrvZYwUqFKewfyzgou5qOAOFQCQWRWlOeKJayYuENqli6tFwZFCtvbz2r7j79Hs
         u/G0ErMeZTtOePzRwTmud6XQDlWfweele04iMFt1jnEa07yk7YMrITMDLzm8/gSHNXgS
         g4t3T8sq18ZWfmyAFYx7GB1CXwiHaJA74Qm3UgQ2DqmzLPhuifncfHXGEBnpov01h9co
         K1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=83bVdU5IrymOOxpgtM/xoBx6USoQ8A0BUMkWqTYiRDI=;
        b=nikmFDu/R4B9PWdLfoiNqfH/ys0Ji398mI/WaLtrCDOvw4I+dww9B5AGqc6smxSxH8
         50i93xewsKgQEWkOP9qsyXEdvupkNRXN6qZgrp3L0avaUZCC2so60LcJbDkBVlCsaxCp
         WY7U3qLPvSR3snrfVj1BCTyUCnD7qNOBhx06tRFjHv7HLzg4R/IOTvIOQoGqR+YYoEuF
         vjG5O/uE886hhjK3w3IfhQmAmWDWl203l0iyOGvKvmqM3GQ9ge8PNtcpipWwtNlbnXNJ
         Bl8kjDcoa0Mvav0cNCW6ctfYc+rHMc2xPEJqWETFXnlxYbc1q7Is+v87aR+3YCUdiv1I
         +WGw==
X-Gm-Message-State: ANhLgQ2uWu0F3Ia/9VNgaLxHya/9+8VRZ9Omy4MRvdVYrzZaJtnuLGlG
	rTu/nX6K3lFEiK7jmc9aLnkLe7KROcHaJA==
X-Received: by 2002:a4a:8dd9:: with SMTP id a25mr472994ool.69.1583936917227;
        Wed, 11 Mar 2020 07:28:37 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([2806:106e:1f:1211:ccea:c45e:83e9:af6e])
        by smtp.gmail.com with ESMTPSA id m69sm17264845otc.78.2020.03.11.07.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 07:28:36 -0700 (PDT)
Date: Wed, 11 Mar 2020 08:28:36 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: qlge: include newline after declarations
Message-ID: <20200311142836.GA17614@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add newline following coding conventions, to eliminate WARNING found
using checkpath.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/qlge/qlge_dbg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 670361873d1d..52704c67e110 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1332,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	for (i = 0; i < qdev->intr_count; i++) {
 		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
 		value = ql_read32(qdev, INTR_EN);
-- 
2.17.1


