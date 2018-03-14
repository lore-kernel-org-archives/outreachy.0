X-GM-THRID: 6532871168257425408
X-Received: by 10.99.126.20 with SMTP id z20mr1194011pgc.160.1521052599288;
        Wed, 14 Mar 2018 11:36:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.99.24 with SMTP id g24ls556759pgv.18.gmail; Wed, 14 Mar
 2018 11:36:37 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu68zopXn3hiy6iPsnYQ7g3ZhA77Dstj/oXfKYIxA/dQnphQNxY/nebCOazbqU8kdGNLeM5
X-Received: by 10.99.1.211 with SMTP id 202mr1220455pgb.53.1521052597631;
        Wed, 14 Mar 2018 11:36:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521052597; cv=none;
        d=google.com; s=arc-20160816;
        b=dnDok5ma7jyW1jgFXg50IXpW723CFijeeZXiF96b6Y7YtaR2kK3X77+0mkAtuoyMDP
         VorfnHwokN5f4yB55ivm2BsYFFj8s4ZibzQwZsqxsSK/Eb1myYc14LPqPxLdcuK9HXZQ
         4fFVsCVhpiNK/eMAz+IHlwcl4rUPD/+Zxk/jntXFTTQaNudiufHXOClJxtpPy2jQRoto
         HWe3VtZNbrVY9pfvOpmvNmq/mUYPFyJWfRWcHtX3Y1LOmFfiHDkZgZJJUOfcKr7JlStW
         N9VUGm2mJPaFiBHh8qcgnIBow6UEeX/DgAefugIs2RXPsxvyy/S6K6W8tAk8w9hIdecW
         c7fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=OvLTUo9T3xWHCUq6+RikGJuhwXvZZ9Y2tryPpDS3wtKmnjEYBuEcKilfsJ5qwyh7fT
         Mgb6mKM21IZxsoHP9xZ9ObjFejeLU0msmnXhPzOyc/4bC0NsUHdJ6616y2z13aEUQT29
         pFQnmRzA1KYIwFrOKfxQ3y5ka7R56lepFXqNInJV6dbJ9XQDGjCTkw6NUlSzqznkZxc+
         LUWeAkDexFFqnLYESywknzdHxJi/1cTnap5s+JPglIGR1i3oIPW9KTWYvOS1QxIiDjmh
         IasR2IK72dmB7zF7FLFADcJJyrtqMF/aeqgyqDWSLkYuzicqbzj//+H7rucIKZ+Bmo4L
         czMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=RnogVkz7;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id bd8-v6si222167plb.4.2018.03.14.11.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 11:36:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=RnogVkz7;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x243.google.com with SMTP id h19so1776044pfd.12
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Mar 2018 11:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=RnogVkz7QRZK9IjqeAc3KfxwIR/LOOupMM8ABASPNszzKELMmsIG4PquJXt9MTMV8/
         bYzPMyRk5emusOhm/BJRbS+NEn4fSXx9V4J6glu1xNs329C2D0xrLK7l7RqpfnIEnNJ3
         I6PMffkFiyK1hTUOo4JFdCWYwkAHtK2PB3+Ho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9/LtihCTR2qAPyaDRJspTlobIQRN/IqnmYUJjwKgscg=;
        b=o6VGDzpjHy1pxycRLH+rgJO4q/93tufQj1v/8IDriOotia5iO7PU1Czt2BfbOawI0P
         ajVh3pwXTk6g6uCyQ7UniQGgdkHZzZXWyDTs2CXfKlEQT8FwoMqi0gyRzekc5XkgdNlT
         w0K71CXes+dGzfZlN2kBtZ6nwG+JXzbAgk/JfjzYJapkUH0y/NuRGVb0/ZalF9+0fh6P
         s5tdM4pf+p5pX3o/bs5xojqHSEWcgiwtDOvNSNZHZ0A+7qzEQEfZuBzNBgs4dVxw44GN
         8IDWUvIKmoTty7zjSvqMTqtMsx78TjtUtEywV9PlOzi/CJrILsxPb19bYv19uJsKdCsZ
         OWMA==
X-Gm-Message-State: AElRT7HqKnhT6MMKtTAC34OAAWaDgYaKwLvYD7jh6VY1EGi07yUb9BFB
	0/AOToaQ2X/naHQenvY/hL3BvA==
X-Received: by 10.99.64.3 with SMTP id n3mr4648857pga.316.1521052597033;
        Wed, 14 Mar 2018 11:36:37 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id a17sm7639388pfc.122.2018.03.14.11.36.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Mar 2018 11:36:36 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Add blank line after declaration
Date: Wed, 14 Mar 2018 18:36:14 +0000
Message-Id: <1521052574-27793-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Add blank line after declaration. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 0736214..cff7b1e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1270,6 +1270,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 * mismatches.
 				 */
 				int i;
+
 				mask = 1 << V4L2_SCENE_MODE_NONE;
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
-- 
2.7.4


