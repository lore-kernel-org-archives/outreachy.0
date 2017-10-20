X-GM-THRID: 6478777723718205440
X-Received: by 10.98.139.20 with SMTP id j20mr813386pfe.13.1508458933871;
        Thu, 19 Oct 2017 17:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.110 with SMTP id 101ls2182900ple.8.gmail; Thu, 19 Oct
 2017 17:22:12 -0700 (PDT)
X-Received: by 10.99.185.86 with SMTP id v22mr797095pgo.76.1508458932776;
        Thu, 19 Oct 2017 17:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508458932; cv=none;
        d=google.com; s=arc-20160816;
        b=YtkRSuaf9L1M7yEUPHOji9kHqfN45Ur0b/nMVWi2qHPFXC0AfAdaWE/LjmRT04qoOI
         K2bxfmB8b2VRAirZtf/8zzhxz9KVBekm1COr/Mqgup2YbZYaXqq6VfrNdEGMvV9/g62u
         8W/Q6J17oztdHlwEskST0/VSdeJUEN6pGKa7soR1KAJPZpKBLdgy0gOaKmPtVqNhofyq
         balAL7UelwNTvgvNOMQYGXLuVDalZSQTgTquC96BugFYN5/w6451X3R18Nq4wUQACnco
         fseDkCbPG6E4LJ1hRwkS2XawvKan0BAjmIWI33cC9qKt8XfpCl1uHhN96rRV6Wn9Xcx0
         LFtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=4FvLARdrtqdSvzunHsZWdgMOWr/i29M7MAbCmAa3wdA=;
        b=PfmW4pqELuZNa7mKR6ZEKtjcAnuo9zzgNfGTyzDpqvMUDVIea0Pp6yit77DTRJtoWs
         HLkkJhIas+tXAdKxXdvEjaLlSZzdzy0BkPjntJSReTLItTOud2bhyuOJAFPc71RruM/R
         JSh7I12J1PyK0C0/RHCtOp66Mo/6goEgei9aDo/J6LJbgMOuacYomjng0H0rdNB9T3zH
         KAciJrGAeQClIu2ngUTXkw5IjxnNhafzOVN5Fvj3fiR/+wMWvl0r5Gn4jhn9FoCZ2Td/
         LMSGFCaVzyN2KueDA9klA4lYwrofRRfVKEYAF+NFksh5PYoWLjnyPNtrqYDag2eJdWtz
         p3aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Ym30OczU;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id m7si792476pga.0.2017.10.19.17.22.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Ym30OczU;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x242.google.com with SMTP id w45so7247418uac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4FvLARdrtqdSvzunHsZWdgMOWr/i29M7MAbCmAa3wdA=;
        b=Ym30OczUSNmSbffq2JcPc4jiZC8tqmq3bnn+YyV2PPRE2TxR73drgyYnH00qMIjX8e
         zaw6RqhscVZ8Re0eQllYv7azxCozmrG9pNLLvKm+NPPr5+BydVurXVCRy3TParLPySZS
         MUx0eNXVcn7by8y7fdoqR1E8yw+7Fljo+0JLk5EjcGFYeLY8s+q2uQFvwLagn034pES+
         p6HlXqdoi+O7RXgzYmyTrtt7/bR1YV6p1GTYjxKfgQcWZ0WRKT6RZVhLXwOawDuHIbVf
         W4bju3rFpWXbBVeJgzDGVR3mQFfKCxUrLcbiYEE1h3YVAevXozEMHf3jvl5PhkbfBhqh
         wHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4FvLARdrtqdSvzunHsZWdgMOWr/i29M7MAbCmAa3wdA=;
        b=dZs58WCKHrzSk4QNXJOfSxKk/u5bklNFi3dadbqh7eOBxp/S0ENcXUQP+RovWjPPhs
         2wbEza2qe/Pjuq9VNL926dpTTWTRGgJem9hRIo6z9csHqnXu7DsrxB7ekGqQVD0j3l8k
         RnOXZLc63bVS5qS/kW0Cqk9yq1xhCOI6Ad5GfQQefHE5bK8OQh3CkIbOVqSLFw6OKCTs
         i7BM8DqazRtKdSk0PKwmJ3ywOs8bKzAdyQLzA3+dOykE8bFWfYYW+jKQT+T1ImLDY415
         Q7kpndJw0tX5yxuxK3Ha1nCBeUXnLYDcj2bhHH7Z7G9aavncWPnIqEHwn+0HouyvaIpC
         YMZQ==
