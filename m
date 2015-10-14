X-GM-THRID: 6205570001447944192
X-Received: by 10.112.142.195 with SMTP id ry3mr1146473lbb.22.1444847277024;
        Wed, 14 Oct 2015 11:27:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.209 with SMTP id r200ls73349lfd.6.gmail; Wed, 14 Oct
 2015 11:27:56 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr1142618lbc.9.1444847276532;
        Wed, 14 Oct 2015 11:27:56 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id q6si952859wif.2.2015.10.14.11.27.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id q12so96079709wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uiEAT7VOSbbhz0vah0Du+YdFnqvN1JlgwqYKZvDLgG4=;
        b=vqkjE+34x5l78LJS01chvTFANJEOvVrniIWz0eX4GZplsYYQfEE0sLlp5B6DnRPTXA
         uUbv6UOc9K43v1ut+mdsLlxY8eMnWkoGG44do//yT5TFGWu0zRrRUm1mLksyV6+r/1Hj
         C1Bxi4E87d+SgCvAiwJcHIEktzckN+6ytLJlSv1rFfav6qATDZQU4Pq0BIZfEKsQsLfl
         w/udZwxigQwpvS+XzFStsmr+hm+3gEQzBUnLo7DvjMw0bIRIpMYXJ872+1a/zoGNn3M1
         iSNfYeqvu+MyIH3o0LrxMjO4PwHGL8ZsczCoKhFV2QM3WHKLZnmFmNlzWQXDHt7Rt2PP
         G8ag==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr5882210wjc.42.1444847276272;
 Wed, 14 Oct 2015 11:27:56 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 11:27:56 -0700 (PDT)
In-Reply-To: <20151014182046.GA24803@ubuntu>
References: <20151014182046.GA24803@ubuntu>
Date: Wed, 14 Oct 2015 21:27:56 +0300
Message-ID: <CAEnQRZBT1Zj5MKQ7GeN+FF9RTvnoFeQkAgbcUZFMPxW0KA6VRA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: rtllib_softmac:
 Remove unnecessary NULL test
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:20 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Remove NULL test on the variable ssidbroad as it is already tested for that.
>

Hmm, care to explain more on this?


> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_softmac.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
> index d0fedb0..89da282 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac.c
> @@ -1693,11 +1693,9 @@ inline void rtllib_softmac_new_net(struct rtllib_device *ieee,
>                         }
>                         memcpy(&ieee->current_network, net,
>                                sizeof(struct rtllib_network));
> -                       if (!ssidbroad) {

You can reach this line with ssidbroad = 0.

> -                               strncpy(ieee->current_network.ssid, tmp_ssid,


> +                       strncpy(ieee->current_network.ssid, tmp_ssid,
>                                         IW_ESSID_MAX_SIZE);
> -                               ieee->current_network.ssid_len = tmp_ssid_len;
> -                       }
> +                       ieee->current_network.ssid_len = tmp_ssid_len;
>                         netdev_info(ieee->dev,
>                                     "Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d, mode:%x cur_net.flags:0x%x\n",
>                                     ieee->current_network.ssid,

thanks,
Daniel.

