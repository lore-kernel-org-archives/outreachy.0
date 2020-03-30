X-GM-THRID: 6809468497850007552
X-Received: by 2002:ad4:488a:: with SMTP id bv10mr12950907qvb.88.1585588519343;
        Mon, 30 Mar 2020 10:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:290d:: with SMTP id y13ls4811936qty.10.gmail; Mon, 30
 Mar 2020 10:15:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvOKTBmMguRuEK6Z/A8QpOHK8t13QBi8u/wXeWE/Ui8FksHujDDpOYXcim2aULLxtWtXwHd
X-Received: by 2002:ac8:348f:: with SMTP id w15mr1014595qtb.219.1585588510954;
        Mon, 30 Mar 2020 10:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585588507; cv=none;
        d=google.com; s=arc-20160816;
        b=CIQT6+acpOqOUamgAzARbKAT6L6TFPEydkowD3fDoOjWVKmGa0X1XGNHCXWbpSlDiW
         HDwKB9a0oUtGC67yAyrpjvKt6JpZLl22Ir8SucDWJt9foFX+CPL40HmAhgpkGsjOcaZ8
         ++V45fZ0PG2Hcg+Z50C8mE26v1n8pjVAcrhW8fjNRPOLsepc0ItDurJnZ2+6KWu1szJc
         g/de3q8Y7iIJXnOgPGoEmXgZyf2siY7RkIZVB8d2f2wrViXkhMku4O85yBJQVQlCKF/n
         lagP0KOG/6HlEHDC1pn+1UWFeePlZ8SZVx6V37pycJv0feWm2K3fc3X4KWdKeglIIn/G
         sNmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OVuub6JvUfi96XLhyjTFYsOF46LcBuVZlqMIFo1MoSI=;
        b=cLu3vmhOcanKmgJqZHyWRzZ252nC8NQqHmDYWCjuxF7wS9ICng5I3MX1Zuw+rdTRo7
         e5H7l4t3OruFIaeqv5RVxm45n9rVVidLeZ7fzFSmil1o9RNf3FTFk9BZugpfEcK+GRlX
         HSU+yg+FcuS6rspzLagp/gGyhYsBfmMSUpp2E8WzLwFs8/fXt01azIo9u4nEkBJZS/0i
         GF73i8N2gMF2xC9j4/2S3yBpzyTxphEVaJ/CQxlCXYTMpviPpA8JPT/4ZlGMfnc6ACMZ
         TOfTm30MSNgOpDC/w0r4P/OH8k/CIm48qqPmcqt2r1hF+f/IhVX6XQKsgAujJZC1mRw2
         RKjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ml8+pFE4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id n138si996637qkn.5.2020.03.30.10.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 10:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ml8+pFE4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585588507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OVuub6JvUfi96XLhyjTFYsOF46LcBuVZlqMIFo1MoSI=;
	b=Ml8+pFE4jDA+wLHq48LOK6tJKXQUaYZenYGC5k3ZQ9HoT3KLph0LGUPurjJGun7MPnwJN5
	HAtZA2Xqi4cXshU/uqDeIQEtyoErMcwHr+pAEoykqsBhLEdInwBSO+wMQ1Iqylu5PiwLOU
	lZofQ2ni+gNyP/dGnkV27CHFiKJSAgM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-dH9LHYWXOq28ZFMRDrrxlA-1; Mon, 30 Mar 2020 13:15:03 -0400
X-MC-Unique: dH9LHYWXOq28ZFMRDrrxlA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1691E149C1;
	Mon, 30 Mar 2020 17:14:54 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A17195C1B5;
	Mon, 30 Mar 2020 17:14:47 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:14:39 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: vt6656: add error code
 handling to unused variable
Message-ID: <20200330191439.3bfcb658@elisabeth>
In-Reply-To: <20200330164530.2919-1-jbwyatt4@gmail.com>
References: <20200330164530.2919-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16

On Mon, 30 Mar 2020 09:45:30 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v4: Move Suggested-by: Julia Lawall above seperator line.

Actually, as Julia didn't suggest this patch, the place where you had
this in v3 was the right one.

>     Add Reviewed-by tag as requested by Quentin Deslandes.
>     Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> 
> v3: Forgot to add v2 code changes to commit.
> 
> v2: Replace goto statements with return.
>     Remove last if check because it was unneeded.
>     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> 
>  drivers/staging/vt6656/card.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..239012539e73 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  {
>  	int ret = 0;
>  
> -	vnt_exit_deep_sleep(priv);
> +	ret = vnt_exit_deep_sleep(priv);
> +	if (ret)
> +		return ret;
>  
> -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	if (ret)
> +		return ret;
>  
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
> @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));

Note that you broke the alignment here: the ( should be aligned with
'priv'. By the way, those parentheses are useless, but it's not
something you should fix in this patch.

>  		break;

Unless gcc whines (or checkpatch, even), you could replace this break
by the if (ret) return ret; below. If some tool is not happy with this,
though, you should still move that here: ret will be checked only for
those values of 'rf_type'.

>  	}
> +	if (ret)
> +		return ret;

Another thing that should be considered in this function is to restore
the previous hardware state on failures, but I think the way you're
handling this is possibly the safest, without hardware to test on.

-- 
Stefano


