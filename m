X-GM-THRID: 6809167002234519552
X-Received: by 2002:a17:90a:a40b:: with SMTP id y11mr17881pjp.130.1585774731309;
        Wed, 01 Apr 2020 13:58:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls832618plx.4.gmail; Wed, 01
 Apr 2020 13:58:50 -0700 (PDT)
X-Google-Smtp-Source: APiQypKeJlBah473Q/pJbI4SyHUtTKqBY3Z6SEdQsWtQSHCTayjt2tRmoJOZT70bu20ReHt0mGZk
X-Received: by 2002:a17:90a:8c81:: with SMTP id b1mr23959pjo.102.1585774729883;
        Wed, 01 Apr 2020 13:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585774729; cv=none;
        d=google.com; s=arc-20160816;
        b=us7s/d0xfRkqOlwr93qbJYEh5YUHHbK2KS86aoofPkIuSuwm0jCvm8iiNJdJlTj8hW
         S4aSpg+fOfUkU2DI5TkVScMIC9LcUMBvaEOhsHjIw+aK9ZVTUKYlGgajPuhh5ro5mDXA
         rf13sAzKbhiwpzUSTn+L5fzmcDrrQpla9FQTNrpHeDRvjysQpTiVqJuzBrUCZAwMBVy2
         kFZ2/efpdGa7ds4AbH2HCKqYSO69J0ZiUN7q0Tb/BK63vqdURNXbfgLI8B5IpqMhXKFv
         Ni6R3S0cdHc2TLGC9/B/LgfgVN0bR8U8GizmpAZe3EE6J4Bub8IqFnlvdbQxYI5Fy+sU
         kPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=a0GQPUGCBpquaurSyfTVGCv1Ru25YS5QXdUQmKmhRIs=;
        b=PVfLboZgbJRN8jNC6atyioMpKYmFtHy9/kh4j+L06aw0vLtkOXwuBG154wg1lePDTb
         GbnNkzfDdxUkg8kErsbM4ehsfj0fzyAElJFBfnkY3ddjkaIeYEScnlizqM3rAP6Iz2JS
         epYK9XSwx17/iJOpYV9JSmk3KMck1NfReUjD8HqNu4qANlJKgY5cmLTIC9coqKfwYHpu
         F4ajuqXAi1Hiai6l3riTMoGLXeTJiacwMvBem8dWayTjW3hw4S8nYuDS0N4TV3HdN402
         IRdMWLYGBVknIZ9UiBmk3AEzyluaw7Wbvo9F6oknF6D58wwfrK0amoqwcFRy0+HCiQX+
         G8RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JRK0WpK9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id 74si186812pfy.0.2020.04.01.13.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 13:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JRK0WpK9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585774729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a0GQPUGCBpquaurSyfTVGCv1Ru25YS5QXdUQmKmhRIs=;
	b=JRK0WpK9EJzeVDCoWcRCUPoutO4pwRiZqNSEcwjsbBnMMHMHFYQOvm3QcPEjDXcb0mkOcY
	O5POD//1yXNP8N3D9J1N5ObRih11crUvwmrvQyGKfni1KoT6wtzVmGHThKPP6fyML70xEk
	Tp+MoElnb88Zp/1Ccn52WC0yi9jqpmg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-Ymg6oWtRMT6DKSdbQQu-7g-1; Wed, 01 Apr 2020 16:58:45 -0400
X-MC-Unique: Ymg6oWtRMT6DKSdbQQu-7g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F34F190A7A2;
	Wed,  1 Apr 2020 20:58:44 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E24E100EBBD;
	Wed,  1 Apr 2020 20:58:41 +0000 (UTC)
Date: Wed, 1 Apr 2020 22:58:30 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com
Subject: Re: [Outreachy kernel] Re: [Outreachy] [PATCH 0/3] staging: qlge:
 Resolve various warnings issued by checkpatch.pl
Message-ID: <20200401225830.4660f152@elisabeth>
In-Reply-To: <20200401085810.GA19697@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
	<20200401085810.GA19697@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Soumyajit,

On Wed, 1 Apr 2020 14:28:12 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:
> > This patchset resolve coding style and indentation issues reported by
> > checkpatch.pl
> > This patchset add space around various binary operators, remove extra
> > unnecessary blank lines and properly indent a multiline comment for the
> > same file qlge_main.c present under drivers/staging/qlge directory.
> > 
> > Soumyajit Deb (3):
> >   staging: qlge: Add space around operators
> >   staging: qlge: Remove extra blank lines
> >   staging: qlge: Properly indent a multiline comment
> > 
> >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> >  1 file changed, 11 insertions(+), 19 deletions(-)
> > 
> > -- 
> > 2.17.1  
> 
> I have submitted this patcset on 28 March but I haven't recieved any
> review on this.
> Is there anything wrong with this patchset?
> 
> Please let me know, so I can correct them and resend the patches if
> needed.

I haven't reviewed this series because I'm confused. You later sent a
series:

Subject: [Outreachy kernel] [Outreachy] [PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl
Date: Wed,  1 Apr 2020 12:21:18 +0530
Message-Id: <20200401065120.17459-1-debsoumyajit100@gmail.com>

...how are those different? Which one should I review?

-- 
Stefano


