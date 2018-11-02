X-GM-THRID: 6619077441472167936
X-Received: by 2002:ac8:744f:: with SMTP id h15-v6mr7672339qtr.52.1541124179402;
        Thu, 01 Nov 2018 19:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b66f:: with SMTP id q47ls2526437qvf.2.gmail; Thu, 01 Nov
 2018 19:02:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dzsq7m1NCjVByV02owNd2t4rgG5HzAPbEeCh+hXcixdyC1rbiVjrdXCS6NbbpNCYuhE5we
X-Received: by 2002:a0c:93ec:: with SMTP id g41mr7708973qvg.30.1541124178651;
        Thu, 01 Nov 2018 19:02:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124178; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZnXy/cB3P8R/eI36hV8CEBOxDtRRC4Hmzt5d9SyPtFRX9zBouP1Ml7rhEn0bwjLkcq
         zWXtgRlhHRgs8XVIt1qiHZfeArLuB6EteXiW2o3F+6+cPNH9YGYecH/KmYVrtefu18sX
         v5NchZBs7p9sHTzSC5BmqONSbLapZtKqVimHKrMfnH6tMeTJAqizslEvSqf2ZzgBwO9C
         sDYj0bT9H9ZVnkP2K8m/PBgLRp+Z9oV6adCuI4ZtD5OJrmAN6C0z4r+c1uVps6DPsciC
         FMIxhP94DlAo9v2fpJY1UyK51KJhUrC+73hWmvYkvfjCsde4j0YoXx/yIPbgByv8pibv
         cIdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=puJ3K2Nz+NlP5mwY4/m2oiQpvCjt6MU8qpbT22cZbFw=;
        b=vkY2XFZx8yBcoIW6Sst1/eOAakmrz5q7rWYYy62E+ftgqniQM8QGgHBJsBZfJeoMsp
         8zNLb0Vk7CoHFEap8SCsUk7QUps7X2l8i7N24M5mUGCGcJbDb7DFsjewl5OJVtOj2Md9
         VIh8TvJx4as6dglgGo3aLvvEs0pbB9JnxCLltZdWqijbMYORUT5Sxd83GsNLDVkR4eFZ
         YRJ1sRUHDc9e1n4/06taiP3e3Ji+Q6PvEIbo8u3tHa1DvzwUTBcCbNlfN2DlpWlOBp1X
         /KkmKoI1lAN1AOoNSaEiu/DzIiONmrKfRdWFJHgIbu6ULg98exlzWXD7VHvzc0hGomtR
         PIeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YJIsidRx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p9-v6si1755931qte.4.2018.11.01.19.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YJIsidRx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124175; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=fEqn8km8X2jpcN3hfcXtRu+0vVO9C6ryiAD8soZg5cbx5udvNYxRdrZiGnVLHU3KHS06FIKKBzhFfINPxq+EpGpdgxLmfQpjuaBZePk31VMhfWf6VDdqjLLOI8sA4aLavoLWu+lKWUX0QxZBNrL92qyK/em4kgtWEsezM5siZj4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124175; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=puJ3K2Nz+NlP5mwY4/m2oiQpvCjt6MU8qpbT22cZbFw=; 
	b=QJMvf05ahZU6DsDjOmfq/UJZ3yPBWetEDWFj01O5T0g7JOps/wDAWhi0kGPrQ+bXQeJomFGQjQWnVRd1kCGpNAIwS0XiXV/EfEEPqduWFtS2odU6RnjW3bmWfpBg66bpPj7eth8p50C03V7hmCHxRz0U2PErsBIYxGpEYPtKXUY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124175;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=745; bh=puJ3K2Nz+NlP5mwY4/m2oiQpvCjt6MU8qpbT22cZbFw=;
	b=YJIsidRxCXuEheF+fQEFRcdhB8pPpbOb/vVFZx0GmjNEj5Un2tJ+SmgRMlp55D7l
	7UCVGjhjtlpbu3dDvX9k4lJaYk0XcgqqKKOspyKHlTKnf2XnJmo2jdAnWQNorV1hgnD
	bH6Dm16NoWjKLQVVgvMGgXCvbeZKBcu+zQq8R3B4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541124174510730.6961080870211; Fri, 2 Nov 2018 03:02:54 +0100 (CET)
Date: Fri, 2 Nov 2018 02:02:53 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: greybus Change comparison to NULL
Message-ID: <b305b4321ae1a13c4a8a6391a8db0c8cce109226.1541123999.git.code@wizofe.uk>
References: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Rewrite the comparison to null shortened.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index d28773e06838..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (!id == NULL)
+	if (!id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.19.1



