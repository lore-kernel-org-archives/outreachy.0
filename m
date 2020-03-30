X-GM-THRID: 6807884729429262336
X-Received: by 2002:a67:fe41:: with SMTP id m1mr6503928vsr.174.1585530302474;
        Sun, 29 Mar 2020 18:05:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls2303254vsk.8.gmail; Sun, 29 Mar
 2020 18:05:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypK8KOvrswmPrAZRlKT/zulKfa0ZhGLsfL02BupeiCfUTavs0k9WsSe6/I6Q5fwrqJJO8GVK
X-Received: by 2002:a67:20c1:: with SMTP id g184mr6468062vsg.178.1585530301356;
        Sun, 29 Mar 2020 18:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530301; cv=none;
        d=google.com; s=arc-20160816;
        b=X6eMZXCkxZMyYYaFvx26Y876TWuCHzLNCHk2lTdQxlDaCokW9w9Bk0dLOzbLkhwiPb
         INuJZq6dKPPU5yeQNbbgOE2LdVq5zVJWiAkwp6BlCBl2Pwe/aqst9QAe7tTX1RpN7yvM
         0MkTdpvKeu2I1zlm+Zkvq96PynlIJBkjkwDd+uCQpK/VH7ijLvOYtQCg8hcFQmu345Br
         /DroCdGLuOKAIalFLhF1d6guAuY6YltaNnDlm0+4uka8/SsNsrDATr2qI+INyZYPnwbz
         5qS4eq4AZZl5Q3ct11ugzC2jcqvOuwALmqJtWBMj4WoJz0Q5GyzDodL/rQZOyuEj/wT/
         r6qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=sVkwr1R0w66h8OGgqwzsscy+PJA0DHd5KCnO+Bbpv8I=;
        b=Gx586B9aBBNN8Ad7eKwI31vzKYp70VfQtQ82IJPLtERmY7uQDGQ5oO44KpkA2cYj26
         etwPgnqXqzOHKL9mctgzECAlQJlBqnQuYoSiXfBVsm1+MyM2HTd3klanqv8M+SoArHw5
         OnL7x/Olp4nYHarmkzjKV4BIjb0tmoXOcOv9Bd3ohxE83Fv+h/rqN2D2pe39CTOprDlt
         xJdzmck90G+xxOcLmgUrYlWt4ETWWqu8LotX0a80dXAdYD1sjbMFD4MkrUXb2jyJ4ni0
         mL53rWIoh9OcMtdPMOFEBNAlOp2+H8nY5wUZyVXfmlHJbkEH850hRNg2J6/10eVlYvpg
         X1fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HqaLNiyL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id v5si653190vsl.0.2020.03.29.18.05.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HqaLNiyL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530300;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sVkwr1R0w66h8OGgqwzsscy+PJA0DHd5KCnO+Bbpv8I=;
	b=HqaLNiyLiyDdEMUtH6dxGWnsLxsLo3rL2N+yejkHDVV0aBJgEWJ7lRobFM5b0PS2AO1p9P
	AIFA58KcwIKhr9BdelbJ14JiGeL8wmQIHIarAUUgJRcwVpVZqWXEGFHpjoAI3Gndh7hrde
	TtKIKEfXSQjYh+ZdVHSxGlgtxmDVlWo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-169-bNUSV9SZMo2W6LR2uh4qPQ-1; Sun, 29 Mar 2020 21:04:56 -0400
X-MC-Unique: bNUSV9SZMo2W6LR2uh4qPQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73D60800D5B;
	Mon, 30 Mar 2020 01:04:55 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E218210027BC;
	Mon, 30 Mar 2020 01:04:53 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:04:49 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/7] Staging: kpc2000: kpc_dma:
 Clear Misc Checkpatch.pl WARNINGS.
Message-ID: <20200330030449.77bbeef4@elisabeth>
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Mar 2020 10:26:35 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> This driver has multiple WARNINGS and CHECKS,
> Changes been made to match coding style and standards.
> Modifications:
> 	- Remove Comparison to NULL.
> 	- Proper usage of kzalloc().
> 	- Reformat single statement blocks.
> 	- Including preferred header.
> 	- Using the proper SPDK comment style.
> 	- Using kcalloc instead of kzalloc with multiply.
> 	- Putting spaces around operators.
> 
> Changes in v2:
> 	- Adding a new patch to the series:
> 	    Patch #6: Use kcalloc over kzalloc.
> 	- Recovering alignment of code that a patch
> 	  messed up in the previous revision:
> 	    Patch #7: Use spaces around operators.

I don't think my comment to 2/7 (which also applies to this cover
letter and other patches in the series) should block this.

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


