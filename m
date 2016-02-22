X-GM-THRID: 6254092556531924992
X-Received: by 10.112.130.42 with SMTP id ob10mr3346444lbb.2.1456144584253;
        Mon, 22 Feb 2016 04:36:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.217.16 with SMTP id q16ls227398wmg.23.canary; Mon, 22 Feb
 2016 04:36:23 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr1096109wmw.5.1456144583794;
        Mon, 22 Feb 2016 04:36:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si1187891wmd.1.2016.02.22.04.36.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:36:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204112458"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 13:36:22 +0100
Date: Mon, 22 Feb 2016 07:36:20 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoul
In-Reply-To: <20160222123259.GA24119@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602220735470.2532@hadrien>
References: <20160222123259.GA24119@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace obsolete simple_strtoul with kstrtoul.
> The Coccinelle semantic patch used to make this change is as follows:
>
> // <smpl>
> @@
> unsigned long l;
> expression e,f,g;
> @@
> - l = simple_strtoul(e, &f, g)
> + kstrtoul(e, g, &l)
> // </smpl>
>
> Additionally, since kstrtoul returns 0 on success and an error code on
> failure, introduced `err` variable to store and return the error code.
> This change was made by hand.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index 16b1c70..0abf941 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -343,12 +343,15 @@ int lprocfs_wr_uint(struct file *file, const char __user *buffer,
>  	unsigned *p = data;
>  	char dummy[MAX_STRING_SIZE + 1], *end;
>  	unsigned long tmp;
> +	int err;
>
>  	dummy[MAX_STRING_SIZE] = '\0';
>  	if (copy_from_user(dummy, buffer, MAX_STRING_SIZE))
>  		return -EFAULT;
>
> -	tmp = simple_strtoul(dummy, &end, 0);
> +	err = kstrtoul(dummy, 0, &tmp);

This doesn't look correct.  end is not being initialized any more.

julia

> +	if (err)
> +		return err;
>  	if (dummy == end)
>  		return -EINVAL;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222123259.GA24119%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

