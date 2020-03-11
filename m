X-GM-THRID: 6802879895263248384
X-Received: by 2002:aca:d68a:: with SMTP id n132mr2715335oig.40.1583945301614;
        Wed, 11 Mar 2020 09:48:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c78d:: with SMTP id x135ls641803oif.3.gmail; Wed, 11 Mar
 2020 09:48:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsf7vLLjlm1RkCNG3tbES1EEKItPLrLVA63qx7FYAdxpEO6OAQ9rHhxtjEnhHvofe3fZrlo
X-Received: by 2002:a54:4119:: with SMTP id l25mr2583018oic.83.1583945300131;
        Wed, 11 Mar 2020 09:48:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583945300; cv=none;
        d=google.com; s=arc-20160816;
        b=B8AKAPq5Pit74ctFhzxa7G5eLaBzK4SUvuRNh2S03h1dkPn4003CM8gCGaYopRjonJ
         MTPRAQ5bLLxc5BfmC4kQ5aqgMESsklllgrXPuWYJZymCnkBb+c0vAoDhCfpabiw3T9/Z
         BX011xod75LPOOVAFN2e1mtFK5yUgbAks7cIogcciNei0qTcZ2eEM0wO4SVORUJgGM25
         mT/Wqs2kDuCTwis9WMEZ5rJ8jpVnb/yC+lRDvEuxISoOQq22ss7xPgvBuzAni5qur1fv
         XPzVK2UYa4f9yHtjm2eUscb7G2F4kHCbxVXP0L9NHXss/lNAAEnOhiEMR1P/JJZR8AZ1
         DzCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dnTir/y1VjaxSrrYoe86BdxINFbnDHOh9aYjpHYNRWE=;
        b=lehWfue+LLkGeY2ZSrfAkjiOhqp5qkturiRYt215cmuE97BVinLgvJf+TwwUFT8LNt
         5klVgFpstMfN/I8a5pF6I0KXNI6KV/Fg2YG4DtxrfWwoSKCGDfWE7OPCKasB7P+ZFjis
         W1tWoMBjEYVg1qRcPy0PWmJ/ctnveAJHfBMCD6lU9h43geT/en8SbwTzjro18rDPpMeX
         m3i04HWNAdIqWnhjOxmYpuhC5xUZVOR6vDrh9dkQ1pwA4UJ+UNcv9zwmj8R5PgrEUps4
         qnUNaT/RaQliXPT3T4vc3xZTpGRi52p0WQv9BMJE+0T/yvPWcxKp7Plmsz6CU0KntUVy
         7oAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HWgXdsRt;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id m132si153149oig.3.2020.03.11.09.48.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 09:48:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HWgXdsRt;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583945299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dnTir/y1VjaxSrrYoe86BdxINFbnDHOh9aYjpHYNRWE=;
	b=HWgXdsRtn00003keAPaOoD7SU96SPZrX/BLZRngomdWOJv6jHmZHzRxHhxq5HyPAUcXcX4
	udVqxTiE7E1c662aUG9fGbXX9WopPtd9FPGvjAGqxQnJjdmRHnUVix6k+D8N+uxwWTbt3v
	+67quG1e0/GfiUXAvpLtsjGZcVy01DM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296--hCP7rTcPVKraJ0H47lRwg-1; Wed, 11 Mar 2020 12:48:15 -0400
X-MC-Unique: -hCP7rTcPVKraJ0H47lRwg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F0CE1005F75;
	Wed, 11 Mar 2020 16:48:14 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B834F10013A1;
	Wed, 11 Mar 2020 16:48:11 +0000 (UTC)
Date: Wed, 11 Mar 2020 17:48:05 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Greg KH
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
Message-ID: <20200311174805.5d886d64@elisabeth>
In-Reply-To: <CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
	<cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
	<20200311130807.02e32fc8@elisabeth>
	<CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
	<20200311134418.468f571a@elisabeth>
	<CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
	<20200311153151.7e94f566@elisabeth>
	<CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com>
	<alpine.DEB.2.21.2003111606110.6155@hadrien>
	<CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

[Dropping some probably uninterested Cc's]

On Wed, 11 Mar 2020 21:22:54 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> On Wed, Mar 11, 2020, 8:37 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
> > What program do you use to read and respond to your mail?
> >  
> 
> An android app Gmail.
> 
> julia

Payal-impersonating-julia, :)

If an Android device is what you plan to using for development, it
might be challenging, but I don't exclude it's doable. We'll have to
figure out a way to get your quoting right.

By the way, K-9 Mail is what I use on my smartphone in case of emergency
(laptop/PC not available), with a bit of care it can be used to
contribute as well.

If, on the other hand, you plan on using a regular Linux distribution
for development, I would suggest that you use that system and that you
take some time to set up an e-mail client there.

-- 
Stefano


