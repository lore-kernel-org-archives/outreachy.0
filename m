X-GM-THRID: 6619244143382102016
X-Received: by 2002:a37:8c4:: with SMTP id 187mr8891210qki.9.1541162923172;
        Fri, 02 Nov 2018 05:48:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21a1:: with SMTP id 30-v6ls447727qty.11.gmail; Fri, 02
 Nov 2018 05:48:42 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cZEgw+wEhG9+7FPUGls3khXeYKvmVOAfw7pqoKpf9iBTD8/7wDvoxNbzqcrBSzDqYIHLVE
X-Received: by 2002:aed:3805:: with SMTP id j5-v6mr8781283qte.48.1541162922691;
        Fri, 02 Nov 2018 05:48:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162922; cv=pass;
        d=google.com; s=arc-20160816;
        b=mIuGB6ZnYz3Atz7G3rmuQajzfFzJ/0mgmkjpg+MYEePVkviR7b79Y4zVuXFPySxxEQ
         nktkAEniIP4hWNeEkPuFNjM3N+XPqhS2jfrI/IxmBvPekUaFMU/9n3Rj1LJt8EHAWQkG
         1gOT+UL7dOwfmIwb7ueYCQYxY9W4gQ3m2CePZeY9bksI74+LTXcpS6TG34aY2vwnPJAC
         Un7WlJdzhwtHA36YMYZvrlyyfkCmiN25jtiRvNRkO8GTOUEMdg6W6CsLR3SmW9zGYMAt
         SWNpr6GPX+xD8wqEtlHqe1UG5ZXSem1Z+Xn0poJZyz36kllN8vKG7x7fHgp7XmpeLK8A
         CLGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=;
        b=DQ/IUFhZJqw6NiiuXClBBT7lhzGhjD/UCCD1pARkaotMJ1Hwuq2B3pCiIRvfKbc5HW
         433I6h9nQruuihbDMTWDDe3XhWx30k4g6+p+6FVLuNaNBTAfosmEwX4ZBw7iAjCMgmpL
         MSD9kE4EIoMGW9EHr3HJZd4dYUxFa5syhbC+tvFKWzZ9A7h+7KTo1M5tzhWPzNtU5Ec4
         pvKUoVqegrEMYPU1QafB4TCjCCmPb1r41dgdc00znpiFDAENTgSoGxzIWHKSHgYhiNjo
         deSG9Slzzv3SNtubcouIVYHyLN5OL+eCOh5pkULpH8qXa5oWKSeu3KOGV8PG4AA/jcGM
         URnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Y0H/eghT";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 21si1014975qkr.2.2018.11.02.05.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:48:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Y0H/eghT";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162919; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gbknWR0E31u4NzKGjolG/eQjvr1ISiw8upcUDZSVDOtJzrf3d41lIzt5fQxcZ2TJMgSQABXfKD05VSjKwRBelzp6JrqAIYSWQZThmdA+pd+mXTaC5bQUDV8z1EVmPo6RS9Wb17wlAK8yiADgp/ddWYAu4MVkNHbJGnxSkbiEO9o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162919; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=; 
	b=h06K92cwMOqFiAqAEr+FSXJvbiPzCGwhWcltpQQtrFaH52lZzMNNPTyend87E2ysdvsgYcMeku47IrlEyGKT8PX2h4xc3l/DUh7HfEQXFWoWi0V1hYiujVuFzZmGMDE2TJIhAobSaZS/URZt57iSkd6A9gp7Ah4wM8gVaoclsHM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162919;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=609; bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=;
	b=Y0H/eghTuT1ZGWdKozLNTeRmRV4k54EIroFoiq9lNCFJhGcMueJ9tS8qnbsES8Q6
	gH66PqP9Su7nE6hfPbPrympETtFNeVnlvB/u8fFQFpy62O4lRIDS+mI7XMfYBuQbkxx
	KrYJmHJT0BV8zmSWBGB8EOP6hqLkfCTgksTyLyRY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 15411629186637.612603704183243; Fri, 2 Nov 2018 13:48:38 +0100 (CET)
Date: Fri, 2 Nov 2018 12:48:37 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/5] staging: greybus Fix SPDX identifier
Message-ID: <35bcae7763c5d7554f6cb26dd9581dc545454ecb.1541162672.git.code@wizofe.uk>
References: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541162672.git.code@wizofe.uk>
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
index 9c453e0b1b33..ebb7a2ee17dc 100644
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



