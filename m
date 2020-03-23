X-GM-THRID: 6803014756528553984
X-Received: by 2002:a17:90a:358e:: with SMTP id r14mr16256286pjb.182.1584921621034;
        Sun, 22 Mar 2020 17:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3ls7520213plr.1.gmail; Sun, 22
 Mar 2020 17:00:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5q/Zzx6PG9rd8T4AsYuiz9I7AYVDN8yjqxIkDbZMLVTTIZAoQnQ+HDCYHUTMW6TNN3Mzc
X-Received: by 2002:a17:902:7045:: with SMTP id h5mr7058688plt.266.1584921619193;
        Sun, 22 Mar 2020 17:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584921619; cv=none;
        d=google.com; s=arc-20160816;
        b=vOBHskZ0aXp05vgvLgQ2LBZ6FeYxs5lxqLcBpcr9klNmHbffZ4wKkgiakFqUDuJk3p
         M+2lUSL9S5r/VE1nB/ifiHFZGAfsJMfrWoqvnBzdzXKWbptOBdkQq4YnBQtl3/0mY9xv
         Ip6rN43k/p97ab+mWz227jrFRH+otJHNq+MRHXhAwffVozqVDZP8IdrRD00jwyQkSU1s
         mIzleJ/NJPnu/BB22qVYF6aJjAVBOhohO9+asWuWF+feqyaAC6SNbkgm7AtlkkWFK/il
         w4G3sVOVTYAyxXgeWW2jsnEBpdPk2vh88yKEokqQ+I2NJTeIUKTbb1DRKWRP7h2+wCOP
         YQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ebWjGhCgA9jVXWqwImhpi0dls5aoeiTw0T/yHkJE0Qk=;
        b=kT604mcXn1yWFcj8JmOIMYovbdwuHNkAIwCelrpKSredf8Jrg/yBH7H0e935/HfTYv
         +DDEbOrPxC4P0jOaH+BdpwRs2VtG6zVWdTvh2v12CNbv7zkX+PGGmUs3ZQN3iHNQtmdE
         /kkgfUsxsRjXbtF2S95/rSvIdeezhfMo0TVAK4uKsIQp0yfzTyPRCnWGeSG489yGLhLN
         jJHz19/Hve2FoRfptuASYTpjCYIeCGGljxsP87v1ynBveKj8gGC1RMG3UThyXAg2eRiY
         ce9CioapavAFm8O2tuKqhGEs2ulvLw3f5yK0pQszJcF35+POGm10XUsN9A+Y5s5aocZg
         WkDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Yj3A99k3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id y5si296115plr.4.2020.03.22.17.00.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:00:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Yj3A99k3;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584921617;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ebWjGhCgA9jVXWqwImhpi0dls5aoeiTw0T/yHkJE0Qk=;
	b=Yj3A99k3o/jDVzp/THajmf2ooqQasuO44CJjpEyRcYqX92teVZtpu7J2y0GiADZ87m63v3
	m+oJod196a46sC6UOTuDsGYbxKDR+tQfdP4nqFNqYu+uEfaD2SALfEDV0PCgGx5ZmcawTk
	fR0PQJNvEjYWPZrq378Hej0CUIXiups=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-J16RIxHAO22DxHoAUHLKRA-1; Sun, 22 Mar 2020 20:00:15 -0400
X-MC-Unique: J16RIxHAO22DxHoAUHLKRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98141189D6CE;
	Mon, 23 Mar 2020 00:00:14 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CAB760BE2;
	Mon, 23 Mar 2020 00:00:11 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:00:03 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200323010003.705a9755@elisabeth>
