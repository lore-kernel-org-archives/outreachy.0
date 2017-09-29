X-GM-THRID: 6470705412124442624
X-Received: by 10.98.100.200 with SMTP id y191mr631707pfb.25.1506688490044;
        Fri, 29 Sep 2017 05:34:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.212.80 with SMTP id u16ls1871445pfl.10.gmail; Fri, 29 Sep
 2017 05:34:48 -0700 (PDT)
X-Received: by 10.98.64.91 with SMTP id n88mr610104pfa.58.1506688488895;
        Fri, 29 Sep 2017 05:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506688488; cv=none;
        d=google.com; s=arc-20160816;
        b=Yzy384WIwc8LmPGzXx9LT6svnfErqBgPrjqcbtlZixMOE4tMkNymy6AN3ID8JQ2NJ8
         42ih9LgrnF+lAErITksdbeWO7xr8Lx7taG2oNa2M+q0BoG0+9G1pgYNM4Qc10fe0wI7B
         +1ec94MPZq5HcUY04b6LHe5LUk2zrb9P+nnYaFZKvUu3rbCrF5GG8ME28nRl7dpwVhUR
         E5LqecMX+TceuBMX3ePiRnGswH9o3ageWYmOXozCWogpSzRpWzR9lprAuwusVvFIAgGp
         ugx297xPmd4arBwL1iE5kbuEPFZD+bnIIZATyEcxtpUEqFclGHSJS1pxGwYugtF+1Zbl
         cxpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Jz+nLz1ROrxyj7Oz39SR7nK26XcwN9J5Vp8rBK7/1RU=;
        b=b7eRqjt8BgBjsgefhUUbV0YB8qFLJkhuqOhzbUCOZvRXFUtJgSYRRmu8Mc45h5iEAu
         iW2ImDTVOZhCbYYDdbqMwQcrgZvMxoDTcJU2lDPw/2aT0MWBr0fGCdJO5vx2JL6kincn
         yYsyiR1tDFUpWdO1taPJvMQglXolhhqZnjbViLFhDw2KfkUAFqIt2KO5IHIufEqa5NrW
         zQnsLarbMGF3Y0v9jFDT+fAZiFn+tem4wFGijxr2Zw9j5riLeHha4vL8PsqK8HqFUBnw
         FgVSYbJafrBULtPbHPWNnU/r7PqgcOgPZWF4gLSKIA5GGHhGWgt00m8kEbuML/lxokmf
         9N0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rqcPD7OR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id c200si491327pfb.14.2017.09.29.05.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 05:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rqcPD7OR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id v13so721265pgq.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 05:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Jz+nLz1ROrxyj7Oz39SR7nK26XcwN9J5Vp8rBK7/1RU=;
        b=rqcPD7ORPso09NFOvhd0BKDv9g21CxhYqvwoKSqLKJwizwuZxfakI5nszMqO2LQp4g
         I5LiCY/PD294dKjeYCjy2FfcI/tPXRPNernGqHWJhoA8hmACF6Y0BY0TCmmziQ7i9uXR
         ljMb0qTQdtfweuXVgSYoOtVvH2y8TKeIJqot4CmilqxA6shs8NnuElvJkGm5LJJcAjRD
         Ln3cwxnyBkxgx2uZZAb2orXNNYUylQfw9SnNPMOoZXoJD1hIXGYM20T+QOh4NwjUmOB5
         cY6iD5/BgKFoZbVKCT8N9pNt4ELj4DXp1UWFsYdYC50iWGdmbX43gBk4rokLTYza2HsJ
         1U5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Jz+nLz1ROrxyj7Oz39SR7nK26XcwN9J5Vp8rBK7/1RU=;
        b=Uvy/yCCWfeAlpRTvRZKF2hTYdq+m1LHcGUnrbwFhaDz8BaydOXQ9D7nCz3qHFEa52y
         6rS4Xqhe0iw7LUfv8llHLHZ5dW3GqXOe4jwoGytut/p3mTKcVxZPVdlAAxors8hELK+C
         OM+q8TX8mScRfBdlhOnaxXqbXBp6eJLrx2dXoqKkcEt3dXuHn1euawbfuPwVmmvwNRXr
         YRpOmweh18ghKSVIClp2D0xp/XeT1BYoX0Svj7ZdX9CAxsMsyqZb62W1FD+ZvG6QbEDK
         /BMBnVVHE+XkSSfZRXbVLZbedOtPe7DqjlZ6TShbv6eQD4vo8tPZcrjojrRR1+8BO7w3
         /oqA==
X-Gm-Message-State: AHPjjUgTKoRLlhmXfuaNVJfz/SPgvo1AV2TtVgM6B3qaH27euXUTAAuS
	Fuba2mQIUeesHeuuvcuu2Xg=
X-Google-Smtp-Source: AOwi7QAxmbtNBoXfeK1snSItWR77hFJGPMfsKnR7xYZoEGsQNP11UO0mcRlc/BeYavU1KDRXhfo5HA==
X-Received: by 10.98.189.26 with SMTP id a26mr7490815pff.260.1506688488544;
        Fri, 29 Sep 2017 05:34:48 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id u27sm7092062pfl.76.2017.09.29.05.34.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 05:34:47 -0700 (PDT)
