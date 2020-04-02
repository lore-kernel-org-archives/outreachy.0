X-GM-THRID: 6809167002234519552
X-Received: by 2002:a4a:4190:: with SMTP id x138mr4705194ooa.35.1585871017684;
        Thu, 02 Apr 2020 16:43:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bc8:: with SMTP id k66ls2371261otc.10.gmail; Thu, 02
 Apr 2020 16:43:36 -0700 (PDT)
X-Google-Smtp-Source: APiQypI28jArHIyS2bOmdya2XWKyTx05P4QQjsxlxlTATgPxZIxk9oKUrNfBJhoKwadyGoQJDj9c
X-Received: by 2002:a05:6830:1e10:: with SMTP id s16mr4341526otr.222.1585871016567;
        Thu, 02 Apr 2020 16:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585871016; cv=none;
        d=google.com; s=arc-20160816;
        b=fehXm+WFhV3SIbrJTu8CVDa6AKP+iOZb+NA/Xe2+UfcNRl0AxD4qKWn58v8rC4UzqM
         5bXb64cAst8Eq+ALE9jvdwOYURTtE9qSztVtOsmjsWlHl+XLcJLPT23v2RRFDOkzU+Ff
         O3uPz+oCl87PA93xb0K6RFskGmrgiiC6DHxZrscqxWoljCqqf5kqsDbYB0GPEuBYE5ZJ
         3mEyRpzXAdiHNZBkEGGBj9At9C40fKc2sN+pr/ENB18ttKAa6ii2K349kltaUVY3pEgy
         kUt/Qluj9E6T/2UO9qP/PhMLadmZseQeSExY4s1oBkpRcKbQpZd48mvxwCRFsrAZ07fn
         hEbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=S/beKec2fb972TcjhNwfjQLYw0o1tEKQwXTpjFdwrMo=;
        b=oTL4LeRot2PO7z6uUoIgkFq7p81SSFVf3FZDdORg2b8Sw5J49Fexg3k5+s1sO1mfuA
         eX/6tG/E7UuG0rQChErwZuEvLdJveBTu0aC6QTZ4yK3bUfCarB58VZJiMFL6zzcFe3xk
         MFMyuW798O5j4eMAIdj6Hf3zBQLQfnPVDSx+KfmrFqabEbOMfZmiGofTXdACX5wmg9nX
         rLocnUBbW+XgZzFzqtcwTb8rd6LyuJ74QO3gYlnRFZYQsj+hbexO5meaMN0on4SZyw0M
         oau7VbNPimh8QU2dQfbWwN2u1abZ7lSE0ewDn29hA0gYY78WMRyFTexGKP2GwWBjMoYF
         aicA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=R2jKuXf+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id t81si479310oie.5.2020.04.02.16.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 16:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=R2jKuXf+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585871015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S/beKec2fb972TcjhNwfjQLYw0o1tEKQwXTpjFdwrMo=;
	b=R2jKuXf+AdN7ORTN14C8US5CuTR7W8NhWUuQxwIPV+XydOUlCuBdNH1Kh+3wVID/iA9eSN
	21zp2mueJYQ4ARPH6jP7Mz8J1hWww6v9EhQAkpZVSEcMvq8Mq29w39WqlsT5+xMK4U33FG
	RXlQkFFmKF8/YQ5BYhSWzWC+v9lIrVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-zDC6Mz4NNZ-TJ03Cd7_nWg-1; Thu, 02 Apr 2020 19:43:32 -0400
X-MC-Unique: zDC6Mz4NNZ-TJ03Cd7_nWg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4AEDE800D50;
	Thu,  2 Apr 2020 23:43:31 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2FDB92FAD;
	Thu,  2 Apr 2020 23:43:28 +0000 (UTC)
Date: Fri, 3 Apr 2020 01:43:21 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [Outreachy] [PATCH 0/3] staging: qlge:
 Resolve various warnings issued by checkpatch.pl
Message-ID: <20200403014321.6fbf3291@elisabeth>
In-Reply-To: <20200402124309.GA9037@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
	<20200401085810.GA19697@ubuntu>
	<20200401225830.4660f152@elisabeth>
	<20200402124309.GA9037@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 2 Apr 2020 18:13:12 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> On Wed, Apr 01, 2020 at 10:58:30PM +0200, Stefano Brivio wrote:
> > Hi Soumyajit,
> > 
> > On Wed, 1 Apr 2020 14:28:12 +0530
> > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> >   
> > > On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:  
> > > > This patchset resolve coding style and indentation issues reported by
> > > > checkpatch.pl
> > > > This patchset add space around various binary operators, remove extra
> > > > unnecessary blank lines and properly indent a multiline comment for the
> > > > same file qlge_main.c present under drivers/staging/qlge directory.
> > > > 
> > > > Soumyajit Deb (3):
> > > >   staging: qlge: Add space around operators
> > > >   staging: qlge: Remove extra blank lines
> > > >   staging: qlge: Properly indent a multiline comment
> > > > 
> > > >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> > > >  1 file changed, 11 insertions(+), 19 deletions(-)
> > > > 
> > > > -- 
> > > > 2.17.1    
> > > 
> > > I have submitted this patcset on 28 March but I haven't recieved any
> > > review on this.
> > > Is there anything wrong with this patchset?
> > > 
> > > Please let me know, so I can correct them and resend the patches if
> > > needed.  
> > 
> > I haven't reviewed this series because I'm confused. You later sent a
> > series:
> > 
> > Subject: [Outreachy kernel] [Outreachy] [PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl
> > Date: Wed,  1 Apr 2020 12:21:18 +0530
> > Message-Id: <20200401065120.17459-1-debsoumyajit100@gmail.com>
> > 
> > ...how are those different? Which one should I review?
> > 
> > -- 
> > Stefano
> >  
> Hii Stefano,
> 
> Both patch series are different. The patch series which was sent on 28th March was for the file qlge_main.c
> in the qlge driver. While the patch series sent on 1st April is the
> patch series which was formed by clustering previous individual patches
> for the file qlge_mpi.c in the same qlge driver as suggested by you
> eariler.
>
> So, both the patch series are different and they effect different files
> in the same driver.

Okay, but in general, that's not a good reason to have separate
patchsets. The difference should be in the topic of the series.

At this point there are three "active" patchsets for qlge from you:

[PATCH 0/3] staging: qlge: Resolve  various warnings issued by checkpatch.pl
[PATCH] staging: qlge: Properly indent  the multiline comments
[PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl

"issued" and "reported" are synonyms, which would seem to indicate
those are conceptually the same type of changes.

I think the second patchset (with one single patch) was then
incorporated into the third one, but the third one doesn't mention it
in the changelog, and you didn't explicitly say it should be discarded.

Mind that reviewers are people and, while we can use some
interpretation, things need to be sufficiently clear. Given the
subjects of the active series, I'm really lost. I could decide to
review first and third patchsets, but still I don't understand why they
are separated.

-- 
Stefano


