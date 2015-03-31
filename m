X-GM-THRID: 10535493959680
X-Received: by 10.152.37.231 with SMTP id b7mr1555077lak.5.1427832659911;
        Tue, 31 Mar 2015 13:10:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.211 with SMTP id jq19ls823085lab.32.gmail; Tue, 31 Mar
 2015 13:10:59 -0700 (PDT)
X-Received: by 10.112.213.100 with SMTP id nr4mr8590463lbc.10.1427832659413;
        Tue, 31 Mar 2015 13:10:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id na10si3217wic.0.2015.03.31.13.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 13:10:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,503,1422918000"; 
   d="scan'208";a="130963316"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Mar 2015 22:10:58 +0200
Date: Tue, 31 Mar 2015 22:10:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl8712: Fix zero-testing
 pointer typed value
In-Reply-To: <20150331195003.GA30918@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503312209330.2087@localhost6.localdomain6>
References: <20150331195003.GA30918@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

>  			if (pdvobj->ishighspeed) {
> -				if ((wr_sz % 512) == 0)
> +				if (!wr_sz % 512)

This does not look correct.  !wr_sz is 1 or 0.  Did Coccinelle generate the
code for you this way?

julia

>  					blnPending = 1;
>  			} else {
> -				if ((wr_sz % 64) == 0)
> +				if (!wr_sz % 64)
>  					blnPending = 1;
>  			}
>  			if (blnPending) /* 32 bytes for TX Desc - 8 offset */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150331195003.GA30918%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

