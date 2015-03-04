X-GM-THRID: 6666569383936
X-Received: by 10.152.45.7 with SMTP id i7mr999956lam.9.1425504068491;
        Wed, 04 Mar 2015 13:21:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.98 with SMTP id l2ls208320lam.28.gmail; Wed, 04 Mar
 2015 13:21:08 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr976781lbb.17.1425504068079;
        Wed, 04 Mar 2015 13:21:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bg8si102198wib.3.2015.03.04.13.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 13:21:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,689,1422918000"; 
   d="scan'208";a="102136096"
Received: from unknown (HELO [132.207.219.27]) ([132.207.219.27])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 22:21:07 +0100
Date: Wed, 4 Mar 2015 16:21:05 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Change char * array
 type as static const
In-Reply-To: <1425499377-11968-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1503041616590.2734@hadrien>
References: <1425499377-11968-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> @@ -1481,7 +1481,7 @@ int
>  visorchipset_chipset_selftest(void)
>  {
>  	char env_selftest[20];
> -	char *envp[] = { env_selftest, NULL };
> +	static const char *const envp[] = { env_selftest, NULL };

This appears to be quite incorrect.  env_selftest is an array with no
initialized information at this point.  Adding the const declarations
should make it impossible to put anything in the array.  It seems unlikely
that the compiler would allow this, unless the array is not used at all.
Furthermore, env_selftest is allocated on the stack, whereas a variable
that is declared as static is initialized only once, when the declaration
is first executed.  On subsequent calls to the function, envp will contain
a pointer to an address that now refers to something completely different.

julia



>  	sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
>  	kobject_uevent_env(&Visorchipset_platform_device.dev.kobj, KOBJ_CHANGE,
> @@ -1637,7 +1637,7 @@ parahotplug_request_kickoff(struct parahotplug_request *req)
>  	struct controlvm_message_packet *cmd = &req->msg.cmd;
>  	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
>  	    env_func[40];
> -	char *envp[] = {
> +	static const char *const envp[] = {
>  		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>  	};
>
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425499377-11968-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

