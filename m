X-GM-THRID: 6809913191851622400
X-Received: by 2002:a9d:1921:: with SMTP id j33mr20691553ota.309.1586231344001;
        Mon, 06 Apr 2020 20:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls937243oib.5.gmail; Mon, 06 Apr
 2020 20:49:02 -0700 (PDT)
X-Google-Smtp-Source: APiQypKg0mbQmY+f4oPE1uOXMEINjPDQkbXd2lEoUJJq9hr7l9mAZdPF+x2bk8qfGYH4hTIJ+mW8
X-Received: by 2002:aca:50d0:: with SMTP id e199mr253519oib.133.1586231342681;
        Mon, 06 Apr 2020 20:49:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586231342; cv=none;
        d=google.com; s=arc-20160816;
        b=hHy6chKDL95fURl8Rwv9IM7J2jsBppKl5EjwvNsq5AZFHayQOt0I4S2LIt84wnu6xE
         5YM25aNeI0+GlvcjEpl6RGF0B6w0zu07X9y/RfmXKDFWf+09buQPNtRoA8TG8B3bxIQy
         DgirJTuivo2+yT/f8RR0gih5LFb+nZjKpgBHC8nT+XH3ELbhvDvi6uhiKgo1W3k9wCVL
         0cZMv9WRm6/csYo03ukHailcFKK+oEol29WzIYO+cyw6Jba2oWRFvdCxw4Z2zvKpcv+X
         GJxnDGndd3ryNiagZuvWrB0eVCCr1W+mBH7Idg/6dEY2CrdkfHygXMDdyYy3J4R3HvPD
         /40w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=v/1C9iO16QXtnoETKT/gZegKNySFnZAG8Qo8ndVDK90=;
        b=N+T5VLKMZVYwy/N4cDUHeeI8LuNDO3cEp0BsVfMZ6/rAOEstcwo0QCfKQImCxCC5mS
         vVtXclTMSdqHg8kA5ui2hPIkbG8dwtG6RXUrEp9E6Z/8vU1RSzaCoilKnwYmbngHtNBI
         t3FVbGmrJPJAcaJ2KdsK/3HN6HXCAAz0KB2MQkqssY/ZZwqlNF14ZNIgwhT4mgjzteL7
         SOnx8RVPrIaiAhNUHiZJi6FXFAL3JgZCiyWOvSbln/3/SfcWfXiGB2kvz1kR3i97qMYe
         BQQsyctpqYh8K21U0TjO40AD++SsW0GnvJ9DX8tyHwL37qEwx7aAXBukcxUF00rCOLal
         xaHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DFtLV3I+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id d188si177358oig.0.2020.04.06.20.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 20:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DFtLV3I+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586231342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v/1C9iO16QXtnoETKT/gZegKNySFnZAG8Qo8ndVDK90=;
	b=DFtLV3I+I1Tfq8vL6JrT9y5gV17AH2LTQbZ/HCCeeoE6u1OZG/P+ImRAx8rRkfzGOjIUHQ
	LN6fPDyiPGsTjNQgrE4BbHRK7rGAL3MrDxoIqDQx1hrDBLGpTGInBbkrIX1Teq/y9K7jbj
	RA/CwXaPpA0Ka/1sOsfA/XtfNLrXhmI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-tqHn01fwN4S25CM9xMH3-g-1; Mon, 06 Apr 2020 23:48:57 -0400
X-MC-Unique: tqHn01fwN4S25CM9xMH3-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7EB713F7;
	Tue,  7 Apr 2020 03:48:55 +0000 (UTC)
Received: from localhost (unknown [10.36.110.14])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0262C272A5;
	Tue,  7 Apr 2020 03:48:53 +0000 (UTC)
Date: Tue, 7 Apr 2020 05:48:49 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 julia.lawall@inria.fr, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v4 2/3] staging:
 rtl8188eu: Remove unnecessary extra parentheses
Message-ID: <20200407054849.461747bc@redhat.com>
In-Reply-To: <20200406111706.25957-3-debsoumyajit100@gmail.com>
References: <20200406111706.25957-1-debsoumyajit100@gmail.com>
	<20200406111706.25957-3-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  6 Apr 2020 16:47:05 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Remove unnecessary extra parentheses to improve code readability.
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index eb48095b9de2..2dd775fbcc4b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -315,7 +315,7 @@ void expire_timeout_chk(struct adapter *padapter)
>  
>  			psta->keep_alive_trycnt = 0;
>  
> -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> +			DBG_88E("asoc expire %pM, state = 0x%x\n", psta->hwaddr, psta->state);

49 lines above this you have another:

                        list_del_init(&psta->asoc_list);
                        pstapriv->asoc_list_cnt--;
 
                        DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);

which you're then touching in 3/3, but keeping it as (psta->hwaddr). I
think this should at least be consistent.

-- 
Stefano


