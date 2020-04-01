X-GM-THRID: 6810515093003960320
X-Received: by 2002:a92:8384:: with SMTP id p4mr20275201ilk.16.1585710572449;
        Tue, 31 Mar 2020 20:09:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d391:: with SMTP id o17ls5848627ilo.10.gmail; Tue, 31
 Mar 2020 20:09:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6zlmAVQKWJUx1C2ah6x6DgqVSO1b7pFHYXpxGlKv+qJlDT9MqKYc4NBlBvCptKBcbFuBE
X-Received: by 2002:a05:6e02:d0a:: with SMTP id g10mr20444565ilj.228.1585710571325;
        Tue, 31 Mar 2020 20:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710571; cv=none;
        d=google.com; s=arc-20160816;
        b=RBSs57yDTjUzXr/C2EbTWONJSF+zAJNYjmJN/9Kpw4nqYqogxkN1P6s+uWXkwRm8pd
         +NmgxuchY4de4f49k3Aeq6O7wbT/Wr5sI5ozx2vZ5Y7MHxi0Y9JJNgjjl5E0/+5q73SV
         dXmo0FEOMeyXjkTQUi5hNycHjFrwKGFBzRxA1t39qKeKOjgUptnl/yLLfY/pNJCycgbo
         /O2BpnF237i5iIGlr+qlvN504g+xbVSOIbpzPau9pMoT0dNNJXA0/zCppEM9Z9cxAIUa
         2XadJJAsDCh9uJFUg1EyyZ8C4qdBDwx0I8lP5Q/pA04OZ8bfVjtZfFS9SI//nmLG1JEO
         QEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=tt3SN77Ls5pppEgcTBYG5BbeAfBQ96PuWDO7T7ti7Qc=;
        b=jnignjS+hgwul5ZQiC86pXVFu0lale8NwsdZGTjbOym30BTlaOy6/+Xwfw6jUMrfRj
         A+AznYmP7O7CF6lmFc1VbeF95+GpXcm+WgjgzrbWhwF5evd+TatOBFJip7ATCVnTxFdM
         175wAcxAKMFX6WHYxWFrOt6uUeJ3xv0mt3LDnno1Jh5l4TqHinh/+LC/e895h0v/R8sc
         wdDV/Frydwo/2p5ITkb91VNKBKe96uOCE7DUMtIcrUc4JjXPSI0zDUY1QBbkwOuDfVI4
         vLLb0ca68LKFFodsZCC0VYDgHUvge/GtxiU34mrO5+gzHRkYM/h/2r/3qYZlBYq8VDRA
         3O7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BsX7dU3H;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id k88si32362ilg.1.2020.03.31.20.09.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BsX7dU3H;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tt3SN77Ls5pppEgcTBYG5BbeAfBQ96PuWDO7T7ti7Qc=;
	b=BsX7dU3HoFUjBtxeFD3O8F1da4GaaxAJ3E+T+3r5vlePzVzd+bOjlvHNM2oqVNBZxf17LC
	2dFdeorrNSDpHgqsAI5rENhvTrVLChoeEAUsRZk5CnVrMfaUIbFowdQ9iAWWX7y3XcvaWN
	ZuXaX1dwJQBH8qDJ76Cky4wYEKByID4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-2EjQPzj3NiaMShPAf-pi7w-1; Tue, 31 Mar 2020 23:09:29 -0400
X-MC-Unique: 2EjQPzj3NiaMShPAf-pi7w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00B4A66F;
	Wed,  1 Apr 2020 03:09:28 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 198BA5D9CA;
	Wed,  1 Apr 2020 03:09:25 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:09:21 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 4/4] Staging: vt6655: Format long
 lines.
Message-ID: <20200401050921.07062b9d@elisabeth>
In-Reply-To: <75ceb6161a835d51bf9da1ba4f7b04173fa9fe7c.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
	<75ceb6161a835d51bf9da1ba4f7b04173fa9fe7c.1585694821.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 16:16:46 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Add whitespace around '-' operator and wrap long lines. Issue found by
> checkpatch.pl.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 39 +++++++++++++++++++++++++++--------
>  1 file changed, 30 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 27f4b710baea..2ca7acac88d6 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -262,7 +262,9 @@ s_uGetDataDuration(
>  			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
>  
>  			if (bNeedAck)
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14,
> +							   pDevice->byTopCCKBasicRate);

Here, and below, as you're now spreading this over multiple lines, the
if clause needs curly brackets. Not because of any standard or because
of the compiler, because of coding style.

Rationale: it might be "too easy" otherwise to add a second statement
and forget about the curly brackets, because multiple lines might
already look like multiple statements.

-- 
Stefano


