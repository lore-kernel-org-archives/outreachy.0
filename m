X-GM-THRID: 6201123761704402944
X-Received: by 10.194.156.193 with SMTP id wg1mr3786382wjb.3.1443897161906;
        Sat, 03 Oct 2015 11:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.135 with SMTP id g129ls292696lfe.84.gmail; Sat, 03 Oct
 2015 11:32:41 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr3767528lbb.0.1443897161117;
        Sat, 03 Oct 2015 11:32:41 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lb0-x236.google.com (mail-lb0-x236.google.com. [2a00:1450:4010:c04::236])
        by gmr-mx.google.com with ESMTPS id os10si491987lbb.3.2015.10.03.11.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 11:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) client-ip=2a00:1450:4010:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lb0-x236.google.com with SMTP id wt4so2760914lbb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 11:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=u7PDEkQ0btNHdomyZuWIdBTiSURjO8BZy8JFO1aze9c=;
        b=JwIX99GbTIMmaf7S638jsKMhzWWzcbNMtb4RQwDGWvPeVzdzDlKPqJ0PJKZXceYmaT
         kd5FWbGRFlRbFYHHqGH3G7y9UPIyRYxsiZENBryaE0Z6O+V1I6hs0/ghUdGtdL9AZb2v
         Rz3LPyA7Bgs9Yd665HogvZA9RiRVRYdCyILG0h8xfzruMDl+Lw0WJ+ftwhM33PhKJPJ1
         ZV/pJPa8IiiV9NQ7MFHghQtwI+aNKONTHT6gNz3HS1gUtd2uLVOjrSMMjdBwJBagdeXY
         z9IWb/oifZMfqCEbyCP5JizRKYtXy4u6Mg87hIxGRpNvEhaE3jVvYeLWszDHrMLsL22u
         gLjw==
MIME-Version: 1.0
X-Received: by 10.112.128.168 with SMTP id np8mr7766527lbb.85.1443897160979;
 Sat, 03 Oct 2015 11:32:40 -0700 (PDT)
Received: by 10.25.217.207 with HTTP; Sat, 3 Oct 2015 11:32:40 -0700 (PDT)
In-Reply-To: <1443811625-50199-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443811625-50199-1-git-send-email-cristina.moraru09@gmail.com>
Date: Sat, 3 Oct 2015 21:32:40 +0300
Message-ID: <CAEnQRZBbOki3k3eh2khBfAHEFm7GMc=TMRQuhobPL_OmjxaSeg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Remove bad line
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Commit message should be more explicit.

Do not focus exactly on the message reported by kernel-doc tool, but on
why we do need this patch.

e.g staging: octeon: Remove empty line to fix kernel-doc warning

Kernel-doc styles comments should always start with a *.
We are now free of the following kernel-doc warning:
<insert kernel-doc warning>

thanks,
Daniel.



On Fri, Oct 2, 2015 at 9:47 PM, Cristina Moraru
<cristina.moraru09@gmail.com> wrote:
> Fix 'bad line' kernel-doc warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 7274fda..a8da250 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -368,7 +368,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
>   * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
>   * @dev:    The device in question.
>   * @addr:   Address structure to change it too.
> -
> + *
>   * Returns Zero on success
>   */
>  static int cvm_oct_set_mac_filter(struct net_device *dev)
> --

