X-GM-THRID: 6802949681377705984
X-Received: by 2002:a63:9210:: with SMTP id o16mr3310564pgd.442.1584307665675;
        Sun, 15 Mar 2020 14:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls5542511pjw.0.canary-gmail;
 Sun, 15 Mar 2020 14:27:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDbeDfAUuGWHmE6aJWC1O4BXnS3neHb7hTjBosRXQQ7Nok3VIYPgHT4lkBpCQ3hCf6l33r
X-Received: by 2002:a17:902:8e84:: with SMTP id bg4mr22760213plb.11.1584307664151;
        Sun, 15 Mar 2020 14:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584307664; cv=none;
        d=google.com; s=arc-20160816;
        b=NBkginrdTaY0IEsFRM9eq7W0BIoggle5fFKnmw3eZhYM209YEqxJST5Q+QJuVFEleU
         mxYfiYjhCy15jGCzYjjV1zu8t2YwweQz+Eml+5FqLs9AWetyqVm7+rk04hTA9JNogKnt
         ur9MrS1LWbZTt+8yiC4//P0m5wqpAlwCNjZVlLQKcvt6+XDi7d8fJtJBGX/6lgZcTrIM
         btJq51jtMNfJgIzopdVfW673uS6NEoQXaTJkLBQLhMqB/db+sB8OPXHKp7ajBm/i4bvu
         uYcVUfAjs5sDewz0ylGY9Rd+p0ytupWfocDoRZYe5spfZlHZaYgzfHspLhVbK4yMN2R2
         LUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=UrI29gnK2Fgk/ugrno8dGJOP/2UGa5/L2T729KrGlw4=;
        b=zkNYEAKoz6+sMfAYz3L0ruHxwdXCjphWH1di/cXhmZD2WIrpro77warC/oMDuSmElg
         Eds1XU8n4JQGeIcKRMunhD52mVwnrTUb1nd5g4FRhWyCJtJk0AdHnLtXg7cn1UbFEFl1
         FMRElNQoTKQM8oGO8lL+D4mRwrQErGbAjTyif8Oq9lsaWQKE8vN4hNm+HbiVqQRJRvsm
         bk01MvfYdFt3GMEKhmN7einSSw+jwB5qchN2XtzWUnGsuGcWw/hCfAVvN0IFE9OP8L22
         JNSoJKfWyU2Lx78HYgnoBUWADLOImsKqmF8QjSvSIks5rOVYz/hKMdfaHjhh0UQKmvgF
         lmJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LCuXv7Vd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id y13si712282plp.0.2020.03.15.14.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LCuXv7Vd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584307663;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UrI29gnK2Fgk/ugrno8dGJOP/2UGa5/L2T729KrGlw4=;
	b=LCuXv7Vd1N+dLCFiAcYEYtoX1JqKtJr9slU02TCx+RHzbAShAQUZY5NfPYRc8jGbSZds+y
	PVrOkyJIRxXlgKW7BkYct+OkfyidaL6xjtungZ0fsHfx3y9rAyIK2LgP1tZJ/1Smqbu9ir
	owaTch0VqzmOJp45Jw24ZNSka/BXdu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-_5NmTzabMsewadlTWehCAA-1; Sun, 15 Mar 2020 17:27:39 -0400
X-MC-Unique: _5NmTzabMsewadlTWehCAA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9221107ACC4;
	Sun, 15 Mar 2020 21:27:37 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81D8810027A7;
	Sun, 15 Mar 2020 21:27:32 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:27:23 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme:
 Remove unnecessary conditions
Message-ID: <20200315222723.666470f7@elisabeth>
In-Reply-To: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
References: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22

On Fri, 13 Mar 2020 15:59:12 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> Also, remove the unnecessary else-if condition since it does nothing.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
> 
> Changes in v2
>   - Remove unnecessary comments
>   - Remove unnecessary else-if condition which does nothing.
> 
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 71fcb466019a..d7a58af76ea0 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  
>  	/* maybe needs check if ap supports rx ampdu. */
>  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
> -		if (pregistrypriv->wifi_spec == 1) {
> -			/* remove this part because testbed AP should disable RX AMPDU */
> -			/* phtpriv->ampdu_enable = false; */
> -			phtpriv->ampdu_enable = true;
> -		} else {
> -			phtpriv->ampdu_enable = true;
> -		}
> -	} else if (pregistrypriv->ampdu_enable == 2) {
> -		/* remove this part because testbed AP should disable RX AMPDU */
> -		/* phtpriv->ampdu_enable = true; */
> +		phtpriv->ampdu_enable = true;

I suspect this is actually a bug, that is:

os_dep/os_intfs.c:74:static int rtw_ampdu_enable = 1;/* for enable tx_ampdu ,0: disable, 0x1:enable (but wifi_spec should be 0), 0x2: force enable (don't care wifi_spec) */

and that seems to actually map to the ampdu_enable field in
pregistrypriv.

However, I wouldn't change this without testing it on the actual
hardware, change looks good to me and doesn't affect functionality,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


