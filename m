X-GM-THRID: 6621495393645494272
X-Received: by 2002:adf:f907:: with SMTP id b7-v6mr1787705wrr.21.1541771632687;
        Fri, 09 Nov 2018 05:53:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6983:: with SMTP id g3-v6ls468988wru.10.gmail; Fri, 09
 Nov 2018 05:53:51 -0800 (PST)
X-Google-Smtp-Source: AJdET5cMuUrzGmejAS4/lUqEH4LcCgeEG8+dm5UtcJ4xxQGmsdinQpVCprbn1vpnGYFX0ooigNrn
X-Received: by 2002:adf:f907:: with SMTP id b7-v6mr1787695wrr.21.1541771631862;
        Fri, 09 Nov 2018 05:53:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771631; cv=pass;
        d=google.com; s=arc-20160816;
        b=vw3X+dZzP9uFffxgTvwhtLtLtKJv+sUaSzsRy9g2wggbEDtjWK33UoxuoSjWzA8CNs
         YFuA3WTwjPO4AqXRgpXch1ZA0t9uUnnX5YK9XjAqlC9tbeZWhX9PwLBUvjRBNx02OgKW
         UlM92uYi7HEr85ytfxm+XH2xDBWiGD7rnApwBgwoq2QSuA5htmZ7I19ZkcYbFYI8fFV6
         s6zkUIUkuc2I6vM7AtN9U98U3Pmz8tKiucQk+m9Jryu2t//B6vnKb+E97r2ilj8PJxLf
         hJ5Fqe/Ms8fZ7XI013DyJ46hSVmsJmfeF+esU98AIUNF1olXYuFUkzIT11U7kwB1wfg6
         cyNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
        b=g1n90S/IP25jPti12ENyRGCUwSlXz7vRXKhIThnPOt2vbtRN/xB0DvSMN4Gvx9ymZW
         d/hR/nU0HV+t86uFG7C8GhI7JtBEWqaxw2o4xzZJCpqKfQkWVS+HkMDU8+zpyZhH6y2Y
         USFGxd4c19xhOUsirWoF5sRNMTMe6dvu/fnWnZ+4WwqsLrbqMAAcv/Dw0MbFeVqgzC+9
         2ZGEU8f/MDxXDrsWS2ZAIWtgxgtTbMZwITpze40VvBw5lQXYVQQKzTBupA930ykZ0jRy
         hZEXfCFdaTJW1otY60jJQu+fMvkarbyv78CAzJVn/pDmAm7mSKGrxBiOWj7PwkjPvEpE
         KxWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IU0VzoI4;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o8-v6si55247wmd.2.2018.11.09.05.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:53:51 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IU0VzoI4;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771629; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=HbGUEj6NBKhHuJkVn2Yo1TBZl97Xt2LhsKZDoPGXva/lwjb9QVvzufA41oJ3UNjITZh3TgbAG5NwhvDTb7Qg5Y4N4KyR8XDxHZ2w1Es3GhcEzmFqJRkROzRkEJ1JUcD3rDBKL9P+95Ek5T4abj9mNJ0hfoAU/+Q3ULma2oAC2Ak=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771629; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=; 
	b=GcH+lKy3lUoY3eJ4SrLcXBWSGoMSlHEpyHeaQQt/mnUohXFwDbLP2W6ssEh9yNaevnl1JpfuXO5KJS5+UM2Mdxn8g+5F5IIezD8Ho4jlfD4wkBn+vvyVUvftnV3Zejkh0nME/AKcuWV/khXJxf5lunBUrZ3COQbkC/89tk1kEzs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771629;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=589; bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
	b=IU0VzoI42D34BWXVLBBOeP3BbmaTWYnRTWxpCQgdBOj6vKo7yoFa3wLAfowCBJNb
	Tkgi0j1LBgxzt701UAiRhmz//rbZXAMo7pF+y1EjPkq6TQW8iAe0pOCqMHEPndIpcz/
	NG5+4+IB8HzbGnuZOuSKtcjR4bAk81MqRdRPDYik=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771628228282.8270294077896; Fri, 9 Nov 2018 14:53:48 +0100 (CET)
Date: Fri, 9 Nov 2018 13:53:46 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 04/15] staging: greybus: fix SPDX License Identifier
Message-ID: <cec768a03414f21b413282b521cbbe781bfd8e12.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace the SPDX identifier with standard C comment.
Reported by checkpatch.

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



