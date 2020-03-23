X-GM-THRID: 6805399652543758336
X-Received: by 2002:ab0:3389:: with SMTP id y9mr5873422uap.98.1584924601216;
        Sun, 22 Mar 2020 17:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed4b:: with SMTP id m11ls222258vsp.1.gmail; Sun, 22 Mar
 2020 17:50:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFptz6lLavevEYnJgLndG7+J0G2VWCzC+DY7kIMlV0udzbCSibTt3CYJS/7adfHQXU1VSd
X-Received: by 2002:a67:e2cb:: with SMTP id i11mr14071920vsm.192.1584924600184;
        Sun, 22 Mar 2020 17:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924600; cv=none;
        d=google.com; s=arc-20160816;
        b=bu5rohPs/l6a8wAuCeqky3N2uY1dqwQRKvtcf78nz6dINfUHw8H8ybpbw46AMyZbew
         +OK6NkDaB5hUfLJENwYo4RNPUQwsV8Rk0pQPPkvjHWT3lLMuajLOlPNltcTYVJ4dVKgE
         ZssmRqfdv2nv5xhlCoh3tLZXT4IyqB5Ze+wT7RiC48O/XO3MLhhJ4K1I1iRifKeeUmPh
         2WGFrjdNSmuBXG9sO9Gkza2n8eOplzhl9EBw5OGfwoD21ymgHMBWaF4vZ1ZbTGFza7el
         x8RWmUpXHpwi412O4glx+vJahcSvlC7Ay5aJtBy4rzi5a1FKTQsK3pNVi4hliV9eIWWM
         fR3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=4WJG8kX5wGWaQ/wYthBFIkeuh/CAXA1gW5ZNSHD9JAs=;
        b=jBsISUyp3LMIvzs+rDz0E7Q1rWb6pNZsTeap5cwl+5jEy1y5a3CyKRnQ3gwqddo17J
         vAiGMKCShvAOQmwUsKMIY1yJx6e2ZlPmsioDZGRRv9tuYWDe9z3w/FhpLJN/ewc14WX3
         +Wj4j2xTpThqAam0urSrkS51lJ0mnGHXf1oqAw8DG2FpTQOEsvFknHsBkc1xCrQxCSxm
         BKS6XnSUKzICeN6IV4OwSkI4zs54+o18ohdKCR80tFPRchSVbH2hFffNHQOnJaJUnxw6
         XH0bHsKG750GnMNtyGClOnM/P+2sb8F6jw5tM6ShcrNZbDEBlTYsoIgxM5LKzgmg31a0
         xqDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Izq+6922;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id w12si803940uaq.0.2020.03.22.17.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Izq+6922;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4WJG8kX5wGWaQ/wYthBFIkeuh/CAXA1gW5ZNSHD9JAs=;
	b=Izq+6922QyCIgdq2L9llerOP/yWBZJmeR3V0QaE8QOSa1ZiMhtlt7Lm+3yIvliijEKcyuT
	KNoxMaNVlvY4KaG5cZcGAaOuC2GFviuo6KViye8D2tmridP8ZjWw8UW6FMJZLW0FuZb3z6
	or+o/6FdPbiJy3MjdvQyc9uEe+B3kFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-y4Xmhf-lNJSBUqIv0LtY0Q-1; Sun, 22 Mar 2020 20:49:55 -0400
X-MC-Unique: y4Xmhf-lNJSBUqIv0LtY0Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD6E98017CC;
	Mon, 23 Mar 2020 00:49:52 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D9159B927;
	Mon, 23 Mar 2020 00:49:42 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:49:35 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
 outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>,
 kieran.bingham@ideasonboard.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald
 <pmeerw@pmeerw.net>, linux-iio <linux-iio@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 3/4] staging: iio: adc:
 ad7192: get_filter_freq code optimization
Message-ID: <20200323014935.48048405@elisabeth>
In-Reply-To: <CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
	<dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
	<CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11

Andy,

On Mon, 23 Mar 2020 01:44:20 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Current implementation of the function ad7192_get_available_filter_freq
> > repeats calculation of output data rate a few times. We can simplify
> > these steps by refactoring out the calculation of fADC. This would also
> > addresses the checkpatch warning of line exceeding 80 character.  
> 
> I'm not sure you did an equivalent changes. I believe in the original
> code precision is better. Consider low clock frequencies when 10 bit
> right shift may hide some bits of the division.

Note that those bits are eventually "hidden" in the same way later,
despite the different sequence, due to DIV_ROUND_CLOSEST() being used
at every step (both before and after the change) without other
operations occurring. Anyway,

> Care to write a python script to check the precision between old and new code?

yes, that would be nice no matter what.

-- 
Stefano


