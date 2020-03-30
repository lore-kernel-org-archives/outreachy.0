X-GM-THRID: 6807884729429262336
X-Received: by 2002:a92:d108:: with SMTP id a8mr9248607ilb.107.1585530284725;
        Sun, 29 Mar 2020 18:04:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls3226191ioa.9.gmail; Sun, 29
 Mar 2020 18:04:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsIpEuwxdNLkEmG13q2Edf9s0Yx9q6Ym/MGpzAcCW8TWLp27k4fxewyHlcdLf3WAPSbmtbt
X-Received: by 2002:a6b:f002:: with SMTP id w2mr8619772ioc.48.1585530283384;
        Sun, 29 Mar 2020 18:04:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530283; cv=none;
        d=google.com; s=arc-20160816;
        b=FhyHVKoVvU1Vm8X1YITEGUp2Ythmn+OU5kEWtmv/2WKfnI0qkI7DkOTUkk2gO7iU9T
         Y/TTm34FH1ZacxbUP6PBkfO8Ztnr5+0zm3L2XckAf4CTQFJ9VkDU/YvHCCM+13CFYVpA
         6nsQx5CpHqxjLZOZOpA/0JWiQOQRmq2hNo027Po6I7ubVXA3vXeWxdDlb8+26DbVhH0q
         xNDuhiqO3nair+7TIojsy72AudTm//iaSMhzIjUIIIUF4rLhRL+jB75MkrSVZyRc+4Sv
         eOgHemtDcQdvk8CU4piat9wIm6Fj6q+MBnvv6JDPJFi7AKX3AKI/64n8JSlkdnDn4KaU
         er5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=N6aULtsqb1+wcrQfwyRJ7EuSjtC9mFZH0Ke8G1g08N8=;
        b=QhHWQ/oxmCqZFDb6OVzGv1b1iI9CrC74u+QGgrtZDtd7/iea55qSUe7aV4kqljv+Jr
         Gm1HcSOEWuxWo2SDpzzMnWgC7csPZdYHuUxjpz8CSvs39QT4xLbVWtaKm1HRcVf0Yomi
         Grh27DDEImIPHfma9X/649eLaubCkygrXwsYAoLOVH7OaVZEi67mLr+GCL5QnTsJpX9j
         HteyvTgRGJaUhxyAlFXTMRq48nl/wO9ioIVa/wxEPqzDWi8aeRxKCj9esXO0f9dwmhlm
         LOP8vNuigwbLf+GmMenkiE1GCFpBypnjON06uME0geKCi9xuj7f0/2lF47TL0Is5D270
         ygWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIuHnRkE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id d207si1179108iof.3.2020.03.29.18.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIuHnRkE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N6aULtsqb1+wcrQfwyRJ7EuSjtC9mFZH0Ke8G1g08N8=;
	b=RIuHnRkEWNazg9Zj405Fq4VOP3TajyREIMKoezeyuooXZ3ZErN4FokTfTPsh53IULdBIkq
	cvQSgNbm6hQiBObgsYn6lbjcdHniiMr3dTqaUiKYpEU9ySAnP2c8exce+/8ekYIsd0E2+t
	ltAHsYohn1sJDoIk6JPX0XcoejUWTwA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-y6kWidIoMnq-XEGCdgFy-A-1; Sun, 29 Mar 2020 21:04:41 -0400
X-MC-Unique: y6kWidIoMnq-XEGCdgFy-A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11DE1107ACC9;
	Mon, 30 Mar 2020 01:04:40 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E3DF94952;
	Mon, 30 Mar 2020 01:04:38 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:04:33 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] Staging: kpc2000: kpc_dma:
 Use sizeof(*var) in kzalloc().
Message-ID: <20200330030433.4b924c5e@elisabeth>
In-Reply-To: <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	<bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Mar 2020 10:26:37 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> kzalloc(sizeof(*var), ...) was the format been used
> across the driver, which is the preferred format,
> but missed two instances, correct them to match the
> coding standards.
> 
> Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> over kzalloc(sizeof(struct var)...)
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v2:
> - Update the log message to be more descriptive.

It would be nicer to refer here to the person who suggested the change,
if it's not you directly noticing the problem (you can just mention
them by name, name and surname, or explicitly say "suggested by ...",
"requested by ...", etc). There are many recent examples on this list.

-- 
Stefano


