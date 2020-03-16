X-GM-THRID: 6803014756528553984
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr444665vke.11.1584372236180;
        Mon, 16 Mar 2020 08:23:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:a83:: with SMTP id d3ls1350249uak.2.gmail; Mon, 16 Mar
 2020 08:23:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt4YUgCxErRivdN1TR5oaL0R1uGnqbYpHuYcOCBhEy6eTj3Tv/Di58gnbn/a+I1/tRePPPv
X-Received: by 2002:ab0:760f:: with SMTP id o15mr422878uap.29.1584372234408;
        Mon, 16 Mar 2020 08:23:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584372234; cv=none;
        d=google.com; s=arc-20160816;
        b=m1ifi4IsgF4h+NOfAgPfKuX0PWCb3ZaMYcRP4pGe4B/FPJ2/VubphIzK2eca/wZ7+F
         2wvN9+tcyfOr4ckbfiyFkYLyJWfLbZ0xG/dfG0cjfR2i8lFlZUxDFB6n1aYul8+F7BB/
         qUYeUUpwwLbc7kpMEyFo/lQ/Hmq7OgdBFOaZ8m8oJajM1or06IJeGeT4vfTT90mXh1Sm
         1M1dDIrU1RJmg9bRBlmLr6P2IARzlacE3mI8KIAhd7QvNdiFcn/iktLiuyBt0fRb2kVJ
         SMHglpdZC9vdDeV/h2R0TtYyzpO2ZbpcR71Qh8OHdqJP03h0f69KvSKi6YWye1SYdoL2
         C4nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xDzaaEYGnz13QSBX0QsLZZwHdBtwIBiFkZf6I5mVdS0=;
        b=cvLegN58m1G4bYeVAtKCV9N7EtYAa+9LZY1J6HYaznLsNkEGH4Ks5dLrXl8x+55QE2
         ers65DW05QOs6RnTnQjeqre3fsshKzUDp7hhrphORqSrlccq6iIWWzH7hQ0bZ+kCd+aQ
         nKer2VtVYXnX6Y4BANmuSuEMHdxb9Xma308WrVQiQhvA20Qct1qs+GEdwkh+aoS7DEu7
         E1r8XIOq3+4ChiXXDS69kGLitKoYHCchkTZ500flsvQyB2UCDhOiy/QSdTi3KX6gtO5p
         8e0PgKLgfASe6kZAAXaosz7Z1EzEEjw/4a1hDyJijWhMsKskGenDIS+LKMFR9JLPIrbz
         u7Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hBwNWZb4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id t191si4701vkt.0.2020.03.16.08.23.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 08:23:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hBwNWZb4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584372233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xDzaaEYGnz13QSBX0QsLZZwHdBtwIBiFkZf6I5mVdS0=;
	b=hBwNWZb4gicSeqHM/QBxlM7FvEEGJwprRM5d1zCsxPj2W0brxxbYLcd+/6m/vx1PBfPEs6
	LA9/IKlfamSifTLWHnmr8qnOCYZaVSxIQRteSfmKIOAsmYrdPECjo9tAjR3XwQXiOdtJIV
	SdbB7/x4tYlQoI6JakVempWfc/d9naw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-9RTHM3FSOsKwOzdrbbXN9g-1; Mon, 16 Mar 2020 11:23:52 -0400
X-MC-Unique: 9RTHM3FSOsKwOzdrbbXN9g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C095591A8CB;
	Mon, 16 Mar 2020 15:23:50 +0000 (UTC)
Received: from elisabeth (ovpn-200-84.brq.redhat.com [10.40.200.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D86094944;
	Mon, 16 Mar 2020 15:23:48 +0000 (UTC)
Date: Mon, 16 Mar 2020 16:23:43 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200316162343.36bacaa7@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003161543170.5216@hadrien>
References: <20200311181134.GA17847@supernova>
	<20200312002348.06821daa@elisabeth>
	<20200313094046.GB3844@supernova>
	<20200316150829.370975f2@elisabeth>
	<alpine.DEB.2.21.2003161527020.5216@hadrien>
	<20200316153629.0fde04f8@elisabeth>
	<alpine.DEB.2.21.2003161543170.5216@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 15:44:05 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Mon, 16 Mar 2020, Stefano Brivio wrote:
> 
> [...]
>
> >
> > One idea might be, in run_cmd_parmap(), to avoid redirecting stderr
> > here:
> > 	        $@ 2>>$DEBUG_FILE
> >
> > if DEBUG_FILE is not set (that is, it's /dev/null) and we detect V=1 --
> > otherwise, spatch output is thrown away.
> >
> > That works for me, but I'm not sure how elegant you would consider that.  
> 
> Actually, I was just going to try to fix the semantic patch that caused
> the problem.  I don't really maintain make coccicheck, but I will suggest
> it to the person who does.  Thanks.

Wait, was it really caused by a semantic patch on scripts/coccicheck? I
couldn't find anything like that in logs. My problem, ultimately, was
simply libpython2.7-dev missing.

-- 
Stefano


