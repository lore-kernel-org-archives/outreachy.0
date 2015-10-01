X-GM-THRID: 6200529091432546304
X-Received: by 10.50.137.40 with SMTP id qf8mr1156179igb.11.1443678987955;
        Wed, 30 Sep 2015 22:56:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.158.170 with SMTP id wv10ls483797obb.40.gmail; Wed, 30 Sep
 2015 22:56:27 -0700 (PDT)
X-Received: by 10.182.56.70 with SMTP id y6mr5692950obp.17.1443678987551;
        Wed, 30 Sep 2015 22:56:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q133si511155ywb.1.2015.09.30.22.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 22:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3112718A8;
	Thu,  1 Oct 2015 05:56:26 +0000 (UTC)
Date: Thu, 1 Oct 2015 07:56:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
Message-ID: <20151001055624.GA25101@kroah.com>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 01, 2015 at 09:49:26AM +0530, Shraddha Barke wrote:
> These struct are globally defined in source file but they have been
> defined as static in .h file. Remove definition in header file as
> it is not needed. Also fix the compiler warning.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/android/sw_sync.h | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/drivers/staging/android/sw_sync.h b/drivers/staging/android/sw_sync.h
> index c87ae9e..a671595 100644
> --- a/drivers/staging/android/sw_sync.h
> +++ b/drivers/staging/android/sw_sync.h
> @@ -39,21 +39,6 @@ struct sw_sync_timeline *sw_sync_timeline_create(const char *name);
>  void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc);
>  
>  struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj, u32 value);
> -#else
> -static inline struct sw_sync_timeline *sw_sync_timeline_create(const char *name)
> -{
> -	return NULL;
> -}
> -
> -static inline void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc)
> -{
> -}
> -
> -static inline struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj,
> -						u32 value)
> -{
> -	return NULL;
> -}
>  #endif /* IS_ENABLED(CONFIG_SW_SYNC) */
>  
>  #endif /* _LINUX_SW_SYNC_H */

You just broke the build for systems that don't define CONFIG_SW_SYNC
yet still call these functions :(

Yes, it's tricky as there are no in-kernel users of these functions,
that's the joy of the android code, external, out-of-tree code depends
on the in-kernel code right now due to not everything being merged yet.

So, sorry, I can't take this patch.

greg k-h

