X-GM-THRID: 6389549071972958208
X-Received: by 10.46.20.72 with SMTP id 8mr2931797lju.19.1487683309205;
        Tue, 21 Feb 2017 05:21:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.129 with SMTP id i123ls1660754wmf.6.canary-gmail; Tue,
 21 Feb 2017 05:21:48 -0800 (PST)
X-Received: by 10.28.31.4 with SMTP id f4mr1187219wmf.17.1487683308300;
        Tue, 21 Feb 2017 05:21:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h198si979598wmg.1.2017.02.21.05.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:21:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,189,1484002800"; 
   d="scan'208";a="261460222"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 14:21:22 +0100
Date: Tue, 21 Feb 2017 14:21:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org, 
    greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/6] staging: greybus: Remove
 unnecessary braces
In-Reply-To: <20170221131535.GA3718@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702211420530.3121@hadrien>
References: <20170221131535.GA3718@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, simran singhal wrote:

> This patch removes braces for single statement blocks. The warning
> was detected using checkpatch.pl.
> Coccinelle was used to make the change.
>
> @@
> expression e,e1;
> @@
> - if (e) {
> + if (e)
>   e1;
> - }
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>
>  v2:
>    -I forgot to cc outreachy mailing list
>
>  drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
>  drivers/staging/greybus/audio_topology.c      | 9 +++------
>  drivers/staging/greybus/bootrom.c             | 6 ++----
>  drivers/staging/greybus/control.c             | 3 +--
>  drivers/staging/greybus/es2.c                 | 3 +--
>  drivers/staging/greybus/gpio.c                | 6 ++----
>  drivers/staging/greybus/manifest.c            | 3 +--
>  drivers/staging/greybus/module.c              | 3 +--
>  drivers/staging/greybus/svc.c                 | 9 +++------
>  9 files changed, 15 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> index 34ebd14..dc1d7a1 100644
> --- a/drivers/staging/greybus/audio_manager_sysfs.c
> +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> @@ -88,10 +88,9 @@ static void manager_sysfs_init_attribute(
>  	int err;
>
>  	err = sysfs_create_file(kobj, &kattr->attr);
> -	if (err) {
> +	if (err)
>  		pr_warn("creating the sysfs entry for %s failed: %d\n",
>  			kattr->attr.name, err);

Maybe there is an opportunity for using a dev_... function here.

julia

> -	}
>  }
>
>  void gb_audio_manager_sysfs_init(struct kobject *kobj)
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 3001a49..0e02f00 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -327,10 +327,9 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
>
>  	gb_pm_runtime_put_autosuspend(bundle);
>
> -	if (ret) {
> +	if (ret)
>  		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
>  				    __func__, kcontrol->id.name);
> -	}
>
>  	return ret;
>  }
> @@ -637,10 +636,9 @@ static int gbcodec_enum_ctl_put(struct snd_kcontrol *kcontrol,
>
>  	gb_pm_runtime_put_autosuspend(bundle);
>
> -	if (ret) {
> +	if (ret)
>  		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
>  				    __func__, kcontrol->id.name);
> -	}
>
>  	return ret;
>  }
> @@ -837,11 +835,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>
>  		gb_pm_runtime_put_autosuspend(bundle);
>
> -		if (ret) {
> +		if (ret)
>  			dev_err_ratelimited(codec->dev,
>  					    "%d:Error in %s for %s\n", ret,
>  					    __func__, kcontrol->id.name);
> -		}
>  		for (wi = 0; wi < wlist->num_widgets; wi++) {
>  			widget = wlist->widgets[wi];
>
> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
> index 5f90721..0e01e2b 100644
> --- a/drivers/staging/greybus/bootrom.c
> +++ b/drivers/staging/greybus/bootrom.c
> @@ -176,10 +176,9 @@ static int find_firmware(struct gb_bootrom *bootrom, u8 stage)
>
>  	rc = request_firmware(&bootrom->fw, firmware_name,
>  		&connection->bundle->dev);
> -	if (rc) {
> +	if (rc)
>  		dev_err(&connection->bundle->dev,
>  			"failed to find %s firmware (%d)\n", firmware_name, rc);
> -	}
>
>  	return rc;
>  }
> @@ -226,11 +225,10 @@ static int gb_bootrom_firmware_size_request(struct gb_operation *op)
>  	mutex_unlock(&bootrom->mutex);
>
>  queue_work:
> -	if (!ret) {
> +	if (!ret)
>  		/* Refresh timeout */
>  		gb_bootrom_set_timeout(bootrom, NEXT_REQ_GET_FIRMWARE,
>  				       NEXT_REQ_TIMEOUT_MS);
> -	}
>
>  	return ret;
>  }
> diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
> index 5b30be3..d8452c8 100644
> --- a/drivers/staging/greybus/control.c
> +++ b/drivers/staging/greybus/control.c
> @@ -167,10 +167,9 @@ int gb_control_disconnecting_operation(struct gb_control *control,
>  	request->cport_id = cpu_to_le16(cport_id);
>
>  	ret = gb_operation_request_send_sync(operation);
> -	if (ret) {
> +	if (ret)
>  		dev_err(&control->dev, "failed to send disconnecting: %d\n",
>  				ret);
> -	}
>
>  	gb_operation_put(operation);
>
> diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
> index 93afd93..478eb53 100644
> --- a/drivers/staging/greybus/es2.c
> +++ b/drivers/staging/greybus/es2.c
> @@ -1019,10 +1019,9 @@ static int arpc_sync(struct es2_ap_dev *es2, u8 type, void *payload,
>  	spin_unlock_irqrestore(&es2->arpc_lock, flags);
>  	arpc_free(rpc);
>
> -	if (retval < 0 && retval != -EREMOTEIO) {
> +	if (retval < 0 && retval != -EREMOTEIO)
>  		dev_err(&es2->usb_dev->dev,
>  			"failed to execute ARPC: %d\n", retval);
> -	}
>
>  	return retval;
>  }
> diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
> index 250caa0..ea9e3f8 100644
> --- a/drivers/staging/greybus/gpio.c
> +++ b/drivers/staging/greybus/gpio.c
> @@ -125,10 +125,9 @@ static int gb_gpio_get_direction_operation(struct gb_gpio_controller *ggc,
>  		return ret;
>
>  	direction = response.direction;
> -	if (direction && direction != 1) {
> +	if (direction && direction != 1)
>  		dev_warn(dev, "gpio %u direction was %u (should be 0 or 1)\n",
>  			 which, direction);
> -	}
>  	ggc->lines[which].direction = direction ? 1 : 0;
>  	return 0;
>  }
> @@ -181,10 +180,9 @@ static int gb_gpio_get_value_operation(struct gb_gpio_controller *ggc,
>  	}
>
>  	value = response.value;
> -	if (value && value != 1) {
> +	if (value && value != 1)
>  		dev_warn(dev, "gpio %u value was %u (should be 0 or 1)\n",
>  			 which, value);
> -	}
>  	ggc->lines[which].value = value ? 1 : 0;
>  	return 0;
>  }
> diff --git a/drivers/staging/greybus/manifest.c b/drivers/staging/greybus/manifest.c
> index 7b90377..eee57a3 100644
> --- a/drivers/staging/greybus/manifest.c
> +++ b/drivers/staging/greybus/manifest.c
> @@ -152,11 +152,10 @@ static int identify_descriptor(struct gb_interface *intf,
>  	}
>
>  	/* Descriptor bigger than what we expect */
> -	if (desc_size > expected_size) {
> +	if (desc_size > expected_size)
>  		dev_warn(&intf->dev, "%s descriptor size mismatch (want %zu got %zu)\n",
>  				get_descriptor_type_string(desc_header->type),
>  				expected_size, desc_size);
> -	}
>
>  	descriptor = kzalloc(sizeof(*descriptor), GFP_KERNEL);
>  	if (!descriptor)
> diff --git a/drivers/staging/greybus/module.c b/drivers/staging/greybus/module.c
> index 660b467..956b8ab 100644
> --- a/drivers/staging/greybus/module.c
> +++ b/drivers/staging/greybus/module.c
> @@ -148,11 +148,10 @@ static void gb_module_register_interface(struct gb_interface *intf)
>
>  	ret = gb_interface_activate(intf);
>  	if (ret) {
> -		if (intf->type != GB_INTERFACE_TYPE_DUMMY) {
> +		if (intf->type != GB_INTERFACE_TYPE_DUMMY)
>  			dev_err(&module->dev,
>  					"failed to activate interface %u: %d\n",
>  					intf_id, ret);
> -		}
>
>  		gb_interface_add(intf);
>  		goto err_unlock;
> diff --git a/drivers/staging/greybus/svc.c b/drivers/staging/greybus/svc.c
> index be151a6..dbf0f87 100644
> --- a/drivers/staging/greybus/svc.c
> +++ b/drivers/staging/greybus/svc.c
> @@ -512,10 +512,9 @@ void gb_svc_connection_destroy(struct gb_svc *svc, u8 intf1_id, u16 cport1_id,
>
>  	ret = gb_operation_sync(connection, GB_SVC_TYPE_CONN_DESTROY,
>  				&request, sizeof(request), NULL, 0);
> -	if (ret) {
> +	if (ret)
>  		dev_err(&svc->dev, "failed to destroy connection (%u:%u %u:%u): %d\n",
>  				intf1_id, cport1_id, intf2_id, cport2_id, ret);
> -	}
>  }
>
>  /* Creates bi-directional routes between the devices */
> @@ -544,10 +543,9 @@ void gb_svc_route_destroy(struct gb_svc *svc, u8 intf1_id, u8 intf2_id)
>
>  	ret = gb_operation_sync(svc->connection, GB_SVC_TYPE_ROUTE_DESTROY,
>  				&request, sizeof(request), NULL, 0);
> -	if (ret) {
> +	if (ret)
>  		dev_err(&svc->dev, "failed to destroy route (%u %u): %d\n",
>  				intf1_id, intf2_id, ret);
> -	}
>  }
>
>  int gb_svc_intf_set_power_mode(struct gb_svc *svc, u8 intf_id, u8 hs_series,
> @@ -960,10 +958,9 @@ static void gb_svc_process_module_inserted(struct gb_operation *operation)
>  	dev_dbg(&svc->dev, "%s - id = %u, num_interfaces = %zu, flags = 0x%04x\n",
>  			__func__, module_id, num_interfaces, flags);
>
> -	if (flags & GB_SVC_MODULE_INSERTED_FLAG_NO_PRIMARY) {
> +	if (flags & GB_SVC_MODULE_INSERTED_FLAG_NO_PRIMARY)
>  		dev_warn(&svc->dev, "no primary interface detected on module %u\n",
>  				module_id);
> -	}
>
>  	module = gb_svc_module_lookup(svc, module_id);
>  	if (module) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221131535.GA3718%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

