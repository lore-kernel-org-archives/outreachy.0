X-GM-THRID: 6463670591377375232
X-Received: by 10.28.107.79 with SMTP id g76mr714588wmc.28.1505122511293;
        Mon, 11 Sep 2017 02:35:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.5 with SMTP id i5ls159244lfe.51.gmail; Mon, 11 Sep 2017
 02:35:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBxVcKdFvyrPGKIfZqvZncJ+mPQDLI1tDutiBzLm+IGhMz2J4sMb+L315EYG8ysAilT0VT5
X-Received: by 10.25.150.66 with SMTP id y63mr774012lfd.23.1505122509661;
        Mon, 11 Sep 2017 02:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505122509; cv=none;
        d=google.com; s=arc-20160816;
        b=eJsb/pc0UgO5s3AfUhxltPZS39bDJkqm8AdgLoXeFqY6CWfnVcbsMk3kdQ6wVQUxUt
         BRsF6AHRiiYSQVbJTN6j09VVHU7I/rkwVOddCSN2fzmUnEuKISPy9Jwn2kBrhLc2HcVy
         crZ0ai5HAfIZ4oHEriYpvE7+AE0mmnpiwaNrvEl3kyG6jMi60E7jvY/ozrsU/oZQJ97a
         S069fFfdNZj+DjrccafMLT+z+ZQz9eq3jPKAtyvhlS2NFLhtcTLvYMoXBUwOzCYvcsDw
         sDtQzsKrnCeqfkGHzH0Acm1xVkT6g6RqIBDSbmP+KEOLI7mHazXwkjweD4eCnmaClDkU
         Z9rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-id:mime-version:user-agent:references
         :message-id:in-reply-to:subject:to:from:date
         :arc-authentication-results;
        bh=1YU++tNatZjBk3yTH1QwM4HL9mhbZUzGgXNyGB71bW0=;
        b=KvJj6IyC3qm8Gcxz6s7rV4hdNnpvntamiQh2YAWZuDnat7axHOWLbCxngBeuVfP9YT
         zcZyn57yNyJ/Ce4E9VhhxFzsnfsrzfrJwP1bD69bSdVcJNKO7CthvlI+5pjh+nCErxx0
         K9zkJqkglitieOonKuD5tT8cN39fuR/qs6VRhFyrxBeIZ3UgY3tSG2/mEGYmfvjpWcME
         h97S0/YP5KlaPwlYpYZdYzAJ/KwS1B1SXD+lZikpOPCjJhJWfY8UyZSCaJEV16qQeNVw
         xBewlFnWTHFqYz/k4soBQVvA8aONdI3AD51gSYMDCMsBfNss1ZXmuv2OawA4r5PPHeA7
         l7GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c142si560827wmh.3.2017.09.11.02.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 02:35:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,377,1500933600"; 
   d="scan'208";a="290456375"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 11:35:09 +0200
Date: Mon, 11 Sep 2017 11:34:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: unisys: visorbus: Declared
 char * array as static const
In-Reply-To: <201709111734.pKL861xn%fengguang.wu@intel.com>
Message-ID: <alpine.DEB.2.20.1709111132310.6813@hadrien>
References: <201709111734.pKL861xn%fengguang.wu@intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-ID: <alpine.DEB.2.20.1709111132312.6813@hadrien>
Content-Disposition: inline



On Mon, 11 Sep 2017, kbuild test robot wrote:

> Hi Harsha,
>
> [auto build test ERROR on v4.13]
> [also build test ERROR on next-20170911]
> [cannot apply to staging/staging-testing]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

Just for an explanation, this message is from an automatic build-testing
service that checks whether the patches cause the kernel to build
correctly in a variety of configurations.  There are also some kinds of
static analysis checks.

It this case, it has already been decided that he patch is incorrect and
should be dropped, so the message can be ignored.

julia

