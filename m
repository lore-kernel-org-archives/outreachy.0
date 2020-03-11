X-GM-THRID: 6802879895263248384
X-Received: by 2002:a62:e217:: with SMTP id a23mr3202481pfi.50.1583937125627;
        Wed, 11 Mar 2020 07:32:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls1045415plo.8.gmail; Wed, 11
 Mar 2020 07:32:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvITJZu9DjeoLhvF7db+knO68jYo9bvtLsmLyKNNzn1MXRzZYabRGlqO1xYm5OkQOixbtwN
X-Received: by 2002:a17:90a:cc15:: with SMTP id b21mr3737040pju.136.1583937123883;
        Wed, 11 Mar 2020 07:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583937123; cv=none;
        d=google.com; s=arc-20160816;
        b=P2PiQXcrY2QfYwgDm0GnBKIjZfflW/ipoMVszvXEI3x1/NEvcmurdIF7XtBF+bhxOU
         svq4KSeTZt+XndgpcLXv+z76RJx4a3rxgkthZdHTIrmAMoA18jtDn+BjfVS+VYsbEk5O
         gM7ffmSW/Vf0AHP/YeyNrUeXdjWpCee0SpTjBwqZltqU6HcpNatK1oaLykiyoej9WRBb
         CvHTfM3JOpVOiJERBjYaRfe6IDB2vM/niLudgGIf+IwHZynl9zbpcGDd5q6tN2tHV2YC
         L/ldxpPJ223Puj/R1HwsE7wmqU3UURWTOe8yr1jbWsDxqxR0vw1uOP8Xcdezp52PkSPf
         WhmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZyxLbHDvkHNkFpI/z9wDTQp9GPj3UqsuEX6EvJ/pAv0=;
        b=PT3K7AYocGoSh3u86R6hQqMgvrwvQNO5a6g0nMxZjZvFn8mQscOeOPazpS7KBxvKL3
         ktbMwbTQym9J65NLRqeG0zBEHD71w0IpOyKk8qjea9zps2jcekZQqvQ2RxEvdBkhhvvY
         2qdTTK+h8RMICnwX6PiselFiNgIwcUW+WMof/+RYgeUnGty/cS2u4B0CK0NGRUx4uSx3
         Frff4fq2EBF1kPTv4H62m1r8BnEq+o85ZpS2XLt0cFYLkbpu34rs4vCC3fCBvRY9CpWk
         3K9heWLgOEs5S6NWd63/CHGpY+EK22P+4+IUlA5D2bp31Sck1CwADxmw+A1s3kuNZOAL
         Shng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="HnWk/+A7";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id q1si190062pff.4.2020.03.11.07.32.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="HnWk/+A7";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583937122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZyxLbHDvkHNkFpI/z9wDTQp9GPj3UqsuEX6EvJ/pAv0=;
	b=HnWk/+A7kb6U3jmluq9WHS5HnOYOS1TKUSXa5unQnJjBQnMFoSTsY/dGuiGu+En8fh5+pA
	eYinGz+h51klE0tiXbaR5k4J1EiIpXcXoghtdjPBdL17d979uBCt2zJrexA5c9W8XPFpLh
	MpxT5awUOytON+rzrnN5ojYWIux2Aes=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-ALaOsh3iMRGiwrlH4h_JFA-1; Wed, 11 Mar 2020 10:32:00 -0400
X-MC-Unique: ALaOsh3iMRGiwrlH4h_JFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C4B7108BD17;
	Wed, 11 Mar 2020 14:31:59 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DF1C5D9C5;
	Wed, 11 Mar 2020 14:31:56 +0000 (UTC)
Date: Wed, 11 Mar 2020 15:31:51 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, Greg KH
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
Message-ID: <20200311153151.7e94f566@elisabeth>
In-Reply-To: <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
	<cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
	<20200311130807.02e32fc8@elisabeth>
	<CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
	<20200311134418.468f571a@elisabeth>
	<CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Payal,

On Wed, 11 Mar 2020 19:16:21 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio <sbrivio@redhat.com> wrote:
> 
> > There are other graphical or text-based clients (Evolution, pine,
> > sylpheed, KMail, many others) that can also be used for this purpose. I
> > would suggest that you look at screenshots, maybe play with some of
> > them, find one you're comfortable with, and set it up.
> > I followed every step of setting up the gmail as mentioned in tutorial, I
> > don't know why this is happening;(

I guess you set up git to play along with GMail, and that's fine to
send patches -- I see it's working properly.

But, for this discussion, are you sure you are using an actual email
client (and not a browser connected to gmail.com)? That is, are you
using one of those programs I mentioned below?

-- 
Stefano


