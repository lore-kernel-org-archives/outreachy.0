X-GM-THRID: 6476152782824931328
X-Received: by 10.200.23.115 with SMTP id u48mr3264443qtk.12.1507846820743;
        Thu, 12 Oct 2017 15:20:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.39.11 with SMTP id n11ls2473936qkn.13.gmail; Thu, 12 Oct
 2017 15:20:20 -0700 (PDT)
X-Received: by 10.200.18.132 with SMTP id y4mr3098826qti.24.1507846820238;
        Thu, 12 Oct 2017 15:20:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507846820; cv=none;
        d=google.com; s=arc-20160816;
        b=S/g1b3MTj8Os445bFN7BLiSzpXnty0fCYDgmVUwGFYJfBC+4e5PLkvl7f6/rHv4oZ0
         SGt5x8Qn31AgLccr5w2hWJDX4forIKzHlPa0q6kqU2UQGY10HusBgZWEGtcPrjk+uP36
         plK3jiK93rIM29q/8QYgdJRlf+lerZGAxj4GbE1xKETZLHAM8TXgS5h7Nv/14Rit3tl2
         UABB+n7VpFihRmNYaK6jTUZtQdmKKNL0zB2of6LsrsWgESKCSQrjcSK3/wO0x0TkFEt9
         lb5YIMGcpNot/vEKD1xTYF/xspp1GDdbhrFb6rqI3OGzjIymJDmch9jMisH3lxF+NiPJ
         xbMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Z6kbDAziuEJbzcOUckxGL0JOKFUDdJgw4uKP4VNuy30=;
        b=YkahzeJ6Cgee0QXmYPahYEuicueNXdxldI6CWGyRPCUnL+ZWuV3qzB2LZ6B7760MAk
         6hFCR4d+IF8Jmc1HCqEuvHkjEb9mJdDlqZdP/e6rd+P8OcoP29q+f60c8DcQLDW2t4+t
         lbxJ0y+jVBSjkoOSDjH54B2ZX83OlYeJdLIFphnbj15fwGNRiiKz/Ii5EZA4sgBmv30y
         xMmXynNYfaDG+4hyb4j/+7oEPJGo1gmlGPQo5MdgZeEo10HT7ILhmjZ+0+8kZqyWSTcf
         qR4bh8L0l+eq60kAAB5XKkx1upsdyPd8+n6s9zbbJDLmr5cO4fLLzPbAuibi5E+VzShS
         Wq2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyqvY830;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id 5si313444qki.1.2017.10.12.15.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:20:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyqvY830;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 17so6878953pfn.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 15:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Z6kbDAziuEJbzcOUckxGL0JOKFUDdJgw4uKP4VNuy30=;
        b=VyqvY830vzF77xJqDR54CHN1W0qgXmVXGIRZ6lE3Tb+6Sw97JBaPzm1ShGF6rMv7fF
         cTYc+UZZSx23pjYc13odapkw+bYpcLXsi6/I0IFVeNTEJYqQEceLqilu7t068s2iauvS
         PH0e/zSp8SmXvd9bNNNEoQSLD0V7F9LszcvDnduo1X2xlp95+IyeOaIKfWZ+ukTpPeLH
         7LKzuNPnI0+rg7bPNdk53ivNgRCfxt6xUscA34FCLjRcBsJbUeBSZ4Sn017WL4eqw3ol
         kePM1cJEHXsMhVqCCkrhu2kdbJwLmHp4CGpj1xPrwmdE+E3ttoAjjMm2Y57lR7TlBmNh
         OsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Z6kbDAziuEJbzcOUckxGL0JOKFUDdJgw4uKP4VNuy30=;
        b=G2hvVej9Va0+6gCrVldKdulhT53agjDum5saXq3jbtlp1TLLsmQXCq6K/cEeB4mW2W
         3JSbr/y1S/x6krL2vWzTWJtBxOxSKPYyAobW5pws/owSMaFPg5S9JRlwQprWpp2voOuT
         1dyJbOdBex0OA86ZJv7/kjAOcjw3Z7ymMRUFM62vI2KF4VbrCUB7E6tC2R1/PAuMh1ae
         OvGLeuAeCAhz4kl22hRww3pWbTDpyOOQIIfiEuArtnGv2FmFbgfNUqOOllciIw/Rg4PN
         NbPAwewtA814Az3OG+e+uLeRLNkTVrmDjrf+SoUztESoIDfuoeYB9Jq0FI5oUZiHK01n
         J8bg==
