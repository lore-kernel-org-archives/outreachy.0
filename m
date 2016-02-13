X-GM-THRID: 6250675847475232768
X-Received: by 10.182.221.129 with SMTP id qe1mr5678144obc.7.1455352251613;
        Sat, 13 Feb 2016 00:30:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.164 with SMTP id x4ls374447igl.25.canary; Sat, 13 Feb
 2016 00:30:51 -0800 (PST)
X-Received: by 10.66.246.193 with SMTP id xy1mr5636751pac.7.1455352251248;
        Sat, 13 Feb 2016 00:30:51 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x231.google.com (mail-vk0-x231.google.com. [2607:f8b0:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id v71si504383vkd.3.2016.02.13.00.30.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:30:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::231 as permitted sender) client-ip=2607:f8b0:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::231 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x231.google.com with SMTP id e6so76592579vkh.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=C0aXhSXI0voXpPx7pArTq1qoVZsmYLH5+tZyj/bQjyY=;
        b=RWk+Z8JhymPRrx4jAAB8j5Io2EpaHl5qTkuZLrtfd1r101UZuzZ7b3uZCVr5evQh1L
         zKLaNfGyZtJih3V9u1iULPhk3GUQKq9bmpggk/qmoXsSZS90oySyG9Hqx4bWJhVDxzCz
         HHjnd+pMPnQ2AfP9AcqpO2iMoojmLvnx0kiCZbBF6tGvMTM+HPKxfAhDhnwEiqqhD/D2
         x/HG9w69QqtRifbFt9sFAZG5UO+rfuHYW09hdNmjacPqDn0q+6HS5TStGUhumZfg9I+u
         Ik/aFcT0Xp09n5N8FndC/oIl2iD3tOB/rWIGRvpAiB9wNHvIqkJBriV8Baytktoau5XT
         EXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=C0aXhSXI0voXpPx7pArTq1qoVZsmYLH5+tZyj/bQjyY=;
        b=Ctc25H75ZOjEKA2FagwCplbneopo0NrcgpiDiK3u+MhH92u5nZ0qybYQ/qyC78ibxv
         MeYJkL/D3TDDjfYdf3L0RqyqLP9Z8/r6jV0YtNylpgfTkmTInWLtOWlLGNgzJQQTvjX3
         1VX9z/WLQob1RJj13LMducQfk6xAr2AfAt/fFlwV9kqXKT27NGS0oS0kk4D/wPXc0wza
         se1avHYD86Olo032REK+b4nSL5xRKxS4bLp/iWkwU3V0ODfisNKoynqt3GHH4vgacAGS
         xCAiyr6g29Gy6F4EbDwZSo49iG00ANYzjg7lX+Xm19bRcvzh4Z6FZJsRwb/L2vLXocUr
         XZjQ==
X-Gm-Message-State: AG10YORzndzHVtu5p04ECk5E6bV8KaLBAdxt3WOALnNKAoNDC8nwLpBcYvfzu/G28uK6hUucuCaG73wpbFnG7g==
MIME-Version: 1.0
X-Received: by 10.31.181.206 with SMTP id e197mr5288802vkf.74.1455352250875;
 Sat, 13 Feb 2016 00:30:50 -0800 (PST)
Received: by 10.31.142.129 with HTTP; Sat, 13 Feb 2016 00:30:50 -0800 (PST)
In-Reply-To: <1455348872-8892-1-git-send-email-rakhish1994@gmail.com>
References: <1455348872-8892-1-git-send-email-rakhish1994@gmail.com>
Date: Sat, 13 Feb 2016 14:00:50 +0530
Message-ID: <CAK-LDb+5MWaympnvwWUC+53Nyg3PV-VLRCupuEeNZYgmoEOOyQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Fixed a coding
 style error of preference
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 1:04 PM, Rakhi Sharma <rakhish1994@gmail.com> wrote:
> This patch fixes the following warning: __packed is preferred over
> __attribute__((packed))

Hi,

I think it would be good if you can use more reasonable subject and
commit log.

For example, for this patch you can use something like this:

" Staging: wilc1000: Use __packed instead of __attribute__((packed))"

Then in the commit log you can explain the reason for the fix. Like what you
have done and why the change is correct. And then to give a credit to the tool,
you can add something like 'Problem found using checkpatch.pl'.

You can also go for reading this for the better idea:
http://kernelnewbies.org/PatchPhilosophy

Thank you.

> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index e550027..284dfb0 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -15,14 +15,14 @@
>  struct wilc_wfi_radiotap_hdr {
>         struct ieee80211_radiotap_header hdr;
>         u8 rate;
> -} __attribute__((packed));
> +} __packed;
>
>  struct wilc_wfi_radiotap_cb_hdr {
>         struct ieee80211_radiotap_header hdr;
>         u8 rate;
>         u8 dump;
>         u16 tx_flags;
> -} __attribute__((packed));
> +} __packed;
>
>  static struct net_device *wilc_wfi_mon; /* global monitor netdev */
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455348872-8892-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