X-Gm-Message-State: AMCzsaWi/8xk/fjz3pwPhtggH+X7DiokkIph2xHhnBiV70jzUPPUQmBY
	8D1Ksos7ZqA7sM8dw8mcDBgg0bzG
X-Google-Smtp-Source: ABhQp+TVHyUz4l6w1uq+rNhZm7fW/kSR3FLBriqeKduqkJoQbN0qo7tlHT5OWiRvE8FyJIey+7rmbQ==
X-Received: by 10.176.17.195 with SMTP id q3mr2608096uac.20.1508458931432;
        Thu, 19 Oct 2017 17:22:11 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id c29sm9008387uaa.50.2017.10.19.17.22.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:22:10 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:22:09 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: greybus: Fix alignment issues
Message-ID: <f4940e71d13e091b372169b23c9c29dc1133faf2.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment to match open parenthesis and comply in with the preferred
coding style for the linux kernel.

The 'checkpatch' message was:
'CHECK: Alignment should match open parenthesis'

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 36 ++++++++++-----------
 drivers/staging/greybus/arche-platform.c | 10 +++---
 drivers/staging/greybus/audio_codec.c    |  6 ++--
 drivers/staging/greybus/audio_codec.h    |  2 +-
 drivers/staging/greybus/audio_module.c   |  4 +--
 drivers/staging/greybus/audio_topology.c | 54 ++++++++++++++++----------------
 drivers/staging/greybus/authentication.c |  2 +-
 drivers/staging/greybus/bootrom.c        | 20 ++++++------
 8 files changed, 67 insertions(+), 67 deletions(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index 4d75f2e..4b03fbc 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -72,14 +72,14 @@ static int coldboot_seq(struct platform_device *pdev)
 	int ret;
 
 	if (apb->init_disabled ||
-			apb->state == ARCHE_PLATFORM_STATE_ACTIVE)
+	    apb->state == ARCHE_PLATFORM_STATE_ACTIVE)
 		return 0;
 
 	/* Hold APB in reset state */
 	assert_reset(apb->resetn_gpio);
 
 	if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING &&
-			gpio_is_valid(apb->spi_en_gpio))
+	    gpio_is_valid(apb->spi_en_gpio))
 		devm_gpio_free(dev, apb->spi_en_gpio);
 
 	/* Enable power to APB */
@@ -122,7 +122,7 @@ static int fw_flashing_seq(struct platform_device *pdev)
 	int ret;
 
 	if (apb->init_disabled ||
-			apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
+	    apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
 		return 0;
 
 	ret = regulator_enable(apb->vcore);
@@ -146,7 +146,7 @@ static int fw_flashing_seq(struct platform_device *pdev)
 			flags = GPIOF_OUT_INIT_LOW;
 
 		ret = devm_gpio_request_one(dev, apb->spi_en_gpio,
-				flags, "apb_spi_en");
+					    flags, "apb_spi_en");
 		if (ret) {
 			dev_err(dev, "Failed requesting SPI bus en gpio %d\n",
 				apb->spi_en_gpio);
@@ -174,11 +174,11 @@ static int standby_boot_seq(struct platform_device *pdev)
 	 * then we do not want to change the state
 	 */
 	if (apb->state == ARCHE_PLATFORM_STATE_STANDBY ||
-			apb->state == ARCHE_PLATFORM_STATE_OFF)
+	    apb->state == ARCHE_PLATFORM_STATE_OFF)
 		return 0;
 
 	if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING &&
