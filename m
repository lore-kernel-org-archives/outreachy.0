X-GM-THRID: 6664584616836333568
X-Received: by 2002:a1c:6c15:: with SMTP id h21mr13413wmc.10.1551719526693;
        Mon, 04 Mar 2019 09:12:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3d6:: with SMTP id 205ls1352wmd.1.gmail; Mon, 04 Mar
 2019 09:12:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqwOHH57okILFMYw57Qno71yqgH2En3ghLGKa5QGszC1sgw1/2kHv+aNgqlGr0m/cICeSYq/
X-Received: by 2002:a1c:9651:: with SMTP id y78mr11860wmd.1.1551719525638;
        Mon, 04 Mar 2019 09:12:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551719525; cv=none;
        d=google.com; s=arc-20160816;
        b=mnRX35QbiPotdEdOK7dODwf1jpkIash22RDCvoMSCVwJVMK7Za3HMwlmJZo12VtkxL
         gV0fVbYPnjyZl5Xa6fcChacLvWeYGJB6B9mUaIlkCpJEegSf3EAitvsI/ataxzZv4HJE
         Bn3GPn0hr9dXrWLBQnWK7OKPClKk1jzFBDTLDot3W8jtxjbLDs8e/BN+dpDd1Gz5ap/c
         rLD8/EA5ohCpkvkR6UJwdviY4ZeSRO1PB3jQaTwZ3Z872YEG+OT1LmiVfIyZfjJt6Jsr
         jRZOEIUJGqyH9uhag5TDYWKsHtN7Rk395xgv2slpiuff+ChVLLXdkkBW4BL2TiZRyIfN
         AoDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=KaVP2GnVcdBKEaiRiq76ikiiq8wgj1RmVhXRwFV0bLY=;
        b=fHRO1A5M93Qva1TSP0ewFJhB5hng11G2nkF052mNSB3dU5LUCW4BPU5MLRaBxA8f5w
         iKmr9a2KXY6ItpUplZZMYCwSvVFcjBU+LXtjH4FMo7/wCchCobuDXvURfOvpGKdjqYeO
         OK4YUd7kgE1BAMXX1lNB06A3XYvaMXI+/PQyQ73PUAM9IX5LKpgQATIrAVMgYNVm4eN0
         tU50J4DpA5gdu2fO4xhTokFfx/oIv0o47+jSuEO8KaH+VKed6TBY64oTFeB8ULjo7mlc
         Ja3s/fp+FWLnECCjul1a5M2ZIXbg3uGJ/Q7tvGaqTBIgW/WhRq6VhlkFuGgz9olwgnsG
         pBaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jY2O0IV1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f2si336736wrq.5.2019.03.04.09.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:12:05 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jY2O0IV1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id r5so6397465wrg.9
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KaVP2GnVcdBKEaiRiq76ikiiq8wgj1RmVhXRwFV0bLY=;
        b=jY2O0IV17ebdej1S0Xj+JrmucuufMiBObS6jfc/Yxc9nH5Uqkc2Yf60a3lNIIkoSUG
         zlf0CRZgs52GsdxYPqXKm4GwyFf826tjtF7hW9rA/A48KF8kCYKZtwaIqTbvRHdHl0u5
         S/Dzu35K6zf49wKNs7J/MPVlSjgdZjE47ULjyQDGPKGhNb+x99Jg2XH49TfUL35L+8sg
         FY258XDUVu7tT8z/ogt9SaGu8nPwvYR4oIXYfgs3Rk+4BoqFG3kqYvKJpuMsQMY+x3R+
         QycvekExkqN4tNiDmfmc1YU2uO44QUtqiZgtZFOCUnAaEgvg3M5OD9zZWvcI1JgZljDF
         3M3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KaVP2GnVcdBKEaiRiq76ikiiq8wgj1RmVhXRwFV0bLY=;
        b=aWY/ycUMLP1Zj3pc6Ok3gOJ3FQA4kwMPP3ICxH3nfDezS4Z9sjSXyiRF/xYz+MkFM7
         InAg8A4AWaeEyGgY9uRTmZsoH/ZacGCJfYBDPS+lAIAmy5etODlXa8Slc2dbwG0heARc
         pnLDMFwvqxcQagGliUjQ8C//81jf8SD0rECVTsmEeKfan1938Q0YULOLRJlsTtPSY//m
         ZmgFFNGS8lBhMWlsmLDVWjeENAHH/2onn2hPvWA5uTeIqCmVoFBxvCgn/8Zabv/ChDFG
         GGiskbafFBuWFdlGNpJQKHv5D6oA3jotbt5feQsGtYKYH4N5Pg4KS90HGrSK2sphVS/m
         MPxA==
X-Gm-Message-State: APjAAAU7EBCG28Xq/i7T0ftbS6Z/JJe36YdIqMW5FvU+Z5i1B7wPvB/F
	gliC1vU5mxNYUX2OmUy4K0cBzAg2
X-Received: by 2002:adf:ef8a:: with SMTP id d10mr13956911wro.321.1551719524999;
        Mon, 04 Mar 2019 09:12:04 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([82.137.15.95])
        by smtp.gmail.com with ESMTPSA id z15sm6276164wmi.46.2019.03.04.09.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 09:12:04 -0800 (PST)
Date: Mon, 4 Mar 2019 19:12:02 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: Fix equal sign alignment
Message-ID: <20190304171202.GA31639@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Warning detected by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a913d40..8b1a9ad 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -940,8 +940,8 @@ static int _nbu2ss_epn_out_transfer(struct nbu2ss_udc *udc,
 
 	/*-------------------------------------------------------------*/
 	/* Receive Length */
-	i_recv_length
-		= _nbu2ss_readl(&preg->EP_REGS[num].EP_LEN_DCNT) & EPN_LDATA;
+	i_recv_length =
+		_nbu2ss_readl(&preg->EP_REGS[num].EP_LEN_DCNT) & EPN_LDATA;
 
 	if (i_recv_length != 0) {
 		result = _nbu2ss_epn_out_data(udc, ep, req, i_recv_length);
-- 
2.7.4


