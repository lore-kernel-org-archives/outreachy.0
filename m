X-GM-THRID: 6333834735065759744
X-Received: by 10.28.207.3 with SMTP id f3mr385787wmg.10.1474721568016;
        Sat, 24 Sep 2016 05:52:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.22.77 with SMTP id 74ls732361wmw.15.canary; Sat, 24 Sep
 2016 05:52:47 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr594475wjc.2.1474721567528;
        Sat, 24 Sep 2016 05:52:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si73795wmd.1.2016.09.24.05.52.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:52:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,387,1470693600"; 
   d="scan'208";a="194516865"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 14:52:46 +0200
Date: Sat, 24 Sep 2016 14:52:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Jarod Wilson <jarod@wilsonet.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    Tapasweni Pathak <tapaswenipathak@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    Maciek Borzecki <maciek.borzecki@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: media: lirc: Mention
 data type along with 'unsigned'
In-Reply-To: <e1de5318efff31d1f7f18242ae534d5979aff12b.1474708456.git.namrataashettar@gmail.com>
Message-ID: <alpine.DEB.2.10.1609241451590.3447@hadrien>
References: <cover.1474708455.git.namrataashettar@gmail.com> <e1de5318efff31d1f7f18242ae534d5979aff12b.1474708456.git.namrataashettar@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Namrata A Shettar wrote:

> Mention the data type along with the variable to resolve checkpatch
> issue.

The commit message is a bit obscure.  "Convert unsigned to unsigned
int..." would be more explicit.

julia

>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
> index b080fde..9eb1eec 100644
> --- a/drivers/staging/media/lirc/lirc_sasem.c
> +++ b/drivers/staging/media/lirc/lirc_sasem.c
> @@ -73,7 +73,7 @@ static void usb_tx_callback(struct urb *urb);
>
>  /* VFD file_operations function prototypes */
>  static int vfd_open(struct inode *inode, struct file *file);
> -static long vfd_ioctl(struct file *file, unsigned cmd, unsigned long arg);
> +static long vfd_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
>  static int vfd_close(struct inode *inode, struct file *file);
>  static ssize_t vfd_write(struct file *file, const char __user *buf,
>  				size_t n_bytes, loff_t *pos);
> @@ -243,7 +243,7 @@ exit:
>   * Called when the VFD device (e.g. /dev/usb/lcd)
>   * is closed by the application.
>   */
> -static long vfd_ioctl(struct file *file, unsigned cmd, unsigned long arg)
> +static long vfd_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  {
>  	struct sasem_context *context;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e1de5318efff31d1f7f18242ae534d5979aff12b.1474708456.git.namrataashettar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