-			gpio_is_valid(apb->spi_en_gpio))
+	    gpio_is_valid(apb->spi_en_gpio))
 		devm_gpio_free(dev, apb->spi_en_gpio);
 
 	/*
@@ -203,7 +203,7 @@ static void poweroff_seq(struct platform_device *pdev)
 		return;
 
 	if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING &&
-			gpio_is_valid(apb->spi_en_gpio))
+	    gpio_is_valid(apb->spi_en_gpio))
 		devm_gpio_free(dev, apb->spi_en_gpio);
 
 	/* disable the clock */
@@ -297,7 +297,7 @@ static ssize_t state_store(struct device *dev,
 }
 
 static ssize_t state_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+			  struct device_attribute *attr, char *buf)
 {
 	struct arche_apb_ctrl_drvdata *apb = dev_get_drvdata(dev);
 
@@ -319,7 +319,7 @@ static ssize_t state_show(struct device *dev,
 static DEVICE_ATTR_RW(state);
 
 static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
-		struct arche_apb_ctrl_drvdata *apb)
+				     struct arche_apb_ctrl_drvdata *apb)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
@@ -331,10 +331,10 @@ static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
 		return apb->resetn_gpio;
 	}
 	ret = devm_gpio_request_one(dev, apb->resetn_gpio,
-			GPIOF_OUT_INIT_LOW, "apb-reset");
+				    GPIOF_OUT_INIT_LOW, "apb-reset");
 	if (ret) {
 		dev_err(dev, "Failed requesting reset gpio %d\n",
-				apb->resetn_gpio);
+			apb->resetn_gpio);
 		return ret;
 	}
 
@@ -344,10 +344,10 @@ static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
 		return apb->boot_ret_gpio;
 	}
 	ret = devm_gpio_request_one(dev, apb->boot_ret_gpio,
-			GPIOF_OUT_INIT_LOW, "boot retention");
+				    GPIOF_OUT_INIT_LOW, "boot retention");
 	if (ret) {
 		dev_err(dev, "Failed requesting bootret gpio %d\n",
-				apb->boot_ret_gpio);
+			apb->boot_ret_gpio);
 		return ret;
 	}
 
@@ -358,10 +358,10 @@ static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
 		return apb->pwroff_gpio;
 	}
 	ret = devm_gpio_request_one(dev, apb->pwroff_gpio,
-			GPIOF_IN, "pwroff_n");
+				    GPIOF_IN, "pwroff_n");
 	if (ret) {
 		dev_err(dev, "Failed requesting pwroff_n gpio %d\n",
-				apb->pwroff_gpio);
+			apb->pwroff_gpio);
 		return ret;
 	}
 
@@ -371,10 +371,10 @@ static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
 		dev_warn(dev, "failed to get clock en gpio\n");
 	} else if (gpio_is_valid(apb->clk_en_gpio)) {
 		ret = devm_gpio_request_one(dev, apb->clk_en_gpio,
-				GPIOF_OUT_INIT_LOW, "apb_clk_en");
+					    GPIOF_OUT_INIT_LOW, "apb_clk_en");
 		if (ret) {
 			dev_warn(dev, "Failed requesting APB clock en gpio %d\n",
-					apb->clk_en_gpio);
+				 apb->clk_en_gpio);
 			return ret;
 		}
 	}
@@ -407,7 +407,7 @@ static int apb_ctrl_get_devtree_data(struct platform_device *pdev,
 	apb->spi_en_gpio = of_get_named_gpio(np, "spi-en-gpio", 0);
 	if (apb->spi_en_gpio >= 0) {
 		if (of_property_read_bool(pdev->dev.of_node,
-					"spi-en-active-high"))
+					  "spi-en-active-high"))
 			apb->spi_en_polarity_high = true;
 	}
 
diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 21ac92d..791c564 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -234,7 +234,7 @@ arche_platform_coldboot_seq(struct arche_platform_drvdata *arche_pdata)
 	ret = clk_prepare_enable(arche_pdata->svc_ref_clk);
 	if (ret) {
 		dev_err(arche_pdata->dev, "failed to enable svc_ref_clk: %d\n",
-				ret);
+			ret);
 		return ret;
 	}
 
@@ -270,7 +270,7 @@ arche_platform_fw_flashing_seq(struct arche_platform_drvdata *arche_pdata)
 	ret = clk_prepare_enable(arche_pdata->svc_ref_clk);
 	if (ret) {
 		dev_err(arche_pdata->dev, "failed to enable svc_ref_clk: %d\n",
-				ret);
+			ret);
 		return ret;
 	}
 
@@ -377,7 +377,7 @@ static ssize_t state_store(struct device *dev,
 }
 
 static ssize_t state_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
+			  struct device_attribute *attr, char *buf)
 {
 	struct arche_platform_drvdata *arche_pdata = dev_get_drvdata(dev);
 
@@ -458,7 +458,7 @@ static int arche_platform_probe(struct platform_device *pdev)
 		return ret;
 	}
 	ret = gpio_direction_output(arche_pdata->svc_reset_gpio,
-					arche_pdata->is_reset_act_hi);
+				    arche_pdata->is_reset_act_hi);
 	if (ret) {
 		dev_err(dev, "failed to set svc-reset gpio dir:%d\n", ret);
 		return ret;
@@ -526,7 +526,7 @@ static int arche_platform_probe(struct platform_device *pdev)
 				"wake detect");
 	if (ret) {
 		dev_err(dev, "Failed requesting wake_detect gpio %d\n",
-				arche_pdata->wake_detect_gpio);
+			arche_pdata->wake_detect_gpio);
 		return ret;
 	}
 
diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 0ce0b8c..b5e4fe1 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -568,7 +568,7 @@ static int gbcodec_prepare(struct snd_pcm_substream *substream,
 	if (ret) {
 		mutex_unlock(&codec->lock);
 		dev_err_ratelimited(dai->dev, "set_data_size failed:%d\n",
-				     ret);
+				    ret);
 		return ret;
 	}
 
@@ -827,7 +827,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 					  module->num_dapm_widgets);
 	if (module->controls)
 		snd_soc_add_codec_controls(codec, module->controls,
-				     module->num_controls);
+					   module->num_controls);
 	if (module->dapm_routes)
 		snd_soc_dapm_add_routes(&codec->dapm, module->dapm_routes,
 					module->num_dapm_routes);
