X-GM-THRID: 6471910913633943552
X-Received: by 10.98.100.200 with SMTP id y191mr1090004pfb.25.1506936681619;
        Mon, 02 Oct 2017 02:31:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.70 with SMTP id a67ls2855734pgc.20.gmail; Mon, 02 Oct
 2017 02:31:20 -0700 (PDT)
X-Received: by 10.99.43.204 with SMTP id r195mr1302027pgr.162.1506936680596;
        Mon, 02 Oct 2017 02:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506936680; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3Tw+xu3iL6stiPeZ6EYfPdHmGfFrjbH1CMLJHALij63kAXwPWmGdYqRlBqobgsX/o
         bU0/IamA509OQ/rjCJPSmA/CVSMVDJTShl0l88MzbG4POdlSqaGsJX46tEY0pwlCPhrg
         Sr7JEEvU8axv+PlnXt/tFEdV5dyTHaQYiT6qjxZG6tOPzqyZecGUOopnQEZFvj+r2DpX
         L/C3MdS0Exxw6UKlNlZCz5odF5zPWZFDcriLOSVyDdj0TuciKFcl+XEJa47676L8qBPQ
         2fDXcWYFTpmyGiuK8cg4XYYAyIRFTojpLMZ5pB860Ln8gqYwGHheGRrRa4OZbWXLRLwW
         CqLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=ktQhIyqjGETHkT36/gsKgAoIInEo/7DebcJNwLmLlhQ=;
        b=kRwJwS/JIzxhgJQ/pz1CXZny2+4mZXXiaiSu8vm9/KEQ3/FlK+BGoSuXJ+rF2mUNfl
         MMt1CvrmAbRUDhOseiH1Lg0VFwoihRSEJGOIh9EX//SWpzrwdV2rrAvWstjyB+x1eRrm
         y+ENyNoO78PdL7HpPzVrxHcHsl1fxzqrm3KH3ULyrPLB6S/7tYGn+RglT0ORu4IJa4oy
         8KC3AqLguSuGIJmJLqTmKmCxRUS1AV/HIj6NaewrRsrWtlBNzG6wv14EDQ9xxwydrE4y
         SNhO04OWkZeCDwJ2AR5uFRgUsrO6IcyGyp5m02YnvZ0o+qGiqufAxOOxU6Gp+RNR0rbK
         rRSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbz17/RZ;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id t77si999226pfi.13.2017.10.02.02.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbz17/RZ;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so5179194pfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 02:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ktQhIyqjGETHkT36/gsKgAoIInEo/7DebcJNwLmLlhQ=;
        b=kbz17/RZ+JB5SQDcH0FYK3+dh1zE+5GcItGtC7W3JeNMKXFv4qaJ4ZK6CkwR5xnoOP
         ZWW+4VMKUHL5xkKsL+Jkim+bH796IzIci5AARdY2P2hSYORhUwcyg62AzfLwbSh3MhQz
         vFeH/9uTR8sOw+83cNDAWEmTfSFysZLui9QhdDH4DFKXTKMnrIFhcnfhLwKcTHsehhKl
         77p2YDSUgNHvnq6ayvZx32Scndr00h/IipuCUNJspdWSKAM8knRnADP3ionD5K5dD222
         j4rwpcy2coTkuTgnF67ekaf/0rvp4mOxiCL8RG8EYmIJ5ZyVm3/fZtIgnYskXuRme1Gp
         vo4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ktQhIyqjGETHkT36/gsKgAoIInEo/7DebcJNwLmLlhQ=;
        b=NNClMlQ05slbnVb29unHjzET1TW3ClIdBI2J8iKxz2DoQK0zU+IAoJYSFC+IXUOOLq
         rTzwtBTWj2OkuMube13hdRImU1zeQMw42bi6yGd2k+iOJdGTirLTtb2qJd4Z3fLpzqkj
         jhqW43n95xfBSmz3+vYsP4ygtcLvKy3Cu1c0pJpGVqQEGo+jIZ216gkhz32rNtVfmRax
         /sryJ2BI6kFnjkyejUHI0Coo+qb0IGe8uX6AU16Ft9wn9DF/dnF2bLzNn7wiLkV9bbkq
         mDg3IWT1mQV+quc6JUxvMX2MNoFTQsmO34X1IQdwqMfnZnfv7twPKTz3KhZznMs1x0tu
         3cuA==
X-Gm-Message-State: AHPjjUgzrK//hxQDfsixGfMjWfcB56DswM4LOMvBJ7RMcIhfZ2dbQj9m
	HFM+my6N7TycWEcE2WIzewEPMESt
X-Google-Smtp-Source: AOwi7QBQ4m53i17GhKeia8EfGFBGsMioVHKQeN8JjiwFxIIFcjoWzZaa+N5gBAp0LUzXDlF5RTUTjA==
X-Received: by 10.84.132.66 with SMTP id 60mr13690417ple.158.1506936680218;
        Mon, 02 Oct 2017 02:31:20 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id s17sm15186445pgq.25.2017.10.02.02.31.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:31:19 -0700 (PDT)
Date: Mon, 2 Oct 2017 15:01:14 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: teddy.wang@siliconmotion.com
Subject: [PATCH 1/2] Staging: sm750fb: remove typedef for enum in
 ddk750_power.{c,h}
Message-ID: <bd0822409f62ffb92bd3ad8e5fc31d6ff1c8f362.1506936290.git.keerthigd4990@gmail.com>
References: <cover.1506936290.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506936290.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef will hide that 'DPMS_t' is enum. Removing this
will make sure that we are actually working with enum. Also it is
not a good coding style to use typedef

In this commit remove typedef and lowercaser the name 'DPMS_t'. And
also drop '_t' which traditionally means typedef.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c | 2 +-
 drivers/staging/sm750fb/ddk750_power.h | 7 +++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 222ae1a..6f82ab0 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -2,7 +2,7 @@
 #include "ddk750_reg.h"
 #include "ddk750_power.h"
 
-void ddk750_set_dpms(DPMS_t state)
+void ddk750_set_dpms(enum dpms state)
 {
 	unsigned int value;
 
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 44c4fc5..033889f 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -1,20 +1,19 @@
 #ifndef DDK750_POWER_H__
 #define DDK750_POWER_H__
 
-typedef enum _DPMS_t {
+enum dpms {
 	crtDPMS_ON = 0x0,
 	crtDPMS_STANDBY = 0x1,
 	crtDPMS_SUSPEND = 0x2,
 	crtDPMS_OFF = 0x3,
-}
-DPMS_t;
+};
 
 #define setDAC(off) {							\
 	poke32(MISC_CTRL,						\
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
 
-void ddk750_set_dpms(DPMS_t state);
+void ddk750_set_dpms(enum dpms state);
 void sm750_set_power_mode(unsigned int powerMode);
 void sm750_set_current_gate(unsigned int gate);
 
-- 
2.7.4


