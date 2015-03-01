X-GM-THRID: 4394383835136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eb582bedb9f3672e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.246.135 with SMTP id xw7mr23890303vdc.8.1425251383650;
        Sun, 01 Mar 2015 15:09:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.149 with SMTP id s21ls1008539ioi.58.gmail; Sun, 01 Mar
 2015 15:09:43 -0800 (PST)
X-Received: by 10.66.100.198 with SMTP id fa6mr24056594pab.31.1425251383451;
        Sun, 01 Mar 2015 15:09:43 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1285720pbc.1.2015.03.01.15.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 356162C;
	Sun,  1 Mar 2015 23:09:43 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:09:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Removed unnecessary
 braces
Message-ID: <20150301230942.GA11601@kroah.com>
References: <1425033217-8249-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425033217-8249-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 12:33:37PM +0200, Yeliz Taneroglu wrote:
> The following patch fixes the checkpatch.pl warning:
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/unisys/visorchannel/visorchannel_funcs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/unisys/visorchannel/visorchannel_funcs.c b/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
> index 0188ef8..716deb4 100644
> --- a/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
> +++ b/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
> @@ -416,9 +416,9 @@ signalremove_inner(struct visorchannel *channel, u32 queue, void *msg)
>  {
>  	struct signal_queue_header sig_hdr;
>  
> -	if (!sig_read_header(channel, queue, &sig_hdr)) {
> +	if (!sig_read_header(channel, queue, &sig_hdr))
>  		return FALSE;
> -	}
> +
>  	if (sig_hdr.head == sig_hdr.tail)
>  		return FALSE;	/* no signals to remove */
>  
> @@ -466,9 +466,9 @@ signalinsert_inner(struct visorchannel *channel, u32 queue, void *msg)
>  {
>  	struct signal_queue_header sig_hdr;
>  
> -	if (!sig_read_header(channel, queue, &sig_hdr)) {
> +	if (!sig_read_header(channel, queue, &sig_hdr))
>  		return FALSE;
> -	}
> +
>  
>  	sig_hdr.head = ((sig_hdr.head + 1) % sig_hdr.max_slots);
>  	if (sig_hdr.head == sig_hdr.tail) {
> -- 
> 1.8.3.2

This patch fails to apply to the tree :(

