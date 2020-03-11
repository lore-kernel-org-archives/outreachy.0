X-GM-THRID: 6803023005726277632
X-Received: by 2002:a25:abc8:: with SMTP id v66mr6022135ybi.36.1583968653871;
        Wed, 11 Mar 2020 16:17:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls951705ybg.3.gmail; Wed, 11 Mar
 2020 16:17:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvEGVrlLVaWzGjx+DUUt6h3EhpAfE8fkAPA6OjzL+J3Tg4VgwfiVH37pw54VBOD9loIRbs3
X-Received: by 2002:a25:4b45:: with SMTP id y66mr5628952yba.59.1583968652562;
        Wed, 11 Mar 2020 16:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583968652; cv=none;
        d=google.com; s=arc-20160816;
        b=mirxSJ/GEXfIK+snTh4YxtZhE3Jb9MLs6Pv1/4CVOPz9FH0GK98O36IRftNEPVbB+G
         Z/FwJ0kTDBZEnMLRtIrPsSP76UUwethGQIyf+4kIGESYj4I/b+CuwYslkXLupzpCXWaE
         2RNVLiUKCdt6o13s8BRzLkSqVW1FsumK+HCvNLyWGKKMCUabXBJwI8OQUh6B1ABjoADx
         puqwQE8PN8CtWGZYMTuTmma78Oafki2Xl52rFBb2tnVTW14MKGY+rGHUka6s7z0e4fIC
         khBQpvy5aYAWWagB62/nNmVb82UrcWRfx5jU0C0PN+4zawEUILxz0lRFvw5S2dEp5TZ/
         rgLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hex4lhFZBjLRcyMZdxABQQ95RTB9y2sgmQOpwJLM6/o=;
        b=gXEDZLS0Fgkw6zxmqU7vpareLTWdjMDFffgGeR3mdt1oSTKXeR9P4SFOdx0nkmy2kh
         sf6yBLhUc/UoIr+iZ3q38yU36+F5Sn6H+oEIhnSJDzK1KwYB3j45nG75o9Vz6qkGiu2O
         AJzsutV9S6JCuCrhS8QZ9yGOw1hDQipsuEKDMKzBV4+AnEY3smJK50JSBlCis8vXV67I
         9nMcMNCk9mr4BpisEQUtpDksnCO7f8sXwMa8iVxKXGSJjgKFO3/ygy8uijPYo9hNm3Mc
         VbgR5I4eoHUiNqK9y2t+2mExEESPTlgpZ6/Mf53sV31izxnl6KhlCCpOsG/x7FSxBVG+
         /kfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K2Y9wX6Q;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id u202si226958ywe.5.2020.03.11.16.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 16:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K2Y9wX6Q;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583968652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hex4lhFZBjLRcyMZdxABQQ95RTB9y2sgmQOpwJLM6/o=;
	b=K2Y9wX6Q2SRYYeMQPTY14jKSZLRxyUbiHspb19OEPuOrNdbufXFRFuFzgtogglXtikygVQ
	e2/WimsPB6hh7tE4/bJ6GIN4hbJe89yoR5zmWYtDF+6Try771S7hOLwJWdNRHAYRmSOJGV
	4l5cd64PZFskRcb559zMyG5PTf/l0ck=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-y2RblC4OM1-371XidLfd8w-1; Wed, 11 Mar 2020 19:17:28 -0400
X-MC-Unique: y2RblC4OM1-371XidLfd8w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E656A13E2;
	Wed, 11 Mar 2020 23:17:26 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD47760CD3;
	Wed, 11 Mar 2020 23:17:23 +0000 (UTC)
Date: Thu, 12 Mar 2020 00:17:16 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>, H Hartley Sweeten
 <hsweeten@visionengravers.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: comedi: check condition
 in one statement
Message-ID: <20200312001716.174b0e29@elisabeth>
In-Reply-To: <20200311184327.25338-3-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
	<20200311184327.25338-3-kgupta@es.iitr.ac.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 00:13:24 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> check two conditions in one `if` statement rather than two since both
> return same thing in file usbdux.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/usbdux.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> index 0350f303d557..8eff7f140560 100644
> --- a/drivers/staging/comedi/drivers/usbdux.c
> +++ b/drivers/staging/comedi/drivers/usbdux.c
> @@ -617,9 +617,7 @@ static int receive_dux_commands(struct comedi_device *dev, unsigned int command)
>  		ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, 8),
>  				   devpriv->insn_buf, SIZEINSNBUF,
>  				   &nrec, BULK_TIMEOUT);
> -		if (ret < 0)
> -			return ret;
> -		if (le16_to_cpu(devpriv->insn_buf[0]) == command)
> +		if (ret < 0 || le16_to_cpu(devpriv->insn_buf[0]) == command)
>  			return ret;

I personally would prefer the original version in this case: the reason
why this function returns early in the two cases is fairly different:
first time it's an error, second time is because the same command is
already in the buffer. So keeping two 'return' statements makes it
easier to understand, in my opinion.

-- 
Stefano


