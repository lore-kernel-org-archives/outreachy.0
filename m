X-GM-THRID: 6261315047016890368
X-Received: by 10.140.102.163 with SMTP id w32mr13024618qge.10.1457829911446;
        Sat, 12 Mar 2016 16:45:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.36 with SMTP id ij4ls1427627obc.61.gmail; Sat, 12 Mar
 2016 16:45:11 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr12901515obz.20.1457829910993;
        Sat, 12 Mar 2016 16:45:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1815919pab.2.2016.03.12.16.45.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 16:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [50.34.226.154])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 90BD9D07;
	Sun, 13 Mar 2016 00:45:07 +0000 (UTC)
Date: Sat, 12 Mar 2016 16:28:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: binder: fixed line
 over 80 caracters
Message-ID: <20160313002838.GB4420@kroah.com>
References: <20160312234007.GA8939@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312234007.GA8939@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 08:40:07PM -0300, Juliana Rodrigues wrote:
> This patch fixes the following warning caused by checkpatch.pl:
> 
> WARNING: line over 80 characters
> +                                       if (thread->looper & (BINDER_LOOPER_STATE_REGISTERED | BINDER_LOOPER_STATE_ENTERED)) {
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/android/binder.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 7d00b7a..94190fc 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2054,7 +2054,9 @@ static int binder_thread_write(struct binder_proc *proc,
>  				ref->death = NULL;
>  				if (list_empty(&death->work.entry)) {
>  					death->work.type = BINDER_WORK_CLEAR_DEATH_NOTIFICATION;
> -					if (thread->looper & (BINDER_LOOPER_STATE_REGISTERED | BINDER_LOOPER_STATE_ENTERED)) {
> +					if (thread->looper & (
> +						BINDER_LOOPER_STATE_REGISTERED |
> +						BINDER_LOOPER_STATE_ENTERED)) {

Please put the original ( on the second line, and don't use a full tab
to indent, that just looks confusing now, don't you agree?  Line it up
under the first character in "thread->".

thanks,

greg k-h

