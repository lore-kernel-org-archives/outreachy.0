X-GM-THRID: 6803727344338993152
X-Received: by 2002:a25:234f:: with SMTP id j76mr3348319ybj.502.1584406223979;
        Mon, 16 Mar 2020 17:50:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d982:: with SMTP id q124ls1685879ybg.11.gmail; Mon, 16
 Mar 2020 17:50:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtjD2CLifXXrZPF2sujVmCT9r1MzRwuAhQffI8UrlMTt4WQkZ13iDbnuuqgX24H1uaqS8dJ
X-Received: by 2002:a25:2b01:: with SMTP id r1mr3671952ybr.163.1584406222484;
        Mon, 16 Mar 2020 17:50:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584406222; cv=none;
        d=google.com; s=arc-20160816;
        b=OumdS8RH2L7AXRRsrizXpNbZSEQM2vSwC/jUB6HU7NsYQ5M+dvJEdoOh4iLCpzNc/K
         cFuzdb50OHM889MbVr9ElSGULF0r75q4BNsAkqnn0hb1kZiuMi0qmfxSe+56rFwKmhDo
         FXrQo7u8QSXshfIbrrH1GiZF9xCFQ+cnelUQ9mPZTYNGfCsEQnE55mXrx2UMzLfRG71s
         g26AvwiM4z28m4kNMljNDOUzBPNn6JexC5px598rZ1tzhNyHow/1BP5d1tevf0mQG3eQ
         u9j46WFz88T5blqdA6hLXcdJIfeKMNMtfaBA/u9sF4DDx8qw3SrYpq4W2M1lEJkGL7rW
         J3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=s0cbdn9hLtJJSRzE+HGEJPWUGqAkb+szuBdLY+9Z1U0=;
        b=MJOMaVkCyiB0gEDOKQhCGjd0hf/V9UZNixt8Cf295DEPcTqEzSZmOpneSK+hOgqUVb
         5CiCPT+UJ2EmR/WpZ5mIyLRH5JCFneQ75kNXYhZ80D4MFeR9K9wzWwg3Eo+057H40Y2u
         QvhrGqa/PXAMhzvdKvdw7b8PDUHD7vZTGAeY71X5kW4//J57CYOSmA9BsKSFRnfz4Ioi
         bXSrAtnCHsiv8185SrnhPiQtLcVgaBjQ0T5nNaJx6usL+OMO4VaVxOXloUKe7QGDLlGd
         z8p4mket1FdtKg1ZQr9rntOxsAhIEcndoVHBDJ++hmA8dyQ1k7LZLPTua1oopscT8wpq
         r+mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D1AMQepp;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id x13si159708ybs.4.2020.03.16.17.50.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:50:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=D1AMQepp;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584406222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0cbdn9hLtJJSRzE+HGEJPWUGqAkb+szuBdLY+9Z1U0=;
	b=D1AMQeppd+gy/0us6ZIk0ibzee14ZSATkBAfm6113Vj1nLdTeQNXlQlk26bWxtH4Qs5tGS
	RKwlh1KE78b4CYIxYwN7jqTnNi2vKTBYhpkh81FNEOkqD1sfg31uFf8Zzt3Cumgu5Lh3Vi
	M4Js3uiaQ7l8Deqy9aoxAFCks8KTUXI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-9u9AfV1PPwm1IvMQm0lGow-1; Mon, 16 Mar 2020 20:50:18 -0400
X-MC-Unique: 9u9AfV1PPwm1IvMQm0lGow-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5FF1801E70;
	Tue, 17 Mar 2020 00:50:16 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C38CA60C63;
	Tue, 17 Mar 2020 00:50:14 +0000 (UTC)
Date: Tue, 17 Mar 2020 01:50:08 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger
 <Larry.Finger@lwfinger.net>, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Better Fix for
 long lines in Kconfig help
Message-ID: <20200317015008.66b7d14c@elisabeth>
In-Reply-To: <20200313161631.GA2376@tulip.local>
References: <20200313161631.GA2376@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Veera,

Note that who reads the commit title won't know in which way this is
"better" than v1, because v1 isn't tracked by git. I think the "Better"
part should be omitted in the title. Looks good to me otherwise, just
one minor comment:

On Fri, 13 Mar 2020 21:46:45 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Fixes two long line in Kconfig help.
                 ^^^^ lines

-- 
Stefano