@@ -970,7 +970,7 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 		dev_dbg(codec->dev, "Removing %d controls\n",
 			module->num_controls);
 		snd_soc_remove_codec_controls(codec, module->controls,
-					  module->num_controls);
+					      module->num_controls);
 	}
 	if (module->dapm_widgets) {
 		dev_dbg(codec->dev, "Removing %d widgets\n",
diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index 6fb064c..32aac14 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -160,7 +160,7 @@ struct gbaudio_module_info {
 };
 
 int gbaudio_tplg_parse_data(struct gbaudio_module_info *module,
-			       struct gb_audio_topology *tplg_data);
+			    struct gb_audio_topology *tplg_data);
 void gbaudio_tplg_release(struct gbaudio_module_info *module);
 
 int gbaudio_module_update(struct gbaudio_codec_info *codec,
diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index 094c3be..f424d715 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -19,7 +19,7 @@
  */
 
 static int gbaudio_request_jack(struct gbaudio_module_info *module,
-				  struct gb_audio_jack_event_request *req)
+				struct gb_audio_jack_event_request *req)
 {
 	int report;
 	struct snd_jack *jack = module->headset_jack.jack;
@@ -318,7 +318,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 	ret = gbaudio_tplg_parse_data(gbmodule, topology);
 	if (ret) {
 		dev_err(dev, "%d:Error while parsing topology data\n",
-			  ret);
+			ret);
 		goto free_topology;
 	}
 	gbmodule->topology = topology;
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index be71124..155e70e 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -159,7 +159,7 @@ static const char **gb_generate_enum_strings(struct gbaudio_module_info *gb,
 }
 
 static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
-		     struct snd_ctl_elem_info *uinfo)
+				  struct snd_ctl_elem_info *uinfo)
 {
 	unsigned int max;
 	const char *name;
@@ -210,7 +210,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 }
 
 static int gbcodec_mixer_ctl_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+				 struct snd_ctl_elem_value *ucontrol)
 {
 	int ret;
 	struct gb_audio_ctl_elem_info *info;
@@ -272,7 +272,7 @@ static int gbcodec_mixer_ctl_get(struct snd_kcontrol *kcontrol,
 }
 
 static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
-			      struct snd_ctl_elem_value *ucontrol)
+				 struct snd_ctl_elem_value *ucontrol)
 {
 	int ret = 0;
 	struct gb_audio_ctl_elem_info *info;
@@ -348,7 +348,7 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
  * of DAPM related sequencing, etc.
  */
 static int gbcodec_mixer_dapm_ctl_info(struct snd_kcontrol *kcontrol,
-		     struct snd_ctl_elem_info *uinfo)
+				       struct snd_ctl_elem_info *uinfo)
 {
 	int platform_max, platform_min;
 	struct gbaudio_ctl_pvt *data;
@@ -379,7 +379,7 @@ static int gbcodec_mixer_dapm_ctl_info(struct snd_kcontrol *kcontrol,
 }
 
 static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+				      struct snd_ctl_elem_value *ucontrol)
 {
 	int ret;
 	struct gb_audio_ctl_elem_info *info;
@@ -428,7 +428,7 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 }
 
 static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
-			      struct snd_ctl_elem_value *ucontrol)
+				      struct snd_ctl_elem_value *ucontrol)
 {
 	int ret, wi, max, connect;
 	unsigned int mask, val;
@@ -502,7 +502,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	.private_value = (unsigned long)data}
 
 static int gbcodec_event_spk(struct snd_soc_dapm_widget *w,
-					struct snd_kcontrol *k, int event)
+			     struct snd_kcontrol *k, int event)
 {
 	/* Ensure GB speaker is connected */
 
@@ -510,7 +510,7 @@ static int gbcodec_event_spk(struct snd_soc_dapm_widget *w,
 }
 
 static int gbcodec_event_hp(struct snd_soc_dapm_widget *w,
-					struct snd_kcontrol *k, int event)
+			    struct snd_kcontrol *k, int event)
 {
 	/* Ensure GB module supports jack slot */
 
@@ -518,7 +518,7 @@ static int gbcodec_event_hp(struct snd_soc_dapm_widget *w,
 }
 
 static int gbcodec_event_int_mic(struct snd_soc_dapm_widget *w,
-					struct snd_kcontrol *k, int event)
+				 struct snd_kcontrol *k, int event)
 {
 	/* Ensure GB module supports jack slot */
 
@@ -665,7 +665,7 @@ static int gbaudio_tplg_create_enum_kctl(struct gbaudio_module_info *gb,
 
 	/* debug enum info */
 	dev_dbg(gb->dev, "Max:%d, name_length:%d\n", gbe->max,
-		 le16_to_cpu(gb_enum->names_length));
+		le16_to_cpu(gb_enum->names_length));
 	for (i = 0; i < gbe->max; i++)
 		dev_dbg(gb->dev, "src[%d]: %s\n", i, gbe->texts[i]);
 
@@ -885,8 +885,8 @@ static int gbaudio_tplg_create_enum_ctl(struct gbaudio_module_info *gb,
 }
 
 static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
-					     struct snd_kcontrol_new *kctl,
-					     struct gb_audio_control *ctl)
+					 struct snd_kcontrol_new *kctl,
+					 struct gb_audio_control *ctl)
 {
 	struct gbaudio_ctl_pvt *ctldata;
 
@@ -906,8 +906,8 @@ static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
 }
 
 static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