>
> url:    https://github.com/0day-ci/linux/commits/Harsha-Sharma/staging-unisys-visorbus-Declared-char-array-as-static-const/20170911-161501
> config: x86_64-allyesconfig (attached as .config)
> compiler: gcc-6 (Debian 6.2.0-3) 6.2.0 20160901
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> All errors (new ones prefixed by >>):
>
>    drivers/staging/unisys/visorbus/visorchipset.c: In function 'parahotplug_request_kickoff':
> >> drivers/staging/unisys/visorbus/visorchipset.c:1174:3: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>       ^~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:3: note: (near initialization for 'envp[0]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:12: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>                ^~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:12: note: (near initialization for 'envp[1]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:20: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>                        ^~~~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:20: note: (near initialization for 'envp[2]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:31: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>                                   ^~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:31: note: (near initialization for 'envp[3]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:40: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>                                            ^~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:40: note: (near initialization for 'envp[4]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:49: error: initializer element is not constant
>       env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>                                                     ^~~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1174:49: note: (near initialization for 'envp[5]')
> >> drivers/staging/unisys/visorbus/visorchipset.c:1189:20: error: passing argument 3 of 'kobject_uevent_env' from incompatible pointer type [-Werror=incompatible-pointer-types]
>           KOBJ_CHANGE, envp);
>                        ^~~~
>    In file included from include/linux/device.h:17:0,
>                     from include/linux/acpi.h:27,
>                     from drivers/staging/unisys/visorbus/visorchipset.c:17:
>    include/linux/kobject.h:218:5: note: expected 'char **' but argument is of type 'const char * const*'
>     int kobject_uevent_env(struct kobject *kobj, enum kobject_action action,
>         ^~~~~~~~~~~~~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c: In function 'chipset_selftest_uevent':
>    drivers/staging/unisys/visorbus/visorchipset.c:1275:39: error: initializer element is not constant
>      static const char * const envp[] = { env_selftest, NULL };
>                                           ^~~~~~~~~~~~
>    drivers/staging/unisys/visorbus/visorchipset.c:1275:39: note: (near initialization for 'envp[0]')
>    drivers/staging/unisys/visorbus/visorchipset.c:1280:19: error: passing argument 3 of 'kobject_uevent_env' from incompatible pointer type [-Werror=incompatible-pointer-types]
>          KOBJ_CHANGE, envp);
>                       ^~~~
>    In file included from include/linux/device.h:17:0,
>                     from include/linux/acpi.h:27,
>                     from drivers/staging/unisys/visorbus/visorchipset.c:17:
>    include/linux/kobject.h:218:5: note: expected 'char **' but argument is of type 'const char * const*'
>     int kobject_uevent_env(struct kobject *kobj, enum kobject_action action,
>         ^~~~~~~~~~~~~~~~~~
>    cc1: some warnings being treated as errors
>
> vim +1174 drivers/staging/unisys/visorbus/visorchipset.c
>
> ebeff055 David Kershner    2016-09-19  1159
> 04dbfea6 David Binder      2017-02-21  1160  /*
> ebeff055 David Kershner    2016-09-19  1161   * parahotplug_request_kickoff() - initiate parahotplug request
> ebeff055 David Kershner    2016-09-19  1162   * @req: the request to initiate
> ebeff055 David Kershner    2016-09-19  1163   *
> ebeff055 David Kershner    2016-09-19  1164   * Cause uevent to run the user level script to do the disable/enable specified
> ebeff055 David Kershner    2016-09-19  1165   * in the parahotplug_request.
> ebeff055 David Kershner    2016-09-19  1166   */
> ae0fa822 David Kershner    2017-03-28  1167  static int
> ebeff055 David Kershner    2016-09-19  1168  parahotplug_request_kickoff(struct parahotplug_request *req)
> ebeff055 David Kershner    2016-09-19  1169  {
> ebeff055 David Kershner    2016-09-19  1170  	struct controlvm_message_packet *cmd = &req->msg.cmd;
> ebeff055 David Kershner    2016-09-19  1171  	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
> ebeff055 David Kershner    2016-09-19  1172  	    env_func[40];
> fdf58f16 Harsha Sharma     2017-09-09  1173  	static const char * const envp[] = {
> ebeff055 David Kershner    2016-09-19 @1174  		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
> ebeff055 David Kershner    2016-09-19  1175  	};
> ebeff055 David Kershner    2016-09-19  1176
> c5a28902 Sameer Wadgaonkar 2017-05-19  1177  	sprintf(env_cmd, "VISOR_PARAHOTPLUG=1");
> c5a28902 Sameer Wadgaonkar 2017-05-19  1178  	sprintf(env_id, "VISOR_PARAHOTPLUG_ID=%d", req->id);
> c5a28902 Sameer Wadgaonkar 2017-05-19  1179  	sprintf(env_state, "VISOR_PARAHOTPLUG_STATE=%d",
> ebeff055 David Kershner    2016-09-19  1180  		cmd->device_change_state.state.active);
> c5a28902 Sameer Wadgaonkar 2017-05-19  1181  	sprintf(env_bus, "VISOR_PARAHOTPLUG_BUS=%d",
> ebeff055 David Kershner    2016-09-19  1182  		cmd->device_change_state.bus_no);
> c5a28902 Sameer Wadgaonkar 2017-05-19  1183  	sprintf(env_dev, "VISOR_PARAHOTPLUG_DEVICE=%d",
> ebeff055 David Kershner    2016-09-19  1184  		cmd->device_change_state.dev_no >> 3);
> c5a28902 Sameer Wadgaonkar 2017-05-19  1185  	sprintf(env_func, "VISOR_PARAHOTPLUG_FUNCTION=%d",
> ebeff055 David Kershner    2016-09-19  1186  		cmd->device_change_state.dev_no & 0x7);
> ebeff055 David Kershner    2016-09-19  1187
> ae0fa822 David Kershner    2017-03-28  1188  	return kobject_uevent_env(&chipset_dev->acpi_device->dev.kobj,
> ae0fa822 David Kershner    2017-03-28 @1189  				  KOBJ_CHANGE, envp);
> ebeff055 David Kershner    2016-09-19  1190  }
> ebeff055 David Kershner    2016-09-19  1191
>
> :::::: The code at line 1174 was first introduced by commit
> :::::: ebeff0558c0a311f4c5d432c69c32b9502219190 staging: unisys: visorbus: move deviceenabled/disabled store functions
>
> :::::: TO: David Kershner <david.kershner@unisys.com>
> :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/201709111734.pKL861xn%25fengguang.wu%40intel.com.
> For more options, visit https://groups.google.com/d/optout.
>

