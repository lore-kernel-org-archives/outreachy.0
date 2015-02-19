X-GM-THRID: 845841170432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5b3d34d70b67459
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr841892laa.2.1424377635284;
        Thu, 19 Feb 2015 12:27:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls358274wib.37.gmail; Thu, 19 Feb
 2015 12:27:14 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr1284479wic.4.1424377634965;
        Thu, 19 Feb 2015 12:27:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si9110969wid.1.2015.02.19.12.27.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:27:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="122575988"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:27:14 +0100
Date: Thu, 19 Feb 2015 21:27:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Added blank
 line
In-Reply-To: <1424374382-19896-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192126070.2192@localhost6.localdomain6>
References: <1424374382-19896-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

http://kernelnewbies.org/PatchPhilosophy suggests to use imperative 
language:

In patch descriptions and in the subject, it is common and preferable to 
use present-tense, imperative language. Write as if you are telling git 
what to do with your patch. 

So it should be "Add" not "Added".

julia

On Thu, 19 Feb 2015, Ksenija Stanojevic wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Ksenija Stanojevic <ksenij.stanojevic@gmail.com>
> ---
>  drivers/staging/media/vino/saa7191.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
> index 29e3296..f223e47 100644
> --- a/drivers/staging/media/vino/saa7191.c
> +++ b/drivers/staging/media/vino/saa7191.c
> @@ -521,6 +521,7 @@ static int saa7191_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
>  		break;
>  	case SAA7191_CONTROL_LUMA_DELAY: {
>  		s32 value = ctrl->value;
> +
>  		if (value < 0)
>  			value += 8;
>  		reg = saa7191_read_reg(sd, SAA7191_REG_CTL3);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424374382-19896-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

