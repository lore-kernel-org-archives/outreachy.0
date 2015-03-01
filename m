X-GM-THRID: 5512019050496
X-Received: by 10.180.89.194 with SMTP id bq2mr1732257wib.4.1425248117150;
        Sun, 01 Mar 2015 14:15:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls373699laf.99.gmail; Sun, 01 Mar
 2015 14:15:16 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr3373089lbb.20.1425248116369;
        Sun, 01 Mar 2015 14:15:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si556289wid.1.2015.03.01.14.15.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:15:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="123881036"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:15:15 +0100
Date: Sun, 1 Mar 2015 16:15:12 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tina Johnson <tinajohnson.1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: lustre: lustre: libcfs:
 Replaced printk() with pr_err()
In-Reply-To: <1425233707-9585-3-git-send-email-tinajohnson.1234@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011614060.2545@hadrien>
References: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com> <1425233707-9585-3-git-send-email-tinajohnson.1234@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> @@ -688,7 +687,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  	if (IS_ERR(filp)) {
>  		rc = PTR_ERR(filp);
>  		filp = NULL;
> -		printk(KERN_ERR "LustreError: can't open %s for dump: rc %d\n",
> +		pr_err("LustreError: can't open %s for dump: rc %d\n",
>  		      filename, rc);

filename could be moved to the right a little, to be in line with the
first argument.

> -			printk(KERN_ERR "There are %d pages unwritten\n",
> +			pr_err("There are %d pages unwritten\n",
>  			       i);

A newline could be removed here.

julia

