X-GM-THRID: 6803323360497369088
X-Received: by 2002:a05:6638:201:: with SMTP id e1mr23040852jaq.111.1584304536823;
        Sun, 15 Mar 2020 13:35:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:1803:: with SMTP id 3ls465206ioy.0.gmail; Sun, 15 Mar
 2020 13:35:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteMJLlbdUplrAmMGiTYuB+DjJOKWyEUtocfymy1/pzTIsLtyfDN+H9AZ04nPS4oQ+mAr3M
X-Received: by 2002:a6b:5118:: with SMTP id f24mr4957548iob.20.1584304535550;
        Sun, 15 Mar 2020 13:35:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584304535; cv=none;
        d=google.com; s=arc-20160816;
        b=eooZQHjyJqp6NeC1NLmabEzzVRiSHROdLUVjKVw6+YFoUBTnhwmJwg2yF+GwluwD6U
         PkgUliJSeZ0WypDdT2ITVn5AGkKhtc/yEMwX5mEIybkuHLrp07kO36YqlqeN7oC8keZc
         zHWztOw6GMlhdPosliL46xDWJyI2ycRXtBXC3wJnKqLJFJApJRfxHIpkhmmuTgc/P22E
         Xi2tlINjKOPprh9y38O9Uow85yHPCMmyyzd9dgWfOe0NVmB0JZRdVuvQUm5OblrJdd4l
         bKvzcvIpEklJ2m7qYyCcrvlzJycd3tIvFUkEOg/mCKZw2ja44iZXzWhBfjzYO4r3ba99
         SKrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nVZnOd5m3porvOMaBZqIz0qexyDnIJOrYW84sRwpgvw=;
        b=J2zhj+4UA8uYpQ9OLS20V/fogXAFN6Ju0fHW3Lw8nAE2hW7koixXpPdC0XsdEWSSdu
         z+fhygn7CafPSzy455/5PCfWPyAwipvslVwHRxgoPLOnUp4l6/1dPQg9bIvNPl0lwJFR
         9Dklcw9VawIBk9vnzIVviHHDo8JhAOk9tNCLPdxk1zgZ/SBf/XpLqXP2vECEBTt9q35G
         aQmV4oQP141PtD1PCP+Mtwi6m08MC2OnO6+bZ2vJsFFvcoGrPBYD5pFfVRL5+UsRywIf
         inDmqqu/uVJEPbtDAC72jidwrMwkIQbDupFdDXdPUaf/ifLyAkvWA2XaiV4LaEV3Ej5c
         qE8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="e6pZ/aPS";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 131si122485iou.1.2020.03.15.13.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 13:35:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="e6pZ/aPS";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584304534;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nVZnOd5m3porvOMaBZqIz0qexyDnIJOrYW84sRwpgvw=;
	b=e6pZ/aPSjzXGhumBOoAT6HVMVajZrhnkyX3Bj099h9px+ON1+XIKzv7MHlwZI0/RFnE8Ik
	+f/FBVeQzzsMfeXlushvJyYbbRbRfZaddsh24slp4p+hNkZXY2YJQabhVCqcGfBG/d3S37
	CHofBaX/RbBz1Ps+/DodszAqbGAU90Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-313-KM45FeRoPJu_w4jHbit_OQ-1; Sun, 15 Mar 2020 16:35:32 -0400
X-MC-Unique: KM45FeRoPJu_w4jHbit_OQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F7BB18A5500;
	Sun, 15 Mar 2020 20:35:30 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38D6C10027AF;
	Sun, 15 Mar 2020 20:35:24 +0000 (UTC)
Date: Sun, 15 Mar 2020 21:35:16 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Enrique Vargas <jevargas@seas.upenn.edu>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Stefan Popa <stefan.popa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: eliminate spaces
 at the start of lineslinux-iio@vger.kernel.org
Message-ID: <20200315213516.6c27408f@elisabeth>
In-Reply-To: <20200312140911.GA731@evX1>
References: <20200312140911.GA731@evX1>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Enrique,

For some reason, an address you wanted to Cc: ended up in the subject.

A couple of comments:

- well, yes, I see you're removing spaces at the start of some lines,
  but you're also replacing them by tabs, and doing it in an enum...
  maybe that could be part of the commit title?

Also,

On Thu, 12 Mar 2020 08:09:11 -0600
Enrique Vargas <jevargas@seas.upenn.edu> wrote:

> Eliminate WARNING found with checkpatch.pl related to spaces
> inconsistency on identation.
                   ^^^ indentation.

The rest looks good to me! Can you please send a new version?

-- 
Stefano


