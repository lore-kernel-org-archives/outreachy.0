X-GM-THRID: 6524718047469502464
X-Received: by 10.200.66.157 with SMTP id o29mr497615qtl.26.1519154302738;
        Tue, 20 Feb 2018 11:18:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls6658173qtj.1.gmail; Tue, 20 Feb
 2018 11:18:21 -0800 (PST)
X-Google-Smtp-Source: AH8x225+PjmL7MZaagSJvNWGM2N3TlzDsS7wZtmG3fxTWWKjSG8G8JiX9oIS7ls2zwnNEicwjD89
X-Received: by 10.200.55.229 with SMTP id e34mr497322qtc.46.1519154301368;
        Tue, 20 Feb 2018 11:18:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519154301; cv=none;
        d=google.com; s=arc-20160816;
        b=j3KdSwxhXFkaPgEijBkG5SBKGKuXXxPGWXR5weH/iNOG7MOo57AlFY4U/b4SB3zRY0
         ExA6N3m9lLahKooFMS+GjcHk/V1ZthCYmUSZBngxZFls2Bav21N0lRfm/M9u59YzyspQ
         q3X8IuA+d9QthacIYuxde98M/J6v62wb85N5SYZOf0m4NLxJXhXVz8sVJ8Cuh3A3CERj
         7zE467gB54f1sHBFGYvKESEMw/KfFCj1qR2Ycxw2mpUIjuTCpg5qz7cznLkL1eyjAuHj
         fzMfeJzdul2+ry9yyJ3LpbOwdkAgkcbZ/b/4fIQ+gfiXSP7BPmu/htlqYQzNE/8111b4
         NUfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=KQuS8bZh4koHYC24LnuRZBB0TRUKIoiN6NpwMjZH9h4=;
        b=kjjj8+c26tcknS3lUVLLIfbEvoL+OOPkGS2mig7kVOodc97St2rMAhz1wz2LUi9ycu
         XpJSiXUu/J9OphFI2iOSEv5OEZm6rYeqJJjdQUZ6ZH6abGVlTlutsOhFysGCRUbKnqEn
         4vMNWCP1VsRNyLfX3uLgQulJ8imDapEF3GmsCqUFBaKSnVO8KrvRIKSjD+f8WvVD+I26
         8juUd0YptLMOfxnBg60PgrGNbvZDHhZNGPyAbgV2uJDLOaoIZL3j+2fbfYNRnkqaGASq
         f60yOqo0w4owB7sNM/NsLzs20E4vetzHxL4JGmo7Mcwl1TSMbG3NlxsHX4tZ2gtePtkI
         RnVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bmc8zR2d;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id p43si613726qtg.2.2018.02.20.11.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 11:18:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bmc8zR2d;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x244.google.com with SMTP id l24so7490700pgc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 11:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=KQuS8bZh4koHYC24LnuRZBB0TRUKIoiN6NpwMjZH9h4=;
        b=bmc8zR2dOH53ZFFbQt6oIatm2KPyYE0fk3D7B6grblYNJpBVUeuIMg3YeWx1FBQXws
         fpTJTknK7RmnBZ+oOQ2nerEntdWxi4+xL4fOeDY9CoI+N0C0PNV52q42ZCP3qe5UKfIY
         cM2wCh3ABB1lnRR4KbTSl/cY67YGUCeROcT50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KQuS8bZh4koHYC24LnuRZBB0TRUKIoiN6NpwMjZH9h4=;
        b=T3nQPf9/CA3w5KxUYIVk3RUMqGu0llZ9oLCmDDbJdLU8r7qEWjVNyMxc93NSnlvzYM
         NYIcSGzEPu3JK+PrrSqZf+a5y4PdP6z7/9zklaLZ2QiS8BDqKpczd5eg0JPbyvNJv+/C
         j+OfUefmIfs/fJnte/vC2eJG0iIWAc3FQzSOGOre6w2kP0lBGyS5GNDDYlgI70TVCi0f
         wwDv5VXPOc5UTCE33Op7duEclxpuAbhOz9iX8qrGY8yKj4V+zjeFecVfZaIzDrSR0/cE
         s6WLsgr4RK9iutsKpZ1t0zQV71eDX/eM3NSrGt5+q9Kqy7bL3Hcrr/apfaEyNuNXf7Qw
         5njQ==
X-Gm-Message-State: APf1xPC3TP4JZkZ0jN9vasM3vFbRpAQx95nXdp8NmK929skhFCIAxtop
	p6R56NQhz447p+a35labUAWs7I7h
X-Received: by 10.98.84.132 with SMTP id i126mr621529pfb.157.1519154299965;
        Tue, 20 Feb 2018 11:18:19 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id l2sm37579758pgu.46.2018.02.20.11.18.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Feb 2018 11:18:19 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] xgif: Fixed Line Splitting Issue
Date: Wed, 21 Feb 2018 00:48:08 +0530
Message-Id: <1519154288-490-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 reply1.txt | 7 -------
 reply2.txt | 7 -------
 2 files changed, 14 deletions(-)
 delete mode 100644 reply1.txt
 delete mode 100644 reply2.txt

diff --git a/reply1.txt b/reply1.txt
deleted file mode 100644
index 1348e9b..0000000
--- a/reply1.txt
+++ /dev/null
@@ -1,7 +0,0 @@
-From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
-Subject: Re: [SETUP] menuconfig
-
-Thank you, make allyesconfig worked perfectly!
-
-Regards,
-Nishka Dasgupta
diff --git a/reply2.txt b/reply2.txt
deleted file mode 100644
index 57c6c8e..0000000
--- a/reply2.txt
+++ /dev/null
@@ -1,7 +0,0 @@
-From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
-Subject: [SETUP] Difficulty with git email
-
-I managed to get it working on this email address, so I'll send in my first patch now. Thank you for your help!
-
-Regards,
-Nishka Dasgupta
-- 
1.9.1


