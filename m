Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C241D3A9870
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 17:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792345841; cv=none; b=Dap55r/WNKdp8MvrE3cd4IiytT+2GSU9fFuN2cifqazLcGMQiEQ3mguFvmzO22cgWwB1Ehuom573sG8ejwtsVju7jyQxRT2A5xuXu26pVOc6oQVLSCdTlHMlmKsSjdZQNCljtUMbdPSmtSCGZR3reA1lReTHJZUm/h9rsT2LnD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792345841; c=relaxed/simple;
	bh=GDtfl2HGmpniyM65dSeoeUzS6m9aT0IQ/soOxMzJCqM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IC0sJ95fpkaA8bzqRtrOJawpO9WlBbEshiAtjDoGlWd2FP1zY3aczFIbicPPcIwu+hhsuktZSikTe/GTD5TUb8kGdFLzu8PbsM04lg2B4nogYGqqZgmsCrDvFkM5A80043PPZyCD8mD9EeBuBTvIf0/WDIaHkELdu4rkA7zCVWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OYATQfie; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OYATQfie"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso11754955e9.3
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 10:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792345837; x=1792950637; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aOuTmv61Tfcjl1ZoA7Fh17PttCqQQo4Ja/Cvpk6+cDo=;
        b=OYATQfieri0NdvX7sSqroCH1IjKsUfT+hXHhinSksPDpOaZ5BUrPaUp6dRQPYZBEG9
         pDGNL+Q5bcy4826rEqpXjbto4Sb84XVhGCw60BonADlq8g113LPTtix5LMUWoXrDyy4g
         jQekveyM9121z2tFRu08DMBUnrCJjF8Hmj2nBc2YbW163UmvVmkOxUksXDX+WWf2q1Ga
         Ors0mw34PsjzzGMMbfbeuficCbYW5y1PNYQk1VCC5IsWZOF2HtzmF7MKh/oNQdcfQUd1
         6Es3QxqPsVX0RFuXhVjz288DujlPz3hRx1zX8wl9iLUVyz+4DYRwsN7ZnFBvAsc/QKCV
         A8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792345837; x=1792950637;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aOuTmv61Tfcjl1ZoA7Fh17PttCqQQo4Ja/Cvpk6+cDo=;
        b=XjOJfErB+VL/a/sac04DFjDj9A345V2UtZXycFa9C5pbrm26i9ZZhpNdioWLvg5ARK
         xLWimcvg4ZTverh30BQ3km42nUGbmbRHcXpNevfQinRcx1UU1cSuneLBx5rsYTFSV+db
         NYghksOgIMNWiVfTfyzFZ5Y4s6MQA8XogJLljVIn5dCvosozt4yG5uRFb60iBQnHatEG
         OyL3aGANm/2xzj1fV78J7T6ExPoE28j7UQjghkwEGvWLZY8j22Wga3a7HcMAwLX4y8EE
         h1cRfGwe0XW7fjkdwXORIXWJpZHMlGdUjDky6QrFJql5aOFAAdWNIVjWBm2Hrjw2sZFC
         oSyQ==
X-Gm-Message-State: AFq9FYLmKxgTXleZZTW+zowIo19y2VCWZ3zoG0v13rBHK5bgi0c1CIkF
	OojaK5Raty81QBwCAlbljTnz4H7u2N6LHvtpPj2iLBd1hJZEHdCbpnpt
