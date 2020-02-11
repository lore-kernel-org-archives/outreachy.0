X-GM-THRID: 6792282494518427648
X-Received: by 2002:a05:6402:1611:: with SMTP id f17mr7308993edv.266.1581453906090;
        Tue, 11 Feb 2020 12:45:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:177c:: with SMTP id da28ls7060857edb.8.gmail; Tue,
 11 Feb 2020 12:45:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqxCLH0xHiPvW+nIs01BWDiRQZFfmevuF4KB2wO+0gG54ODuqS4NdwaFqnSITrqKpciTLguI
X-Received: by 2002:a50:cc0b:: with SMTP id m11mr7552355edi.339.1581453904736;
        Tue, 11 Feb 2020 12:45:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581453904; cv=none;
        d=google.com; s=arc-20160816;
        b=qXnU+2ZrD6g72Yb2pHzWy86CITBaFa5ZptDKpvB8+z2NHJkv/iGTzrrDEApQ3StlRC
         f8MC3Pk3ZB3iOc+C9kqcKY+iXLZnPlBdnsWQO4vxSml9f6O2A2i501kpDvhZ4Kbm8D23
         bJdKWVeLdOmutnLNcml+uAwDSppZzZXFEKyhuejJQ3PumuRYUWb5XTEu9dgddZHMtNOp
         hXfWdCwUE19DQ6iYXSBZli8fE5yB3IpMTKRbY0sm9oGByh5F0E1IemSxUptGbO0myxCI
         QQ+UoZ/WwQGp4HzR8IOfq/zloOlxRTjkFOryaNzvgYZGrc67NXF/ZyATOWLD+g/iVwc/
         dPKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YAQ8IreYdvMP7bghiSU7Hp2oA33SCpr0k262UCpRn6U=;
        b=TgMoh8IVaJu+E6SLEVjyogNkIDaOS9dbB8xCpTJKOue5Sd6y+qXJwZ9xpdbUN0BXfe
         2ZcRG4+ftvbkJagDsYB4mq2j7cZd1jIXkln8OcfdceGy+T8jH6dEyMJmgR2bQAIhhcTM
         D7V0UZ6Wc1YtQWISPdjDwOepcZjx9ue8iHfqRnEYyfrH3q3anBWEhy7ZbuHPpYp47GzL
         jlxsn0mk70Pu6LNnacN77KNJcix6ncpLphHJKKA6a0UeQKNFa9nh2NX7+FKtEGcrAMsn
         mMrG8S/lqnlDST5gsfVxzlD5aHKY/8skkkCW6vBngpoxk6H+2FZ9WEjtm09iOxDVKD50
         DyxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d29si187284edj.0.2020.02.11.12.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,428,1574118000"; 
   d="scan'208";a="338857795"
Received: from abo-105-123-68.mrs.modulonet.fr (HELO hadrien) ([85.68.123.105])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Feb 2020 21:45:03 +0100
Date: Tue, 11 Feb 2020 21:45:03 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, 
    Ben Chan <benchan@chromium.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:Fix WARNING: quoted string
 split across lines
In-Reply-To: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2002112139550.3266@hadrien>
References: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 12 Feb 2020, Kaaira Gupta wrote:

> Whenever it tries to map a region, but the region has permissions, or it attempts to open gasket with tgid, or it releases device node the messages are displayed in one line only, respectively.
> And it becomes confusing for the developer to search for the code based on these lines' output since they are written in separate lines in the code.
> So, this patch fixes this 'WARNING: quoted string split across lines'
> in three lines in the file gasket_core.c.

Congratulations on making the first submission of this round :)

However, some changes are needed.  The subject line needs better tags at
the beginning to highlight what part of the kernel is affected.  Use git
log --oneline on this file to see what others have done.  And follow the
style used, in terms of whitespace.  Also, try to avoid the word Fix in
the subject line, which is not very descriptive.  The word WARNING: is
probably also not necessary.

Afterwards, the log message should also respect the 80 character limit.
Ideally even fewer characters, because it will come out indented in the
resulting path.

Finally, the log message should describe what it does using the
imperative, and again should avoid the word "fix".

julia

>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/gasket/gasket_core.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> index cd8be80d2076..411aaf248b37 100644
> --- a/drivers/staging/gasket/gasket_core.c
> +++ b/drivers/staging/gasket/gasket_core.c
> @@ -692,8 +692,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
>  		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
>  	if (requested_permissions & ~(bar_permissions)) {
>  		dev_dbg(gasket_dev->dev,
> -			"Attempting to map a region with requested permissions "
> -			"0x%x, but region has permissions 0x%x.\n",
> +			"Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
>  			requested_permissions, bar_permissions);
>  		return false;
>  	}
> @@ -1180,8 +1179,7 @@ static int gasket_open(struct inode *inode, struct file *filp)
>  	inode->i_size = 0;
>
>  	dev_dbg(gasket_dev->dev,
> -		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, "
> -		"fmode_write: %d is_root: %u)\n",
> +		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
>  		current->tgid, task_name, filp->f_mode,
>  		(filp->f_mode & FMODE_WRITE), is_root);
>
> @@ -1258,8 +1256,7 @@ static int gasket_release(struct inode *inode, struct file *file)
>  	mutex_lock(&gasket_dev->mutex);
>
>  	dev_dbg(gasket_dev->dev,
> -		"Releasing device node. Call origin: tgid %u (%s) "
> -		"(f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
> +		"Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
>  		current->tgid, task_name, file->f_mode,
>  		(file->f_mode & FMODE_WRITE), is_root);
>  	dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200211200456.GA10351%40kaaira-HP-Pavilion-Notebook.
>

