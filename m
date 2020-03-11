X-GM-THRID: 6803023005726277632
X-Received: by 2002:a37:4c0a:: with SMTP id z10mr5282595qka.408.1583968830852;
        Wed, 11 Mar 2020 16:20:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls1949165qkl.0.gmail; Wed, 11 Mar
 2020 16:20:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtC+fYTFpHqciw4X/saFYp876pz4cYh0gOJg61JSqlMOqt3SrN3JvwIpIiJoUHW+p76bWvY
X-Received: by 2002:a37:4548:: with SMTP id s69mr5226595qka.60.1583968829187;
        Wed, 11 Mar 2020 16:20:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583968829; cv=none;
        d=google.com; s=arc-20160816;
        b=QKMDT0xOYw1fQrELCTeGfCOqjxtBWiUlDE7FOF9Kb5S4F0KeLcM+UqIM+AEqMiNRer
         qVWusIsBsWsr08/L4og95dXgGWbk4wY08l5a9ZxwXOoyXFgebR7ljg/68sXgfTe4DkK4
         lmYRa/lmzbdh5TIz6FQkpCEI83V88N4cij7dEOCFDMUy8tIjhN247KCdSf9RHd72tGWP
         wFvW4/7S3F28PFfmeU+ZWh5NQhQnjFCGhtaHYl0o0ELcFiZyw6J3lM/FcGK3qYpHCwpL
         SmJXlx0qPb2IjNmnlSQwHFMdxNX94kshaRWJ6TQ4uXaBwMyC5j34TZyOATSJBSTeZwNV
         QmxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=clG8aXc80xxU8Ctj+TvtwK35DU+afMqOb2B6rCCPrEI=;
        b=uCsTzGePrCR/3TfngFwb0lRPi7P+LGvnJtQG+AqLrrTQKIDmg/hWjqWQFEGjRiHsl2
         Qy3r2oNs4WgQCU/WcvTxkYuKTfZPW1h077ChpZr2OgrMvOYpBgJVLKkPDP00cFrKUXIG
         4OVu4PHqzmXGJupYXaQvdT1PGiDJjm/pZ8pPC+SrK0RAMMa9j63jkPlXDy4SHk74Uxb7
         f7zvqGIGgX0di0+okyQ7ZCRqjZr36dpY8Asch+O/pRNj4Sv6aiVMqmUQQntpzzSw/K/c
         9ouPN+qPGgSZDLp6uLdb/xmxPG7xufrHu7P3MAyGlaBa1TgR7HPuvF0xyMf1UlukRo6D
         OEqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GkhfaKzX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id w10si159217qtn.1.2020.03.11.16.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 16:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GkhfaKzX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583968828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=clG8aXc80xxU8Ctj+TvtwK35DU+afMqOb2B6rCCPrEI=;
	b=GkhfaKzXWAlEUsddj49Fgcse0I6jHzDyEdMi/mROrKcILl9iM93a44e7AtKUpXcDDzx1Xv
	t2uNx0ms0jDG9uobO6vSbgbr3Je9/bEMJQJQtR5DBgx9bnXcYRHviCcZ6LlhS0JJQ0I3A4
	SS5G+PgOl3V9j2PvVgzTDRGFtdDZDu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-L8Zln2QWNP-1jX9j_wrzEQ-1; Wed, 11 Mar 2020 19:20:26 -0400
X-MC-Unique: L8Zln2QWNP-1jX9j_wrzEQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D8B713EA;
	Wed, 11 Mar 2020 23:20:25 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 319285D9E5;
	Wed, 11 Mar 2020 23:20:22 +0000 (UTC)
Date: Thu, 12 Mar 2020 00:20:16 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>, H Hartley Sweeten
 <hsweeten@visionengravers.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: comedi:
 ni_mio_common.c: reformat code
Message-ID: <20200312002016.713a1c2f@elisabeth>
In-Reply-To: <20200311184327.25338-2-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
	<20200311184327.25338-2-kgupta@es.iitr.ac.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 00:13:23 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> reformat the arguments given to ni_stc_writew() to increase code
> readability in ni_mio_common.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index b72a40a79930..06ed4b1dd875 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -2445,9 +2445,9 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  #endif
>  
>  	if (cmd->start_src == TRIG_NOW) {
> -		ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
> -				   devpriv->ai_cmd2,
> -			      NISTC_AI_CMD2_REG);
> +		ni_stc_writew(dev, devpriv->ai_cmd2 |
> +				NISTC_AI_CMD2_START1_PULSE,
> +				NISTC_AI_CMD2_REG);

This becomes confusing: you're aligning NISTC_AI_CMD2_REG with
NISTC_AI_CMD2_START1_PULSE, but it's two different arguments, and
breaking the alignment between devpriv->ai_cmd2 and
NISTC_AI_CMD2_START1_PULSE, which should instead be preserved as
they are the two operands.

Did you find this with an automated tool? What was the reported
issue? At a quick visual check, I don't see any.

-- 
Stefano


