X-GM-THRID: 6803727344338993152
X-Received: by 2002:a6b:e806:: with SMTP id f6mr3282579ioh.52.1584438104048;
        Tue, 17 Mar 2020 02:41:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:85cf:: with SMTP id e15ls3386935ios.7.gmail; Tue, 17 Mar
 2020 02:41:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsP6lxkBqT9Nm39mmXpEGBRQLRXylemIquF0H3Sx3SqUpJPFYXWUMvfwUg2MtaLjE9PkzZ7
X-Received: by 2002:a6b:7c4d:: with SMTP id b13mr3176509ioq.46.1584438102637;
        Tue, 17 Mar 2020 02:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584438102; cv=none;
        d=google.com; s=arc-20160816;
        b=Ndh+2H6hH96TH7LEFQrCyt4njFkuJH3h+bL3ztMZDSLrHBwqQmJiBLb0E0OM6bqjvD
         SepZQwg76v60nZ8c4X01wf1neTD8scPdjc4egKcqUWCCV5mSzR5Ue4/KGuP5NG/ZlJ6l
         oJGi7413pnu8sLD3Da681MAm/npQ6E2+FDbPfzO9yvqjXh7oRLp2K6i2z9V2TcLAzV+N
         h770vsfXaeqj/blWxFXbrT3P22bLjRG42WftC3GGB1yRv+UXey4NxtL78jzVoSLI/x7C
         r2itQpWQiiI45HjQChGM0EsTZ0TInkv7M4auIZw2fro4IiPU37KKmkCi8sMyyPQibovK
         o8eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=u/DXrOtSdWhWoElJXMYMyJV0n6cFUz/5X6DPF4KxNcM=;
        b=YJBzPSQDKGWEJ74Lrs3t1cZfJTrH94EC3mvnh6WpzwAnff23KfsYQWuT6XAQgUlaDX
         M0itvIA8Il4i9WowRd98HglJUkbfnj06vrc3FS4mvifOWfTuAjcH/5YEtRORqdGsF8rq
         m96tDapAXwpbnCcz6JHB7w/5dur+LWuxNUjbIwudySs6KNmCnby77z7SumLsNie0JMdi
         npc6vnjHHgMn9s4vTugbqA2gqhlf/Oj+TSCTmMaqxkytOV0em/gbhY4tdX0xIcF8Pzkh
         0E7dT0CaYs+Tlc3798BIXTf5VQaBPuk1j2ujPUwf7JokBoEQtVaOqF8Pazxr1eQJhTGo
         dU1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ndl8V3Th;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id q6si193875ild.2.2020.03.17.02.41.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 02:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ndl8V3Th;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584438101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u/DXrOtSdWhWoElJXMYMyJV0n6cFUz/5X6DPF4KxNcM=;
	b=Ndl8V3ThbdNSrHeYKSrSYybC4cq0bOW3aT2lXJK0ljhVzKClQmEY4hVzb4abBd2cefOIgK
	/qPzEmft8hI3BUkr1S070FmlKJJGq2SdVz+ALKcSqaIPydgFdCGOU+RWqFWjVob+apDvgN
	01/OZQRBUJfde7y6wb3YmhbD/WUGsGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-152-Prd_TaJQPpi5OMiMTA0v1Q-1; Tue, 17 Mar 2020 05:41:38 -0400
X-MC-Unique: Prd_TaJQPpi5OMiMTA0v1Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A05E3A2380;
	Tue, 17 Mar 2020 09:41:23 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 688B65C21B;
	Tue, 17 Mar 2020 09:41:20 +0000 (UTC)
Date: Tue, 17 Mar 2020 10:41:15 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Veera <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger
 <Larry.Finger@lwfinger.net>, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Better Fix for
 long lines in Kconfig help
Message-ID: <20200317104115.49725ecb@elisabeth>
In-Reply-To: <20200317015728.GA5977@lily.local>
References: <20200313161631.GA2376@tulip.local>
	<20200317015008.66b7d14c@elisabeth>
	<20200317015728.GA5977@lily.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 17 Mar 2020 07:27:30 +0530
Veera <vkor@vkten.in> wrote:

> On Tue, Mar 17, 2020 at 01:50:08AM +0100, Stefano Brivio wrote:
> > Hi Veera,
> > 
> > Note that who reads the commit title won't know in which way this is
> > "better" than v1, because v1 isn't tracked by git. I think the "Better"
> > part should be omitted in the title. Looks good to me otherwise, just
> > one minor comment:
> >   
> 
> Okay.
> 
> The "better" thing is coming from "Outreachyfirstpatch - Linux Kernel
> Newbies.html" page.

I've seen that, I guess that was just a quick example to show a v2 with
a different subject. Maybe it's actually misleading and it should be
fixed...

> Should I make a new patch revision and send again?

Yes, thanks.

-- 
Stefano


