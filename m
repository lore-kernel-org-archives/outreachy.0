X-GM-THRID: 6802879895263248384
X-Received: by 2002:a63:f752:: with SMTP id f18mr4926942pgk.196.1583968379344;
        Wed, 11 Mar 2020 16:12:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls1935850pju.2.gmail; Wed, 11
 Mar 2020 16:12:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvdSoNEhKHClLjyjfG923A2MZhtzhHq//Ef7TIxFNVWyZ3keD9xsYrUrDTC4q1cSfA3BM0R
X-Received: by 2002:a17:90a:8806:: with SMTP id s6mr1048759pjn.141.1583968377672;
        Wed, 11 Mar 2020 16:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583968377; cv=none;
        d=google.com; s=arc-20160816;
        b=DH3TGWxKm4fHcZ9M9l59VW86xyxeEWQfQWEAqd9nVvTwoV4iT7gATUUBUKXbKFC1aS
         bRuPb5BDg74cxZSjOD3ax0KAcp3o7Gkz+ip48tEl926FM3i+WGOtrxjLDTk4VjkS8fZY
         biIN2FpPFkjGleKcWOF+X3BnfJ2ZOMMYISXZ32/jzcVfGvd9sN17kwMYqgld7npyUwuN
         7IHitxR1qkcjDtXYiGG6jyNWL/qlINlHihR55ky+5dXT7dRUG9XxHNHbsIqMqFO/NqOw
         22wLK1KCNdCfkzauATU3PZuIR/zV0sb8kCiPHd39Az41FQ5bnizB4XrkQR6dY42Nu72q
         8gZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JZD6CVPO/qg1ll2UqQk8JD9nso3hNpjg8D8Cwf5wmaI=;
        b=PzX5sv2yzX6tPUKTQD8g344XPv9m1N/l73DzyJR6pdjQIC8qEuclNCrqYmJW6FpDPb
         VjZPDn7xhvmiDOqVVJMJUiOs9wjNfafmkyxylC9EfrgybP4CpKb3munX+IYvJluv+MKl
         zH28mLlqaE/jk/SjGvAv3bY3PMEh0Sn7SJrPdlWXIj78XOBgsSI1nZxaPK4pcHta0Amg
         aNpUUHzzWD8eaBDrzp+V1xKoaBDltAXqQIQoL5+WVV2Oz2+CIBQRuhn3IJiWVMyrmllE
         575lF1yGESnfs6IDJHR1UY9GGVQkiRvz3IUXRm2jBGEFOjRJlMQ+vmBOAhZd1RLkyd5F
         WZLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RaDGlpq0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id l12si137734plt.5.2020.03.11.16.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 16:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RaDGlpq0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583968376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JZD6CVPO/qg1ll2UqQk8JD9nso3hNpjg8D8Cwf5wmaI=;
	b=RaDGlpq0XC5850jCg28lN7SSLjIjHetZv6bXEVXpjQ24e04IuYd2u2lwtrkiZ9S6uKFr3B
	bW1iXfMBc4um8RSSMrP42eKsW0Rt39HKBfK+gSYkeEYtPL+ieTiqkWSvjhiuHRzwvG0WzL
	m+BR2j2QR8sLPclgd2gDLHWxZb1JHS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-5HDnbXWFP1i8a0B7i5z_4w-1; Wed, 11 Mar 2020 19:12:54 -0400
X-MC-Unique: 5HDnbXWFP1i8a0B7i5z_4w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72E4C8017DF;
	Wed, 11 Mar 2020 23:12:53 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D879E1001B34;
	Wed, 11 Mar 2020 23:12:50 +0000 (UTC)
Date: Thu, 12 Mar 2020 00:12:45 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
Message-ID: <20200312001245.599c69e6@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003112130440.6093@hadrien>
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
	<EF2BA246-481A-4EDA-B008-AD638FB2850B@gmail.com>
	<alpine.DEB.2.21.2003112130440.6093@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 21:31:30 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Wed, 11 Mar 2020, Payal Kshirsagar wrote:
> 
> > It does not adding [Outreachy Kernel] automatically in my system :(  
> 
> I don't understand what you mean by "in my system".  [Outreachy kernel]
> appears when other people receive your messages via the mailing list.  It
> has nothing to do with you.

I think what happened to Payal here is that K-9 Mail detects the email
as "sent" even when shown in a folder, and shows the copy as sent,
which doesn't then carry the tag added to the subject. Should be fixed
by switching to Evolution :)

-- 
Stefano


