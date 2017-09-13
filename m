X-GM-THRID: 6465296878768488448
X-Received: by 10.84.134.35 with SMTP id 32mr6933597plg.35.1505319233938;
        Wed, 13 Sep 2017 09:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.145 with SMTP id e17ls3279211ioj.42.gmail; Wed, 13 Sep
 2017 09:13:53 -0700 (PDT)
X-Received: by 10.99.3.77 with SMTP id 74mr11640900pgd.42.1505319233077;
        Wed, 13 Sep 2017 09:13:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505319233; cv=none;
        d=google.com; s=arc-20160816;
        b=PRIrkz4MjUZOdCwAFYuV3t+elzUrpFzO8Aewo9S8vujlmnYeY6Ru4f0kjzf+56PwUD
         esPCzsa75qZp+vhABIKnww0Wn+zF6evH1t+/ZsW/PbXX4R8ERK4iiFKryBh8b9XW4uBl
         pETc1NZMPLmCW9KUJHaoHYEEapRZnaUWg7Ihl4vq7DDPoQ9l4yEz/fZ3eQT/5Uvxh6Nh
         7lUgk5KTVf9Vf89f6TrWdIvtk0N4ymRf43M4ovv4IxwTgLdPjrEvIhVnRGJB/St0whEd
         7XPoVVFfRxAXTVqlE0vckgw/FKPtGeTtlDIqm8HkF7YPMCM+sSHq5U6tPuAKltCShzrG
         c4kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=iirUY+QLWow8vIGzE0HGt7QJeOGvR0Z+2hfHdW3vBtm9AVEJ8b0IqCJ7SexyhCnlVz
         I1UG5pJnaOLQupfJtkEOXOLftm4i7QJcJF2Q0zRJw+BCvtFKYM1YPWZgZ9VSIPWrhi10
         jgND8YFeqKw+lKC4wZ9ih7XKtKu3kBpb4f4Xkj8mJ+82Opf3wYbfrHG6SgBhlWpbygRE
         h6MQhUmbtPDpLFYJAoyhTltw2BHufMdl8xUy7aP4d4/qasuY6P/aKbJQOJ8Uek2/3UtH
         mEnubXbXMUj213rMGzFvJVGjy15NlX9yFcl72huP4JT+PCRMqYvwQiywaQqH07SLJEqE
         TqCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEXbjIzZ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q15si1229116pfi.7.2017.09.13.09.13.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:13:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fEXbjIzZ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h4so276439pfk.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 09:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=fEXbjIzZgktPeocsN7eF+pUt+AKmmvgVVXJ7ajPz+XezxTSyyOeKdukGUBy9UM2yRh
         0FxHaVQPm8A8PXFrKVr/9o71fOByi0lD3PBRVioiA+MLy9avTOieOolhnZGG4zcJGWgL
         8Svmg2CQ8K+CjN+TU5ZbC1HhKa7VbiIlRS7+6vNfAYsY0m5AN0xjUULJm9WJezvTz2Ek
         +hSiuvB4AouM12bux/CD9Q5pL2PXEspotV2QJpsC0SH3yHdOa3XOHQ0OeaQy86YUPP1g
         9h+l39d1J4Rsl4dFSmrXqscRk81rxY010axyR0hEk3nhff2Fw5BpSwVEPR8SOzsJazPd
         qtkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2Y/Wyx1IuvkjZrAPzGT0rrQaiDUyWVvd8yg3SpXpUMo=;
        b=oyESxFjwIqtrK0oLTT7u369N4XdYI1GDpHXDcUfrtjiPj0hfzJmcvOOP/egIc/Ccp/
         p87luzpyXNhbnbaVplEBaqexjUoYAyuxy2T6UnRNVQlSzZn6dibWNP+clHARfJbLUd3G
         GpZeAK5OdqPmpUObw6Vp7y9b4ogPSoXzN3AyyNbJZNZKxRsKsagy1TTq06XvXRWrd3FH
         eCsUNuJRMKSlunn5CjYe235hpRdhSZzaRYhEVuNpdqOzL93FaxwSjBjspxChiwOSwz2T
         eUcfwW2NqNs3q6mlhs3AZbvI3GmD6YtDqAIhn5m6ee/9uovRErGBdS/Kit7aqHACjGeA
         HN2g==
X-Gm-Message-State: AHPjjUgvgutWw15iP/7DLbink5tCWXXtHdjf7kdbMaqzv2beJX1vKOwT
	F8OYQOCTh93WzQdz8uY=
X-Google-Smtp-Source: ADKCNb4n7QNckL903/ZTFOyYhLelrV5WGxo+l0HKuxMsSfNDoIggTbbwSvrmvsrl1+IFZ6ny0YEpJw==
X-Received: by 10.84.240.196 with SMTP id l4mr15878264plt.445.1505319232508;
        Wed, 13 Sep 2017 09:13:52 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id s81sm29362858pfg.162.2017.09.13.09.13.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:13:51 -0700 (PDT)
Date: Wed, 13 Sep 2017 21:43:45 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm: Move EXPORT_SYMBOL so that it immediately
 follows its function
Message-ID: <20170913161340.GA3204@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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


