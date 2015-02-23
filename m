X-GM-THRID: 2808943214592
X-Received: by 10.152.37.200 with SMTP id a8mr1243579lak.5.1424691471973;
        Mon, 23 Feb 2015 03:37:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls206405lax.63.gmail; Mon, 23 Feb 2015
 03:37:50 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1223387lbb.24.1424691470512;
        Mon, 23 Feb 2015 03:37:50 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id by11si887816wib.1.2015.02.23.03.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 03:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hi2so18610968wib.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 03:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6JC1Nz6A1CcSsLUNRJQHVBdL3VwmQ8zqGLKb2O3suxY=;
        b=f4K/OggGX/KEjDOU24O8VLjZY5OmAGFbjN7aRBgG/qaPBX4RiKOc9fX7wRf29SZG+9
         iOxs8CIW6e/hGdfhLXQtv/PD16sMMavwb7ZC5ejOVcJXH7exUj7YVpVb3tBOKLa1Ky84
         ePmHHDoAihM3boO4OjaBJxHvQwTnIWIzEZXblQovFo2tzBLKhlp7ii5OA74fHMG3G6bU
         qMSXpnB4/anXS+nPq7vw58Jftdfl18ld1oTNRjX6MaH3ek2PHpDRefwPKcE4KFG56Gib
         /HQC8waAojLi+uWNGO5sEUmUwt7fP849isFNgZrsaf+CN9GiM+97X9XwzTjKGbLqNhVv
         DqGg==
MIME-Version: 1.0
X-Received: by 10.194.86.194 with SMTP id r2mr6718555wjz.41.1424691470411;
 Mon, 23 Feb 2015 03:37:50 -0800 (PST)
Received: by 10.216.178.66 with HTTP; Mon, 23 Feb 2015 03:37:50 -0800 (PST)
In-Reply-To: <1424691142-6839-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1424691142-6839-1-git-send-email-yeliztaneroglu@gmail.com>
Date: Mon, 23 Feb 2015 13:37:50 +0200
Message-ID: <CAEnQRZCE+QKQrCcPs9_VvmZjnj9HjvF+7gHVO2eJp-ZrYXt99g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Add blank line after declarations
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>, Joe Perches <joe@perches.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Yeliz,

On Mon, Feb 23, 2015 at 1:32 PM, Yeliz Taneroglu
<yeliztaneroglu@gmail.com> wrote:
> The following patch fixes the checkpatch.pl warning:
> drivers/staging/rtl8712/drv_types.h WARNING: Missing a blank line after declarations
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 3d0a98b..2522b59 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -129,6 +129,7 @@ struct dvobj_priv {
>         struct _adapter *padapter;
>         u32 nr_endpoint;
>         u8   ishighspeed;
> +
>         uint(*inirp_init)(struct _adapter *adapter);
>         uint(*inirp_deinit)(struct _adapter *adapter);
>         struct usb_device *pusbdev;
> @@ -165,7 +166,9 @@ struct _adapter {
>         struct task_struct *cmdThread;
>          pid_t evtThread;
>         struct task_struct *xmitThread;
> +
>         pid_t recvThread;
> +
>         uint(*dvobj_init)(struct _adapter *adapter);
>         void (*dvobj_deinit)(struct _adapter *adapter);
>         struct net_device *pnetdev;


This are *all* false positives.

e.g:

 uint(*inirp_init)(struct _adapter *adapter);

Declares a pointer to a function which has one parameter
of type struct _adapter * and returns an uint.

Perhaps, we could fix checkpatch.pl to stop reporting this as warnings.

thanks,
Daniel.

