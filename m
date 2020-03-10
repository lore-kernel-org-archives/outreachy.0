X-GM-THRID: 6802585330019991552
X-Received: by 2002:a25:b904:: with SMTP id x4mr12769819ybj.184.1583865937088;
        Tue, 10 Mar 2020 11:45:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls2928161ywg.5.gmail; Tue, 10 Mar
 2020 11:45:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuUS3Lkz1R+57nG9f4oM6BGtcWmgsV/dNve071yy16f3KYFTWtiIXGqlv/+pZEkqmco8YXZ
X-Received: by 2002:a81:a112:: with SMTP id y18mr15451600ywg.104.1583865935684;
        Tue, 10 Mar 2020 11:45:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583865935; cv=none;
        d=google.com; s=arc-20160816;
        b=yRJ/PLCsw1vRJYL7OsBumsbwf8mgqLnC4j+FSJLNzFwjT1kDYV3GtK84MGSnvS7vMr
         ghhnCILrblBEQKdhzhOgEPe7INIYWw5WDM79aXuCrFfscM2sZmcJ56+RpkBWwNKiXua+
         g/mqjc6pyitp9UstLq9lDo/8q7q808NA663lbY46sbA+9WoqDJaM0MCd+7x4atRMf+Gq
         KZOw7Ww9e/GBCvZSddSG5oqL5iw5PGOUDc2IGmKZwmKzzIisjhdGn5SfYGK4ZOOS0CZv
         SsQIaeu4nwoRIcMkiODZpNT8HPJZRq1twH5DMYkGf3QQhqrXIToVP57Bq/y2eIOSrkqm
         XoIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=onYy653pHtxuRvVIUQxyZlNP5t8wMM8DfhJmkDJpmlU=;
        b=HylGxGjOpYYvHfqnCcm/amf3qEyOa20mkZbc/SngBQkScJgZxUmWNjHxjf1lJ5whcr
         CQVVarq70s/SQbJV7jUgYXmB1FpYO6D9jjMV81Crh0IsNZzmPl3lV/spXldMKq3bTs+5
         OKq4j5m8NjD+Klz/mQWP+pV8Vv6+b20ApR0jnzZkQH+ggGDOY0PKCZIIzgQxXsQp+Px+
         iDlYrJdS3HwLw7Rii/wIVx9ZQKsAS8eDRfB/OUTBov0sf5G0gVoGt4dPS9VUwJtbkYJL
         FgvzXxIZ7Q22mPJMmeXmLecK+GmHEOppAk3ry7fvJ1WPCZapKxkvolTVQJCU83fZfpiV
         o4Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIpZPq86;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id l1si17966ybt.2.2020.03.10.11.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:45:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIpZPq86;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583865935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=onYy653pHtxuRvVIUQxyZlNP5t8wMM8DfhJmkDJpmlU=;
	b=RIpZPq86kSsLOM2/A7J1FMckq0jylS6QPbeLlQMXFPWjUTY5J9TgN1r1Vu2bfvqOBvl1b4
	jJtKrZKV1taHI/axWdjOCAirzvnn+XmvgyaFsLEsGktE/U47MlTa4hpUBzAA7gaHO1EteD
	9a5wUo22X0jiOeWeerq4i0pLXJSqfhg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-zBhjhDnZMEKZm7jLVPYMAQ-1; Tue, 10 Mar 2020 14:45:33 -0400
X-MC-Unique: zBhjhDnZMEKZm7jLVPYMAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01361DB63;
	Tue, 10 Mar 2020 18:45:31 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33D119008F;
	Tue, 10 Mar 2020 18:45:28 +0000 (UTC)
Date: Tue, 10 Mar 2020 19:45:21 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: jerome.pouiller@silabs.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310194521.485e04a4@elisabeth>
In-Reply-To: <20200310181302.GA29934@kaaira-HP-Pavilion-Notebook>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
	<20200310184033.007d0230@elisabeth>
	<20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
	<20200310181302.GA29934@kaaira-HP-Pavilion-Notebook>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Mar 2020 23:43:02 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> On Tue, Mar 10, 2020 at 11:37:49PM +0530, Kaaira Gupta wrote:
> > On Tue, Mar 10, 2020 at 06:40:33PM +0100, Stefano Brivio wrote:  
> >
> > > And as you're posting this series for the second time, you should
> > > indicate this with v2 (check out the "--subject-prefix" option of git
> > > format-patch), and indicate the change history for these patches -- see
> > > other recent discussions on this list for examples of how it's done.  
> > 
> > Hey! No, I am not posting this series for the second time. As was
> > pointed out in my earlier patchset( which included 5/6 and 2/6 of this
> > patch set) that I have to create a patch set of related changes or
> > changes in the same driver, hence I sent this different patch set.  
> 
> THe previous patch set stands discarded, as it was not a proper set. I
> didn't even write a proper cover letter in that one :/

Oh, right, I got confused by the fact that patch 2/6 here was 3/7 in
the non-series, and 5/6 was 4/7.

Now, at a second look, I see the series is very different, but see: if
you included a description of the differences for those two patches it
would have helped :)

I'll review this later. Thanks for the clarification.

-- 
Stefano


