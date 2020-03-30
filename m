X-GM-THRID: 6809468497850007552
X-Received: by 2002:a9d:926:: with SMTP id 35mr10371716otp.319.1585602413931;
        Mon, 30 Mar 2020 14:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls7152848otj.8.gmail; Mon, 30 Mar
 2020 14:06:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusQBnlEN6OT7Y1CG9Y+X2jVJX8zKx4nWYLvDUwX+SNJj2cX+t7vr7lk/s9dVqFjP2d2LWL
X-Received: by 2002:a05:6830:168b:: with SMTP id k11mr11191079otr.156.1585602412732;
        Mon, 30 Mar 2020 14:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585602412; cv=none;
        d=google.com; s=arc-20160816;
        b=d2sx3ITkquj2MBZSDbz/rC24pQQnH8BfpR16F8bjV3bTirA9aNQ3semOhV193OKa7E
         JhbJxbWDPNFtHGBd8vwcs6XcxJj8cTkxenGxu2U69hQFbFTsa3pOxJb+3rSsrmmbVbF5
         wyCvM7upSnnCPrOz873OcgzClHfnemFLz57s66p7u/pi34DW2Xbnx+mhEvEQBj3l7kWP
         CuFiopyQNDjwaLeMnlHKTgXGIucIjO8vz+ib0Bwxj6sWAbrJS5fWJqqMHISBvIEAoMpF
         aY9apIW3APBoW2//ZV70tPKuzXjfpcUIUC6gF1ZneTAZ2Iq28a7wB5PPwB6ltw/mCDVw
         emLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=O5orfkpIWxG4X0fim40qmaOHzOaHEPG36AFc1Y+7h+M=;
        b=oPrUhKijyTYIwjZzXzWxUfTG8EhMgWXOo6KFGTdIY9vL1Mutv8CPXeH7K5v7MyYwtN
         Zk8mBzMeKlwc6rvaZ6Ua1LUxYNKhfz7fI56noYayitKVapcKGKj12v093koVhSTE1Vso
         AViLNwqIIg4q09Md3v9BgKQCi/i70XPY48KhacDp43XXGrnfKh1HitWC8p+3WJc8UDzg
         lIf2J+3A3owYZRtTBKIH8KGGRNKO+R8iwdYX6gUoH207Oul2eRzViderlB8UOA22iG8o
         YN0801iWfM+BzHWvA0a2GNU0uab3mpPpFFuLBNhd7Y/dC2HiXuPneO/vP0Ijp6D3yAGj
         tYCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GR1RGwD7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id a63si1103946oib.4.2020.03.30.14.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GR1RGwD7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585602412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O5orfkpIWxG4X0fim40qmaOHzOaHEPG36AFc1Y+7h+M=;
	b=GR1RGwD709qPVDpKJiQgkoNve5f7+1mh8y9IhBMQbLE/M3DO1GippPEGo3UR31T3Pd4I0W
	Fn0EKwKOtbO0mG3wYBjYGgFBecFATtx9osD55ia0QB5MWQE5fvlRii3tS76rTgELJvsMeF
	03YZMzj6a/jtPCdYYiEMPVWZB19gER8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-H3ehbNgZPFCmGVZexGte0w-1; Mon, 30 Mar 2020 17:06:48 -0400
X-MC-Unique: H3ehbNgZPFCmGVZexGte0w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 275CA18A6EC0;
	Mon, 30 Mar 2020 21:06:46 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A26CA48;
	Mon, 30 Mar 2020 21:06:42 +0000 (UTC)
Date: Mon, 30 Mar 2020 23:06:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: vt6656: add error code
 handling to unused variable
Message-ID: <20200330230634.3b905158@elisabeth>
In-Reply-To: <20200330184517.33074-1-jbwyatt4@gmail.com>
References: <20200330184517.33074-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13

On Mon, 30 Mar 2020 11:45:17 -0700
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
> v5: Remove Suggested-by: Julia Lawall above seperator line.
>     Remove break; statement in switch block.
>     break; removal checked by both gcc compile and checkpatch.
>
> [...]
>
> @@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					  (SOFTPWRCTL_SWPE2 | 
> +					  SOFTPWRCTL_SWPE3));
>  		break;
>  	}
> +	if (ret)
> +		return ret;

Did you send the wrong version perhaps?

-- 
Stefano


