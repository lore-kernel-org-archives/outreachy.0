X-GM-THRID: 6468338986973659136
X-Received: by 10.159.59.237 with SMTP id y45mr5953051uah.38.1506027869908;
        Thu, 21 Sep 2017 14:04:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.98.3 with SMTP id w3ls1024683pgb.8.gmail; Thu, 21 Sep 2017
 14:04:28 -0700 (PDT)
X-Received: by 10.99.0.18 with SMTP id 18mr4347561pga.73.1506027868735;
        Thu, 21 Sep 2017 14:04:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506027868; cv=none;
        d=google.com; s=arc-20160816;
        b=gbJGIvkAIOcczHoug/jZbGgMOCrllI3678ficLhnRbhr6bqW9CJuF72MIa4w6L5T0z
         Rnj46Oe+Fo/vyS4aWn/90t5yJjUTBq1Tucz72hUL/le9eAhsVGq1Nphp2kuVtpEVm7c0
         taK9uEbJJ93C+7TZaYPcCZzD22d8006p4EQE7qYe4yxtl755z7p5puyu48Hnnpzgb1b/
         pwDssv/HKP8fwb7zGYZqp2Od5W92lfsCuHLFaf60/czeHDm0a7oKeh/ff6Q0Ij2skRkq
         odefCFuzVfsaE60rdE8rCEfyc+ya03a6E7TKm4xi4/RMHBdhk7g6EdC+aSUYXVc/guUB
         gdkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=OOHBr5T7/D2e8gSemnnCANU5s6jC5TaHG1Lk2abIYcoTHazx99QrqjQ3OYmN5HWpFQ
         FK3UyiwCgSmDOc+d/gASjr3TxZKS2tUoaZQuEswopuG6vMIsQBCWdHNW90Iw+/+GguDj
         AHT3NUDTPotKN3U7J1l4qTf/p3ry5pe+2qXE0UKG4g4InfnIJLzrW01mYHNaEAF6GRTn
         xtGG89qtLKoAbeDSKxCWGZVAGjRTWri3ujNdASdUs5cPUpNJSAP2fk8HpAlk2YVvdlWg
         dAKRq95D6R7mFUaxwbY8X7+38+WrnKTUDVm7ZsnRCjhE1ihu7rF29vdjnhATKbmVd/gb
         OX3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fevCpFes;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e2si242423pfm.12.2017.09.21.14.04.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 14:04:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fevCpFes;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so2932694pfk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 14:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=fevCpFesFH7OTWu+7HOWQwZK7w2ml2JY/cHRHaZjIvy1npCy4pmGBCOuDK52AHLwcZ
         ptSfgrO6eUeNpJFuTpLuokt6UhetMwHwT7Js+33vcQsg9J1xek+RdA+1m8QJUQHMsWHd
         KZYxCIG0Phtb6EohjpioxtfmQxcGhxfhuPO6srNOXGTYD6ekqgBg74ZzcdBbhUAbx181
         ofpRzMrcT7AVx/QA2HW62JeXvf+hzy1jLVFqytjnUrNBleoxY1Gg25z0Ur8H5Oqx7/LZ
         /NkuTzL9t3+2SuV98DIGpcy7Gs+1KM4l9qwqmrWPvNJnGReY86RbQNgPUgsqyOqnmecH
         mmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=nWxzPzNeOEw58O2FUipSqrwdM8DZpBrlX8zfgnk09AcRwfIO+wy8Efdt0bJop8Trwg
         eoFSxDhbYIiTxrYLlMQRfNUWmo8eEv1/h7cMq9rvkEYEmBIEhq16uKLnaYEanCVMPsfh
         0gEw42S6pfMi4+B4iPVZ3YIBwOsiqvHVCgJ77T/7HlYeE0s59Z5wkHp+kvsHRnqrTYg/
         t22Jx4BHngTlV7rkSvf5aYhNEeQSZOJ4rneXcR+zZ3BO6yHumhxKXxK/Au4Alb3eXqKA
         ygbFMf+rUrzVQWOZCXaDgbJBqyEHZNJ9UhnjyxB4MnYCSs52U0sYMyHh/nLDxIusvtU8
         ED+w==
X-Gm-Message-State: AHPjjUhtPCqh0dQNfuOPh4Y3csw99S6j+iRk/+sYTlu/k1uyMZ6clAns
	7sdPcrk0HqeccMR+g35h/scCTZQo
X-Google-Smtp-Source: AOwi7QDmb/9gH9PO7lzBZ+UBpEG4C1mG9B2p/dCMg+NngE/+55UJF6mgD6AnooVfEPZazPFC/EpuzA==
X-Received: by 10.84.216.87 with SMTP id f23mr6729720plj.307.1506027868108;
        Thu, 21 Sep 2017 14:04:28 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id z5sm4599007pfi.38.2017.09.21.14.04.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 14:04:27 -0700 (PDT)
Date: Thu, 21 Sep 2017 15:04:24 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	gregkh@linuxfoundation.org
Subject: [RESEND PATCH] drm: Remove obsolete "This is gross" comment
Message-ID: <20170921210424.GA21951@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove obsolete comment which was initially added in 2008 to annotate
that idr_find() was used before idr_remove() since idr_remove() didn't
use to return feedback. The comment now is irrelevant with
commit f6cd7daecff5 ("drm: Release driver references to handle before
making it available again").

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/drm_gem.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index c55f338..b9bddaa 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
 {
 	struct drm_gem_object *obj;
 
-	/* This is gross. The idr system doesn't let us try a delete and
-	 * return an error code.  It just spews if you fail at deleting.
-	 * So, we have to grab a lock around finding the object and then
-	 * doing the delete on it and dropping the refcount, or the user
-	 * could race us to double-decrement the refcount and cause a
-	 * use-after-free later.  Given the frequency of our handle lookups,
-	 * we may want to use ida for number allocation and a hash table
-	 * for the pointers, anyway.
-	 */
 	spin_lock(&filp->table_lock);
 
 	/* Check if we currently have a reference on the object */
-- 
2.7.4


