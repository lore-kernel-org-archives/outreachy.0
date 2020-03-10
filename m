X-GM-THRID: 6802585330019991552
X-Received: by 2002:a17:90a:be0c:: with SMTP id a12mr3380635pjs.26.1583868646870;
        Tue, 10 Mar 2020 12:30:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls6531971plp.2.gmail; Tue, 10
 Mar 2020 12:30:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsp1VNaF5tZFi+ZBlmLMtpss83mEVACNw3SosRdNfdVaFFHUMh25WQEXbAobGKNJL/tHr3+
X-Received: by 2002:a17:90a:fa16:: with SMTP id cm22mr3377372pjb.137.1583868645316;
        Tue, 10 Mar 2020 12:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583868645; cv=none;
        d=google.com; s=arc-20160816;
        b=LZpqv0M/wsA7mQbVI/zxFlVUYAPmSCJuWdbCwmN0Rbf7J2EAtrCeZqS2A9NZnCXrPG
         zuhmThG/VOhtQ8vytC/AapmOxxxd2Nj2LgIeB2qmdz1VvEqL02PqHY6BDFnHfqI3WY7K
         uAnvkTbagbqT6Ad/+9092JzPK7FNRIw6b8pwORRO/eo4+nKUSgUBRxq2jZbhkgEzx5mi
         sCD0cz05oYCwSWFOo7Of3htRzuzVCsUZomH1b1LGwJ/5cb9q00j667upV60GOjDXsEh6
         KgEgcZ2z0Pc5aXJzDh6vPrYWwAK0JIVJ1SE1JkutbRh1C0nf5Z4cWMV86BNXISOhdeKf
         V3Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=bR7q1HQCR7zbFcx6NDn/tbwWZBaiLdYmMHUujRy+V1A=;
        b=xYJnDfEeEUr7TfR9iQ4W9z6e7Wn72nFduCbtDo7xyJr4OSX+t0KnlrlnESpNlutwxd
         rB5lD8+TNFpuflrkgUx1ET0m9JAgvzT6QprLQDv30yeR28augaoeOuNuG1Ib1Tg8B3a4
         riRKNrqm4iEE48T+3RGc9jtK5OFdS0UaWov0KQAPamQypvPGoNKTECgYYNIRnNf7yvw6
         zu8trvlssGYVxXPUNMcIwLUhhZuMPurhqaqPIfu8hhpQoqnnT6zewVSmSSct/3F0cbjz
         ST3C6hE7sbTpj72ZOnjKvVnoMM1ZM/zYjqcDwdpdmj9/PZA1n1dj5yFL+BwNZaihWLGl
         YHyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fot1Wj6M;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y129si881705pfg.1.2020.03.10.12.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 12:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fot1Wj6M;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583868644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bR7q1HQCR7zbFcx6NDn/tbwWZBaiLdYmMHUujRy+V1A=;
	b=Fot1Wj6MslNJ/TV4rreAXI1zlwsQ4lhwgceCy92TCClvmvov4CuMP51oaKkh8ub/eIwhAD
	6HbGPe+vF5OISjAVyqgppVia/1m39v6+U9CJjAVralO1Yy4tt6J0C/64H3kIyYfNKMLwZA
	ZsXLee1nhamNNXjr7SdNkUnRXk3Jf/A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-xmiBsOxvN9iIGPLGHF-6yg-1; Tue, 10 Mar 2020 15:30:42 -0400
X-MC-Unique: xmiBsOxvN9iIGPLGHF-6yg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99C6913EA;
	Tue, 10 Mar 2020 19:30:41 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5596084779;
	Tue, 10 Mar 2020 19:30:39 +0000 (UTC)
Date: Tue, 10 Mar 2020 20:30:32 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: jerome.pouiller@silabs.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310203032.3475fb07@elisabeth>
In-Reply-To: <20200310192431.GA1336@kaaira-HP-Pavilion-Notebook>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
	<20200310184033.007d0230@elisabeth>
	<20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
	<20200310181302.GA29934@kaaira-HP-Pavilion-Notebook>
	<20200310194521.485e04a4@elisabeth>
	<20200310192431.GA1336@kaaira-HP-Pavilion-Notebook>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 00:54:31 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> On Tue, Mar 10, 2020 at 07:45:21PM +0100, Stefano Brivio wrote:
> > On Tue, 10 Mar 2020 23:43:02 +0530
> > Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
> >   
> > > On Tue, Mar 10, 2020 at 11:37:49PM +0530, Kaaira Gupta wrote:  
> > > > On Tue, Mar 10, 2020 at 06:40:33PM +0100, Stefano Brivio wrote:  
> > > >  
> > > > > And as you're posting this series for the second time, you should
> > > > > indicate this with v2 (check out the "--subject-prefix" option of git
> > > > > format-patch), and indicate the change history for these patches -- see
> > > > > other recent discussions on this list for examples of how it's done.    
> > > > 
> > > > Hey! No, I am not posting this series for the second time. As was
> > > > pointed out in my earlier patchset( which included 5/6 and 2/6 of this
> > > > patch set) that I have to create a patch set of related changes or
> > > > changes in the same driver, hence I sent this different patch set.    
> > > 
> > > THe previous patch set stands discarded, as it was not a proper set. I
> > > didn't even write a proper cover letter in that one :/  
> > 
> > Oh, right, I got confused by the fact that patch 2/6 here was 3/7 in
> > the non-series, and 5/6 was 4/7.
> > 
> > Now, at a second look, I see the series is very different, but see: if
> > you included a description of the differences for those two patches it
> > would have helped :)  
> 
> Yes, sorry I should have take care of this. I'll remember from now.
> 
> > 
> > I'll review this later. Thanks for the clarification.  
> 
> Should I correct the spellings and submit a v2? Or should I just take
> care from the next time?

I (personally) don't consider spelling mistakes very relevant in cover
letters: they don't end up in the git log, so they won't affect
later searches for specific words.

In general, I would recommend that you wait a bit (few hours to
few days, depending on how big/complicated the series is) before
re-posting: reviewers might need some time. So... give me/us time to
review this, first :)

-- 
Stefano


