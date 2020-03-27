X-GM-THRID: 6807662174396219392
X-Received: by 2002:ab0:63c3:: with SMTP id i3mr9870439uap.127.1585281187571;
        Thu, 26 Mar 2020 20:53:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3750:: with SMTP id i16ls607823uat.4.gmail; Thu, 26 Mar
 2020 20:53:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvHtCqFMu/jONMcv7TEdiRTMWny24NoDIll3QvFYq+KltMmaevLo2+oCbEURQPQLEPEye5W
X-Received: by 2002:ab0:d94:: with SMTP id i20mr9275699uak.13.1585281186252;
        Thu, 26 Mar 2020 20:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585281186; cv=none;
        d=google.com; s=arc-20160816;
        b=v5w58MgBwj3gh5gy5rX+kWBikionlDPzoQJi8MAr9ufQmq/r9zeaRR38qVQZvOls78
         SiDqgd113Uh6fsAMYDcCFlk3tXxYfnJoOFpZEBrKzhlDNFseTWSPucL6npplgYxm0/Z6
         wTHM+dffd2lPFD2RsCY/qQuBlIabCStfU4Bq+yv5rwh4lGGf9e+FNZ4l8G/Vf66SF72h
         nLTSSnc2PiVB+bo3PQC3QBol/MbagpB8yPwdBiBkcvVuJdZmSufjGVw8WUHyNbPBkr7c
         BP1V2us9cZVDq4bwMcgnb7DCwBO8rkzCwHBQBKxbDQSz2JcSiP+Z7AT89mqZVkwi9yMI
         r9qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8sv5AWXU0Wz8tVKPS30guO4j4fuy70O8BEaVn+vbcXg=;
        b=aMXqVtTa1PIXMUIfh+3iFNt7QUYXqHeM9/oYSvRPRA7OzRIZC77UkuFebsfezlqxx7
         JHia9F1b4319Irnpb9RImex+Ner/dglHqq7WzS3znKx2jDBIPg682C+HZvWvHaSnuiIj
         TOVt6WEG5BRsyh8KmCeasvjE5++pzYcgdSr2jEm5Zq/YWiHvUcOMxfPRruH9bpaNNZTy
         /gepvAv4IIe7BQYFwkskIYzkMg5znVFTYqpaoVxXtTb/8l/8e8i+1IIRGcNSUYh8TnbT
         O6X/Hjo7GYk1egVvoKbPikXVHv0W/MIlKEYo3PUyzs7ZtsAL+0hUmN8Kif29Hdt/I5fL
         PEVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J3ESj1Sd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 205si304690vkw.2.2020.03.26.20.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 20:53:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J3ESj1Sd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585281185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8sv5AWXU0Wz8tVKPS30guO4j4fuy70O8BEaVn+vbcXg=;
	b=J3ESj1SdQKvgk3yW/3RXLj3at/FCTL/Pp39hGI57nsb/fWgacKimTGChwwwRY7tx0/CfOO
	uVdJhGm65H0Jdh1b1aeMFPleIgsm66qR+JieGn/3ntXaYESK8OCR3gkDFE4dgRqq9nHr2d
	op+WUm9QBwVyiYH2B8wYRsfV74d7x+8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-MlS3zRjyOiqazF7JO66uPg-1; Thu, 26 Mar 2020 23:53:01 -0400
X-MC-Unique: MlS3zRjyOiqazF7JO66uPg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 544E71005512;
	Fri, 27 Mar 2020 03:53:00 +0000 (UTC)
Received: from localhost (unknown [10.36.110.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5023E5E009;
	Fri, 27 Mar 2020 03:52:58 +0000 (UTC)
Date: Fri, 27 Mar 2020 04:52:53 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: Quentin Deslandes <quentin.deslandes@itdev.co.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Julia Lawall  <julia.lawall@inria.fr>,
 "outreachy-kernel@googlegroups.com\"  <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: vt6656: remove
 unneeded variable: ret
Message-ID: <20200327045253.16c5617e@redhat.com>
In-Reply-To: <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
	<20200324064545.1832227-2-jbwyatt4@gmail.com>
	<20200324100323.GB7693@jiffies>
	<575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
	<20200325091541.GA15158@jiffies>
	<61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi John,

On Thu, 26 Mar 2020 16:26:13 -0700
John Wyatt <jbwyatt4@gmail.com> wrote:

> On Wed, 2020-03-25 at 09:15 +0000, Quentin Deslandes wrote:
> > On 03/24/20 17:32:01, John Wyatt wrote:  
> > > I do not know what these functions do.
> > > 
> > > There is no function documentation for:
> > > vnt_exit_deep_sleep
> > > vnt_mac_reg_bits_on
> > > vnt_mac_reg_bits_off  
> > 
> > I understand, however discarding the return value of functions that
> > could
> > fail is not the best thing to do. Whatever those 3 functions are
> > doing,
> > you should rely on their return code, and if one of those fail,
> > vnt_radio_power_on() should fail too.
> >   
> > > I am a new kernel developer intern with the Outreachy program. I am
> > > trying to fix a style issue reported by Coccinelle. I do not have
> > > that
> > > much experience with writing drivers yet.  
> > 
> > Don't worry, I'm not that experienced either. If my request is out of
> > scope for an Outreachy mentee, a more experienced contributor will
> > pop
> > in the discussion.  
> 
> To any of the Outreachy mentors please advise on what to do.
> 
> I was asked by Greg Kroah-Hartman to make this patch set, but Quentin
> Deslandes asked to return undocumented return codes for this patch to
> solve this coccinelle issue.

Strictly speaking, those are documented: C code (especially in kernel)
is supposed to be self-documenting, and if you follow the call path
(example for vnt_mac_reg_bits_off()) you'll find out that, eventually,
you might get -EINVAL (not going to actually happen), -ENOMEM, -EIO
(the only likely one, on communication error).

If you forward those return codes as Quentin suggested, those are
handled properly by the callers, so I would say that's the way to go.

-- 
Stefano


