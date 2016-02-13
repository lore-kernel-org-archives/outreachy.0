X-GM-THRID: 6250667330513141760
X-Received: by 10.50.150.98 with SMTP id uh2mr1896402igb.2.1455350906678;
        Sat, 13 Feb 2016 00:08:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.74 with SMTP id z68ls1875847qge.36.gmail; Sat, 13 Feb
 2016 00:08:26 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr5706522ywd.48.1455350906021;
        Sat, 13 Feb 2016 00:08:26 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id c66si638282vkf.0.2016.02.13.00.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id e6so5567278vkh.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=JUTijmW+ob71v1G7Xn9GYe3LKYOARj2mTG9SMxrH49o=;
        b=zXIY5QOms0vmltmu+PsKfI7OZWZngLjWIYKKuwPy8amfCLPq25SjZ/9G2jvvOvEymO
         pLftHv8flS/ToX0QpSPjSx0o3cZgD0/LVO9ktyL932ZdLPTEFM0toq8IrkJGPUpyaQMc
         0kPYdumbJqYbgbTMWYsHvSsv63B4R2cqWYSPzMhQxTiN/HGLJ+DhH3egfeFmnr/zlw1Z
         yAQhbHkWtbv9jkDh7Z5Eg4GiZdPDcjA0qfmgBWyeTfH+N+Lv1D+G52FN7FDmh91G9trN
         MbWTfKX7zTE/SFK49n/Ahi1rzdonH+Ky9PWVxgmEm4Rl8OoCnautLNs3DaMGxDG348qt
         gNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=JUTijmW+ob71v1G7Xn9GYe3LKYOARj2mTG9SMxrH49o=;
        b=ARViR2RBIF0a8M+yF6qIlrUy4Nfi6gy9kDloIYOqyR6/DniW4n5A5mzOM895SQkMsA
         VF+IfKwG7UXwt/uNsjK9AsBTCs3ryKxpcvmVVGoTS+Oyi68AB2yM0iCW6ztnoO1zLcE8
         qw2o8uqQsEBg5JXIxULq9KpYJSMRJDrhpTnSEjzi8xMAMKcKMKcKVmq4ndeXDtxfiWTe
         wcX8Xb5rczCHNPZnb5KKR35pabyBFKI3nvz/AjehltEvT/P7CDKfQ4DBnbYO8bWyaeIP
         DDJk43Lu0SjMLW8sKcNeL2dG2Uf3CkW7iFkJMEW/j0uJHLbdpRbykP+gh8t2cbDf7WfX
         Qokw==
X-Gm-Message-State: AG10YORaqE0RE7RPkK3cfI5mtKzsRJTvW+cMujdXs3Mm/SbPqz+Ci7TIrwWvXBJDo/9GDwJlu4Kfy8TN98dezw==
MIME-Version: 1.0
X-Received: by 10.31.140.209 with SMTP id o200mr4818409vkd.134.1455350905871;
 Sat, 13 Feb 2016 00:08:25 -0800 (PST)
Received: by 10.31.142.129 with HTTP; Sat, 13 Feb 2016 00:08:25 -0800 (PST)
In-Reply-To: <20160213070133.GA21052@amitoj-Inspiron-3542>
References: <20160213070133.GA21052@amitoj-Inspiron-3542>
Date: Sat, 13 Feb 2016 13:38:25 +0530
Message-ID: <CAK-LDbKDM6MQXkPtBRosaBroRUQ_GSsaXNFyS+axc+N2+Tg6Tg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8192u: ieee80211:
 ieee80211_softmac: Replace driver specific macro msleep_interruptible_rsl
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 12:31 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Replace driver specific msleep_interruptible_rsl macro with direct
> call to msleep_interruptible.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Reviewed-by: Vaishali Thakkar <vaishali.thakkar@oracle.com>

> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 6d85648..c1995f2 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -469,7 +469,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
>                 if (ieee->state >= IEEE80211_LINKED && ieee->sync_scan_hurryup)
>                         goto out;
>
> -               msleep_interruptible_rsl(IEEE80211_SOFTMAC_SCAN_TIME);
> +               msleep_interruptible(IEEE80211_SOFTMAC_SCAN_TIME);
>
>         }
>  out:
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160213070133.GA21052%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