X-Gm-Gg: AYBFou1ZKQkN/vbTO8r903fmwT3pYkm30OEu2FBYCdb9S7gHouHKs1vIXu0X3uB15D7
	hAU48P9Hqdjmq3eZy/Tuthq3F+qwmURL7Mg1oFOI0Cm/Lw0X7Wg3WhC+ohgegBxKGngXNHbarNb
	RTW2YzT4LywrIOrCnoDu8qUXSoYvEzjJjzJfNndhc95EYBPwejf3dUDPYKCj/nHrI3/f4NYdzhF
	Rgli804yF91oe3qy9QhX49HaasA2vtlRWe1ZoCIE3WHdfBxg/RZJSrF9MAPWvLyLDxt+n86UQzC
	V4kHF0WOrT0tLjt7NjG5fTSFV8D+jcVn7VR3bv4OgF355ef1s6LVintLfkZ2wPmTlAxQR4aMK/l
	f9c6MoRE1tyf+geab2oyWRn3PrSkHw6z4AJcn5CJFxUuYvksAnv8xgWAmwGgiW8WRzOpR1wdkS2
	UWDjPiqus1NFHOUfirzzyXJnSMydAkJe8Gok2VdPXWmP2E58kJbX34jTrnwwfR1cbf
X-Received: by 2002:a05:600c:3b13:b0:4a0:2150:55fb with SMTP id 5b1f17b1804b1-4a1d75ad08amr139445015e9.4.1792345836539;
        Sun, 18 Oct 2026 10:50:36 -0700 (PDT)
Received: from ubuntu ([2c0f:f5c0:570:10ef:ebdb:1ad:9af2:42a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1d97b7bb9sm64505955e9.0.2026.10.18.10.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 10:50:36 -0700 (PDT)
Date: Sun, 18 Oct 2026 18:50:28 +0100
From: Comfort Oyewole <coyewole7@gmail.com>
To: gregkh@linuxfoundation.org, andy@kernel.org
Cc: outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-fbdev@vger.kernel.org, Julia.Lawall@inria.fr
Subject: [PATCH v2] staging: fbtft: remove trailing semicolons from macro
 definitionsandy@kernel.org
Message-ID: <atUG5LbCbePRNn5M@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove trailing semicolons from macro definitions to allow the
macros to be used where callers provide their own trailing semicolon.
Also confirmed that all current uses of these macros already include
their own semicolons.

Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
---
Changes in v2:
  - Confirmed that all current uses of these macros already include their own semicolons

 drivers/staging/fbtft/fbtft.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 40a7567df1eb..1ab1658e8321 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -277,7 +277,7 @@ static const struct of_device_id dt_ids[] = {					\
 	{ .compatible = _compatible },						\
 	{},									\
 };										\
-MODULE_DEVICE_TABLE(of, dt_ids);
+MODULE_DEVICE_TABLE(of, dt_ids)
 
 #define FBTFT_SPI_DRIVER(_name, _compatible, _display, _spi_ids)		\
 										\
@@ -301,7 +301,7 @@ static struct spi_driver fbtft_driver_spi_driver = {				\
 	.id_table = _spi_ids,							\
 	.probe = fbtft_driver_probe_spi,					\
 	.remove = fbtft_driver_remove_spi,					\
-};
+}
 
 #define FBTFT_REGISTER_DRIVER(_name, _compatible, _display)                \
 									   \
@@ -350,8 +350,8 @@ static void __exit fbtft_driver_module_exit(void)                          \
 	platform_driver_unregister(&fbtft_driver_platform_driver);         \
 }                                                                          \
 									   \
-module_init(fbtft_driver_module_init);                                     \
-module_exit(fbtft_driver_module_exit);
+module_init(fbtft_driver_module_init)                                     \
+module_exit(fbtft_driver_module_exit)
 
 #define FBTFT_REGISTER_SPI_DRIVER(_name, _comp_vend, _comp_dev, _display)	\
 										\
@@ -361,11 +361,11 @@ static const struct spi_device_id spi_ids[] = {					\
 	{ .name = _comp_dev },							\
 	{},									\
 };										\
-MODULE_DEVICE_TABLE(spi, spi_ids);						\
+MODULE_DEVICE_TABLE(spi, spi_ids)						\
 										\
 FBTFT_SPI_DRIVER(_name, _comp_vend "," _comp_dev, _display, spi_ids)		\
 										\
-module_spi_driver(fbtft_driver_spi_driver);
+module_spi_driver(fbtft_driver_spi_driver)
 
 /* Debug macros */
 
-- 
2.53.0

