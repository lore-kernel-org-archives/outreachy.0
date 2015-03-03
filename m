X-GM-THRID: 6337667792896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d1e72ee22ef5686c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.63.208 with SMTP id i16mr161449wjs.2.1425419604930;
        Tue, 03 Mar 2015 13:53:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.131 with SMTP id k3ls103404lak.21.gmail; Tue, 03 Mar
 2015 13:53:24 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr150919lbc.12.1425419604526;
        Tue, 03 Mar 2015 13:53:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si197716wix.0.2015.03.03.13.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 13:53:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,683,1418079600"; 
   d="scan'208";a="102002405"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 22:53:23 +0100
Date: Tue, 3 Mar 2015 16:53:21 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Change from // to
 /* */
In-Reply-To: <1425416792-8138-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503031651450.2677@hadrien>
References: <1425416792-8138-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> +/* -----------------------------------------------------------------------------
> + Procedure:    Check whether main code is download OK. If OK, turn on CPU
> +
> + Description:   CPU register locates in different page against general register.
> +			    Switch to CPU register in the begin and switch back before return
> +
> +
> + Arguments:   The pointer of the adapter
> +
> + Returns:
> +        NDIS_STATUS_FAILURE - the following initialization process should be terminated
> +        NDIS_STATUS_SUCCESS - if firmware initialization process success
> +----------------------------------------------------------------------------- */

This is not the standard way ofmaking a multi-line comment.  It should have
* down the left side.  You should be able to find an example at the top of
any file.

In some of the other changes there are comments on code.  It has been
stated that such code should just be discarded.

julia

