X-GM-THRID: 6808669983198937088
X-Received: by 2002:aca:eb4e:: with SMTP id j75mr3310221oih.18.1585299418126;
        Fri, 27 Mar 2020 01:56:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4007:: with SMTP id m7ls3030890ote.5.gmail; Fri, 27 Mar
 2020 01:56:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtnHueMqx7maNir+d4vYEekAH3Mm8sbstn9JPJr6z7azP/VZJM7bEOhxY8uxjaY4Qeq8mhd
X-Received: by 2002:a9d:754e:: with SMTP id b14mr2235467otl.293.1585299417120;
        Fri, 27 Mar 2020 01:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585299417; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+fViM0elsZD1Q8MFY+UNrG8bC+jt/s1VuT2Q9AdpgdWzB3MZBW5/komkIFLBBbJmQ
         uavUmg53I2jx2oFD1df3bZTCDD3B1g0XbrfljSSVFvv0SLTzERZT5f1aj4LKneIU9WrU
         CvaJfVAGVxJ+Id1oVmYh/cibUCd8KoMneFKr0pqHLSpa+fc7AIxE6ftolBaAHZp4/rVi
         mqFJIFQvaUIhMsov4zNXJ+YZQJvXSgOSYMSzEoT+PI68j51r7xMO9h6rQr571dPVTgc5
         PXZqECMVhmVHFgUJ8cLhKXnZcD8Lw+FhZj7rSVOha+Z5UHsRD6XVX0evb+G1dH7UbagW
         jRzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Fjehq72c5qESF6Fw2pB8rn2F6//PRPIFaxqJZXogKcg=;
        b=yZD+l18/uV2LSBcWjRzhqgxuTHuB3pTal7UUwQ7taOJdDJWGHsvhVMMvWCOp3AnIDd
         LO5GvZOpTKK43Qjsfg6DOp06AZjDtY3LfShYuic8zl73K6nhAWa3hMlh0g+fn8clR7+o
         5rOmP1G0Ep3eg4d+f4y3d1VdFTcc+h9j0UncsKkIvBPglg061JwlEoHpkWR7FH7IqQJ1
         Etd4OUXuuR/GVHZvxZ7N6QYpFtA7lxtYVcIt4ISkKMaYiUal+m/uKKxz8Cl0FdZ0bjGs
         gXBzbtCKeHvMIG1Wi74KCuhPbQobCTaF2PkgLNb/7rnuiXajrseoQ+bJHW7NkjX8u1hH
         EZ0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LB2QpAox;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m19si463988otn.4.2020.03.27.01.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 01:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LB2QpAox;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EB01A20714;
	Fri, 27 Mar 2020 08:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585299416;
	bh=dhGU4mbqpVnKspT3K/fXHLXg5H3cRQ/NVBblfDGJeUs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LB2QpAoxbQV3+Jtx2FoelubgluW47GV9fWQaDbRePWGYbyXl+1Akwm7FGpJS9buAO
	 /GcmYTIW43EMhyzs57sPfyFSHmeILkjDfxcgFBeRI2E33up50t8Mj/oQAA+a4HMMYr
	 0Xc64P5grJ1nqQPQNEMmq4k/T1vV5bVJ0U1i7uSA=
Date: Fri, 27 Mar 2020 09:56:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: gokcekuler@gmail.com
Cc: outreachy-kernel@googlegroups.com, tkjos@android.com, maco@android.com,
	arve@android.com, joel@joelfernandes.org, christian@brauner.io
Subject: Re: [PATCH] staging: android: struct should normally be const
Message-ID: <20200327085654.GA1663139@kroah.com>
References: <20200326235650.GA737@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326235650.GA737@siyah2>

Some comments on the patch, but first, please properly set the "From:"
text in your email client, it does not show your name :(

On Fri, Mar 27, 2020 at 02:56:50AM +0300, gokcekuler@gmail.com wrote:
> Add const before static struct file_operations for tells 
> the compiler to not let anybody modify it. 

You have trailing whitespace on your changelog text :(

But, most importantly, what are you trying to do in this patch?

Why would you make this const?  Who is telling you to do that?

> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 8044510..395929d 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	const static struct file_operations vmfile_fops;

Did you test-build this patch?  It breaks the build horribly which is a
big hint that this is not a correct change :)

thanks,

greg k-h

