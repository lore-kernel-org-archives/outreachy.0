X-GM-THRID: 6256392223774998528
X-Received: by 10.107.16.87 with SMTP id y84mr15562565ioi.2.1456679828523;
        Sun, 28 Feb 2016 09:17:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls2080927qge.77.gmail; Sun, 28 Feb
 2016 09:17:07 -0800 (PST)
X-Received: by 10.140.95.38 with SMTP id h35mr26438740qge.3.1456679827846;
        Sun, 28 Feb 2016 09:17:07 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si1545064pfr.0.2016.02.28.09.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:17:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so7628020pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JG4mxJD/dOZRluYYC1l6yS8h9NROGX/hT7G3fsxMywQ=;
        b=QHPq7jkn+4KwGJBCM+Yc/xMaklQ3sDedbwFM//4dUQNiSPSJuoI6T4HefJPr3E1T4M
         Dx+95kULCH1u/ob4OZvpTYx5dc2qg1+I+ymLURjFweWY2rk+X111e4cl7QWwHbdBcho5
         /A4xzUZepI6Nie1oZcpu9I9Nw/0F5SKF9arGH/jcbl3PSYhfUZgyow4bpnWBn3ehAYls
         XQSF221D5ocA09zMy9lRnoCHFlNfBGXxA4qMW9aB92kgrVs4DU554uEEg14VTBksiDO2
         vH5Qnu7U7Siou0cBmKCkilnc4yMlMP1F2Xiss+ZgmpGsT1enL51vUVbgMVC/44bPI4eD
         cLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JG4mxJD/dOZRluYYC1l6yS8h9NROGX/hT7G3fsxMywQ=;
        b=d/fp92fSw6Vymuad2SobWDXc9LqwUCnbfMYjGXzlPm7XcYYhiKlXLDGCVgGPAHVFPn
         OweFKMyAh20qjToEFOxuugkaFlpazvmYt/mAwSy5YMRjHh2sdpH57mHoUe8pDOQ76yBd
         MHroQTaTyrUGjqql2h/r1nGc5JvKQTwLdigmEkUpSx8jtijuovFtK4k9cOvHzinZUWJM
         UYCCYsrC+GCGzVQ5fkWyPJglc33+DqOJNlkl5gmEnKedLPQKXlGMUKIudLFwH2+akfCS
         cNsqed6XxHcYEJRtzvYMnuSuO054vfk1Xt6Ecrl5gNPQ9zL1r8pscL2hGAaodMbZ3i+d
         FJLA==
X-Gm-Message-State: AD7BkJKv9YQMRG+JZfp4xrixxFLyFqmnwTEzIsEXt8Raqf9KDe/wD3L6R89KPRE1DftdQg==
X-Received: by 10.98.70.211 with SMTP id o80mr16495950pfi.124.1456679827636;
        Sun, 28 Feb 2016 09:17:07 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.106])
        by smtp.gmail.com with ESMTPSA id 70sm32353125pfs.78.2016.02.28.09.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:17:07 -0800 (PST)
Date: Sun, 28 Feb 2016 14:46:56 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: lustre: Remove int typecast of offsetof().
Message-ID: <20160228091656.GA3606@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove int typecast of offsetof(). 
As per below coccinelle rule:

@@
type T;
expression E;
@@
- (int)(offsetof(T,E))
+ offsetof(T,E)
 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.h b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.h
index a176544..a60d72f 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.h
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.h
@@ -283,7 +283,7 @@ typedef struct                             /* transmit packet */
 	} tx_frags;
 } ksock_tx_t;
 
-#define KSOCK_NOOP_TX_SIZE ((int)offsetof(ksock_tx_t, tx_frags.paged.kiov[0]))
+#define KSOCK_NOOP_TX_SIZE (offsetof(ksock_tx_t, tx_frags.paged.kiov[0]))
 
 /* network zero copy callback descriptor embedded in ksock_tx_t */
 
-- 
1.8.3.4


