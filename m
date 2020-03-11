X-GM-THRID: 6803014756528553984
X-Received: by 2002:a25:ddc2:: with SMTP id u185mr5645010ybg.218.1583969041465;
        Wed, 11 Mar 2020 16:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls959416ybi.0.gmail; Wed, 11 Mar
 2020 16:23:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5GU2f2OVc3+VsPTW5IN/Z0o11uzSodYyb4+hYKMhATDTxn6zLTykF4PGtTxupFxdJHR08
X-Received: by 2002:a25:e812:: with SMTP id k18mr5732811ybd.93.1583969039662;
        Wed, 11 Mar 2020 16:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583969039; cv=none;
        d=google.com; s=arc-20160816;
        b=qhvJUsaZ30PeuwMQFZxQZwZ7VAE029r0TN6j/M2vhzly08Edd8674qr/gWQWS5jSSu
         8TQqsnpUiSgQcYfrv6+YVFnv5eVZA1S3d63WUkUnyAf77Vk8YSn/8aBbnTM3DOrfDmi3
         Ddxz3MgnvWBLsVjnTTRRlu8IX8PR52LthXOygz/IWoYDarrOahzWfmwvTKOuH4c51+2Q
         KylfQk92jZeMOEhUk6h2OpuTzC2linEHzR08L9UQv8TnH6AQ+fsrYifhKYtgildd3MmU
         YNQNHMoeW3Qu2IqDj7bX92N6VfGyswKkNWNm+/EXl4ibKc0dZIj59eJnXMbHgvZComht
         tarA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YVB2X3fgu7VDl6wQLb69NR0eEjXNDz8EXXKwgBFaLQo=;
        b=xH+yFgZnFyf0XXyu0wZEiMEMpdv94wJheoXgRW/rm18vlRBaCuHRpclEeMFH/6eDC+
         YQD+WX6KbMl8R+JQxjPBjTPRJPX0JKRz0YwAdn2oCBU3fKU+9BslyRQpXKuqvPU91ZO9
         6/iPg00RlqNYu0zdhlWV0DTY8/5qPqFoquenw6VhtZDhZC9nLfeU8ucy03IWqSjzxFtR
         xwW5sQREeRJ7EeqTV2Sb6NDcAEY+jzqAJrNp8MOX/A11cGocKd8hHiQ0mIb2cDoIkLBO
         dy2LrNbehD89DJMjm1ewWPVbeQ81psPT1qoagNZAL+D75ArTc+qDoda/v8wOnic9Fcig
         5Q1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QPblxKKh;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id y19si291298yby.1.2020.03.11.16.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 16:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QPblxKKh;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583969039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YVB2X3fgu7VDl6wQLb69NR0eEjXNDz8EXXKwgBFaLQo=;
	b=QPblxKKhtFwBeSZd2l3jF/+tS3o4R/jKmqbLRmL9jBaWOFCvCJP1ZlGTSCk+ng2s8y0HXg
	b6Za55e82Toxr1miydb5qm7gvw2oDhnRRi9W+Pe2ReOq4dKjhJZr/lA56zwQGy2DyYMUy0
	LOlmjG6njRd00Cg09RcWjwVt5i7Xefk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-frwa5NpIMQ2FJojFLD60Eg-1; Wed, 11 Mar 2020 19:23:57 -0400
X-MC-Unique: frwa5NpIMQ2FJojFLD60Eg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3F62100550D;
	Wed, 11 Mar 2020 23:23:56 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 062F35D9E5;
	Wed, 11 Mar 2020 23:23:54 +0000 (UTC)
Date: Thu, 12 Mar 2020 00:23:48 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200312002348.06821daa@elisabeth>
In-Reply-To: <20200311181134.GA17847@supernova>
References: <20200311181134.GA17847@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 19:11:34 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Hello, I compiled Coccinelle successfully but maybe I am not getting it.
> In order to try it in drivers/staging I ran e.g.:
> 
> make coccicheck MODE=patch M=drivers/staging/android/
> 
> and then got:
> 
> coccicheck failed
> make: *** [coccicheck] Error 255
> Makefile:1740: recipe for target 'coccicheck' failed.
> 
> Also tried some modifications of the command, read this documentation:
> https://www.kernel.org/doc/html/latest/dev-tools/coccinelle.html and searched
> how to use it, but nothing did help.
> 
> Only when I ran make coccicheck MODE=patch over entire sources it
> produces some good results, but eventually I got
> 
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255

Can you share a bit more output? What comes before that?

-- 
Stefano


