X-GM-THRID: 6809468497850007552
X-Received: by 2002:a67:b001:: with SMTP id z1mr10703410vse.82.1585605723020;
        Mon, 30 Mar 2020 15:02:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab51:: with SMTP id u78ls1181414vke.8.gmail; Mon, 30 Mar
 2020 15:02:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypIwIEgeL70emmVBfonYii3Fv++FwPDgzgSgqGyY4ecsx8v+Af9EqTlgffGvTgE5njKtg5yP
X-Received: by 2002:ac5:cdc7:: with SMTP id u7mr10120965vkn.8.1585605721639;
        Mon, 30 Mar 2020 15:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585605721; cv=none;
        d=google.com; s=arc-20160816;
        b=GTi3RH4wPd/pDexMvAxXc+nGs+fNRolaAXEW3IFz3R6vDG+aUQTKhunjBO/90dZSh2
         27mFBAl/s4zDlGIEfs4WJUgdFSU3ye2tEwOmEzhFbIMPWBh5HfYCT0c4LYx62hpkNV0Y
         omeFMg7OMKpg/lJQsPc/j9w5ITDUpb7fOTL2x0bUxr5DvxkLn2kCnqf5+LXweyZB4Vbh
         7OsoyU4MGI596D/Xuoqc/rbKwJca5xheuEYjqmiozMiFIiS4bZ88JYzQKJcsKlNjSFSE
         KWMuessAS5YTiKjsJKZyfgOYTlOp1wDtlFYKo0nuisrlUyrwms9wYsiQd7lywD0NGdeZ
         iInw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=76G6LlH/Kp/jbMcwi/Y+VgqRenjpbmM+ChfO2SMexeY=;
        b=KJ40l39ygkUJpFwTXbOvO0KgUZcPFdIeaLw3D+3jt1lYAxtornmBgnCrGdmhfWTX8x
         7M0mo75MbhytaWeVuFT+ysZfqKeU4nDmFNq+KH99qMn2PiWjJgSgbkx0BxG2FJVf2UOS
         YBS+9vFqQ5QVzSw7nKQ5m4nFVGJo3sPnrtQej0UHTtollkLSorOZgQssGnAODP1Q2kyW
         w2zKPCd/RH8+zEt8VwNQEEJ8A0J7NMABFbAhU8l6FJjdWp8QD/ghcUxd1oMHCXqmSqhR
         1igPsHonOynaJdPpyCDQ6Re83pSesyVUOyy+ODqNnlrLB9p4ri5eJViSwUKOAQOBGCW/
         Fw2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XrCjAmVM;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 205si883796vkw.2.2020.03.30.15.02.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 15:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XrCjAmVM;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585605721;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=76G6LlH/Kp/jbMcwi/Y+VgqRenjpbmM+ChfO2SMexeY=;
	b=XrCjAmVMQICn5Yr6pplQwQ2gyod/+MSFCXAiWYISCydPYeBB338Y9Heds0s6igGBSFS4Ep
	Ns40r4Fp/O4rfUMJIKtdK1jvXkzHiLr+w5gx8qJDs6y6uIqEBu2YvwopW1boGN2eZL40j3
	zHWQTALOJTC5SimfjtkL1wosnWArxMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-jPU1WqcjOQW_wyZ-dNY98A-1; Mon, 30 Mar 2020 18:01:59 -0400
X-MC-Unique: jPU1WqcjOQW_wyZ-dNY98A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85435107ACC4;
	Mon, 30 Mar 2020 22:01:57 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1888F96B60;
	Mon, 30 Mar 2020 22:01:51 +0000 (UTC)
Date: Tue, 31 Mar 2020 00:01:43 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200331000143.7c8f98c0@elisabeth>
In-Reply-To: <20200330214613.31078-1-jbwyatt4@gmail.com>
References: <20200330214613.31078-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15

On Mon, 30 Mar 2020 14:46:13 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v6: Forgot to add all the v5 code to commit.
> 
> v5: Remove Suggested-by: Julia Lawall above seperator line.
> 	Remove break; statement in switch block.
> 	break; removal checked by both gcc compile and checkpatch.
> 	Suggested by Stefano Brivio <sbrivio@redhat.com>
> 
> v4: Move Suggested-by: Julia Lawall above seperator line.
>     Add Reviewed-by tag as requested by Quentin Deslandes.
> 
> v3: Forgot to add v2 code changes to commit.
> 
> v2: Replace goto statements with return.
>     Remove last if check because it was unneeded.
>     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> 
>  drivers/staging/vt6656/card.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..c947e8188384 100644
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
> -		break;
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					  (SOFTPWRCTL_SWPE2 | 
> +					  SOFTPWRCTL_SWPE3));
>  	}
> +	if (ret)
> +		return ret;

Hmm, sorry, I haven't been clear enough I guess.

This is what you're doing:

if rf_type is not in that list:
- set some bits in a register
- did it fail? return
- did it fail? return
...

if rf_type is in that list:
- set some bits in a register
- did it fail? return
- set some other bits
- did it fail? return
...

Now, the "set some other bits" part is already selected depending on
rf_type. There's no need to check 'ret' otherwise, so you can move the
return just after setting 'ret', in the switch case.

With a check, because you don't want to return if ret == 0.

-- 
Stefano


