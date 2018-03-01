X-GM-THRID: 6527357137219223552
X-Received: by 10.28.10.194 with SMTP id 185mr110497wmk.27.1519894647554;
        Thu, 01 Mar 2018 00:57:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.124.15 with SMTP id x15ls1337197wmc.4.canary-gmail; Thu, 01
 Mar 2018 00:57:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELuGipFycexKfa7Frg0cJC0ESWG9s79188bdZjAF4/dI13t0/FAe2me0otUf39do5CZdXoSY
X-Received: by 10.28.150.137 with SMTP id y131mr111539wmd.6.1519894645086;
        Thu, 01 Mar 2018 00:57:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519894645; cv=none;
        d=google.com; s=arc-20160816;
        b=BGUVNYNfD/v0T10DipKAArVwt5JlJsT+VQyeAabSGlnWthW5esmGeTR83OuxT8Nkn7
         nRjiJSrNfSPCmrmsWg2H1zkBGSDzwluvpRghg3zqsPqqhRnskGhbdnslS+EFArRZdzfL
         qbh/wTItnkME7Vno6TvvZ5rR5M/9XFKyPu6BLz+kuzDcP3Q8MuIbbAAOkU0wiRhp1bpN
         Xz2OLfCc46kr5quMXJSB2i6nH07cVZOa/cfxfUrEqy4q76ODYQPa1ZLeypPSYzSRhAK9
         ldtpSmXS6ovaI2FygRnW/Yw+RyUI5F7ccVwaK1wZVlujaWw3TQtZ+h2aMvCL3HN22gHB
         Ky9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=SD+fg8HBJsn6GE9PdO4Qs0QUv/WL5Hd4jfnxAOv3AWE=;
        b=cPLGMSRxPe8A6Bb6j5fBX6Z1DwOjRItv/BcKx6FHX1+635gW+7cv+Y9LVARH5bzcLl
         4ZbE4mlot1lnqfOktC7tQLolE6EhjgKPFDkstA4Zaskxq/yFX36HrGZq8uRqhR4WhGdR
         c8umLmCHODEcm8KoxyW/IQYiMfv/rRFOm1oePH04ljEGuY1LHGRQpv4+G5/O+0WJgL7h
         rNEtySnY2afOdjWj/OQC55UEJ5Mvttmq45tV+tZ/tj4S4duHQ7NTc1kSNfUCuhAyZ6YN
         3YsHVe8OUVJYvUZBi5LDRLI0+sp1vsrv77iauwItsq40W/VxIejNr/2GF2lWsOe/YAd2
         7+hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QB4Y9cJU;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id l1si196534wmc.0.2018.03.01.00.57.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 00:57:25 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QB4Y9cJU;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id x7so10034608wmc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 00:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SD+fg8HBJsn6GE9PdO4Qs0QUv/WL5Hd4jfnxAOv3AWE=;
        b=QB4Y9cJUWEwWjBCQEYEgOjJy3/w74lw7J/W3KG4Xk83lJmum6cqGMlK0l0ZDo0KpWu
         jhFvJcQrdqofVJX/PQmBN9EJrfoJ/qFnEEpCvcuXjlqRe0//s4MMTWbArLtSJs0kpOjp
         5CQ8TWhU5/fxbOzoIvDdMV6yhg8I5grgq8uccR+e/4eLaD+KEMMs9JfuYLbFpONuFawP
         nxyy8Wtsg//8eKmmpbn5TdAwfLPJCiRE5TFsEVbe0MEU8yBNwoCItRx6soqP7Yhj+0Mp
         tN6vJ0bXWREg7tywGh2QSChatgCWLbh4j41CGqiz/Oo4pfHdYl3TSlJL+TcyzdUGzxO/
         bkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SD+fg8HBJsn6GE9PdO4Qs0QUv/WL5Hd4jfnxAOv3AWE=;
        b=M9qXIiHNW7Pw+MBYSwSnCj/UF1+/pFXDBIvbltcrBXgRuhAgGMJJWafPOdfUJY/1R7
         gehdjTcUQBYO06IHB+ZOPzZVM9WrRt7OjAb1iDFjS9FLDige0pXexLb7qc02dIS5kHef
         DKymoXRIjUJISndjJj1AEkCCmDd6P4e+kgpAWM9qqPxOCslOwyx02BcEVtmKIunPmp47
         359RNADP1iGOvHPJmOIAy3Dai1ANs+nCftOmz7veOEbvmCIOeS7f0+pUSY6bR3iNcyld
         RsZZXnJbz1VzfYLM4YfKzFB2oG9M9PHRMzcL46yv64ryNtV/KuEe3gANfMtneF6s8Aky
         JiVQ==
X-Gm-Message-State: AElRT7FcYScpsLIBrPfcCyLzPedoG9jMX4yjW7lcP2Fev1c4lQm5I1Z9
	/HrE9Xwiozfm0ar224CeGQQ=
X-Received: by 10.28.160.9 with SMTP id j9mr1021765wme.103.1519894644785;
        Thu, 01 Mar 2018 00:57:24 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([31.154.102.92])
        by smtp.gmail.com with ESMTPSA id b8sm2804465wrf.29.2018.03.01.00.57.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 00:57:23 -0800 (PST)
Date: Thu, 1 Mar 2018 10:57:21 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia.Lawall@lip6.fr, Gilles.Muller@lip6.fr, nicolas.palix@imag.fr,
	michal.lkml@markovi.net, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Coccinelle: memdup: Fix typo in warning messages
Message-ID: <20180301085717.GA4508@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace 'kmemdep' with 'kmemdup' in warning messages.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 scripts/coccinelle/api/memdup.cocci | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/api/memdup.cocci
index 1249b72..8fd6437 100644
--- a/scripts/coccinelle/api/memdup.cocci
+++ b/scripts/coccinelle/api/memdup.cocci
@@ -56,10 +56,10 @@ statement S;
 p << r.p;
 @@
 
-coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
+coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
 
 @script:python depends on report@
 p << r.p;
 @@
 
-coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
+coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
-- 
2.7.4