-					     struct snd_kcontrol_new *kctl,
-					     struct gb_audio_control *ctl)
+					struct snd_kcontrol_new *kctl,
+					struct gb_audio_control *ctl)
 {
 	int ret;
 
@@ -1100,16 +1100,16 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 	case snd_soc_dapm_mixer:
 		*dw = (struct snd_soc_dapm_widget)
 			SND_SOC_DAPM_MIXER_E(w->name, SND_SOC_NOPM, 0, 0, NULL,
-					   0, gbaudio_widget_event,
-					   SND_SOC_DAPM_PRE_PMU |
-					   SND_SOC_DAPM_POST_PMD);
+					     0, gbaudio_widget_event,
+					     SND_SOC_DAPM_PRE_PMU |
+					     SND_SOC_DAPM_POST_PMD);
 		break;
 	case snd_soc_dapm_mux:
 		*dw = (struct snd_soc_dapm_widget)
 			SND_SOC_DAPM_MUX_E(w->name, SND_SOC_NOPM, 0, 0,
-					 widget_kctls, gbaudio_widget_event,
-					 SND_SOC_DAPM_PRE_PMU |
-					 SND_SOC_DAPM_POST_PMD);
+					   widget_kctls, gbaudio_widget_event,
+					   SND_SOC_DAPM_PRE_PMU |
+					   SND_SOC_DAPM_POST_PMD);
 		break;
 	case snd_soc_dapm_aif_in:
 		*dw = (struct snd_soc_dapm_widget)
@@ -1145,7 +1145,7 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 }
 
 static int gbaudio_tplg_process_kcontrols(struct gbaudio_module_info *module,
-				   struct gb_audio_control *controls)
+					  struct gb_audio_control *controls)
 {
 	int i, csize, ret;
 	struct snd_kcontrol_new *dapm_kctls;
@@ -1215,7 +1215,7 @@ static int gbaudio_tplg_process_kcontrols(struct gbaudio_module_info *module,
 }
 
 static int gbaudio_tplg_process_widgets(struct gbaudio_module_info *module,
-				   struct gb_audio_widget *widgets)
+					struct gb_audio_widget *widgets)
 {
 	int i, ret, w_size;
 	struct snd_soc_dapm_widget *dapm_widgets;
@@ -1264,7 +1264,7 @@ static int gbaudio_tplg_process_widgets(struct gbaudio_module_info *module,
 }
 
 static int gbaudio_tplg_process_routes(struct gbaudio_module_info *module,
-				   struct gb_audio_route *routes)
+				       struct gb_audio_route *routes)
 {
 	int i, ret;
 	struct snd_soc_dapm_route *dapm_routes;
@@ -1300,8 +1300,8 @@ static int gbaudio_tplg_process_routes(struct gbaudio_module_info *module,
 		}
 		dapm_routes->control =
 			gbaudio_map_controlid(module,
-						      curr->control_id,
-						      curr->index);
+					      curr->control_id,
+					      curr->index);
 		if ((curr->control_id !=  GBAUDIO_INVALID_ID) &&
 		    !dapm_routes->control) {
 			dev_err(module->dev, "%d:%d:%d:%d - Invalid control\n",
@@ -1325,7 +1325,7 @@ static int gbaudio_tplg_process_routes(struct gbaudio_module_info *module,
 }
 
 static int gbaudio_tplg_process_header(struct gbaudio_module_info *module,
-				 struct gb_audio_topology *tplg_data)
+				       struct gb_audio_topology *tplg_data)
 {
 	/* fetch no. of kcontrols, widgets & routes */
 	module->num_controls = tplg_data->num_controls;
@@ -1351,7 +1351,7 @@ static int gbaudio_tplg_process_header(struct gbaudio_module_info *module,
 }
 
 int gbaudio_tplg_parse_data(struct gbaudio_module_info *module,
-			       struct gb_audio_topology *tplg_data)
+			    struct gb_audio_topology *tplg_data)
 {
 	int ret;
 	struct gb_audio_control *controls;
diff --git a/drivers/staging/greybus/authentication.c b/drivers/staging/greybus/authentication.c
index 6c5dcb1..e0d67c2 100644
--- a/drivers/staging/greybus/authentication.c
+++ b/drivers/staging/greybus/authentication.c
@@ -203,7 +203,7 @@ static int cap_release(struct inode *inode, struct file *file)
 }
 
 static int cap_ioctl(struct gb_cap *cap, unsigned int cmd,
-			 void __user *buf)
+		     void __user *buf)
 {
 	struct cap_ioc_get_endpoint_uid endpoint_uid;
 	struct cap_ioc_get_ims_certificate *ims_cert;
diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index 06df0ce..befbaf0c 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -176,7 +176,7 @@ static int find_firmware(struct gb_bootrom *bootrom, u8 stage)
 		 firmware_name);
 
 	rc = request_firmware(&bootrom->fw, firmware_name,
-		&connection->bundle->dev);
+			      &connection->bundle->dev);
 	if (rc) {
 		dev_err(&connection->bundle->dev,
 			"failed to find %s firmware (%d)\n", firmware_name, rc);
@@ -275,7 +275,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
 
 	if (offset >= fw->size || size > fw->size - offset) {
 		dev_warn(dev, "bad firmware request (offs = %u, size = %u)\n",
-				offset, size);
+			 offset, size);
 		ret = -EINVAL;
 		goto unlock;
 	}
