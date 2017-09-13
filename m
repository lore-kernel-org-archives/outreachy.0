X-GM-THRID: 6465205340686254080
X-Received: by 10.31.16.232 with SMTP id 101mr10651945vkq.25.1505298087134;
        Wed, 13 Sep 2017 03:21:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls2997050itf.17.gmail; Wed, 13 Sep
 2017 03:21:26 -0700 (PDT)
X-Received: by 10.129.153.207 with SMTP id q198mr11587227ywg.193.1505298086281;
        Wed, 13 Sep 2017 03:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505298086; cv=none;
        d=google.com; s=arc-20160816;
        b=RFqDCnP503QIdw7Z0JeQMJh369ffBqwBAeyWbJAvygae5rWtDwyoyrn0Mj+TAj1AWU
         c3ZBJ/dKIW+zrDYOEBN5ux8g6ToGjgiZ6/e2GJ5oU3IYg90yAUeYvspNTDo5yi5j5hfW
         Lqbf6nGOabQVHYsPBVPTzwN5owHsmCL57vptODd2vj+OxR791DjFyQwx4YnEX9UQbJX7
         1AkL129EizjTYoXiUupYNL7Op4hM/MFx4TYgGgtvcNUK0/Kd44rQTgUuoLJdqV04qnSF
         S1b17PBskvdnv5kcj3eupiVwddmo4HI1/og7qRlQBvq5FuJ/S0h3fct5UhhretTUu600
         6f0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=q45W8uPH/GISQWVnsvHC42eiaskYyA2tyMOgdvuCs7qMpsiVCY0NBFpOHjop67l7Ob
         f4xrwcLgofiTYnczsLaDPDqtReat3CYqTrX3ejwvVz/YYVUJVX3j+QyvvESB3eAZ7JCy
         dFcfgx/aV5EriqWSppx8Onx/poXOq2Ei4eI+1aaV8dDRIdRNCGUb/FQ5cN+ctA/SQsVt
         wc7W7m8NuEM7Ef6MQBG8++smc0BWQrgx2YzfyA4RisvRmeBJi3xBs/01cnz/rWKfgtfA
         hvTRIKybBBaOTgriXJe/arX5NTMimDKxh1Ypf4ct4j6jkn9kwhAVqZ3QXzmoxCDMhytm
         ufJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SWxIE/0d;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g27si28922pfa.2.2017.09.13.03.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SWxIE/0d;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so7453017pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 03:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=SWxIE/0daYpRVz9BSAW/F+9Eh0hRI6GeHGvncqJ9B+yxLXwx68PKH+Br07ff+WxAFk
         q+VVe43mL7D5sL1taJUP6NB0MNM1Yy4HtNj7x1W6R8NJ5t7rTNADXJ5LP9DXJiXmxzDg
         JM/ar+ZEjMutdQnWkU0b5e3+g7XB3G2jnxuse+pjRAKtkUCsU0w0GJnocnTBHYrRI0mB
         /6IepPyGRUshZMKliO/QOBt7Jsj/+ktuOLp9IfuMzPaJ2eSzb1zf2fiEEVjuAaGV+3pN
         qsdXTwrPqW0EFRPPrZK15omHtWrm3iZIGfJba+lIBYYncBLJPV86Cf39/zZDa8JjlKOQ
         JoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=Wd7/QgBEuh8y6By1XtUy0+RubWAxrUy5O0g/aH8xbtPv4qBPerIKa/adh4V96DroHX
         A/yK5zYfXAQWB7+6hYrC8bolXtODk1wU8F8WFNqUygNRUgj9BA0sfEy56ztvfk3jO1re
         gq8MIC7ndfCh4qOKKrpD98ne2tCsJTjDTUwtzhK5EKNU+obfpEqbYUBlcPZwsAbw/PGe
         tEw0vWzGJn65em6yEJHV4sjrNHt4UZi7K9uAdqZm6oFooJZdz7tOmlWybaDM7GOdQ1i6
         JeTRGmEfmbkWOfcSvoO+k+BWsyBAIBT0XFPZrJ5RpYTc9s1IiEegxg4+jLI39TnQ57+C
         XdyQ==
X-Gm-Message-State: AHPjjUg3+/PeAjfY/rIMCUbFXMhPwRmo2QIzoMiUJkerSwpLbv3oTnf2
	AjL3Vu6f5Kzns8yo9mE=
X-Google-Smtp-Source: ADKCNb7GKz6w3qhr2UW9+DWSOcajVJ2mRUSpVxtTiBOjPWULhkq/KyxTmlTrP+zBt7NWPNm2itVBgw==
X-Received: by 10.101.91.66 with SMTP id y2mr18004031pgr.235.1505298086037;
        Wed, 13 Sep 2017 03:21:26 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id p85sm8457584pfj.47.2017.09.13.03.21.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:21:25 -0700 (PDT)
Date: Wed, 13 Sep 2017 15:51:19 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] GPU: DRM: Moved EXPORT_SYMBOL so that it immediately
 followed its function
Message-ID: <2f47dda3c36c008a108768d7142684c372f0980f.1505296813.git.meghana.madhyastha@gmail.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

EXPORT_SYMBOL(foo) should immediately follow its function/variable.
This coding style is preferred.
Found by checkpath.pl.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index c899534..928248e 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -70,7 +70,6 @@ int drm_agp_info(struct drm_device *dev, struct drm_agp_info *info)
 
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_info);
 
 int drm_agp_info_ioctl(struct drm_device *dev, void *data,
@@ -106,7 +105,6 @@ int drm_agp_acquire(struct drm_device * dev)
 	dev->agp->acquired = 1;
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_acquire);
 
 /**
@@ -171,7 +169,6 @@ int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
 	dev->agp->enabled = 1;
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_enable);
 
 int drm_agp_enable_ioctl(struct drm_device *dev, void *data,
@@ -373,7 +370,6 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
 EXPORT_SYMBOL(drm_agp_free);
 
 
-
 int drm_agp_free_ioctl(struct drm_device *dev, void *data,
 		       struct drm_file *file_priv)
 {
-- 
2.7.4


