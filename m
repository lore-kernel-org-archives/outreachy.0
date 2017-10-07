X-GM-THRID: 6474221644274466816
X-Received: by 10.101.68.201 with SMTP id g9mr47397pgs.6.1507397192804;
        Sat, 07 Oct 2017 10:26:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.130.66 with SMTP id 60ls459943plc.14.gmail; Sat, 07 Oct
 2017 10:26:31 -0700 (PDT)
X-Received: by 10.99.110.3 with SMTP id j3mr486476pgc.121.1507397191794;
        Sat, 07 Oct 2017 10:26:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507397191; cv=none;
        d=google.com; s=arc-20160816;
        b=xy2wVkxaNlPLvipaZDIno6Y5d74rNlkeWiOFOk2J0bx1DpCgFSKIetMz/4HJGK76Ma
         /eLPyFJ35Tk9kp5SF1//c65xcMdiYrCwwqqrBCskgRJm+PCHG4ojdrj7i52Yg8fRpKU5
         xs648qfv/1XgR3IWoy3b9f/UzC4YoOuaEgQGaRur7kWZ/y3w+46xzX6B3HjQMnwm7oLi
         CIsLPD9aXBm75z+03hgQ78e+B2FVQvLKCzZ8d0igW3OvXyVgvJ/yhwbEN36ILH7xaw9h
         s+k2YM+j6+J2zyHfqCsFuiAlgDdKEVzXmreetY9AenuByUlHYWSfjuNMCEevjzPraqTE
         7x6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=luFyd7H4WFIwU6Gj6RwxGpuHGGji82NIXZw6XK3SZJ0=;
        b=myAS+RdXoWZqqCyOR7Np5GgRt9GKZ2ods77EiC9AQtRrvtreLv7f7Oy1WdD/5lcOrE
         Xm/sOegScFIvN/oqg7yseqxNE0lg5GuWffpVy63rJWWzccbmlE5YqwbfC28VS0f+fc6b
         XDREe+XSoC06G2AvmWI6nOrISM86T7/Wb1hUlDE6JE98kjA/ddI9+V5DTNoCgJCweQKj
         RlgZ6cN2YjSjlTtS+qVTRFMQZ22wihmm94xZyYDHar0ibgG9tSJD6rQa13pfNdj27LBr
         HgNYTF1WR/fC69xeivZCsUb+uwqguWe97OOZwK1Vpnl5/DyupZ9UE/ipIZUYj1vJoE4P
         M8sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NuYJ2dvz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id n63si471407pfb.10.2017.10.07.10.26.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 10:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NuYJ2dvz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z80so1102524pff.4
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 10:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=luFyd7H4WFIwU6Gj6RwxGpuHGGji82NIXZw6XK3SZJ0=;
        b=NuYJ2dvzaoPNH2Cu6qgm5TTCmfNGyypAdkpCgWfoRTPIbUTaA6M7miwzK2t07U4oxk
         7Ci4m6l6be48eANryzHgwqU65848IW945KZmKaaUyPMxJDBCxLbDnWJJuVvXGQd9xRQC
         Pc3QY7/9u7t/ipsvm9JCDIxJKAxLNF07++W4WNkWRCKYN5rOBaGeqwieTCB5sFKtfngc
         f2dfCEUwH8lwlwoixZ22k4NSFP7C5SlWGld4nPrvW3R+HHJzTyYl2iNidD+sZIrrQ7BC
         7im1KKdnFjsEWPISoZxF5uWiPwxhshCf9jOGPfbCc6YOaJpPONHrr8o1AQCvtmuz1plJ
         UpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=luFyd7H4WFIwU6Gj6RwxGpuHGGji82NIXZw6XK3SZJ0=;
        b=gpHlbaE+8QHPKr75s+DXoFC9UcEs8VzU50bmIpMiU1eVT9FjXrR+vM0hbkVsb1kNHU
         Fi2ZqIK7x7OnaXXT5JnuKkQbXoOk/lVnZ0zxy2YdhfgtldRaOTobcdYVPm7M7mIva7U7
         FdI2nv3uY24CbAF1M1a+K7KF7xbkASnpU1x/SZKkK8czl6NMzn4b+FIRZNnoao78DTcD
         2riIgVw27jGlOtv1JUEmrtd7G9X7eW6jjPu8tcDbHUbjnrPKd4nP6gNXsNC+HjkJXPYD
         7cgKKivOBcIYDyXL521HVcYPsaIYQU1G4+VVE5+ATMxFr3sXs1TuOa14apqfK1hg1KrD
         6DRg==
X-Gm-Message-State: AMCzsaWzokc0QO5tLhTUl3Nc2SKkurKDL1Oy5pLd9SCwNMP9Yp1gaOiv
	KWO8VpQ3NhKxMGKbQo/Jyhg8QA==
X-Google-Smtp-Source: AOwi7QCx+Q1UKkJNU39XODxF+CKeCwqpDXiqJ0i0wKipXK4qHn8cdgPmdi9dh0Xt6umXFnL0xTNbFw==
X-Received: by 10.84.165.171 with SMTP id y40mr5132424pla.373.1507397191565;
        Sat, 07 Oct 2017 10:26:31 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id l12sm7911920pgr.10.2017.10.07.10.26.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 10:26:30 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtlwifi: phydm: Use setup_timer
Date: Sat,  7 Oct 2017 22:56:25 +0530
Message-Id: <1507397185-6139-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use setup_timer to combine initialization of a timer with the
initialization of the timer's function and data fields. Done
using the following semantic patch by coccinelle.

@r@
struct timer_list *l;
expression f, d;
@@

-init_timer(l);
+setup_timer(l,f,d);
...

(
- l->function = f;
...
- l->data = d;
|
- l->data = d;
...
- l->function = f;
)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_interface.c b/drivers/staging/rtlwifi/phydm/phydm_interface.c
index 102576a..aa1fb75 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_interface.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_interface.c
@@ -189,9 +189,7 @@ void odm_initialize_timer(struct phy_dm_struct *dm, struct timer_list *timer,
 			  void *call_back_func, void *context,
 			  const char *sz_id)
 {
-	init_timer(timer);
-	timer->function = call_back_func;
-	timer->data = (unsigned long)dm;
+	setup_timer(timer, call_back_func, (unsigned long)dm);
 	/*mod_timer(timer, jiffies+RTL_MILISECONDS_TO_JIFFIES(10));	*/
 }
 
-- 
2.7.4


