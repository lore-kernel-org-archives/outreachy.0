X-GM-THRID: 6470825285154504704
X-Received: by 10.101.75.135 with SMTP id t7mr1247856pgq.48.1508006340385;
        Sat, 14 Oct 2017 11:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.39.70 with SMTP id n67ls1856283pgn.30.gmail; Sat, 14 Oct
 2017 11:38:59 -0700 (PDT)
X-Received: by 10.84.172.67 with SMTP id m61mr1296607plb.9.1508006339469;
        Sat, 14 Oct 2017 11:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508006339; cv=none;
        d=google.com; s=arc-20160816;
        b=VrPgr6oqF9z7YK3ocXVeRuDB0mKKbQTbuu3U94a/NDw3pyGU1Pc5eXPULZ3o8L63gl
         BG6Bvs9j4AN6q8KVN3M5XbDH8JmNcGsba+8F0lpytRbzzIg5Ye8rx8PZv4ViP0ADARpu
         Hfftr03ELLCEsOdsqkl2LkFaQ/8/UWmHdw0+BzzQKJvwz3GBxIaGzyH8M8Umu5YIIcvv
         +fbM9CHgltRBURcN/bzKvSTOFIucCwe4jYQME3Y0Yxa8w/Axj0Z9mYx7lnq8MLj3tKXw
         /ytorOOtjrLnmDuslrmtpUQVfUoszy/YkraVEvYMHuwOieiglJjhZrHuBtVfvn+Uheg3
         WpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ovSAkSBCe7LIfsL+haxWKviEWqujq5GYZO5j1bv3/iU=;
        b=q+KoU3EZUVSqcuSO1iQmOZTTIyJA7Ixd+RxVp7pykS2E5Ew2I09exGR5rtQDY897ov
         kB4Fyyafe6sOSvpBWUtt5RGquNM82LKcSdqH1SeR7k2H53dgW4RZEao0qwEy+GQglomP
         qbmroIyIElr9gQGI9Oz/s5zhGgcBgRDsWOLBut8jHCl5hFvoHu59delVx7Q6S9at1tL1
         A2+D2zQLPZpyub7jf8Jbth//2k43LBdZJQOBC1iauzsTGQIdkYIAkBKkLXr87XU5HzGO
         peT6dELtYb6Bw8O8Rulf6bfUS7EPO66dhnI6AKn+9i8m4zYZgHRIajZwdv8+XF742c9/
         Py/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c3xqqiho;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id l27si162480pfb.4.2017.10.14.11.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 11:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c3xqqiho;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n14so12794949pfh.8
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 11:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ovSAkSBCe7LIfsL+haxWKviEWqujq5GYZO5j1bv3/iU=;
        b=c3xqqihoHBaJIDg2I2Qtz05XT7qdUcegbJGR19fiZkqiFjW/Pn6vzwNk1OkyRJgjbh
         dU2xnE9IVagEqP0yR24V9BqmjGct0h2PJAnUI/vreK46dbW7056TvQjJ44eX7nle/ie3
         XR08vyBkNQ1kLj5LAjbZfQr8MBzm+XqgS976KanKyq1pl5L6ebjE1iZRDh8zAAZChGK9
         NDdVwWDZv5EJgH/uyFuPMyPf3ATJp9A7Fc/RIbdG++LI9DM+uDxTu3aZVB1TLCImeY4X
         OBkc86/uAXb5FaRtz1ZR7JzsEwbFAAqhOVqaYQWEh60Ovfrvj+SGHWiuFgeti9mxL18e
         xAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ovSAkSBCe7LIfsL+haxWKviEWqujq5GYZO5j1bv3/iU=;
        b=c15HevEbmVgcY6TWAKTiLhoyTCmobxLuNsKsH829YX4T5DzrLsExXd5CKGdpF+w8Qk
         OHkOmjci0L/SPaUNDuP3eJtKv9Xd2AX7sqKYvYp68/5l/DEFKfbX5hFT2eiHIn8QlMR3
         hNcD/TtdDNfXeOvS6H6oNCPxrXAp1RoQxF9nlz29n2ZzZkSq9oABcVcLl1XG1DAyS+Zy
         94OfUetGIx+fWZedb9QuaYCxklWUJVCBPptEQ3QTar6Ki2XIngMXNzn3vZBjEl8MczYw
         UodGEzJXUixDhsnvSjFSC1K/y7WNR6mYiT7myMI8IlhFkjHZA7Lys8XPQSPEeIEV3RSF
         PmRA==
X-Gm-Message-State: AMCzsaWwITXVGVs1XweABeC0ZIPv3Q+aURz1cPMWl+cNOShediyE4tEt
	9dV+8RxaaIKMBUBMJUf1z/Y=
X-Google-Smtp-Source: AOwi7QBoe723INOMj6RSBTMjTN+O4qLaVxbWhJ/d9Il8SmmkWJMfNR/OPvOCUbl/nADQk6Ey6Z20Qw==
X-Received: by 10.84.129.193 with SMTP id b59mr4709692plb.317.1508006339257;
        Sat, 14 Oct 2017 11:38:59 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id y127sm7001037pgb.60.2017.10.14.11.38.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 11:38:58 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v5] drm/i915: Replace *_reference/unreference() or *_ref/unref with _get/put()
Date: Sun, 15 Oct 2017 00:06:44 +0530
Message-Id: <20171014183644.21990-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace instances of drm_framebuffer_reference/unreference() with
*_get/put() suffixes and drm_dev_unref with *_put() suffix
because get/put is shorter and consistent with the
kernel use of *_get/put suffixes.
Done with following coccinelle semantic patch

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

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v5:
 -rebase drm_dev_put change on drm-tip
Changes in v4:
 -change one instance of *_put to *_get
Changes in v3:
 -Removed changes in selftests
Changes in v2:
 -Added cocinelle patch in log message
 -cc to all driver-specific mailing lists
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index bf467f30c99b..1223961c3700 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -645,7 +645,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 	struct drm_device *dev = pci_get_drvdata(pdev);
 
 	i915_driver_unload(dev);
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 }
 
 static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
-- 
2.11.0


