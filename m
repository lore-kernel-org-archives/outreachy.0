X-GM-THRID: 6468320417923727360
X-Received: by 10.98.59.207 with SMTP id w76mr5396184pfj.40.1506413805097;
        Tue, 26 Sep 2017 01:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.3.204 with SMTP id 195ls3631306pgd.14.gmail; Tue, 26 Sep
 2017 01:16:44 -0700 (PDT)
X-Received: by 10.84.169.65 with SMTP id g59mr5544069plb.30.1506413804068;
        Tue, 26 Sep 2017 01:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506413804; cv=none;
        d=google.com; s=arc-20160816;
        b=GyvoPCEgb5HsQCHEJtaeDM0sWvBaBaYG6GCn/Wq5tm6pKPTOCW3/Hm1CQH3Tk7+uJ8
         Air/Flnolp+Frmi0KjkzO3GFh5cS6Vl4Q/trlpslyWe+sd8pEaZXu5+d4v8Se1BFTmiM
         fehM+bf/zF4LuEw0wHehK+/j9nkWYlwRd01F7J8XbZ38gc6fVR81gCcNdLnAbtQpMKVp
         8VedeEZ1ySq4/eZ72LmlcGQQU2TmofIPfbTQDfgmVptg149xsKAnC7s73WJ/vcOQIFfB
         O9cVhOGjL9T/HvB0th30h12U3tMC//B1vYCwMqdg392mQXc3q4/tnhHYkyOoAaXIYzTp
         AxzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=qwdMlks8uUHFMezBoMKMOmZpsSG56urdmim6TW+dDbk=;
        b=eCqdZRupKmkAPD/hX/gLScd85JcSPD1AiV8P1WIxCOVPmr3+fZQeEW29Z23Hdkzfmb
         rbL5eLGbw6W9yeUAC8bdLJUBz5WMbzffv66lAGSLuMa5wMk9W+hVQOhM4v0/Jz95X8WG
         a6yVsVy5exlRAOwDe51EdaUJKV/G5c2JRypg74cj/oU0Hz67bU44Lc/0GAjOZBtGA2qp
         pvJUObuuuihOBFTdusQrsZL5XzbjdzX5EzzSOHXxsjxPy1ogSVh2SvbwoVm1dU9ihz17
         3AnSoeprq5RhkJcUVDhvOmsjYj+KtXBgY6MsdTn73wGUmr80SplXgTGPXWSATvvhoLJO
         2iTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZAagwei;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by gmr-mx.google.com with ESMTPS id n124si406652ywn.34.2017.09.26.01.16.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MZAagwei;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x229.google.com with SMTP id x15so2153050itb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qwdMlks8uUHFMezBoMKMOmZpsSG56urdmim6TW+dDbk=;
        b=MZAagweivhB0M4HY7U7XOuj70nGZ5Ubpu4suLM53mwrwEhxeYHsM5cGboTdn+DQTkc
         EX8rULr7cW4wtWHAVM2Z7KUbpScAw7ii6CdOL97Wv0MSgTHRuIgfIcvFKDbjPkqhd2wr
         8GU59NEOSI2HqPR67jbAD8V9N+DSqEQUwkkT9x/ZXkSDc48LwNFtHn5U7da3jqfr4cNZ
         sAmEE2s5USqVU7bbhdxyWuduEVBzw1aCws66fGavUxi+4kEytSGahQZFbKBOgiXzrqTA
         yk0Qwf458vSVE9g7pSAV3MSEzEsmAOgV+xhBrYzSyZKRgbZ6uevIM64Nqr1Kps7wRn6T
         mnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qwdMlks8uUHFMezBoMKMOmZpsSG56urdmim6TW+dDbk=;
        b=kgYWHHWtbAYVM80U29RyPPuuBw+T5hxIgKI6z/hEmgz6GgmofysRkk7ZAjXbl2R5I4
         cmWsfq0DwYRqpUirOAAz+QEk5Avw9GGBtvPuSnGgzMaPjO9loxsadjc3ClMVs3+oRmDl
         OzbAXGK8UWZ5zvnm/G/w6vEjsfL5jsXrhJZcQk0uzbknXEIyL+XEjNdMd0NJMcuDTodl
         XQsvD282Vfffn+BKdMZxVToAyAMNWsN9u5J2yuJIxpHgcl55LBxwe3o2Fm89ecxc3CBK
         8fSFyzGdzfLHBY6mU8hQTpNfZ2MwltGEm78eAqWXEv8QiBSoNXMZVCjLIX6EZJMuEMRN
         H5xg==
X-Gm-Message-State: AHPjjUirkhKMe0i0h19hvh0+22XhRgqUMOKIKmBB0NvsxFxRNSr3wSsN
	mIBuGEGorg5UPIH+xFqJ1F0=
X-Google-Smtp-Source: AOwi7QAO2Qp8pP1mj2AdtUMdgn/mvYjNQjCanP2GvypN6jpsL0v0013KT4zpZDbO7DtBaSYFDZ7+Dw==
X-Received: by 10.36.166.1 with SMTP id q1mr4634395ite.33.1506413803729;
        Tue, 26 Sep 2017 01:16:43 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id g196sm65244ita.4.2017.09.26.01.16.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:16:43 -0700 (PDT)
Date: Tue, 26 Sep 2017 13:46:28 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
	David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] drm/tilcdc: replace reference/unreference with get/put
Message-ID: <cover.1506413698.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces drm_dev_get() and drm_dev_put() functions that are
intented to be replacements for drm_dev_{ref/unref}.

Then all usages of ref/reference and unref/unreference suffixes are replaced by
get/put reference count functions in tilcdc. The following cocci script was used
to make the tilcdc patch:

@@
expression ex;
@@

(
-drm_framebuffer_unreference(ex);
+drm_framebuffer_put(ex);
|
-drm_dev_unref(ex);
+drm_dev_put(ex);
|
-drm_framebuffer_reference(ex);
+drm_framebuffer_get(ex);
)

Changes in v2
- Drop drm_dev_ref after replacing all its usages
- Update the drm subsystem wide cocci script drm-get-put with the new helper for
  drm_dev_unref to drm_dev_get conversion

Aishwarya Pant (2):
  drm: introduce drm_dev_{get/put} functions
  drm/tilcdc: replace reference/unreference() with get/put

 drivers/gpu/drm/drm_drv.c                | 51 ++++++++++++++++++++------------
 drivers/gpu/drm/drm_prime.c              |  2 +-
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c     |  6 ++--
 drivers/gpu/drm/tilcdc/tilcdc_drv.c      |  2 +-
 include/drm/drm_drv.h                    |  5 ++--
 scripts/coccinelle/api/drm-get-put.cocci |  5 ++++
 6 files changed, 45 insertions(+), 26 deletions(-)

-- 
2.7.4


