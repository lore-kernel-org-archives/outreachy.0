X-GM-THRID: 6807590102219358208
X-Received: by 2002:a92:8c42:: with SMTP id o63mr8645806ild.189.1585530162315;
        Sun, 29 Mar 2020 18:02:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls3229959ion.3.gmail; Sun, 29 Mar
 2020 18:02:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvm99v5kPJmlYdkmy2+S1SBWszNCHw49291TGs9oPmVYWtPVgJwHcgFDjYPm/u04zh9tTEY
X-Received: by 2002:a6b:16c6:: with SMTP id 189mr8410836iow.149.1585530161048;
        Sun, 29 Mar 2020 18:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530161; cv=none;
        d=google.com; s=arc-20160816;
        b=V/GpuM8tyAuo+Q+rzD13EZCEie9sfFk9DjtweqPp3n0wXveTY32W02UXYH7F+0nE7O
         KVSqrb7EcYfDl3SYhnqMO6z2kkWm2wJQaJo4SgAIR+2Z1wNbtAwlQfaySL4p0wZ+9+e7
         b+duhBQvWyzK668xwaz+iQ7tkH7A4of6+YhNiBYRIbvrHYygbJS8cnumB+w9/zI1hZ4g
         sWFzuhSgAVlQkZVRSMpRMlnQNlEMuTvD/EZ88BvD8+uN5oNFl+m5L3zTPOXcJOWBqing
         neMc1C6EATmmZ4IOcmkvIgXOnIpEP88W+pd7FAF1XmsVgGDDT0WI9LzBN2xrKJMKHN74
         epxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=h2zxSZJPhQzPiCB3B8qiOKWWE5km0GiKNTkdrhX7ujg=;
        b=gmJuhThntyCYbRwa8oOoccSDLO5LsiDScvBMlPasTrS3mkQDBaMBD1sWPpDQFRVebP
         uNdd6E2rWdl3qgZYEMXPsxnYUqnEd2QXsvxcFFdajs0Ys/q8sR8PGMFZGnG8T2kA5NfT
         h+sEPOVMXctXO1E2xY8T0xiho/inhhKD/Myx8Pklq7sdeNjTJ/C5L+15BH+c+w2wFGh9
         cJBS02WNHPOPESjNjDGYscn7UbmzJ89k9CdWuZp6HfJkHDKD0myS8XORIXijjvUOyhhD
         Bqe2rKnj3Dl71lYsiV+0sWYXv66cb5RVrDhnxPMQg2f304Jy5dziEA9n0zf2mFRaJuE5
         nDBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BpfcHKfD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id s201si714408ilc.0.2020.03.29.18.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BpfcHKfD;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h2zxSZJPhQzPiCB3B8qiOKWWE5km0GiKNTkdrhX7ujg=;
	b=BpfcHKfD2apiPbj7Ek1uqRBIgqxeR9V2llYxQBGYif5cI74aDukBNsjTzUlP2L5bmaudek
	kVhQcOy+1URar6SSSYQZX8oGu8v+xVMR1ADdWJjVyFimhKA++Lwd68ryrqhA9MT+4WbJD6
	JF0P15qX1yIPTkjbum7LEIB0Gc3QPRk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-3PaEtLwpO9-Pjh4EuNl-sg-1; Sun, 29 Mar 2020 21:02:38 -0400
X-MC-Unique: 3PaEtLwpO9-Pjh4EuNl-sg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34704DBA5;
	Mon, 30 Mar 2020 01:02:37 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55C1360BEC;
	Mon, 30 Mar 2020 01:02:35 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:02:29 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: Break up
 function call with long line.
Message-ID: <20200330030229.2e4b468d@elisabeth>
In-Reply-To: <20200324183812.79411-1-briana.oursler@gmail.com>
References: <20200324113525.GA2286293@kroah.com>
	<20200324183812.79411-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 24 Mar 2020 11:38:12 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Update matches style found elsewhere in file.
> Issue found by checkpatch: line over 80 characters.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  Changes in v2:
> 	- Move '+' operator to end of line.
> 
>  drivers/staging/vt6655/device_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0442f71494b2..5c86cc60eb5c 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -443,7 +443,10 @@ static bool device_init_rings(struct vnt_private *priv)
>  
>  	/*allocate all RD/TD rings a single pool*/
>  	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
> -				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
> +				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) +
> +				      priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) +
> +				      priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) +
> +				      priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

Two notes:

- it's a bit unusual to post a new patch version as a reply of a
  comment to a previous version -- did you read about this somewhere?

- a * x + b * x = (a + b) * x

-- 
Stefano


