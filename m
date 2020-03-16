X-GM-THRID: 6803014756528553984
X-Received: by 2002:a63:5d04:: with SMTP id r4mr437630pgb.241.1584373493135;
        Mon, 16 Mar 2020 08:44:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls9699678plq.7.gmail; Mon, 16
 Mar 2020 08:44:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvG8TEOkCujL+5wwO3axV9VS6MdauviTc34wTtPGufjgeRfFOnQn6SFM3q1z2dTbelNb9f/
X-Received: by 2002:a17:90a:aa0c:: with SMTP id k12mr71021pjq.193.1584373491388;
        Mon, 16 Mar 2020 08:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584373491; cv=none;
        d=google.com; s=arc-20160816;
        b=h4RsfZTuMJddMrHCPvW33XI8bYcqdU5OxvF0yKSY9/lDgGcjW+mms3iAxd5jJ5JB8K
         VLC+BGUpoo7Jhc8lyUG31wAf/oDnZf5jv/vOdohuS3tPkn/Tr4QiBhsG/AYu0swgeaJz
         65UKkmNwAqHeq9SqyEUCoDZT/lMm4eMWulTGBtPdGA73/O++WVfTW5T9fpJQuc09HkF0
         616AesqwwZKOOZh3WcFZwpyTCWPgbiKDMmhyejpkQGU7hpMZmIOmzFpU8F6sFkQ3FVON
         hEWTdXPXCwnbI0KK2XTV3+FLbSEEG7sZsWwyDwKt0DS9rGlkFxmPJ9hdQMcHsnlCPYqx
         dQWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=rFenHpegyCpu74CnZxqCWfklRZWof1Ki9CxmKVaSPk8=;
        b=UjPWAItLYVtDNn3c9nIGYCwOh8sBP3rTnoZz/8xo5OWewaOGf11aJH2dv371uFbm62
         OmKDcWyZ1rU4qGgOrCIoZNZjDlJH+5huAo8P+kg1IyYunD4oOZjitAgMhGlgGiPK+iHW
         xAvUQ6mpDPvOLLUZTYUBvQnRh8RPmHs7kiPcVRa9UkemOJlM3Gpl8HkdAGMpR3lz17iq
         hE2uoLSX762OzA+LZHLE6aVUGh9UPrS8VO9LI6hikLCkwLjtLcTpRbEpaUP2cfKnH4Np
         jyKe527PcpIRFgHJBlDHJguNMJx3NJVj8O4uwJBvSKCiA9SVirhuu+eVV9wMyR72tVsO
         PyGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iSAiSpaR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id s20si23147plq.5.2020.03.16.08.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 08:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iSAiSpaR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584373490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rFenHpegyCpu74CnZxqCWfklRZWof1Ki9CxmKVaSPk8=;
	b=iSAiSpaRVaL5UYWzxXocbFNkeh+AfkBKjzsMfqHtE5m2vj2Mm5KDz9cSZGnjS0m7IGpqee
	/NYhgm7rWqsP9qNTLoOkOJsr8yO43hOACeAQ0iOvhpok3k2cxR3OlN+awtStkgJ1s1f8+w
	jPJb9FaJ1L6NgBBwp3TIQqlmEc/p8a0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-43FfDWfyO5iEzOAgq-tPRA-1; Mon, 16 Mar 2020 11:44:48 -0400
X-MC-Unique: 43FfDWfyO5iEzOAgq-tPRA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58CEE8DF411;
	Mon, 16 Mar 2020 15:44:47 +0000 (UTC)
Received: from elisabeth (ovpn-200-84.brq.redhat.com [10.40.200.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F203D5C1BB;
	Mon, 16 Mar 2020 15:44:45 +0000 (UTC)
Date: Mon, 16 Mar 2020 16:44:40 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200316164440.54fe16a8@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003161631270.5216@hadrien>
References: <20200311181134.GA17847@supernova>
	<20200312002348.06821daa@elisabeth>
	<20200313094046.GB3844@supernova>
	<20200316150829.370975f2@elisabeth>
	<alpine.DEB.2.21.2003161527020.5216@hadrien>
	<20200316153629.0fde04f8@elisabeth>
	<alpine.DEB.2.21.2003161543170.5216@hadrien>
	<20200316162343.36bacaa7@elisabeth>
	<alpine.DEB.2.21.2003161631270.5216@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 16:32:47 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Mon, 16 Mar 2020, Stefano Brivio wrote:
> 
> > On Mon, 16 Mar 2020 15:44:05 +0100 (CET)
> > Julia Lawall <julia.lawall@inria.fr> wrote:
> >  
> > > On Mon, 16 Mar 2020, Stefano Brivio wrote:
> > >
> > > [...]
> > >  
> > > >
> > > > One idea might be, in run_cmd_parmap(), to avoid redirecting stderr
> > > > here:
> > > > 	        $@ 2>>$DEBUG_FILE
> > > >
> > > > if DEBUG_FILE is not set (that is, it's /dev/null) and we detect V=1 --
> > > > otherwise, spatch output is thrown away.
> > > >
> > > > That works for me, but I'm not sure how elegant you would consider that.  
> > >
> > > Actually, I was just going to try to fix the semantic patch that caused
> > > the problem.  I don't really maintain make coccicheck, but I will suggest
> > > it to the person who does.  Thanks.  
> >
> > Wait, was it really caused by a semantic patch on scripts/coccicheck? I
> > couldn't find anything like that in logs. My problem, ultimately, was
> > simply libpython2.7-dev missing.  
> 
> Ah.  Thanks for the clarification.  That is another problem that should be
> fixed then.  You installed the opam version?

Yes, read my previous email on this thread
(<20200316150829.370975f2@elisabeth>).

-- 
Stefano


