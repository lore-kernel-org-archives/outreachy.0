X-GM-THRID: 6536210357179908096
X-Received: by 10.107.144.214 with SMTP id s205mr13684466iod.136.1521830095634;
        Fri, 23 Mar 2018 11:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.22.71 with SMTP id 68ls1100107iow.2.gmail; Fri, 23 Mar
 2018 11:34:54 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsiluDIKvoyY8PYppHJVOr1DpqlcCnZmDZ2hu3vpr3W3saChS7z3UcvrwXHT0GoZPhH1i6I
X-Received: by 10.107.138.37 with SMTP id m37mr13870903iod.90.1521830094238;
        Fri, 23 Mar 2018 11:34:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830094; cv=none;
        d=google.com; s=arc-20160816;
        b=m6n9tZNDYQ+tnrZnFfinAvF/8Uj8QlCQqxWu7dtXiggttlt+Hlb9SJ72ZYYzRVisld
         U4wyxBlCvX7XfZ3gJRkshXX3kjAuTDaSS748z0YZF3QGqXN1CHzze2wBWFUWDg5YWoom
         dyhT3pknrE8OejU4+S20lOxzEAKG8hHMC52NWuEEPtm179bmbEynsEUbdcPLmUy7z2az
         1Zbl7ygF6GNiqyURrrbq4WBaxVPCexWPnUU4gLsq+hh6fDNwnbT6Rqvlo7RTLrpoxXGG
         IEbfUJAzmMiUCBVaM0zdZd1TjIYuSa5ahG7gPKcc3MSxLA2aouorKiX0SVWPEqJU26E9
         BB9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=QsBWh9MGSwq+c5wYxnVpVetX1Qe7syld38Iuoe8ptUk=;
        b=IHycJP93TIBwyyp5w4WZj45VXU76h37HqwHV8UaSeyKWln5N1Z/ssCJQZf2ZFVQHU1
         /rUaZcaXPv73JdF0pLqN4PH7hC0hTwGcb9NMrY7iiJ8PwCermlIHx+DWkYl8m0T6+iLv
         Tl/SpIAPWJmssPIOco7sY5fpihOG8CETqCiFn1JPvCPkDLu0vBUOJh56nEXH9yhDrzOP
         3z6xS7+ktZxswQ3vw4J7DfGKYUbhVgbhLAILTu2fGy2gMNtLFol6tJQCgW9jCOezTxiN
         PI21ufg5uvsN+aGsv6u7UxppXeDImDlP1ec1UbY+LcSY8/oW5rMGEKBjEcG/tVh/+Ged
         CS6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Jms1jlDu;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id i201-v6si374793ite.0.2018.03.23.11.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Jms1jlDu;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id k22-v6so7938582pls.6
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 11:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QsBWh9MGSwq+c5wYxnVpVetX1Qe7syld38Iuoe8ptUk=;
        b=Jms1jlDuCVZAIr669qFkVysoeXOuYFompswl3kl1jP4+PlxCR745xFtwuQFM4Ajx7V
         rOPR41Ls1duDx1yDo8kFFmD+7KtBuW/PeK4OlLSaQ3Buh2YV8PHx3qXxyhpoG3hNE/gY
         IE5qKCavJCSQ/ScO0BoLLgnGtx4yVCeq2b7YY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QsBWh9MGSwq+c5wYxnVpVetX1Qe7syld38Iuoe8ptUk=;
        b=R+iUxwkNyBHAMpy9HTIadKwTqr1QE759wekKnLAEWmA4a51PiWd+3FlermJtFJzmIH
         AQmomrw9tua35pSW6iwupkeCjUIHQfRnUQIjDOzTErSd+fQmBi4v90WkGOw9teW3TDL1
         rrY7/Zbi21pERZgDuaO3gtgkpcZlKH0egjWO5OvyUKiRGYYkADOpx5+Uh9jH0jpXN3Xx
         BYrz4bu9nZX8mslegofrjBR3P+j0YAMmAe3RSDWdXyY11/HvIh1YnmpwgD5sAThVoNxU
         edNLSKJRFzq1sVNFkjYSrDaXqNAfE9C7mC+fws/oBqEeuc6668wCfvh1Xb29CMLCR+/M
         1bkw==
X-Gm-Message-State: AElRT7GOVhXKRmM818nYhWnjB+4h+z9du1/w7eqwOEhRV+LPqUx2FAaT
	3jo0E1bM9H7fpNQreqbBCp9xPg==
X-Received: by 2002:a17:902:be0e:: with SMTP id r14-v6mr10188441pls.302.1521830092739;
        Fri, 23 Mar 2018 11:34:52 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id e14sm17799445pfn.180.2018.03.23.11.34.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Mar 2018 11:34:52 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 4/5] staging: vt6655: Change _chip_type from typedef enum to enum
Date: Fri, 23 Mar 2018 18:33:59 +0000
Message-Id: <1521830040-7138-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Change _chip_type from typedef enum to enum. 
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject and commit message clear.

 drivers/staging/vt6655/device_cfg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index 3972881..2f38634 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -51,8 +51,8 @@ struct version {
 
 #define PKT_BUF_SZ          2390
 
-typedef enum  _chip_type {
+enum CHIP_TYPE {
 	VT3253 = 1
-} CHIP_TYPE, *PCHIP_TYPE;
+};
 
 #endif
-- 
2.7.4


