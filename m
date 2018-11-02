X-GM-THRID: 6619077441472167936
X-Received: by 2002:a17:906:d1cf:: with SMTP id bs15-v6mr476381ejb.2.1541124322235;
        Thu, 01 Nov 2018 19:05:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bc02:: with SMTP id j2-v6ls823809edh.3.gmail; Thu, 01
 Nov 2018 19:05:21 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cVetCH5NHMJ7DfEOVtN4319FHp3gjShDaIRbndU3fVaBXMNjrIQlqagZd9xDJVD8MFf/HQ
X-Received: by 2002:a50:baec:: with SMTP id x99-v6mr1744884ede.8.1541124321540;
        Thu, 01 Nov 2018 19:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124321; cv=pass;
        d=google.com; s=arc-20160816;
        b=aqxTfmTdsdvpwdFSbKHB0GkSPHqXR8+WWMuRPNbUj9GvSj310S96Ma+KPjzcdofPYa
         4b0i/nX2DPqZhn6dy+a5PS800EEwPB6EO/egwwUfdJJ3P6yVinvzo9QPlHnq8ScbAVL+
         8MoJmqPbhbGAV3hqm3wnE+cHF/k43ssH4IzK/mb44tqnmPP6BywSOibWd0sToCcMAHUg
         zK7eY9Un+C/YllvHsQX+B4jC8nYzRs7XFVx2KUW61Iw7cDKuMs6/QMB/RipvRs5uf/Bb
         JSF7QdFRCW1908rXOvfFVuLDR+xbzo4zdwfqFYzpsAmIyo4IBZ6B8Cig9RTtgVFnmdft
         520Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Mqo77Nt6GgBOL0PmT7rjMVJ/GvSQKT4ORf+t5fxjd7U=;
        b=cwJFo6yBys5jMGVO09iOESckAiPrfyxFUDDr4aOqaWgFKoFXkLInCjp6jt9ZdwR6y3
         ExE/fAQSD7dTfLU+yTo9jMWWShOyTIsWSrRSsSMh5TZB4LkVRhxxWvh4q5Zjx2XARd28
         c3SBOwUTl7Q6KCv6wLzp2qbkFLdyUQHOurS07MUVvpvBOFIlaiJKp/Eit6y/R7kRkG0s
         /8Qnpl7t6GRrVazeBAIqWodfABHg53LMYLuMSm1PBeJqDWLduy/JWGZrf51t/NJZgWVv
         o4GSOWAPrd84c7h7U33QJtVt7YpsKmNR2zPVPpCDAzV7CJHRlufzX+UyQzTgKF0fJvzN
         E0oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=A7FsKGDV;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n20-v6si605633edt.3.2018.11.01.19.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:05:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=A7FsKGDV;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124318; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=iVYc5jJinUO3+LLooBjbP0ky8aPURB99R6wmCAIE/uRJwnAEFFQRXd5umD1oQAYUA7vtnzdY6YSJQZdotNohttRQOXhPdvgiiA9P/jTQd3Oop8ANqNeKMwEmp1qalSCfCumDDcz6E6wVND8MCGenqp1Z9Bovug5rig0OeVIRELU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124318; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Mqo77Nt6GgBOL0PmT7rjMVJ/GvSQKT4ORf+t5fxjd7U=; 
	b=Xz6vVeIWN40aZPPYKeCNiRlfPuEkNfzq7NbezVaCbiIv49N3BAryx4Z5WXRc6cJ+I2heuxdjtJ377o72mWxauberPIWxgoKTh7ASH/EI+g5dVigF4MS/j9/BdvopVn0/MMxGA5QA0ko4AcDm5dSjM1hhO7iS1VxuOZ38/zsYSaU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124318;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=609; bh=Mqo77Nt6GgBOL0PmT7rjMVJ/GvSQKT4ORf+t5fxjd7U=;
	b=A7FsKGDVtajcxJaXkmugEQBeQaKTdjMha1GlGw4yRdFVGIAv0gIYANOCxyssC35C
	2I+HNrDeuBj2gkn12luAuf0vQQIbjvdtK9PjggJ4ZbcXaBmg3JBkR6JbivXzsCVtQdf
	Xq0PsCChFHS4AsdhYtnySE+uQ8Q/j+BAxHvDEQYc=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154112431756080.4091336372469; Fri, 2 Nov 2018 03:05:17 +0100 (CET)
Date: Fri, 2 Nov 2018 02:05:16 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: greybus Fix SPDX identifier
Message-ID: <a37d37114de31fc8bb116bceadd2cb0fbc28f56c.1541123999.git.code@wizofe.uk>
References: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix the SPDX identifier as by replacing with standard C comment the
file
Reported by checkpatch

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 08a51c652a10..efa0d30a88c2 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus CPort control protocol
  *
-- 
2.19.1



