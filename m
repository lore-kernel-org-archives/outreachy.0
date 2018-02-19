X-GM-THRID: 6523850474748116992
X-Received: by 10.107.175.218 with SMTP id p87mr14936602ioo.53.1519036951848;
        Mon, 19 Feb 2018 02:42:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.18 with SMTP id v18ls1683714iog.10.gmail; Mon, 19 Feb
 2018 02:42:30 -0800 (PST)
X-Google-Smtp-Source: AH8x2273QRpmXzEdn6ll01kIbLjOxM+gMyDHkgqb/Ax2y9aU8O/NesI42dc2pD3N7wwAUR1ObPvB
X-Received: by 10.107.157.6 with SMTP id g6mr15476772ioe.8.1519036950915;
        Mon, 19 Feb 2018 02:42:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519036950; cv=none;
        d=google.com; s=arc-20160816;
        b=pLZRPxM6q9PUsCG4ZFsnmrmgA/wfOcoi5Hhl09vPmSSBfgiJv45K135XVa3iPdxVNc
         evdG2bY9jGll4PtV0tx4dVtqS/tmB3iAB3nj2KTnRkc7lv4GbzivuG0a1QKXmbqYKKWj
         DvbT5+MPn47Jj5IXevkkraC9/+YbGGLiA2wyJp3hlfXEwPT6ejqPM/ceOw944UXcaFrC
         ayE3NjEAlcC7XayGIygkloQtiDNoNuq9vZQpLi2auY5tHCif1w29TMGjZQW+bwEevqn2
         37cocPUYNPDy6WR/7vSuT/HbsfH/CkqgBUiGA3GuO4nBts3jR+cSXKwCywFejIEGe5ai
         PqXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=S/CNqju0DA9W8k5YdUTIkLAH3qRKOmnJDtIT1JnX5xU=;
        b=Ohib6x/wnHjJRxaNGfc14orwatG3t/2lV4emafsUFBxWR4F0bxmZycGgaCzHv85tp9
         JKXFdILKXi+ufBZBtoxOKtnJRRUoOp1xweRCnWrGkUT6dxbaTW2i6iGidFEtLnMHp347
         V/SNXm/eeoBTjk59JfPPf45qk7ff1MwFRQXm2UJKK/9E5mFDKfIBQNIt97NONbqqPZsb
         BGZGxzB3zhtsi2+efwTRV82zJD56nL9V63YvYBJjby8VIdwZmDknHczJThYNCbeOU6fr
         RBSTUrGUqjVqyqs2VP4RcMIipXWIKg4aE6wcBAwV2n3cOvf4cROwavRKJZumPsIvxM4J
         KtRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.121 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp121.iad3a.emailsrvr.com (smtp121.iad3a.emailsrvr.com. [173.203.187.121])
        by gmr-mx.google.com with ESMTPS id 66si16014itr.0.2018.02.19.02.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 02:42:30 -0800 (PST)
Received-SPF: neutral (google.com: 173.203.187.121 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=173.203.187.121;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.121 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp24.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
	by smtp24.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 61A3D24BCC;
	Mon, 19 Feb 2018 05:42:30 -0500 (EST)
X-Auth-ID: siepeng@mev.co.uk
Received: by smtp24.relay.iad3a.emailsrvr.com (Authenticated sender: siepeng-AT-mev.co.uk) with ESMTPSA id D403924BBF;
	Mon, 19 Feb 2018 05:42:29 -0500 (EST)
X-Sender-Id: siepeng@mev.co.uk
Received: from [10.0.0.185] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 19 Feb 2018 05:42:30 -0500
Subject: Re: [PATCH v2] staging: comedi: Use '"%s:", __func__' instead of
 function name
To: Eisha Chen-yen-su <chenyensu0@gmail.com>,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com
References: <20180218132707.3300-1-chenyensu0@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <a84bb5e5-dfad-2849-8fe5-08c3b4f51d95@mev.co.uk>
Date: Mon, 19 Feb 2018 10:42:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180218132707.3300-1-chenyensu0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 18/02/18 13:27, Eisha Chen-yen-su wrote:
> Replace an occurrence of the function name in a string by a reference
> to __func__, to improve robustness. Problem found with checkpatch.
> 
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
> Changes in v2:
>    - Improve the commit message to emphasize on what was done and
>      why. And make use of the imperative.
> 
>   drivers/staging/comedi/drivers/s626.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
> index 0b3cfe934e14..ec54dc3e9ad6 100644
> --- a/drivers/staging/comedi/drivers/s626.c
> +++ b/drivers/staging/comedi/drivers/s626.c
> @@ -1700,7 +1700,7 @@ static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
> 
>   	if (devpriv->ai_cmd_running) {
>   		dev_err(dev->class_dev,
> -			"s626_ai_cmd: Another ai_cmd is running\n");
> +			"%s: Another ai_cmd is running\n", __func__);
>   		return -EBUSY;
>   	}
>   	/* disable interrupt */
> --
> 2.14.3
> 

Looks good, thanks!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

