X-GM-THRID: 6954041305879019520
X-Received: by 2002:a19:e0a:: with SMTP id 10mr16787612lfo.505.1619520910256;
        Tue, 27 Apr 2021 03:55:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls3502181lff.0.gmail; Tue, 27 Apr
 2021 03:55:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFEOT6Rxo+pFuwoV53S49MXXYdXBZsMiuKKgMaVXBYptTEwZdwc+LDJd2Z/+CwjzOFjd3B
X-Received: by 2002:ac2:5f1b:: with SMTP id 27mr16054076lfq.425.1619520908534;
        Tue, 27 Apr 2021 03:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619520908; cv=none;
        d=google.com; s=arc-20160816;
        b=jwbVDhzBXBQvcRPo0LuXmOyxH4yxuNzBvIAp3xpl4QE3LuhYJZ+zLY51XisNO0wtcM
         KkzKCNr1AhVQs7j2/F9+qh7CdyhRZozDMZvF4O7VaLUp9N7ZZ1LEKWYBdFqDYOFmO2Vw
         o0azgHyfWLfBydNrxu7AVUE8MP1d9P83942FByE0dFlACL1TZQKeDsjk/y5thH9SEhph
         j++iBqVvYpahRTMTn4ltbGFSXPufuELWTCJN044Ex/YPizvaAayBjQy/3kJzUHXMzPq4
         dDiUUlv1fay8tqXmAONfjMrZEQQExAthqLdieC6U8rQnY4MUWNLzVmHswHOhw3J8tNNl
         VqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zivnrpMt9grXcc00hfPDRekMzfRQWCib77IYIuxpMgs=;
        b=PuV68xrw7FPJ3fPdxcC7nl5TDUTc0B54tjGilbjiH8r42KUJeE1oExlFimIL1frcOr
         K6HvdX4oyfCcwV+0B0U1ml0LiiXESC9XsxphjpjOVvdGase6IVuQRgGO7QpcdRfBbgJ+
         jAuPkmyXY+CfC70vvheI77Uy4Z1lfwSTaraYRr4iDZQUo+uGGua1Ug9xzwSuAtlexXOz
         XfYfESfYH7vH5gHSaQ7c9ogzLMhBjOWh/y50yMW1pYbiJdZoNzX1e73lZLaarKmxeT4x
         8JbeS1LwLWxt6XeaDvUyodBPxyFH6rkXlVen1JnMK76aTD0mpSxUGDNGYwD4QR6Qqvzo
         WJQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzfpJC7q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id c11si1320318lfh.4.2021.04.27.03.55.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 03:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzfpJC7q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id g10so1438884edb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 03:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zivnrpMt9grXcc00hfPDRekMzfRQWCib77IYIuxpMgs=;
        b=tzfpJC7qfP9xk2oGPQn9+ykcs0cb85xMTdHgEtnpM15L3kcRl8q6lNv/UZfe7dFoDU
         6roq0fwm3dECIAL6HHYIuDYVYuDSXwDDyxPlCZNs0MO0HDdt/iOhOVC4uvAVDsMZ1/6P
         Jxq4rjxWr1qXcqrd7IqOZEfiOKQ7CFlMfIfzGwcDnnywaby3+v0+YImqUDvShgJCw9PF
         DVKsEzVacXSThdRAe+WsfHKFEADgb4qGsUsRndVQtZrBE1IUVziAOwHX3utz6MCXrYvw
         FQysBN8AfTeqpgo3qRqVJOsbin2spCxfpv9uLak+Av5KHV7nIydoUOgiVgvM6YchJCnV
         CjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zivnrpMt9grXcc00hfPDRekMzfRQWCib77IYIuxpMgs=;
        b=Q+4Un56nIb1gXpXeNqnoEw+9Zrhomedy4IxbJG01cmqO4AK5Tl3XbfBzBFm7J+NnOm
         bVRhindU0kKxu3xcKjGE+iwaNrbbJr/fRrUP8KRV1WhWM6DGjxz1+Nc0IBDPEi67zY2H
         DPUX4DkAIg7rzr7fT7TBwymbzghp1VXjORKSK0JI7EQEXNVBdcquRez25lOUZbz60Yc1
         n+PnrTuThPaZ9GtYNyBUC63BrOfOJDuNRrZPgesYq93aWQo6FPQL/hSC/j1itJhNxYxK
         AZSgBjxP6iO9dDV+omFln/wfgC32EP0dQPXzkubLMpG1fqK7NCMz4TNsjiNXjpV4430z
         4tEg==
X-Gm-Message-State: AOAM533iQ2onVMLtjx90PkeLNm72U4DTY0IfR1XaLK3p6g944dI298El
	yqVSCR8AntOoe8QZV7dWiWn/TxezCNfEFijQ
X-Received: by 2002:a05:6402:2211:: with SMTP id cq17mr3524225edb.28.1619520907873;
        Tue, 27 Apr 2021 03:55:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id m9sm962625ejj.53.2021.04.27.03.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 03:55:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3] drm/drm_file.c: Define drm_send_event_helper() as 'static'
Date: Tue, 27 Apr 2021 12:55:03 +0200
Message-Id: <20210427105503.10765-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drm_send_event_helper() has not prototype, it has internal linkage and
therefore it should be defined with storage class 'static'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: Removed all the other lines in function comment.
Changes from v1: As suggested by Daniel Vetter, removed unnecessary
kernel-doc comments.

 drivers/gpu/drm/drm_file.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 7efbccffc2ea..d4f0bac6f8f8 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -774,19 +774,7 @@ void drm_event_cancel_free(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_event_cancel_free);
 
-/**
- * drm_send_event_helper - send DRM event to file descriptor
- * @dev: DRM device
- * @e: DRM event to deliver
- * @timestamp: timestamp to set for the fence event in kernel's CLOCK_MONOTONIC
- * time domain
- *
- * This helper function sends the event @e, initialized with
- * drm_event_reserve_init(), to its associated userspace DRM file.
- * The timestamp variant of dma_fence_signal is used when the caller
- * sends a valid timestamp.
- */
-void drm_send_event_helper(struct drm_device *dev,
+static void drm_send_event_helper(struct drm_device *dev,
 			   struct drm_pending_event *e, ktime_t timestamp)
 {
 	assert_spin_locked(&dev->event_lock);
-- 
2.31.1


