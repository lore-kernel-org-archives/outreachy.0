X-GM-THRID: 6806841558557523968
X-Received: by 2002:a05:620a:2fc:: with SMTP id a28mr1688842qko.467.1584924611247;
        Sun, 22 Mar 2020 17:50:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls6784996qkf.1.gmail; Sun, 22
 Mar 2020 17:50:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvoQT85cwJsiGDDHnrzXaaaGd3bIa+X3Ru/PJFpl0m/SwD36KcswQ5/+EQtpO5OP6pF1pbQ
X-Received: by 2002:ae9:e306:: with SMTP id v6mr18986932qkf.2.1584924609929;
        Sun, 22 Mar 2020 17:50:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924609; cv=none;
        d=google.com; s=arc-20160816;
        b=Tex5Lm6chpl/Tjuliwwh1O1eFZ7BRmd339A/HT7LdaGUzhmDBOAGppFcV4V56E0FWB
         ZZ+lswOHBI8jVrBP972k7jtulMS59imFWNNupVjPVKk8LhIMOJ1Cg+EFLVHqncha/LZ3
         M+yBIZuw3053mr7/UDXASePWjpZWgwnxx+5fXUoX96Qh0OPhrz/hZYTFCYUr4LvbE5wq
         7grnuounPMSYsMKC93O3EDqs0HUFOPwuXk8sz8t7go2OYf5GPKmixvsad6OZSIxAPh8Y
         g9EvnR0DvhhIW2xbMX2XIEm+wz9QQ9vz9C7Zs3A07mLXEcOg1AJGf1T6pCAxuRreayCQ
         irLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eoMlV6TTI91HZoq97ufTTVGnhBepk5YJrYtW61BcWEc=;
        b=RGsIp0U6JvxF31leGOTrX5MwtF1ckPTwix7WjFS8DKkbMYH2//2DdmCgU1vLGrjD7n
         UT62QY5hopmjztpwkr5u4psXlB2RMcZjytWep/jP4xzgXeWCXunGXr/g7pI1Wyr+VS/t
         6GeNUE87u0uqb6oijFtlPeH6XmxvIcb204A530g23p7FibF7K/kkYQQ/B9M9iyfkNqSN
         aJ129Hh/2TtyhcOn8V2fD29djSdaCdrRcPi/A/sXKY9oQq8m9zRc3obrMWKaQiiuYz0o
         555uTGy3j1XmTEqalV/KQ42zWfvQQKNdwouW5Tt2fTCFkLzDewmHodgl0sI1Y4c8DA9Z
         IZoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F+llnicg;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id d34si836856qte.4.2020.03.22.17.50.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:50:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F+llnicg;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eoMlV6TTI91HZoq97ufTTVGnhBepk5YJrYtW61BcWEc=;
	b=F+llnicg5gV3fYFMNO1dYH1cX0ydGSTZHw+GwBgVZivSzdf6RpeA74Za3xhErsItIuMBtM
	71gETu0+DzaJksvHQru9sxnm+hVjB1qykimvGPMzDkiQ2M+FhZaOd5hWQNJCO4Vs4Xdton
	u55NozUTiZfSZNtSxpmGVJcKUZIsliA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-u6xpNKa4N8mdOfwCZ4JTpQ-1; Sun, 22 Mar 2020 20:50:08 -0400
X-MC-Unique: u6xpNKa4N8mdOfwCZ4JTpQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 003FC107ACC4;
	Mon, 23 Mar 2020 00:50:07 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DD8160BF1;
	Mon, 23 Mar 2020 00:50:05 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:49:59 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: line over 80
 characters
Message-ID: <20200323014959.3267920c@elisabeth>
In-Reply-To: <20200322014137.GA6031@siyah2>
References: <20200322014137.GA6031@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 22 Mar 2020 04:41:37 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Moved to the bottom line after == operator for it exceeds 80 character
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 1b957aa..43607fb 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -549,7 +549,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  #endif
>  			local_mode = 3;
>  		} else if (chip == HP100_CHIPID_LASSEN &&
> -			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) == (HP100_BM_WRITE | HP100_BM_READ)) {
> +			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
> +			   (HP100_BM_WRITE | HP100_BM_READ)) {

There's another way to fix this:
	a & (x | y) == x | y <=> a & x && a & y 

it should be more readable this way, as it's then immediately clear
that those and only those bits need to be set.

-- 
Stefano