X-Gm-Message-State: AMCzsaWx5PMG+FGgSZYPIq0ic/tB5//7tvYSDUOw1+tI43kXh65RDrML
	Fol/7htwtJyWco7ou2HVNh0GqYb4
X-Google-Smtp-Source: AOwi7QBvYn5vve8Sly3YBiKush2CbecB2aSqfceknZGdqfHDoz4rASNnHMq50lY9n1JE8cvbZiVxKg==
X-Received: by 10.98.32.206 with SMTP id m75mr1819687pfj.231.1507846819930;
        Thu, 12 Oct 2017 15:20:19 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id d27sm31851006pfb.121.2017.10.12.15.20.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:20:19 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm: Replace kzalloc with kcalloc
Date: Fri, 13 Oct 2017 03:47:58 +0530
Message-Id: <20171012221758.512-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Prefer kcalloc over kzalloc to allocate an array.
This patch fixes checkcpatch issue.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/gpu/drm/drm_crtc_helper.c  | 4 ++--
 drivers/gpu/drm/drm_fb_helper.c    | 2 +-
 drivers/gpu/drm/drm_plane_helper.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
index eab36a460638..ceb131637e2f 100644
--- a/drivers/gpu/drm/drm_crtc_helper.c
+++ b/drivers/gpu/drm/drm_crtc_helper.c
@@ -562,12 +562,12 @@ int drm_crtc_helper_set_config(struct drm_mode_set *set,
 	 * Allocate space for the backup of all (non-pointer) encoder and
 	 * connector data.
 	 */
-	save_encoder_crtcs = kzalloc(dev->mode_config.num_encoder *
+	save_encoder_crtcs = kcalloc(dev->mode_config.num_encoder *
 				sizeof(struct drm_crtc *), GFP_KERNEL);
 	if (!save_encoder_crtcs)
 		return -ENOMEM;
 
-	save_connector_encoders = kzalloc(dev->mode_config.num_connector *
+	save_connector_encoders = kcalloc(dev->mode_config.num_connector *
 				sizeof(struct drm_encoder *), GFP_KERNEL);
 	if (!save_connector_encoders) {
 		kfree(save_encoder_crtcs);
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 1b8f013ffa65..68d197df89fd 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -2266,7 +2266,7 @@ static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
 	if (modes[n] == NULL)
 		return best_score;
 
-	crtcs = kzalloc(fb_helper->connector_count *
+	crtcs = kcalloc(fb_helper->connector_count *
 			sizeof(struct drm_fb_helper_crtc *), GFP_KERNEL);
 	if (!crtcs)
 		return best_score;
diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
index 06aee1741e96..74054653530e 100644
--- a/drivers/gpu/drm/drm_plane_helper.c
+++ b/drivers/gpu/drm/drm_plane_helper.c
@@ -354,7 +354,7 @@ int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
 	/* Find current connectors for CRTC */
 	num_connectors = get_connectors_for_crtc(crtc, NULL, 0);
 	BUG_ON(num_connectors == 0);
-	connector_list = kzalloc(num_connectors * sizeof(*connector_list),
+	connector_list = kcalloc(num_connectors * sizeof(*connector_list),
 				 GFP_KERNEL);
 	if (!connector_list)
 		return -ENOMEM;
-- 
2.11.0


