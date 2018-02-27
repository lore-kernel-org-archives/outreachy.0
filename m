X-GM-THRID: 6527220059011547136
X-Received: by 10.80.202.11 with SMTP id d11mr4279840edi.9.1519737059230;
        Tue, 27 Feb 2018 05:10:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.133.197 with SMTP id q5ls805109edh.1.gmail; Tue, 27 Feb
 2018 05:10:56 -0800 (PST)
X-Google-Smtp-Source: AH8x227MPfguSVhxOKFMf0BPWjGCGgK3/s2nDBZU66UVK1qyiKqFiqspEBX/y9BDVGZUMwD3nLR7
X-Received: by 10.80.200.202 with SMTP id k10mr4102848edh.10.1519737056730;
        Tue, 27 Feb 2018 05:10:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519737056; cv=none;
        d=google.com; s=arc-20160816;
        b=jIeSzxm4sZsJuo6kHJFc5xb9Ukn1IQXvIIhw9Al7RSYtTMstSvBKgFsQwfn+7WsKdP
         O07+UddlewlRdEiKjaYt7dXHWYwaotgAbKXhIzDLYl3grK68SiwfIqGAez1C39zFjs2U
         9+0j12sBDRXgOdp/ePM0Y25cxlv0RKzfQOy3X88G9lHJI/yob8zgwd5cQX+p8Md36Z/4
         qr+8jWEKv0YHBVJ1G2OenXS8gtof9X6574NzmxmoCk+5dNv067AVo1AvLepjWuOeAMZQ
         2iN81XyfLpgOt8A6/5QQ2FzbOQJH0ioSUt0ovCYtqNYB7RnhObU9PfHmDoH6ALGvWMoj
         VNKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=ZyRqlJoQyFPiSd053bJF4GUPsnwoYWirxjGKl3I3ajM=;
        b=gO1fL+uMN56z6hV4aIndaZIcA5wnyvhJg5vVt0qVdQd70ReC0ttpRzU+7RAMWkE2Nq
         YOatnif2P99N0wKW3OngHS45OIFGHv+RcjJ/pgi3gQvnRHHrlPeHQjuGjxkcPlB2T4sc
         JmU1w9nsrkkFoyRPph2Y+1IBwwKen5Y1A/9aDxeuyVGQK/x2nqoSWEnmBAWMSKAtby7b
         fL9/rZSQxKDQohoLTZGfaTI+GtQrAKQArTXPD45gtcFe8b27/sJ0WVIihqxLIAzyaswj
         ifB0gcgkr2xoYLud4QsZ8V9VChCqUIa2XD0LVQgabhh42g6V7VojOM9DXMchxDyDjd9i
         TFGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com. [209.85.215.66])
        by gmr-mx.google.com with ESMTPS id f24si633517edc.0.2018.02.27.05.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:10:56 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) client-ip=209.85.215.66;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f66.google.com with SMTP id 37so27399845lfs.7
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:10:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZyRqlJoQyFPiSd053bJF4GUPsnwoYWirxjGKl3I3ajM=;
        b=tGrOu83ekaTjXSiX+3i1DUhfqDG+5ylAQkM/tg96dtc/JbugwNRYufBikDkqCCx1As
         5E6HZ4Gd8bAADaCi0oU+LqIePqL9isRbRBT1kDwnFpGJYI2CI2xQmsnCX17AE3Bzu8EG
         3FA8VUNbRfaNffWpIyoaID9sZUhOym22RutpzinJd0dOZno79mW9ZF73raRerP1gcsn7
         kYyQ98fGpeM/y/xRmPgQN1bP3m6KvaweRbF6qgR5Apec3kWpNqxgmK2sThyf9C717/Oa
         /7r5+UfmcOikXA9jPQWElru7wuHf2phVuqe8BIiAdC7lS3+Oc5jCYnz++hPUwWDtFDDn
         44FQ==
X-Gm-Message-State: APf1xPB4nT9iuFeW1wZEpUCypI7Voeh/dJ2nVJXYYepRuFaurYkMzL9L
	H74+aCtIamGwKvtlzYKRWObD1OOI
X-Received: by 10.25.92.220 with SMTP id u89mr10078291lfi.14.1519737055954;
        Tue, 27 Feb 2018 05:10:55 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com. [209.85.215.44])
        by smtp.gmail.com with ESMTPSA id 74sm2549247ljq.32.2018.02.27.05.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:10:55 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id 37so27399739lfs.7
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:10:55 -0800 (PST)
X-Received: by 10.46.101.65 with SMTP id z62mr10191759ljb.37.1519737055137;
 Tue, 27 Feb 2018 05:10:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Tue, 27 Feb 2018 05:10:54 -0800 (PST)
In-Reply-To: <1519736829-4672-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1519736829-4672-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 27 Feb 2018 18:40:54 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+Wr14J8yE36Uzc-cSecuof4dh+15z8UuZp=OBF-=87ug@mail.gmail.com>
Message-ID: <CAK-LDb+Wr14J8yE36Uzc-cSecuof4dh+15z8UuZp=OBF-=87ug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Fixed unnecessary
 typecasting to int. Issue found with checkpatch. Signed-off-by: Nishka
 Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 27, 2018 at 6:37 PM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---

Hi Nishka,

Something wrong happened here. Your commit log is added in the
subject itself. You may need to check your git/mutt setting.

>  drivers/staging/ks7010/ks_wlan_net.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index e48c557..69cd8347 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -201,6 +201,8 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  {
>         struct ks_wlan_private *priv = netdev_priv(dev);
>         int channel;
> +       int a2412 = 2.412e8;
> +       int b2487 = 2.487e8;
>
>         if (priv->sleep_mode == SLP_SLEEP)
>                 return -EPERM;
> @@ -208,7 +210,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
>         /* for SLEEP MODE */
>         /* If setting by frequency, convert to a channel */
>         if ((fwrq->e == 1) &&
> -           (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
> +           (fwrq->m >= a2412) && (fwrq->m <= b2487)) {
>                 int f = fwrq->m / 100000;
>                 int c = 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519736829-4672-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.