In-Reply-To: <20200319220605.GD10911@supernova>
References: <alpine.DEB.2.21.2003161543170.5216@hadrien>
	<20200316162343.36bacaa7@elisabeth>
	<alpine.DEB.2.21.2003161631270.5216@hadrien>
	<20200316164440.54fe16a8@elisabeth>
	<20200319201553.GA10911@supernova>
	<20200319214321.2060a5ef@elisabeth>
	<20200319213047.GB10911@supernova>
	<alpine.DEB.2.21.2003192236110.9011@hadrien>
	<20200319214757.GC10911@supernova>
	<alpine.DEB.2.21.2003192249420.9011@hadrien>
	<20200319220605.GD10911@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 19 Mar 2020 23:06:05 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> On Thu, Mar 19, 2020 at 10:50:15PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> >   
> > > On Thu, Mar 19, 2020 at 10:38:59PM +0100, Julia Lawall wrote:  
> > > >
> > > >
> > > > On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> > > >  
> > > > > On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:  
> > > > > > On Thu, 19 Mar 2020 21:15:53 +0100
> > > > > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > > > > >
> > > > > > Can you just run this spatch command:
> > > > > >  
> > > > > > > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > > > > > > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > > > > > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > > > > > > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > > > > > > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > > > > > > -I ./include/uapi -I ./include/generated/uapi
> > > > > > > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > > > > > > coccicheck failed
> > > > > > > Makefile:1740: recipe for target 'coccicheck' failed
> > > > > > > make: *** [coccicheck] Error 255  
> > > > > >
> > > > > > alone, from the same directory? The issue (okay, I'll send a patch) is
> > > > > > that the coccicheck script suppresses stderr for it.
> > > > > >
> > > > > > --
> > > > > > Stefano
> > > > > >  
> > > > >
> > > > > It says "274 files match" and if I suppress the "--very-quiet" part of
> > > > > the command, it outputs many files preceded with the word "HANDLING:".
> > > > >
> > > > > After that, If I try, by example, this command:
> > > > >
> > > > > /usr/local/bin/spatch -D patch
> > > > > --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
> > > > > --no-includes --include-headers -I ./arch/x86/include
> > > > > -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> > > > > -I ./arch/x86/include/generated/uapi -I ./include/uapi
> > > > > -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> > > > > --chunksize 1 drivers/staging/qlge/qlge_mpi.c
> > > > >
> > > > > It says:
> > > > >
> > > > > HANDLING: drivers/staging/qlge/qlge_mpi.c
> > > > >
> > > > > But nothing more.
> > > > >
> > > > > The command Julia suggest has similar results.
> > > > >
> > > > > Is this correct? I thought it outputs reports or patches.  
> > > >
> > > > Yes, that is correct.  Maybe it has nothing to do on that file.
> > > >
> > > > Could you try the following file:
> > > >
> > > > drivers/net/ethernet/qlogic/qed/qed_roce.c
> > > >
> > > > with the semantic patch
> > > >
> > > > scripts/coccinelle/api/alloc/alloc_cast.cocci
> > > >
> > > > julia  
> > >
> > > Yes, now it worked! :)  
> > 
> > Um, now what worked?  I guess you got a message for this file, but is make
> > coccicheck now working too?
> > 
> > julia  
> 
> Oh, sorry I was not clear, this command worked:
> 
> /usr/local/bin/spatch -D report
> --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes
> --include-headers -I ./arch/x86/include -I ./arch/x86/include/generated
> -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> -I ./include/uapi -I ./include/generated/uapi
> --include ./include/linux/kconfig.h --jobs 8
> --chunksize 1 drivers/net/ethernet/qlogic/qed/qed_roce.c
> 
> You were right, it had nothing to do in the file I tried (and some others too)
> but in this file worked:
> 
> drivers/net/ethernet/qlogic/qed/qed_roce.c
> 
> > but is make coccicheck now working too?  
> 
> No, it is not working, sorry :(

What if you try the spatch command (without --quiet or similar) that
gets printed by 'make coccicheck' when it actually fails?

I'm asking because the only way an issue could be hidden like this
seems to be if it's spatch failing.

-- 
Stefano


