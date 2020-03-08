X-GM-THRID: 6801974283899764736
X-Received: by 2002:a1c:3241:: with SMTP id y62mr12612198wmy.66.1583708050046;
        Sun, 08 Mar 2020 15:54:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls4794582wrq.3.gmail; Sun, 08 Mar
 2020 15:54:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsXWIXMTsYxoR5TWPO4fK1BBKRZx0T09mgIUF1pk+bGoLcTRoMGWE9Dkevx183p0dIKRPUN
X-Received: by 2002:a5d:640e:: with SMTP id z14mr2247924wru.204.1583708048933;
        Sun, 08 Mar 2020 15:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583708048; cv=none;
        d=google.com; s=arc-20160816;
        b=qzLCMeKP67eH1a2A2r2xjAoHji2RugL6FFkCkJtp+SnFklmbn4Kt+Bg3zSSsW6psFN
         QIY26Ej5NQlgP41YWCX9vQ2JQpCif7cbaBjMHQvdeXdvs6ec2ztJeqil4jtqj/BjiiO5
         HvCz3GBz+TEQAnpyH2MCa+YWnleSAxHBdlPzH1Z0gkysCiGERZlNFpaOD+Ue3Iw9VTGr
         2YKShPZXu6904bK4G/dq97vKafpiZ8nbxzk4VjaC7PazqZNC22Y0QIGoWAEWuh+EZpwu
         lpWCcuBrtnLGtXO8MOP1p2p9DXr7hSCJbVLmxGo5Gy9nDjLn5BDWf67L6okzUUK9qAmI
         1fww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=f0+dCSvcP7DoAMn10SBcXANlsjxS8ey/VG1gBSjdHImqSRf8klDgOXMmaAOVfNbN9B
         zbtP0tsbzsI+XesFMhqHH+BQ0iDywhWTARHCaS33M8bFgt5OjUDnFMRnvovlauipSN/y
         r67nw24jAOaDq1zMe442k54wWQRT55kiensffo/IBZO/hycPzB1dflODa562D8Z/iuSe
         mFRMmuEltGVZ+veclqOFdIrrPYSG5wLZm1w02Ezy+IBLuLE1niDcW15vEvLtaoF2BvLQ
         +nbyUVsgIYI0KMVGgHIoKrnWwrqJQav1WO69U7VnOdoQf2ASl/8ty3pnZVpT9xqRzdZe
         1h1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=MPLlVota;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f1si239744wme.1.2020.03.08.15.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=MPLlVota;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id v2so8751188wrp.12
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 15:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=MPLlVotawc/OBEWHMY2mn3DksSmZdwMWROtxxs4UYMOGnDeyLhMMV8+oIi3kAFznTd
         sW5wzoiTdjYXnbRnuyjShHfOCyGsOQFlrWrzJAyV/YYV0SnlaxQbtqUtbDujvjo2XYlL
         uKWoX3w59Exh+cMIXVLNGUXK+HWEYXdu+4unw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=YsLVCp62+/zngn2Pnm6yCzrKJQitR88ZrbRJa6EkSYRPhX+P2bQNSF7WSwW1so8nfE
         qIvouysJ+t9SAHs1J84eb8Bgcw/slnfmtj4dIcN/spGXxXL0rMqHfl0KYiTLUDeUhhUa
         Bsl5tlPYJ5RZCTkDln9fEhkkeaMU7JGXSvqvs68qzPElwL2JlH5QldbofTBMJuPIz0Ur
         +Xk3JowXV1riW+SshZtwNUqhf1r07/9etrMu7E5RIMsNq0nH2i7+wtIpWM8qmn5Sc6HG
         3x6MnKHRcScjX7x4A5T//c/z/JzRFYRrNgmznIRpmphmgnLev+YsDYNYx4NmjST6CnDB
         UM7w==
X-Gm-Message-State: ANhLgQ0skN9HYC6ibmB1WhVzbCTRv5w7kyDdHwgUErmKRmzbxxJ7dNjE
	Yy/D/9yFaah9ab3XZi837RjYQxOmRCE=
X-Received: by 2002:adf:f581:: with SMTP id f1mr2975101wro.38.1583708048337;
        Sun, 08 Mar 2020 15:54:08 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 19sm25627014wma.3.2020.03.08.15.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:54:07 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp: remove commented out code
Date: Sun,  8 Mar 2020 23:54:00 +0100
Message-Id: <20200308225400.17267-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove unused code.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/hp/hp100.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index e2f0b58e5dfd..b89c4dcf53f5 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -511,12 +511,6 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 	 *   0x2260 -> EISA HP, BusMaster (Shasta Chip)
 	 */
 
-#if 0
-	local_mode = 0x2270;
-	hp100_outw(0xfefe, OPTION_LSW);
-	hp100_outw(local_mode | HP100_SET_LB | HP100_SET_HB, OPTION_LSW);
-#endif
-
 	/* hp100_mode value maybe used in future by another card */
 	local_mode = hp100_mode;
 	if (local_mode < 1 || local_mode > 4)
-- 
2.17.1


