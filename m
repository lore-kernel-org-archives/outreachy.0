X-GM-THRID: 1463092772864
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3539e97c4c1c7bcc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr1510649wjc.5.1424461713989;
        Fri, 20 Feb 2015 11:48:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.230 with SMTP id u6ls167879wia.0.gmail; Fri, 20 Feb 2015
 11:48:33 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr1506005wjc.7.1424461713486;
        Fri, 20 Feb 2015 11:48:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si177976wif.0.2015.02.20.11.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 11:48:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="100797106"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 20:48:32 +0100
Date: Fri, 20 Feb 2015 20:48:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: mac: Deleted space
In-Reply-To: <1424459389-5989-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202047260.2054@localhost6.localdomain6>
References: <1424459389-5989-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1113413578-1424461712=:2054"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1113413578-1424461712=:2054
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

In the subject line, you should have only: Staging: vt6655:.  You can see 
the most common subject lines for this file using:
git log --oneline drivers/staging/vt6655/mac.c

On Fri, 20 Feb 2015, Hatice ERTÜRK wrote:

> Deleted spaces before ','.Because it is prohibited.

Because it is pohibited by the kernel coding style.

julia

> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/mac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index dd241bb..f3c492f 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -808,7 +808,7 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
>  
>  	/* Check if SyncFlushOK */
>  	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -		VNSvInPortB(dwIoBase + MAC_REG_PSCTL , &byOrgValue);
> +		VNSvInPortB(dwIoBase + MAC_REG_PSCTL, &byOrgValue);
>  		if (byOrgValue & PSCTL_WAKEDONE)
>  			break;
>  	}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424459389-5989-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1113413578-1424461712=:2054--

