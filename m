Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CCF3914F8
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 15:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792337877; cv=none; b=OyOkrdfy5SmlQxhFj3OYYSSA95vOT2OI8Cq5/4KwSMfOjHEu1pUmywkYDAKzuE/uLG3z5+2DueEZxa3dz4qnt+YQoXkVfmMK5A5qesHaA3+br5M7aZCyE/7EpwZEFwAdpbf1IPCxTMzhTJ0mmJdxPOuGNc8P18pltouJL4W5KK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792337877; c=relaxed/simple;
	bh=9NUrm+JR+AwAKle6F1upGyUXgd9H6U/Ig9Dkc6DFvyM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jKjrp78nEW8p2oIvakcqaeNdTzsdn3hbYVFQMmOXqihqNmWNvUS3KMjcw3vlSa+pu/vBLMwIJjmg/GqwUE1+Jb1TcbafsFv+g4Ub5JxefqXOpBSYzdzQsH9CWLK8wKlUTpIChbW68bEpgn/Gsg7kXFFRiP4znImzF5JGwsllHBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hrT+GMEz; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hrT+GMEz"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4a1dfd49525so5764625e9.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 08:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792337874; x=1792942674; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RynPPvVjqTV4luxl9PBymJrn2D7Dl4oqi1D5yk6iPS4=;
        b=hrT+GMEz4LYbdrhLzPwDd9KnGWpBGD+v6cbWqjKDPTD4Oo7Z6pkDSoJB6rAhiZERr5
         WS931vUMavqi7P1WbID5AllhYA8TesZidj7Ytz3Y16K24qKIZwaC/vrDSNi2huatGNaI
         4DO7BkfFF2SGTTAik8xQbOJDTOXF86+s7BIoNrYKaiEFw7VMpIz+OTfhJmfSr7ENueD/
         5BsRoE5xMsjVlAWpbnifol+ePH9x/YkMkqQ8y9+/UfjWJucAuFVSva8pjrJWOp85WJcW
         922XMENfn++X+ECgJAXUV+YTdQi2LpYt9lgXac6OEQTo+zinv7rhxFXyuT3ZpRc2WDmc
         iGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792337874; x=1792942674;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RynPPvVjqTV4luxl9PBymJrn2D7Dl4oqi1D5yk6iPS4=;
        b=SW0k8kZdDPCjfi+l7KwbJNU/8vonkR+oBAkE/nzu4YsNe7h4hu2MZ+rYlPzxCmnKPY
         BDfFYP41mNCAEoN10QKcx1LAF1aybD/AHkQFhLdPSq66Peb1pGgnueYihcZCzu5Im9QZ
         wPOolWcx2k5FmxODugtKscOge4eqKjaMCSMGtYWpMI6vD5rTwMYXFs4LRbHNZPwrv4wh
         DBxFZuhgvhStQ6sAiRaTtP8+7LYUljZRg4RgHkrmo5t0R4SSoLVjX8x0uafse85N5xux
         qjGFeQGek9NGwEM20jWbg4R8aTyVdT3WlkHOa8yNQAn/hyZHokvWPq3XkwREisUj0ZW+
         ry8w==
X-Gm-Message-State: AFq9FYLSAtG9BOfVTQw2DGlRd/0wzeZ3TLtgPP0RC474NXqLA1DdlfKM
	foZNEYQx9EMFYDZHVrIbYVjH8jf2S/EnCRq4L2j0DDZulPAbjuy0DZyqa4ttzZ3ZndwV/Q==
X-Gm-Gg: AYBFou3ySlEi52/0DJ6jPiGXGpamT1Wa66+2Tp5mz/9TYJy5Jj3ev/VLDnbHN5hXYcr
	tU2GwQdfo4MkBNNw9g8e/171mGE0Vt0+4faQb546OptFaSmksAXEBcyiMx0A56W/d6vmF8xpawF
	1YAW5SY+Q7pUN1lTbGsl7y5PrEeq7vHDLBkn7BUPUwrY4whSqskfKcsseNWY5Xa2KebgmAo0rjl
	UWbpOkoIudEBV6dq7HCBGhWrsxeof2Q0BipKJWkJIhPqDHL/cVcd1FubR9VnAXIfQmMuknXPGN9
	jy0ZS+F3+lYAIjjjWIfS2mTd0gOyOKb1aFwQPsgoSx5wWbqc3ySpIeVkJfhUlnwre7L31PoQnrD
	yUPU2HnJJdNbsh79yIifqAQGeghItwOPEakJXs4LnJ4dHtukqwWgaxoPmsPAisM4J7gW5CtFITh
	LDwkb7WrssChyc0Er6hfGWdVQKPScnb7MkiLmy8x0Hy/JNvqG0JAOlWGigcls=
X-Received: by 2002:a05:600c:548d:b0:4a1:e250:b191 with SMTP id 5b1f17b1804b1-4a1e250b1c7mr41260495e9.17.1792337874062;
        Sun, 18 Oct 2026 08:37:54 -0700 (PDT)
Received: from ubuntu ([102.91.81.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd503862sm17479115f8f.46.2026.10.18.08.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 08:37:53 -0700 (PDT)
Date: Sun, 18 Oct 2026 16:35:34 +0100
From: Comfort Oyewole <coyewole7@gmail.com>
To: gregkh@linuxfoundation.org, andy@kernel.org
Cc: outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-fbdev@vger.kernel.org
Subject: [PATCH] staging: fbtft: remove trailing semicolons from macro
 definitions
Message-ID: <atTnRr-JGIb9eLQR@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove trailing semicolons from macro definitions to allow the
macros to be used where callers provide their own trailing semicolon

Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
---
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

