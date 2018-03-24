X-GM-THRID: 6536479698699943936
X-Received: by 10.200.3.211 with SMTP id z19mr13577139qtg.14.1521892779296;
        Sat, 24 Mar 2018 04:59:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.30.20 with SMTP id n20ls6652884qtl.13.gmail; Sat, 24 Mar
 2018 04:59:38 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuDKyubgWhd+Ji/BKIrsADWMlw3YEccdKIeJU2UCuKTuIUs1v/A/nCyYZ10BnCKwrwpRBSe
X-Received: by 10.200.82.21 with SMTP id r21mr16552739qtn.48.1521892778551;
        Sat, 24 Mar 2018 04:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521892778; cv=none;
        d=google.com; s=arc-20160816;
        b=PQ5Pki7CERB0LnOYtffR9jkMu44lqjDUtPA47sbzo392lLTkOBIpUmigQSTFQ+oycn
         ROp73BofLJ4Qbbe/wYZX3RAp+cAabglAUfIU/j4FgkniIBE30jr0qQNmh94ROcEvflf2
         H6FUUOkLTsFHfBjScvRg6QfZYGX9fb/5ou58iF8I57NbPSE/JVJNZkLt4JYWkRw4e0R2
         pgUSeJVQzrQxiTv9nwInuQ4VrZ1jgOcFE1LT9yj+tmOzyhJMbbKaD3pMIRhAfdnrda2M
         DhYtRQtHvpuswMluid5sZ+RiOPQPq4oZN3NVu/sEUX4E4h8uEFHq2YX6b8I31QR0mF7r
         C25A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=KeI6tNBu8V/0ewSY+rLyQc20Ka5Iql6HtaMcQEFsCYg=;
        b=dtgVNMs2SvN7aJIx4hGwWAVWP+6MUKQHaZKtmBuG74Qz1CpAOTEWW7m9e/A7qmPJ9S
         eSk6W3W2oBDAtueXNSwlgBK3lWKc/ZB/XbioBnPa88YuYAnixTANnY6J+hLT0LidsHb3
         /0UpbGotEkEEmcZDe8XhOX0aaA2R6YH95WKJ/b/+f4R3RE//yqBdAakBWqBVrCCEXR3R
         HzhIlxEgPprE7WChOVo0iCxUsEEbEPJs5gdGewAv9EV1xmk8/mqDFMSkSdtDr4WLvhI+
         i0fVHuNeppegapC42n23NfzJu7QdD7m345t4mP3OjfNRSg/aG4N1laL7wGgMPdd33Dyx
         IfZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JRsCuOgd;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id k20si687198qtj.1.2018.03.24.04.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 04:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JRsCuOgd;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id f23-v6so9037968plr.10
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KeI6tNBu8V/0ewSY+rLyQc20Ka5Iql6HtaMcQEFsCYg=;
        b=JRsCuOgdy22syaRlOd7SE4vAMmYp8/w/VAoWHxY4kCzgY157quLEciy5BYT9ESN/W0
         5+Uo8kaqxsg5cIroy/Ec3hArMFOcyv86b3XoCQ/6smf1tde1nEk5f0PxZ5NXjWCR5A+d
         vPZJTkVQdEPb69nRIy33Ic6TQv3D7kEdJKBRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KeI6tNBu8V/0ewSY+rLyQc20Ka5Iql6HtaMcQEFsCYg=;
        b=TJz5Wx1StC0n7cNB1oU7y1CEYV9pPBTnSkeXBXGVOG7HJSS7luWA8JFJ7q+SIaeg4K
         GDz/2zMrugbC5MZGmN6woxS7hmqlV9yDRBdb7FPCRRIZxExE1tmNJHj9TbSgn+2i8I8F
         ezATBFipe8wgs4Tw6HvrkqiiLAQVDOOymiSnq5S5i5o7LSZe7G7+co+qlTCRiysmhW5a
         VWo6QWu5zWz9E2hJ5O2tqgkb6/feFVTjMDGDBOC8CFa0jmetaPfoCr+7/VnDcV6CMTxK
         xT0ntkZ5eKolgcdQhr9L5BPwNzgYMtKnqJnluPhPXL33B/MECPOkbFzjaP1NLuWgPoKK
         qYLw==
X-Gm-Message-State: AElRT7HIWAbTTEm5WEXUfoGhidEgIw8FuLU59+xfNSpTBKcaSgiTqifd
	Gpqr+lRtKnv7usxjfuO89oRGJTVa
X-Received: by 2002:a17:902:6ec5:: with SMTP id l5-v6mr734349pln.113.1521892777248;
        Sat, 24 Mar 2018 04:59:37 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x137sm25460453pfd.162.2018.03.24.04.59.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 04:59:36 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3 3/5] staging: vt6655: Delete unused typedef struct _version
Date: Sat, 24 Mar 2018 11:59:16 +0000
Message-Id: <1521892758-27981-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Delete unused typedef struct _version.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - Delete the typedef.

 drivers/staging/vt6655/device_cfg.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index 73f904b..b81f9dd 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -16,13 +16,6 @@
 
 #include <linux/types.h>
 
-typedef
-struct _version {
-	unsigned char   major;
-	unsigned char   minor;
-	unsigned char   build;
-} version_t, *pversion_t;
-
 #define VID_TABLE_SIZE      64
 #define MCAST_TABLE_SIZE    64
 #define MCAM_SIZE           32
-- 
2.7.4