Date: Fri, 29 Sep 2017 18:04:41 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <20170929123438.GA29610@meghana-HP-Pavilion-Notebook>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
 <6a467fc9-547e-2469-74fb-92384d2cae71@tronnes.org>
 <20170929031746.GA9859@meghana-HP-Pavilion-Notebook>
 <463f06a5-5e80-6781-19b0-7f228f9e040b@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <463f06a5-5e80-6781-19b0-7f228f9e040b@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 29, 2017 at 02:20:16PM +0200, Noralf Tr�nnes wrote:
> 
> Den 29.09.2017 05.17, skrev Meghana Madhyastha:
> >On Thu, Sep 28, 2017 at 06:19:35PM +0200, Noralf Tr�nnes wrote:
> >>Den 28.09.2017 11.15, skrev Meghana Madhyastha:
> >>>Add devm_drm_of_find_backlight and the corresponding release
> >>>function because some drivers such as tinydrm use devres versions
> >>>of functions for requiring device resources.
> >>>
> >>>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>>---
> >>>Changes in v3:
> >>>-None
> >>>
> >>>  drivers/gpu/drm/drm_of.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
> >>>  include/drm/drm_of.h     |  2 ++
> >>>  2 files changed, 50 insertions(+)
> >>>
> >>>diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >>>index d878d3a..238e8e5 100644
> >>>--- a/drivers/gpu/drm/drm_of.c
> >>>+++ b/drivers/gpu/drm/drm_of.c
> >>>@@ -304,3 +304,51 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
> >>>  	return backlight;
> >>>  }
> >>>  EXPORT_SYMBOL(drm_of_find_backlight);
> >>>+
> >>>+/**
> >>>+ * devm_drm_of_find_backlight_release - Release backlight device
> >>>+ * @dev: Device
> >>>+ *
> >>>+ * This is the release function corresponding to the devm_drm_of_find_backlight.
> >>>+ * Each devres entry is associated with a release function.
> >>>+ */
> >>This is an internal function so no need for docs or exporting. I know
> >>that some devm_ functions have explicit release functions, but I don't
> >>think this is necessary since those users can just use
> >>drm_of_find_backlight() directly instead.
> >I have a question here. devm_drm_of_find_backlight_release is a
> >wrapper around put_device which is passed as a parameter to
> >devm_add_action in devm_drm_of_find_backlight. So isn't the function
> >useful here ?
> 
> We need the function for devm_add_action(), but no one outside of this file
> needs
> it. Hence the static definition.
> 
> We can't use put_device directly:
> ��� ret = devm_add_action(dev, put_device,
> ��� ��� ��� ����� &backlight->dev);
> because devm_add_action expects an argument like this: void (*action)(void
> *)
> and put_device is: void put_device(struct device *dev)
> They differ in their argument type: void * vs. struct device *
> The compiler would complain.
> 
> So we need a wrapper.

Yes this is what I thought. Okay, I misunderstood your previous
suggestion as removing the release function entirely which is why I
asked my question. Now it makes sense and I understood.

Thanks for the clarifications.

Regards,
Meghana
> >>>+static void devm_drm_of_find_backlight_release(void *data)
> >>>+{
> >>>+	put_device(data);
> >>>+}
> >>>+EXPORT_SYMBOL(devm_drm_of_find_backlight_release);
> >>>+
> >>>+/**
> >>>+ * devm_drm_of_find_backlight - Find backlight device in device-tree
> >>>+ * devres version of the function
> >>>+ * @dev: Device
> >>>+ *
> >>>+ * This is the devres version of the function drm_of_find_backlight.
> >>>+ * Some drivers such as tinydrm use devres versions of functions for
> >>No need to mention tinydrm here.
> >>
> >>>+ * requiring device resources.
> >>>+ *
> >>>+ * Returns:
> >>>+ * NULL if there's no backlight property.
> >>>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>+ * is found.
> >>>+ * If the backlight device is found, a pointer to the structure is returned.
> >>>+ */
> >>>+struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> >>>+{
> >>>+	struct backlight_device *backlight;
> >>>+	int ret;
> >>>+
> >>>+	backlight = drm_of_find_backlight(dev);
> >>>+	if (IS_ERR_OR_NULL(backlight))
> >>>+		return backlight;
> >>>+
> >>>+	ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> >>>+			      &backlight->dev);
> >>>+	if (ret) {
> >>>+		put_device(&backlight->dev);
> >>>+		return ERR_PTR(ret);
> >>>+	}
> >>>+
> >>>+	return backlight;
> >>>+}
> >>>+EXPORT_SYMBOL(devm_drm_of_find_backlight);
> >>>diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> >>>index e8fba5b..071fb3b 100644
> >>>--- a/include/drm/drm_of.h
> >>>+++ b/include/drm/drm_of.h
> >>>@@ -30,7 +30,9 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>>  				struct drm_panel **panel,
> >>>  				struct drm_bridge **bridge);
> >>>  struct backlight_device *drm_of_find_backlight(struct device *dev);
> >>>+struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
> >>>  #else
> >>We need a dummy version of devm_drm_of_find_backlight() here that
> >>returns NULL as in the previous patch.
> >>
> >>>+static void devm_drm_of_find_backlight_release(void *data);
> >>And this isn't needed as explained above.
> >>>  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >>>  						  struct device_node *port)
> >>>  {
> >>I'd appreciate if you could also switch mi0283qt over to this helper :-)
> >>
> >>Noralf.
> >>
> >>
> 

