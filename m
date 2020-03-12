X-GM-THRID: 6803293292760924160
X-Received: by 2002:a17:90a:d350:: with SMTP id i16mr3964260pjx.38.1584016939834;
        Thu, 12 Mar 2020 05:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls2591206plr.10.gmail; Thu, 12
 Mar 2020 05:42:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vti3dtvVsRxgAKF8v9GmY2SArzVHrr7TvS5gtQrra2V2sfSI6uEArVlNjCVpvnJf7ULWsrb
X-Received: by 2002:a17:902:ac88:: with SMTP id h8mr8017394plr.256.1584016937930;
        Thu, 12 Mar 2020 05:42:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016937; cv=none;
        d=google.com; s=arc-20160816;
        b=ZnxIGzodgVjknv2D03J8taEontDzP7GxLsr7UxxL+sT1VYY0cy17zH4LQzzw6psw41
         f+nnw2G6oyM7V5fhGt39pnd1BNHa2e1EIKRucQAo72kxeIPdW05KlFUfxrrCki+mgwXf
         5bEc1Kq53SGNFPJ6goHDSq4YwTFMlpo4kGRDaFgs5BzJuY0RmflFuj9TjWVnk1twZv8f
         mysBQlTB0a+sAw8UF6i9BRgpQZ5PziWKZkzX5/oVKIM4KLITd8Pr5BCfNMYQRU8/ygmq
         Rz1PVE7YcrqVp0faEpS+HfR9wviKfZTe8zxgC5uqQQaOXqQaXEetC0E2Q7fv2Yn93hui
         SExQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=L7a6ZmfuTm8KwaMVQq4BZkKic2A8Lk1Ybue/qxewzFI=;
        b=v68JcoOy9TslUB0b1s6BxAIqZmNMMZmAha3HAhNEEfI9ywA9GqodQlvWPWKNInhJcG
         CmeHNORxAhprrA/H+xPSqx/hcbfRcMe2e/I3EwSkrmEbqCJK4Uc7XlYrn45wOtPG+erL
         1x8brX5x9GQ/GQ1Np3rn+U9H1b09dQi64dT29sAbmv5YwFUlajboAfkFTr8wwH+ferCg
         nSMlBjuTWyC3oHYFK2MzCYqrPGIyI1rZIcR1uwdt3giLzKE8xceb/20oi5WmblyGwwqq
         enIGjpkZBZv6Zn70cdwmPO5wdBGe18Y0aLGo+gbz09cIHPFAGVIWziDdqf4+OUMZ9auF
         aB4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OvvtaAlE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id q197si357934pfc.5.2020.03.12.05.42.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:42:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OvvtaAlE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584016936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L7a6ZmfuTm8KwaMVQq4BZkKic2A8Lk1Ybue/qxewzFI=;
	b=OvvtaAlEnXg7qhwzqgrS1ahVTE4NgwcRnyENShvr5zFv34OEnzM4A1p88egXPLBtzTbpYt
	hm7VeVhseXtvGxindCZHNMUFzFk4xJszkZe60sugUmCJGYAov4jXcN+sBp0X5UVCiWzmLU
	zj05QqbVnfN8uQ+osuNmStZV32s+7rI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-liL1XJybMZSe1n4U8rHTZw-1; Thu, 12 Mar 2020 08:42:13 -0400
X-MC-Unique: liL1XJybMZSe1n4U8rHTZw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A858100550D;
	Thu, 12 Mar 2020 12:42:11 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20D4D92D1C;
	Thu, 12 Mar 2020 12:42:08 +0000 (UTC)
Date: Thu, 12 Mar 2020 13:42:02 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: i2c: remove unused
 pointers
Message-ID: <20200312134202.729e9b8b@elisabeth>
In-Reply-To: <20200312121222.6609-1-lu@pplo.net>
References: <20200312121222.6609-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 13:12:22 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Remove unused pointers in gb_i2c_functionality() and int gb_i2c_probe()

No, wait, gb_i2c_functionality() is a function, but you're not touching
it. I guess you got confused by 'git diff'.

> functions.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> Suggested-by: Johan Hovold <johan@kernel.org>

This might be a pet peeve of mine, I'm quite sure I've seen similar
observations by others (on netdev?) but I can't find related messages
right now: I think it's nice to reflect a temporal or causal ordering
here.

That is, Johan suggested it, and you made the change, so Suggested-by:
should come first. It helps following the logic, especially with
growing numbers of tags.

What I personally do, and this is totally subject to taste (hence not
documented or formalised), is:

1. Reported-by/Suggested-by: (if any)
2. Fixes: (if any)
3. Co-authored-by: (if any)
4. Signed-off-by:
5. Reviewed-by/Acked-by: (if I'm carrying any before they are added by
   the maintainer)

-- 
Stefano