@@ -388,15 +388,15 @@ static int gb_bootrom_get_version(struct gb_bootrom *bootrom)
 				sizeof(response));
 	if (ret) {
 		dev_err(&bundle->dev,
-				"failed to get protocol version: %d\n",
-				ret);
+			"failed to get protocol version: %d\n",
+			ret);
 		return ret;
 	}
 
 	if (response.major > request.major) {
 		dev_err(&bundle->dev,
-				"unsupported major protocol version (%u > %u)\n",
-				response.major, request.major);
+			"unsupported major protocol version (%u > %u)\n",
+			response.major, request.major);
 		return -ENOTSUPP;
 	}
 
@@ -404,13 +404,13 @@ static int gb_bootrom_get_version(struct gb_bootrom *bootrom)
 	bootrom->protocol_minor = response.minor;
 
 	dev_dbg(&bundle->dev, "%s - %u.%u\n", __func__, response.major,
-			response.minor);
+		response.minor);
 
 	return 0;
 }
 
 static int gb_bootrom_probe(struct gb_bundle *bundle,
-					const struct greybus_bundle_id *id)
+			    const struct greybus_bundle_id *id)
 {
 	struct greybus_descriptor_cport *cport_desc;
 	struct gb_connection *connection;
@@ -429,7 +429,7 @@ static int gb_bootrom_probe(struct gb_bundle *bundle,
 		return -ENOMEM;
 
 	connection = gb_connection_create(bundle,
-						le16_to_cpu(cport_desc->id),
+					  le16_to_cpu(cport_desc->id),
 						gb_bootrom_request_handler);
 	if (IS_ERR(connection)) {
 		ret = PTR_ERR(connection);
@@ -467,7 +467,7 @@ static int gb_bootrom_probe(struct gb_bundle *bundle,
 				NULL, 0);
 	if (ret) {
 		dev_err(&connection->bundle->dev,
-				"failed to send AP READY: %d\n", ret);
+			"failed to send AP READY: %d\n", ret);
 		goto err_cancel_timeout;
 	}
 
-- 
2.7.4


