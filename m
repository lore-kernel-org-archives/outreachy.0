X-GM-THRID: 6803797198848917504
X-Received: by 2002:a37:715:: with SMTP id 21mr9257913qkh.435.1584132500079;
        Fri, 13 Mar 2020 13:48:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls5571987qkb.4.gmail; Fri, 13
 Mar 2020 13:48:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3hF4kc9xckZo7UPGwb9g/F+njaumS3H0SS7qzoYkd49jhzzov+2KDjR0Wj0dxx0bUaS5z
X-Received: by 2002:a05:620a:ce6:: with SMTP id c6mr15724873qkj.396.1584132498802;
        Fri, 13 Mar 2020 13:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132498; cv=none;
        d=google.com; s=arc-20160816;
        b=emd6g+3WbC9fn01A/c3V5V5OoY7C8Cc8sYig4DibbbyLQtJubhrj+RMGtk3QoGWNY+
         iIZTCeNYeZVYigmDD0zbCZL/oSoP3FbT02W0RWsNxDw0gY9pRy5WhoLwMd9F9hZx3wBB
         J6f+AR0SG2DncOsj2pDIy8oqqG/3v2LD8hmvayTcN726qq505239xPGOisLv0xvRIDVt
         KLvrr0umTe0FY8Z3PGB5UpMSfo6j+bx7uvHgHEZ3n5GNejOw4Df7xxwCSPggx4DluZBB
         q4akjZnYW6zxCLbjD5m7Qm2zrIiaCXpIRb7Hx1L4b2ti+bQLz6clMiAg9HaKScjHhrqd
         NwKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=UGDvfoOjyCcwlzxISxqXEXiYoaMqn06leCsqEHKGQo6hoJvnuMTWSYELqtGc8R5zCl
         Fg6Do61qD1Qh7IhgEnhyMjlx08SaOMjfVoGgVYHI3X+07wqcaioXMEW9/Tcs7M1GMxvw
         t/vZKHh/5MvIG1m66be3z23nlefvs/GizCBipo50e6NLEkQcIRpG/gw87BjOJn83taYr
         jLiMchLjvH//dLopYlCFV3WIHMsHcqEoPUTCSMan02cDJsLrttwr93fbjfXzxDlZ366P
         5ZWRT4VTLAEi+gh95n6tPAR//kBdCuwfis2YWZNG9WuPgw4yFRGBT3kWcPmpKYtmfPfO
         d/Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=lOGI2yxM;
       spf=neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id c2si421488qtn.0.2020.03.13.13.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:48:17 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=lOGI2yxM;
       spf=neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1042.google.com with SMTP id d8so4959782pje.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=lOGI2yxMDGSkpEAxKi7euFQfe0m0VDGeaERFpkXkeLnKibhPZ80FedLVIj53BCimYa
         Iir6LcFSH6OvjEzqfSjU3daJpk+qOeiFUrPcdu2MXMs6UgI33Yx8XCULSOx0M6zsWfl6
         PcHpHLJmp8cBFQPTm9vQmyV2B4KNrwwiN5qIyDeMWH2S2jvfPkIROJCdXkS8iikEoOwG
         4tw8FoKVJ5fmhkAIhhBFdVOxFZGT+cmGtn5ZdnS0TBCf1YfzDdxdxNzaSt+pqPq92gpt
         Wcx7SHiiuki5IXB2X5QN7s3L2b98hfryQkf3wH0PMBr2LmkgYPiWmryz3p6jCbXUO3s6
         cH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=SeXRdF0CNitmtbgldANetihr4dZL0LUgUJpa3ELQyqzBjrqDtm4A9aXpYhcAxfddWB
         FQwJigo5AVdeJsf5Lq9Rf2FGoad+nw0ZpOci45EmIUgVFyCE8KJYip7jrIC7FNzBOILX
         2VjBkBigTQIXOtD0GqKCAjgFGy6Ydx0zsd/KpBAjlCzKimyJGIgsCSpH23nkFXLjgwh9
         4Xz6D6r65Kq4H9n3ZFqtkNXo/gr6sHlKG+eEJm3gN7J+GZd8fqo0X3xkNeAFEDw4hHva
         q1fTTEq0ArICDsMyuizsPn+Mck2pjHfi/g1XnFsH8N7qnpaxdV0w9ONLoAeWL5UW9ewW
         30Hg==
X-Gm-Message-State: ANhLgQ2yf0GyT0xKok4OuUR7irI6Cc8OiwiaWLT45eB+46MaZ+4Cv4iu
	Hqx7i3BWVbNC5HjWW/bu2gJN1DGr40s=
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr11778003pja.27.1584132496644;
        Fri, 13 Mar 2020 13:48:16 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id s25sm32127338pfe.147.2020.03.13.13.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:48:16 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 3/5] staging: media: imx: remove parentheses
Date: Sat, 14 Mar 2020 02:17:37 +0530
Message-Id: <20200313204739.32676-4-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>

Remove unnecessary parentheses around a binary OR in file
imx7-mipi-csis.c. Check reported by coccinelle.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 383abecb3bec..fff676a54990 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -404,7 +404,7 @@ static void mipi_csis_set_hsync_settle(struct csi_state *state, int hs_settle)
 {
 	u32 val = mipi_csis_read(state, MIPI_CSIS_DPHYCTRL);
 
-	val = ((val & ~MIPI_CSIS_DPHYCTRL_HSS_MASK) | (hs_settle << 24));
+	val = (val & ~MIPI_CSIS_DPHYCTRL_HSS_MASK) | (hs_settle << 24);
 
 	mipi_csis_write(state, MIPI_CSIS_DPHYCTRL, val);
 }
-- 
2.17.1


