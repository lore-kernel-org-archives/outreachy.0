X-GM-THRID: 6807884729429262336
X-Received: by 2002:a17:902:70c5:: with SMTP id l5mr8594846plt.52.1585530263378;
        Sun, 29 Mar 2020 18:04:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls10987139pgn.6.gmail; Sun, 29
 Mar 2020 18:04:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtuUmNPDQe3Hw3EL1gea0pNuiBKM+I6huc/dFs34TUh2hOzcsKw65TTgyrOnfTywbqJedTh
X-Received: by 2002:a63:e053:: with SMTP id n19mr11005169pgj.64.1585530261829;
        Sun, 29 Mar 2020 18:04:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530261; cv=none;
        d=google.com; s=arc-20160816;
        b=0faebIufU3wo7ED8jQ3bgjgMsozBvnE+SXo2rp1OSGpjLV7sV7xYX8jKVRHAC3h0KB
         0b6k5ylgu0WTAIMcUe7A2iqTKOi4oe+Taf01C3vNjq4DwNhuLkKQLrxJTzeonX7+3zXm
         tVqTORSVO2dyKCAb+KN1rbZei+vQ8jS4btuGDYNGZhcKmC2smEIWnRx5GQ1v7ViYqnrC
         dEnncwZ45kqCTOaqXz8v/fDXZNQ22+oYN8SsPvH9wxlZLrKissBwcMX9RqwRDyJeHKmq
         dP16kLgAEWhNGjdbEnhgNKPe9Iwd7Q9QSx8j7LcdKAgy0ZjSYjpJ5rsFcGrK6Ls8j+Bq
         OOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=I9vvlWwS1mzV/l9P9r+QmimacGyJ01ArO1EoOE3YvtY=;
        b=a47+zGKd20pFato7PmWyBzQUX2VQoq8vTAqjnp7ccd+vlCYmViGcDLEEtT/9Exp41m
         GaZnOd+ISMyEiLOkR/vVVpAvG0DwDcUIHp4SmFqxgSd7VrwTbRgmAv6YQZ1XAO3epsAw
         cXgyXbKP3uXN1mYs6oDCynBrzAdLekNmKrM2cTpptOj+CUuW+Ua5Hz9YtVSGvuGyQMWt
         TLYH+7EP267c1JUpTJLkt89mxdNNcLy+4lmPGYo/Whk7MjL9yLRJ3NK/CIL0m3O0kB/z
         aiXvOOtUvDmxHALZ3OJCMbIKbxGCLVRs+umgOAX69CQ7Y08OU+YhN8YB4uUpUFDuLsCI
         hC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gkn5t6Fp;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id s63si733670pjb.0.2020.03.29.18.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:04:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gkn5t6Fp;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I9vvlWwS1mzV/l9P9r+QmimacGyJ01ArO1EoOE3YvtY=;
	b=gkn5t6Fpm04tvK5qip/6cpJto1Ohms5Ct1fUuNo8+625iOrzOj4FRxFh5aB7Wmw419btN+
	U6AiHPywMwaLJAhmLw2EmUwomELtel8a0XMqbBzuDZOcZdkkyor2hEJwsZbd5jijmlU3Cq
	iJXyU7dJBpS433MAKUEgl03zjMLrwog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-H3kFJQQXNQODNt_pAc7n6w-1; Sun, 29 Mar 2020 21:04:18 -0400
X-MC-Unique: H3kFJQQXNQODNt_pAc7n6w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BF7F107ACC9;
	Mon, 30 Mar 2020 01:04:17 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B2A319925;
	Mon, 30 Mar 2020 01:04:15 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:04:11 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
Message-ID: <20200330030346.6420ddc6@elisabeth>
In-Reply-To: <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	<f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Mar 2020 10:26:36 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> Comparison to NULL been used across the driver,
> remove them and use (!var) instead.
> 
> Checkpatch.pl: CHECK:
> Comparison to NULL could be written "!desc"... etc
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v2:
> - None.
> 
>  drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
>  drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
>  3 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> index 51a4dd534a0d..4bfbc717bc07 100644
> --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> @@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
>  	struct kpc_dma_descriptor *cur = eng->desc_next;
> 
>  	while (cur != eng->desc_completed) {
> -		BUG_ON(cur == NULL);
> +		BUG_ON(!cur);
>  		count++;
>  		cur = cur->Next;
>  	}
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 40525540dde6..5eb6c5f24feb 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  		pcnt = count_parts_for_sge(sg);
>  		for (p = 0 ; p < pcnt ; p++) {
>  			// Fill out the descriptor
> -			BUG_ON(desc == NULL);
> +			BUG_ON(!desc);
>  			clear_desc(desc);
>  			if (p != pcnt-1) {
>  				desc->DescByteCount = 0x80000;
> @@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>  {
>  	unsigned int i;
> 
> -	BUG_ON(acd == NULL);
> -	BUG_ON(acd->user_pages == NULL);
> -	BUG_ON(acd->sgt.sgl == NULL);
> -	BUG_ON(acd->ldev == NULL);
> -	BUG_ON(acd->ldev->pldev == NULL);
> +	BUG_ON(!acd);
> +	BUG_ON(!acd->user_pages);
> +	BUG_ON(!acd->sgt.sgl);
> +	BUG_ON(!acd->ldev);
> +	BUG_ON(!acd->ldev->pldev);

I've seen some tool reporting this (perhaps Coccinelle?): with
x == NULL, BUG_ON(!x) causes a kernel panic just like dereferencing x.
So the first statement in e.g.:

	BUG_ON(!acd);
	BUG_ON(!acd->user_pages);

is redundant. This change wouldn't be related to this patch, though.

-- 
Stefano


