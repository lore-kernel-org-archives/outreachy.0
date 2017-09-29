X-GM-THRID: 6470705412124442624
X-Received: by 10.99.104.67 with SMTP id d64mr804511pgc.106.1506655078195;
        Thu, 28 Sep 2017 20:17:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.152.88 with SMTP id l24ls1556275pgo.18.gmail; Thu, 28 Sep
 2017 20:17:56 -0700 (PDT)
X-Received: by 10.84.130.67 with SMTP id 61mr572110plc.34.1506655076945;
        Thu, 28 Sep 2017 20:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506655076; cv=none;
        d=google.com; s=arc-20160816;
        b=0I9d+FEGUGcWBbmfbARC+nhTgu2wj/jRHQJuaTGritgJnJ80IRB0c9y0KD/zctAqmO
         DzDeXwRdPKtq4wL6N/iKvxtSEUr6gJrMixNh/I6ren+yrMTfx/LjnwgDV58rqQXUZszp
         tFxypterCmEf2ZLB05hiryfvrJtxgD2bhYMXkijZrNsu6JmKobIXY1keQ8kNaS61LZy+
         E62KHjqFvv7V06gEgPHpWQJeVXyhQh1HePHWwruXNjF/ZJm6Oj7KtVCc552MzHDoqK04
         gMAyhsayYaaJKR1hCojYOzZtcgqZuNhcwINQBDNuQqAzGUHQwSJ9F0DbQzxCkBfHCqb1
         gR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=bLAZW77OVtY3h/maBfgvCnZQnZbumI0aURTmX8MCdmM=;
        b=Wd2l7yVcQK2G3U7C711mcpMdD60BlJ+kAm3+zZuJ+3nOYZY8sv80DrHV6/G23b78gp
         ZUpDiVHB6NyzsNMGsSGL2Ubi9oIksDkoPv8AkUUvY13JRRNGJUumiw4bn6dV9eN3cVzV
         yK4JaGlKGLLV0IX8YHyFJKfMOWLDiu2Z2yo150YUaU6+oR8Aiu7FQSa3Z4VLtdplKLi0
         z89m1gqbT8DjTEfqviGiJe0jXLKGd7Rm7taX0b+yK1zFyhAy8pljPj6SholBCcn7IrMI
         +omxfD6qMovnYEm7yLCDjCE7UoSZSlNup6FmIaJJN5Cp4ZC7AL92nKwVWIhh9reUL5Np
         v+bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfZFsixt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a83si387979pfl.25.2017.09.28.20.17.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfZFsixt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 125so121721pgj.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 20:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=bLAZW77OVtY3h/maBfgvCnZQnZbumI0aURTmX8MCdmM=;
        b=tfZFsixtZ2feuHtYmx+tUSvKCxwIcXtOn7BgIILnrTY51VDEeYQpM6p202KL22/7nd
         hz5cGGmBtB+o+kM90HvjXph4fTYBhKDDHyLiPOh1l3abk6EfdyA4O89IfqAG2Zs97m0B
         Ol5JNfqiQDZqH3dH6TepvMUhyDCp8BDIm8p5RKIBUHreJPquTwAcDY3V7sS4sx/bMlH9
         UXayyXBOhQsRZE8LeyjiXeR3ly0k8SrU8gnTGVeWo20gp6m1CIhTm/DyGOR6tOzefoqc
         c7b5QPWMkJzWVKrRD/vTbogZAhh9YwZYwM0034o4A6ig07nJvAZdNBjR838cmL0/9Zjo
         F84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=bLAZW77OVtY3h/maBfgvCnZQnZbumI0aURTmX8MCdmM=;
        b=iestUJ8lW50fla9YDpWvxMg9dOIWzMvHRcpZd3yLfoX/zc5u9azWYJxIBnJou91IwQ
         /2iopSY90gFI3SmoidGMjzbMJPWUJ+plDXbC5TaoHl4VPBAsGq+Z3Wa5awDbNlgvzD3t
         whGZz2S3iKW2nhA4sKVuSkadleijy0LT0F2QXWJjWwhpy7XFGAIlAgUs1lCVIlWWYLQG
         FJhB6Djdy+CKhd9EiY6Imw6wKyx50g0uoLEqt1VDiKiQvLGfSS/ZsWzFUnMubqWiikn7
         yZU9TIqvBbD8/JMZPV66XkydW0EFM2IUGkKyKNFsCVdWgBf1U3gRJFwHUVsS+1d8at5J
         Dmkw==
