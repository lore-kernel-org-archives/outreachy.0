X-GM-THRID: 6376626533381963776
X-Received: by 10.107.43.7 with SMTP id r7mr5464928ior.40.1484675060226;
        Tue, 17 Jan 2017 09:44:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.193 with SMTP id c62ls193805itd.17.gmail; Tue, 17 Jan
 2017 09:44:19 -0800 (PST)
X-Received: by 10.99.206.21 with SMTP id y21mr12364161pgf.60.1484675059539;
        Tue, 17 Jan 2017 09:44:19 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id t130si2129805ywb.5.2017.01.17.09.44.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2017 09:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id f4so23159585qte.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Jan 2017 09:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pq2vDoieItjSgYAYeVc6vVKrJIv/JVcSDdVVJaZavGg=;
        b=qeAxR/Y/Lz/JzswmjENMpIVd6pDST2/3siLG3cs9Z/BRuyMr32BckWmETlU3BNj772
         CnBiIVjr2l807Xj+hWzP8mntfba1OtJTxPYZmcfXAyNdUgA/NDgHwAGPjp8VE+MmaqrJ
         KZLhWCSJNkkzAk0caf2PcLMkHXUqRyK8o5HPAfRP5fIk2VzUm7CY4sSGpJQaS1iePDqM
         xuP1zfX5lsFOCIvnxi+IEL4xMl8NbfDqoL6z5MDHzKf1OqKY6o+2g3Tr8HRXnHjH8DwV
         GISCviR+O8ipEtPZiXVp+HuX3RIdcwC8fKc99Xn/hAcA7dV+IHQV+c/LoYMeumhMeLBt
         B30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pq2vDoieItjSgYAYeVc6vVKrJIv/JVcSDdVVJaZavGg=;
        b=QdBu3FKfMji2LXYnDQ2LPNLi5ZB1WQ4WfCsIzHYC67Rnltbbwte6yD/MBzWY8U6wqC
         tj6Zxl03DSbn6kst5P4kYqQCB/8hHi5rfsiJlawgr9DJopNxck9pJjx3dLoUUieM24hE
         qHNiHOKspfLjZjrdz4BWZUZc4XzHW4P1NmR06bJiu5bFLnZc6WZBRslCi4WyFxoyL6/a
         uBBSmkx6JJcFSZ/nOc2I0RMCvYJ/QIK4CNsZlDo2r15HhyH64WtbxDkvPlELrlpOu0ro
         HMs+U82zG2JReF1wCwnjpAJqEhP8uhskhh0lItk9JR7gVqariNT50C4cKHoHP8cH0ffV
         UfBA==
X-Gm-Message-State: AIkVDXJPBPeSAhYJi7cyKsAucfi686ak3rgjpUwyPpa2Ctq9QtgUZYT/aQjlv0ueJff5srCp3oCkRlMdAL59qw==
X-Received: by 10.200.43.201 with SMTP id n9mr25942147qtn.243.1484675059252;
 Tue, 17 Jan 2017 09:44:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.161.37 with HTTP; Tue, 17 Jan 2017 09:44:18 -0800 (PST)
In-Reply-To: <20170117172858.GA32083@singhal-Inspiron-5558>
References: <20170117172858.GA32083@singhal-Inspiron-5558>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Tue, 17 Jan 2017 23:14:18 +0530
Message-ID: <CAK-LDbJMB_3te=gOc_k6geaNq+2wgJ915xEi5g18DLVHVYaQbg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: Fix "space required
 after that ','" errors
To: simran singhal <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 17, 2017 at 10:58 PM, simran singhal
<singhalsimran0@gmail.com> wrote:
> Fix checkpatch.pl "space required after that ','" errors

Hi Simran,

Application period of Outreachy's next round will open on February 16.
Till then this mailing list will be inactive. So, please send patches after
that.

Thanks!

P.S. Meanwhile, you can send patches in actual mailing lists if you want. :)

> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index d7d85b3..6380b41 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
>                 break;
>
>         default:
> -               printk("Unknown WPA supplicant request: %d\n",param->cmd);
> +               printk("Unknown WPA supplicant request: %d\n", param->cmd);
>                 ret = -EOPNOTSUPP;
>                 break;
>         }
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index d7d85b3..6380b41 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
>                 break;
>
>         default:
> -               printk("Unknown WPA supplicant request: %d\n",param->cmd);
> +               printk("Unknown WPA supplicant request: %d\n", param->cmd);
>                 ret = -EOPNOTSUPP;
>                 break;
>         }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170117172858.GA32083%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

