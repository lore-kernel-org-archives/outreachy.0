X-GM-THRID: 6249445155877683200
X-Received: by 10.112.98.233 with SMTP id el9mr317415lbb.15.1455088986351;
        Tue, 09 Feb 2016 23:23:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.73 with SMTP id c70ls50579lfe.79.gmail; Tue, 09 Feb
 2016 23:23:05 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr4559139lbb.7.1455088985725;
        Tue, 09 Feb 2016 23:23:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w129si936995wme.1.2016.02.09.23.23.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:23:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202409083"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:23:05 +0100
Date: Wed, 10 Feb 2016 08:23:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com, Julia.Lawall@lip6.fr, 
    daniel.baluta@gmail.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a warning
In-Reply-To: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602100821260.2050@localhost6.localdomain6>
References: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Again, the description of the file in the subject line should be shortened 
and the comment needs to be more clear about what is done.

On Wed, 10 Feb 2016, Rakhi Sharma wrote:

> Fixed a checkpatch warning.
> WARNING: struct file_operations should normally be const

The commit message should also say more clearly what you did.  What change 
did you make to cause the warning to go away.  In this case, it would also 
make sense to say where the structure is used, and to argue why a const 
value is acceptable at those places.

julia

> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_pool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
> index b43ce6c..bba37bf 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_pool.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
> @@ -288,7 +288,7 @@ static int pool_proc_open(struct inode *inode, struct file *file)
>  	return rc;
>  }
>  
> -static struct file_operations pool_proc_operations = {
> +static const struct file_operations pool_proc_operations = {
>  	.open	   = pool_proc_open,
>  	.read	   = seq_read,
>  	.llseek	 = seq_lseek,
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455062326-20870-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

