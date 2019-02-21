X-GM-THRID: 6659981177442533376
X-Received: by 2002:a63:ea49:: with SMTP id l9mr8381464pgk.10.1550734495860;
        Wed, 20 Feb 2019 23:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1f03:: with SMTP id f3ls779254pff.2.gmail; Wed, 20 Feb
 2019 23:34:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYuPdnJd51leqZt3IXYszH2HspFNuK5at/Ykzo0wYAlAGrnBS7vlIwioYb+b1PsxNdd9F/U
X-Received: by 2002:a62:6a48:: with SMTP id f69mr13640553pfc.110.1550734495061;
        Wed, 20 Feb 2019 23:34:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550734495; cv=none;
        d=google.com; s=arc-20160816;
        b=uJ1Ifop6BNVdJRydkX01nLCJDeD6ckHW+HvTgWLLm0TWAXPCy36Iofe5bFIC6qmyZ0
         ItQoAtB9NI5iYrgMVuEMYq8fLA4Du3WKNgDuEhcG7/XuRLonuOPbSYrnThcOjipBD28v
         pspqsxx3tK14KvLJeasEBGbYhjnyNmQD76CIa4qqKg3W9g1tcyQYRLMOaqF/L30YatQ1
         CfxLxCz3dgOgdgemL1CaQKK4lkuspaDMZHax/13cDuiOvTjwBEBjA5AnO5+oV5aCDfJ1
         1NaeM0Xk1pfkrpSJmhju3zf9xbBVpwZR+jGcXDTNkB9D2K0zNrpmiUvewJmR4Vd87kQC
         6HYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tYRrSNhcvAQbDafs6/CdaMtrKrexz63L9G1yLq24Nos=;
        b=cxmNzFINCGrFMurCv3j5MQYIA40SwNtg/bKsLUsLzRmpOw4UbGvmijtGXyJOqpbkwc
         bJYrnwr9bUvGekket+KkKW8w8uFFlWY7kz0x7DWpDy8jHDV0dhOu+BLxv607LQYL+Z4f
         s/d1wuPwFRfdEmNvbOgBmZb+paKpB2ipeRlYMgi9PxNdUnGfvvoajbvImMgSpwsHoB74
         s+rPr5fyeK1H1DLgerqHO8CwneJQva4Dn3Z/GCGbDre3/bDcjY46ZN+nDq5RUDSyfaZT
         pnm/6kNPqjXoEAvv4BcH2J5hklMRUWiHegVGH86hDX12qELHP5DD9OvssKuZErfbVj5q
         CSgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohM3m6GK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id q19si1504999plr.4.2019.02.20.23.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 23:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohM3m6GK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id 196so1478707pgf.13
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Feb 2019 23:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tYRrSNhcvAQbDafs6/CdaMtrKrexz63L9G1yLq24Nos=;
        b=ohM3m6GKODdcm9J/Y745rfmggbmlI3HOyLCTpNRP5/oCFKbYSGaXU63pD+Oqe4qnMe
         G7lvxkfBDHDLvco6nMmaM/0gid/w7zMhhZBcn47oO53J3kwW1mixZkO+jYXeISOsVUHM
         reZlFXlIQ2T07GsMLn2YkaRV/8hp6Xf9uo17mTw5MOiW17vD9YE+6mGUUkdRTkvUl7Pe
         FYUWxNl1mH+liUg76R0SQ1PsWvIJVNPYQWvr7D1xogXWqE4umIU24Ny/q88c5blw/aZL
         mftQ9HOOnqg+yWCGaiuQ30hOjN/7mPhC2HX+E7d8xkPm8PB5v9prJLSrV3tPB0qFk+TB
         /x7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tYRrSNhcvAQbDafs6/CdaMtrKrexz63L9G1yLq24Nos=;
        b=kAhEQd1OxqiNzguKqFt7+r+ZuO9YLT/KvZo05BzHHcmRdnQgLpvUWkZPrDwRQjbFM/
         8BlgBpIt+OWW3tvszPOymFI41hDjxyoG4QnYHgzYwbMshGtZcSOyfO8yarUOTNtm5+Hs
         SHPgLJGulLYpVLvfCFX/kMqA0GhtI9PB0ScQp/8jkMqC4o8LWItqZB9spqqFiK+jJXev
         q6T1dnibuAyG85VV/eMrKfl/Cd9b0DuCrJnc/M9RoEM66qvhar2p3facw9v/TsFBuGfz
         xvQFyl8PzFxI7FdKdLxBPdYNe4KsEV7DoZubST6bBM9++zWPW7koXLN2DBqJkAZEtikw
         Q8SA==
X-Gm-Message-State: AHQUAuYRutYy4wOIhlQCxsmVJFonnSRDbTwUQ5QeI0EIq0wBRftSbe5O
	+OsLwmocOmVWTDQwJg6iw0hluXfRkwI=
X-Received: by 2002:a63:f10c:: with SMTP id f12mr37091051pgi.374.1550734494767;
        Wed, 20 Feb 2019 23:34:54 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id e20sm26288767pgg.62.2019.02.20.23.34.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Feb 2019 23:34:54 -0800 (PST)
Date: Thu, 21 Feb 2019 13:04:51 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] Staging: rtl8192e: Replace license text with SPDX
 identifier
Message-ID: <20190221073451.GA27057@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

- adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
- Removed license boilerplate text
- Issue found with checkpatch.pl warning:
  "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index 0637de1cca47..6d2b93acfa43 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -1,14 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * The full GNU General Public License is included in this distribution in the
- * file called LICENSE.
- *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
  ******************************************************************************/
-- 
2.17.1


