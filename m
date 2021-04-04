X-GM-THRID: 6947431936932446208
X-Received: by 2002:a05:620a:2202:: with SMTP id m2mr21861913qkh.396.1617575049230;
        Sun, 04 Apr 2021 15:24:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls3742500qvn.6.gmail; Sun, 04 Apr
 2021 15:24:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHRsQkhbVJMYXArtMHawXiWxQf+5DFU0+hVbj7qUczKsmGTZS/DYg0XeOJ+xWB1fzqwfdK
X-Received: by 2002:ad4:5c4c:: with SMTP id a12mr21394990qva.11.1617575048426;
        Sun, 04 Apr 2021 15:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617575048; cv=none;
        d=google.com; s=arc-20160816;
        b=OuzX2J6TfZ6tTOBws/gMlFSoIl59Rt6KvUF5sTqHv/tfwxqfbWTzHcCuVWbvptvZET
         smeCsp/VDcb0FTKBP/aGDW1lKyabC4QeYD8UfCboNpZscJOXuKE7fSuJ/W1WsnMektgY
         JeYZeB8cOegxlrhfijEUmiJ+ceIx4FxFThoWACzFyvSV/G+vzlFh2ThbfGChdpSsFaPJ
         VRkJwv/e04OndRberk6G2rXXDU485xgv/bcZ5mFJNa4P54np2RmY6RaU3Y+e1+OOAJvK
         H6U7D2qm3FM7YuZB6DEPtFOaMqIFIIpq2QwJvzYYjMJ1Hxol5l5roVNOAKW8OJ8uqUGc
         eLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xbW2w5yQVlrKo7msMrOVrutuhsz59oCxVj2wRLsK5KQ=;
        b=AIhTPCgkS1jI802buP+jlauxJzEd7oMU1hQL7xeHItv8w4a31izMGpzRE1l/RE+6jp
         MckGFWbLn5jS4ydnPXSQdai6RdexD2KCOqQ1hB5nk7r+2BljfK8VjQZKjbMTQ0rEnWY2
         B5h0bfzkUPY3ELq6kUlY8QMFPO7SCtOUdiX9okwoTaXriLnwl2g4iaThgh+qkdT74T9m
         7d9vkde7eKlSA6fJPeruT04K4UQ6xnq0OqQGKBstQhSeOtjR4O/qPxWeTp4GUoltDZbH
         L5sugxSdLWFKjIW2qXFlM2h0T+BJaoNNYyqJTLjX5zWM/7/IO92BH7GeRoleR9fpOxaE
         ueUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ez+/ePEA";
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id k1si2834519qtg.2.2021.04.04.15.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 15:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ez+/ePEA";
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso4944183pjh.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 15:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xbW2w5yQVlrKo7msMrOVrutuhsz59oCxVj2wRLsK5KQ=;
        b=Ez+/ePEATnb3tBEEv8CrHYtzbFqU7i81MOMXApLzJQEszLsfHdIeCvJMlyzvWCYHTm
         aydi5oy7uZ3yqCf/ii2gJAHPeHGkb14YU9iB4UQjYQNhBecKCC+LEIEopWm0eMvDHVTH
         lzwH1NkwRxVabVpw7Rnx0hdy4D0WcVK2sT/2qVjATToXJmpGQBGoDMQY/mzzzvZ0UJoQ
         gvfjXiky3L1fIT9F/1OHV006ajlmNq+rVKJ6U1hnSD6p4dyqWhhT8NgSeOLXGDzQWEHU
         jcdGFEdHJ/+Z6IjdYuAywG/aLeS5A7DD7exwuDLIITibVGEOazHmso7AuNTPauQZfTfx
         RM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xbW2w5yQVlrKo7msMrOVrutuhsz59oCxVj2wRLsK5KQ=;
        b=mZAQ9QhtakBchW2NmW6leE2Vu60v0zjWLCbLlLcYInUF9q8Q/RGNe9pdqNlWUu2O3i
         UOUMK5/j7H1CWzly25Px3dxts32oe8NBQk+7+0eJcp8xXiyuQtfxSzSmQ3ErowgCcKn1
         wM+paePay2l0x80G1G5eIh13+4UAst7qaMtaDmhCz08PFzDnS86GkRzG4WLC7bgon+9/
         RQpA9UthEFhAWOEZX+aa8s1fY4zBT9MbeisdDIHvdlYiVxXuTR5XCIQvXAifMWDGyGt4
         cuTMlb04mLVWUQeSIBodDtB+/BcZoM/8aNgGkzOkLxSlXBY62B6XmbG0TsB7LsWDdlXf
         2LQA==
X-Gm-Message-State: AOAM532qoiaJpt6o21+i2V5Vt8x9NngBfpxyxlsO6Fv+NlwGyFdVxBeS
	o05jH4gY8F/Xp6yLGvgL1X3P3EWTSKUrcw==
X-Received: by 2002:a17:902:44a:b029:e8:eb05:d0a0 with SMTP id 68-20020a170902044ab02900e8eb05d0a0mr5698810ple.50.1617575047687;
        Sun, 04 Apr 2021 15:24:07 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d25sm13499574pfo.218.2021.04.04.15.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 15:24:07 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	yashsri421@gmail.com,
	john.oldman@polehill.co.uk,
	vkor@vkten.in
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH] staging: rtl8192e: move const after static
Date: Sun,  4 Apr 2021 15:23:49 -0700
Message-Id: <20210404222349.7218-1-deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

Move the const after static to conform with kernel preference for
static const <type> declaration style instead of static <type> const.
Identified by checkpatch: WARNING: Move const after static - use 'static
const char'.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index e340be3ebb97..c53aa2d305ca 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -260,7 +260,7 @@ void rtl92e_dm_watchdog(struct net_device *dev)
 static void _rtl92e_dm_check_ac_dc_power(struct net_device *dev)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
-	static char const ac_dc_script[] = "/etc/acpi/wireless-rtl-ac-dc-power.sh";
+	static const char ac_dc_script[] = "/etc/acpi/wireless-rtl-ac-dc-power.sh";
 	char *argv[] = {(char *)ac_dc_script, DRV_NAME, NULL};
 	static char *envp[] = {"HOME=/",
 			"TERM=linux",
@@ -1801,7 +1801,7 @@ static void _rtl92e_dm_check_rf_ctrl_gpio(void *data)
 	enum rt_rf_power_state eRfPowerStateToSet;
 	bool bActuallySet = false;
 	char *argv[3];
-	static char const RadioPowerPath[] = "/etc/acpi/events/RadioPower.sh";
+	static const char RadioPowerPath[] = "/etc/acpi/events/RadioPower.sh";
 	static char *envp[] = {"HOME=/", "TERM=linux", "PATH=/usr/bin:/bin",
 			       NULL};
 
-- 
2.17.1


