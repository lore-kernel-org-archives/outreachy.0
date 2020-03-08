X-GM-THRID: 6801809120095633408
X-Received: by 2002:ae9:e204:: with SMTP id c4mr11275215qkc.429.1583675478128;
        Sun, 08 Mar 2020 06:51:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls386293qkb.3.gmail; Sun, 08 Mar
 2020 06:51:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1tuoc4H9fCMoX5oTqxs4L3jprJdFV3uce39cX3pFksPHU1ECHw6AAzFCJt1KSgvsOLnSL
X-Received: by 2002:ae9:d887:: with SMTP id u129mr11289446qkf.357.1583675476646;
        Sun, 08 Mar 2020 06:51:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583675476; cv=none;
        d=google.com; s=arc-20160816;
        b=tz4oBUQcPXDuDGG30CQO1werY9oKlo+TDhe0v37S6aSRTkvTQjvwuYVGUaRl+M3/qQ
         gQ4qWSujGA5ksLdzNIO9nRrjVsIzvxOhG7K2y5Sgpmd5jKWJMobGPFmDsH0xs20uV6cP
         ost/ZpvFA8TjFrxKBprsrf8pifUq2UOc5/XRhLvQFhD+2sNpLteWesOYBAWqLiVxM4t6
         uTfi6d0lDgaxugqIgtSbjpcc4co3HSNkdC9tAOOEVPFzcm2UUlVWZsIdbfOTu+ACVwG8
         856IKqgPLkqBgfKmQwbkOyakjvhhOHEOw4GxOo8nRZWRNQn1HmX17Qgh/csZisx4n2GC
         vRzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=k0inlPvWeQUaLw7TlUdrUlVJph/bivH9Z9zOrIUqSek=;
        b=a/acEKW7yO2lPnubIHFZkkbv0bU2Bf3kuYWRtDNARH0ZoiHcYHA8dA75SpaI3x6D5g
         wY+CF8wZQXsZYogi+ElqqxGkzKrifseZd3zLgt7/1tS8vXe15rZ5IT9/0j6wSj46Svsy
         uqI1JxmyAVs4dfeW5Qg7EfKHEGPJv9tAiR1MfbIpWOBxMqY38UaPZq3T8itZvGD2cjuv
         CRy1s13cLTUV7Iz0vfgzTgRCcDT4GV2F2Gnn7EVRoFUKypnijI6RhBg88Koj1qzwRV7i
         sVxr5M/qobDjuvfnnvEhgGLBpyg4euU5PAsNBvp6cMWkTSam30kR1kZGJnAfRhAQoSfe
         A9NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D+ZAORHe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id x18si496509qtk.0.2020.03.08.06.51.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:51:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D+ZAORHe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583675476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k0inlPvWeQUaLw7TlUdrUlVJph/bivH9Z9zOrIUqSek=;
	b=D+ZAORHezYz56KVdRXXZnLjsg7TWf5qakvpf0Ih+MIlZ0F8UkilufiAWEWJVKwJSzREHHz
	J/NnJjEMiPnCypfbn4Xu58kgWt8Xm2CR0z5YhXEdcXH9Cewi4/uU4fEt9nuNArUq0txj/n
	X2zNbWz9tzBZojLK68SIErcQAxH0+DA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-UGzR3DkCMeiaKibLqWpAPg-1; Sun, 08 Mar 2020 09:51:09 -0400
X-MC-Unique: UGzR3DkCMeiaKibLqWpAPg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0FA21007270;
	Sun,  8 Mar 2020 13:51:08 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2352E60BF7;
	Sun,  8 Mar 2020 13:51:06 +0000 (UTC)
Date: Sun, 8 Mar 2020 14:51:00 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: greybus: remove line
 over 80 characters
Message-ID: <20200308145100.7e07abf5@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003081437400.2400@hadrien>
References: <20200308132643.4256-1-payalskshirsagar1234@gmail.com>
	<alpine.DEB.2.21.2003081437400.2400@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 8 Mar 2020 14:41:03 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Sun, 8 Mar 2020, Payal Kshirsagar wrote:
> 
> > Remove line over 80 characters.
> > In this version-2, comment and field are grouped together.
> > A whitespace is added after "bi-dir,".  
> 
> This is not the correct way to present the revision of a patch.  Put a log
> message that would be appropriate if there were no version 1.  The patch
> will ultimately go in the git history where there is no trace of version
> 1.
> 
> Then under the --- write v2: and then describe what you have changed.
> 
> See https://kernelnewbies.org/Outreachyfirstpatch and search for v2.

On top of what Julia said, while this is the case in general, and
surely for these patches, in case you ever have to submit networking
patches (trees: net.git, net-next.git), it's preferred to keep the
revision log before the "---". This is the only difference there.

Again, this doesn't apply to this patch.

One further comment about the patch itself:

> julia
> 
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/greybus/arche-platform.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> > index eebf0deb39f5..cc5a52fc926f 100644
> > --- a/drivers/staging/greybus/arche-platform.c
> > +++ b/drivers/staging/greybus/arche-platform.c
> > @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
> >  	struct gpio_desc *svc_reset;
> >  	bool is_reset_act_hi;
> >  	struct gpio_desc *svc_sysboot;
> > -	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> > +	/* bi-dir, maps to WAKE_MOD & WAKE_FRAME signals */
> > +	struct gpio_desc *wake_detect;

By grouping, I really meant that you should add a line *before* the
comment you are moving -- it's clearer that way.

> >
> >  	enum arche_platform_state state;
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsagar1234%40gmail.com.
> >  
> 

-- 
Stefano