X-Gm-Message-State: AHPjjUh+Q74XD9O2Ta0KRRp2uZeu1qTOotn+/hT5ayt/dX8HIhzEmcWU
	tHlLBLzpb/ShOOfBcIe6BmTK4umc
X-Google-Smtp-Source: AOwi7QDrP6eXXUVq1y/CL/jGUdgOmkTHHN9ZpzLmAvFbZJ38+t/jihNaphADFvQxb9sRZvZbKkMkZg==
X-Received: by 10.98.59.193 with SMTP id w62mr6007134pfj.7.1506655076656;
        Thu, 28 Sep 2017 20:17:56 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id a29sm4031528pgn.75.2017.09.28.20.17.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:17:55 -0700 (PDT)
Date: Fri, 29 Sep 2017 08:47:49 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <20170929031746.GA9859@meghana-HP-Pavilion-Notebook>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
 <6a467fc9-547e-2469-74fb-92384d2cae71@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6a467fc9-547e-2469-74fb-92384d2cae71@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 06:19:35PM +0200, Noralf Tr�nnes wrote:
> 
> Den 28.09.2017 11.15, skrev Meghana Madhyastha:
> >Add devm_drm_of_find_backlight and the corresponding release
> >function because some drivers such as tinydrm use devres versions
> >of functions for requiring device resources.
> >
> >Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >---
> >Changes in v3:
> >-None
> >
> >  drivers/gpu/drm/drm_of.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_of.h     |  2 ++
> >  2 files changed, 50 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >index d878d3a..238e8e5 100644
> >--- a/drivers/gpu/drm/drm_of.c
> >+++ b/drivers/gpu/drm/drm_of.c
> >@@ -304,3 +304,51 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
> >  	return backlight;
> >  }
> >  EXPORT_SYMBOL(drm_of_find_backlight);
> >+
> >+/**
> >+ * devm_drm_of_find_backlight_release - Release backlight device
> >+ * @dev: Device
> >+ *
> >+ * This is the release function corresponding to the devm_drm_of_find_backlight.
> >+ * Each devres entry is associated with a release function.
> >+ */
> 
> This is an internal function so no need for docs or exporting. I know
> that some devm_ functions have explicit release functions, but I don't
> think this is necessary since those users can just use
> drm_of_find_backlight() directly instead.

I have a question here. devm_drm_of_find_backlight_release is a
wrapper around put_device which is passed as a parameter to
devm_add_action in devm_drm_of_find_backlight. So isn't the function
useful here ?

> >+static void devm_drm_of_find_backlight_release(void *data)
> >+{
> >+	put_device(data);
> >+}
> >+EXPORT_SYMBOL(devm_drm_of_find_backlight_release);
> >+
> >+/**
> >+ * devm_drm_of_find_backlight - Find backlight device in device-tree
> >+ * devres version of the function
> >+ * @dev: Device
> >+ *
> >+ * This is the devres version of the function drm_of_find_backlight.
> >+ * Some drivers such as tinydrm use devres versions of functions for
> 
> No need to mention tinydrm here.
> 
> >+ * requiring device resources.
> >+ *
> >+ * Returns:
> >+ * NULL if there's no backlight property.
> >+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >+ * is found.
> >+ * If the backlight device is found, a pointer to the structure is returned.
> >+ */
> >+struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> >+{
> >+	struct backlight_device *backlight;
> >+	int ret;
> >+
> >+	backlight = drm_of_find_backlight(dev);
> >+	if (IS_ERR_OR_NULL(backlight))
> >+		return backlight;
> >+
> >+	ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> >+			      &backlight->dev);
> >+	if (ret) {
> >+		put_device(&backlight->dev);
> >+		return ERR_PTR(ret);
> >+	}
> >+
> >+	return backlight;
> >+}
> >+EXPORT_SYMBOL(devm_drm_of_find_backlight);
> >diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> >index e8fba5b..071fb3b 100644
> >--- a/include/drm/drm_of.h
> >+++ b/include/drm/drm_of.h
> >@@ -30,7 +30,9 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >  				struct drm_panel **panel,
> >  				struct drm_bridge **bridge);
> >  struct backlight_device *drm_of_find_backlight(struct device *dev);
> >+struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
> >  #else
> 
> We need a dummy version of devm_drm_of_find_backlight() here that
> returns NULL as in the previous patch.
> 
> >+static void devm_drm_of_find_backlight_release(void *data);
> 
> And this isn't needed as explained above.
> >  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >  						  struct device_node *port)
> >  {
> 
> I'd appreciate if you could also switch mi0283qt over to this helper :-)
> 
> Noralf.
> 
> 

