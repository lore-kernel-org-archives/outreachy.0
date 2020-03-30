X-GM-THRID: 6809858298158776320
X-Received: by 2002:a9d:2963:: with SMTP id d90mr9505071otb.149.1585591277174;
        Mon, 30 Mar 2020 11:01:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls7739534oih.8.gmail; Mon, 30 Mar
 2020 11:01:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuICeSVRPHF27+4he+nnhIXIiCMJFO/IRw/Vwex+DHsSQQ0xw/8DX1n2FnFF08UPiELbt9a
X-Received: by 2002:a54:4181:: with SMTP id 1mr411164oiy.158.1585591275913;
        Mon, 30 Mar 2020 11:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585591275; cv=none;
        d=google.com; s=arc-20160816;
        b=wnBO6icvdNwcWN5e9jA9GJx0Oy2y1O+EIbpDI1gl9xB0fS5SWSfiz3LO4+ZtyKcgjY
         6SgrHfRPcTB5CChuz19f0LYV+22l/8XHarmkmsZ/uhLDKB/vbPBkLPO06zf4zJnsjIRH
         vCTOHgtJxU7Zf7yvWfViPS5dlnoZmR3CEk/vUNVO0TY6byNt0FXSsRSjdHSpNb19esrb
         8mT8Nkdjjr6G3hvh4cJ6OEbBvZVVufsU3eUAiXbHEzW4RNzHAGXxCLU3Ho4XmaBHCOGh
         gGONEzRUxg+XA7JuIpF49zVacpk0BFaDCvnSXsXOjxe9Y3yEEn2GhMOH2JR/S4Zea06Q
         zwFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=q67SKW92Tetv3pfKEh4UQuxIEPzCZVHNbadf/sW/fDQ=;
        b=fU6/9CXm7W9td4mjHXlIOOH2w9shcWA77gzw+tM8sTlDbtrT6FBJEB8hSp5mTmTObE
         fVxhR9aenxHZ5wn2zBMbfFlN1wP/Ff7nZaMEeKv2bHTqRA+oRw6JN5iALh/BZrb07o1Q
         Rq41xuWOCWBocJ9WsKeARg6YobL96jgkvaYrghxZL3jX5OJg0+1kezPvXRFXYGc39Ppj
         Ru0PjAehmlON4VGxTieCLuPNqqposi5lwoIS4GXyAcGcPEjphJLRuVTnBNabv6Ar7TsN
         QYkLqL4NSmrQ15ycQv4uAtzMYKdGRLHdhdHTH0O2Z3ar560boiUKrYoSokqrkc8vkkq2
         UMig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i1jp3+r1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id d16si52092otp.0.2020.03.30.11.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i1jp3+r1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585591275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q67SKW92Tetv3pfKEh4UQuxIEPzCZVHNbadf/sW/fDQ=;
	b=i1jp3+r1RKc25TVdyNqRdOht7jrVer3liaXNKmmXuDr4URshl/PDhEW+n3yg+D9xwD2jzv
	qOCDVja1276rkeCWpwIj1sFPoSSLLxeKNUQqBxgax0ymsn5BbLw/gTK9w2uhxx53yXnUUa
	Vk9OK5nCA8A+Dw/AyhBhLcPLxHGDfXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-A-zn-drHNW2fSBUN1yJZtg-1; Mon, 30 Mar 2020 14:01:13 -0400
X-MC-Unique: A-zn-drHNW2fSBUN1yJZtg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27E31A0CBF;
	Mon, 30 Mar 2020 18:01:12 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FB085C1A2;
	Mon, 30 Mar 2020 18:01:08 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:01:00 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 julia.lawall@inria.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: vt6655: Limit return
 statements.
Message-ID: <20200330200100.76458994@elisabeth>
In-Reply-To: <d1cfc9acb3edd0b53516211d2c102d73cbee39e4.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
	<d1cfc9acb3edd0b53516211d2c102d73cbee39e4.1585542564.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 21:47:59 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Limit return statements within context of switch case to improve
> readability.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42ed000..f9e2087d2242 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -261,10 +261,11 @@ s_uGetDataDuration(
>  
>  			if (bNeedAck) {
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;

There's no need anymore to set this to zero (it's initialised already),
hence the else clauses can go away, and also the curly brackets. I
consider these as related changes, others might see it differently (but
I guess here it's a relatively safe assumption).

>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>  
> @@ -284,10 +285,11 @@ s_uGetDataDuration(
>  
>  			if (bNeedAck) {
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>  
> @@ -325,10 +327,10 @@ s_uGetDataDuration(
>  
>  			if (bNeedAck) {
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>  
> @@ -365,10 +367,10 @@ s_uGetDataDuration(
>  			}
>  			if (bNeedAck) {
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>  


