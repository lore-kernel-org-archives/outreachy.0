X-GM-THRID: 5512019050496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c39504ea3686034d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.156.65 with SMTP id wc1mr669421lbb.7.1425248147840;
        Sun, 01 Mar 2015 14:15:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.131 with SMTP id k3ls395431lak.21.gmail; Sun, 01 Mar
 2015 14:15:47 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr3291633lbc.12.1425248147338;
        Sun, 01 Mar 2015 14:15:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si554236wif.0.2015.03.01.14.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:15:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="101718380"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:15:45 +0100
Date: Sun, 1 Mar 2015 16:15:43 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tina Johnson <tinajohnson.1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: lustre: lustre: libcfs:
 Replaced printk() with pr_err()
In-Reply-To: <1425233707-9585-2-git-send-email-tinajohnson.1234@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011615280.2545@hadrien>
References: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com> <1425233707-9585-2-git-send-email-tinajohnson.1234@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> @@ -433,7 +433,7 @@ static void exit_libcfs_module(void)
>
>  	rc = libcfs_debug_cleanup();
>  	if (rc)
> -		printk(KERN_ERR "LustreError: libcfs_debug_cleanup: %d\n",
> +		pr_err("LustreError: libcfs_debug_cleanup: %d\n",
>  		       rc);

A newline could be removed here.

julia

