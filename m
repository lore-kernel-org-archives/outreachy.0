X-GM-THRID: 6465542343215808512
X-Received: by 10.200.28.82 with SMTP id j18mr9633193qtk.42.1505376799683;
        Thu, 14 Sep 2017 01:13:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.75 with SMTP id b72ls4511374iti.21.canary-gmail; Thu,
 14 Sep 2017 01:13:19 -0700 (PDT)
X-Received: by 10.13.220.71 with SMTP id f68mr13178404ywe.35.1505376799084;
        Thu, 14 Sep 2017 01:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505376799; cv=none;
        d=google.com; s=arc-20160816;
        b=TD7SrOo97w+UQF8mzCxcKOMbfKinzxbvbvKdgcndbPdjAyjIZQBgqN8bIH45pd0Beg
         6PzSZ3Qm9dm7gxMZL8jR8Q7QwZ8WYmOekGaJ37VVibowkK57ALn7IiEw61JgYuMUSDBN
         aGQxHYHDIdwt7divPEOZH3lzkt0KLGAIoDNmdTIpeDswR8yLQogjMuwFJ6lw4IbqNbMd
         DeXqeNpdw2IdyGTgGWzzcIK0jNRMp04+jZaJh9aBbc1r00e25HqZHBMl14F0INVhrXHR
         TtJRhbvGBt4nuwMOq++JHdion6IeFBHUVPuBvtp8Ge0gwld5hY4yhGmhWkXmIkXjFR6K
         HpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=TbxFXP28Gn3069Dg0xutp6Kwoh1JOgSvgxyVpZIJDj8=;
        b=W/2dueoKco0AKtUAEUF0mu4Z2WinJZ7a9IJ+B1Rm9YrqHKNIVvDMupcMT3vPoTDpPs
         bme3h9IXvn2PW9r4adfrrMnsa05mKyDCyfytSGoEITWwAGfso7iskE8WN+4nVQ/IZJ0Y
         OzEE8LpSOKo80qBRyUXlkabL0b77wMZVZRx4UmSZwkzAs0os9fqvh4lnFNqKKtTgRJCX
         Hut4eahZoS0SWupRTjEulO9byoljcVkWzCGcYm0fVMwelDHblXR7SprFBjmT10iwYZSN
         kTpD9l0py27jxI2VHq8b3CLIDdAcJd0RW5A7esFZDLk1P+TNEdnGqFjzIroFJiT3jFqc
         JoWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HSzD4fnN;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c19si1614690pfk.9.2017.09.14.01.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HSzD4fnN;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so1337856pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TbxFXP28Gn3069Dg0xutp6Kwoh1JOgSvgxyVpZIJDj8=;
        b=HSzD4fnNIipai/U7fX8l5tZbah7s1xRtdQlKxr5DVUhMFrLwuPhj8a1HGuSlUR5Wd6
         d052mea3V3uLue330PAgU+3Z1brcXNpAycvkaIRRlbeuqBiZimuR3NYR9pQ6Y3YfwBg+
         MBgsc6HYqi0Efb2696cLKfTUZtjr12m435OylQHVOO6ZKjDJiQmjBW6/wSyqycxNuUwV
         qMXoZE6hBLhpsB3WRWRceZ9Y5SQaVmhmyqmkhr84XejHJgmFiT0gljunBeDaldBOZWuS
         wYS87NjkEu1wpkKzLPFYYzRDkM6VBGxttG6G5Iuf9U232qXSQLFNmg8W9Bdv0ZSdYFYH
         C1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TbxFXP28Gn3069Dg0xutp6Kwoh1JOgSvgxyVpZIJDj8=;
        b=Xz4nW5igz6ZBaqF4OA9FQU6kg1Ui3ISnJf5acj3v2h6DhNmzOD1m9ZcOrzhiokQ2hr
         pONta2Tc1CynrJNi8823SVkOWUYzg/n02+n+QWn4HICd31/XMRO/P5IFtM+9GLzXIsWh
         qskNgZGxfzaDEqA/G6MdMKnkXqSYnTv0EY78kZKQrj0JslAz+yevF1ltxTlj8L9FKnEr
         4CQp+RaOb8Mt95nMPoyruWBF6QnH6zok4/7Hg39nXRx4FdGaTYStgt/kvrktZ/ag43tC
         dsE+m6CaYXu6B4+ezwZgxQFi/Z2qeAwAAcfpw1sFR5FwmYOioPZf8izgpfXzW8eiR/cI
         NSeg==
X-Gm-Message-State: AHPjjUg0Y5qnBq7tboDL1TeOMC4EAA2OSpGvibZ/bL3VLS92Ew7V+UJJ
	mWMVBu0ab/BDF/kxKLs=
X-Google-Smtp-Source: ADKCNb5kO8WemiLsZ8WigQyR9sAUk0f6eMp987UhluwWVW3GcVOF0CTz1nNfgfEwGZOoYo1LZQCZUg==
X-Received: by 10.84.129.226 with SMTP id b89mr22636976plb.6.1505376798451;
        Thu, 14 Sep 2017 01:13:18 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id q67sm7895536pfg.160.2017.09.14.01.13.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:13:17 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:43:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 3/4] drm/agpsupport: Move EXPORT_SYMBOL so that it
 immediately follows its function
Message-ID: <0496f0e821082969ec7950ac35f1e6b6cedb22a6.1505376068.git.meghana.madhyastha@gmail.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

EXPORT_SYMBOL(foo) should immediately follow its function/variable.
This coding style is preferred.
Found by checkpath.pl.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
 -Split this commit into two commits and made another commit for
  removing the extra blank line not part of the EXPORT_SYMBOL
  warning

 drivers/gpu/drm/drm_agpsupport.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 860d57a..a0510557 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -70,7 +70,6 @@ int drm_agp_info(struct drm_device *dev, struct drm_agp_info *info)
 
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_info);
 
 int drm_agp_info_ioctl(struct drm_device *dev, void *data,
@@ -107,7 +106,6 @@ int drm_agp_acquire(struct drm_device *dev)
 	dev->agp->acquired = 1;
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_acquire);
 
 /**
@@ -172,7 +170,6 @@ int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
 	dev->agp->enabled = 1;
 	return 0;
 }
-
 EXPORT_SYMBOL(drm_agp_enable);
 
 int drm_agp_enable_ioctl(struct drm_device *dev, void *data,
-- 
2.7.4


