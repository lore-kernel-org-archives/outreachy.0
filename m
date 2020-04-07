X-GM-THRID: 6812856909283983360
X-Received: by 2002:aa7:998e:: with SMTP id k14mr3392268pfh.313.1586279360340;
        Tue, 07 Apr 2020 10:09:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls2402451plq.7.gmail; Tue, 07
 Apr 2020 10:09:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypJzG52qbN+RSX04d1lMf5w6eeiLWuDVpeDeCDeyCVJJ7eArVbnGPpl7U8AajzxYAlmCsMKS
X-Received: by 2002:a17:90a:30cf:: with SMTP id h73mr313595pjb.189.1586279358502;
        Tue, 07 Apr 2020 10:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586279358; cv=none;
        d=google.com; s=arc-20160816;
        b=KcIpliDJmVu0X3SzaC/hMlsC5zFHxFcxGm/E8Qe63/50PLyUebPsvFIOZ/0orQUlPR
         hNaV/1IwDKf6LuDpNdUh7qrglR9bf+EJHxlDjLslC7aDL+wBAHEApxJfaDkahnCq0+fZ
         SCHVfJf2zLPiFFMFSLvtdzLVoylUiJm2iW9rLEdL6l8vQkwuDMqhccqn7weUleJMRJv2
         GPWb2TMjyJczBTnRGYd9VhebdOGQNp0O0v78gfJBKMhp/IaEBrA2wHApmXr91M7bV92u
         6i1J8LOcKJWV5mbNGZOK3cMRcxkjoYBw9IKsxJA7GQs49WLUyNQuQlgdX3Qmp7y9QuW1
         m58g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/MDxyK5XQqOD1f5pu+vLTQRmeHm8k4BMvzC7OiwDOKg=;
        b=xJyH3m+NJllgU2GyQPvaKfD1zcqRQQ0/S4LY07eUfQv42A0VcIN2JAfgnmzWWfj+6j
         56dtPCkRgI7agO5qqHUE/5pRWxflwCCyoWaPJ3daGE1KvDk1ZpS/OSm6iyfyX2sp1okc
         DNz8HEXXfvlE1MTXNm5GyY2PG7Bd6L39IU91L7abfcl9/0SNEiAyd5+uz1IQJ0fELE79
         qKlaKDCKpjA4ynqG5AEOgb+cyZQcpf6HfiGj+DHcKpOFqd2132+utAU/licMSIExkRmF
         cEurgl3lWfCYCnhHIqZWrmRmDF6/JbU6D9Iwy4U8k9BD6Lwye9eFdlnNr/Nm9yLj+sxP
         p97Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=craKSdKO;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id t15si116794pgb.1.2020.04.07.10.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=craKSdKO;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586279357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/MDxyK5XQqOD1f5pu+vLTQRmeHm8k4BMvzC7OiwDOKg=;
	b=craKSdKOos1yvZ27ViNBn7ik6f7qekOiw1/QUK+z6i6u/dbBWTfVRLj/jDDM6WsJVAK5Fq
	Nv00sM1LjhNu6eMkcUsODs02ynjCtLtbxNnMZcQZb143cOMQeva4GciZCo3o5+P0qPJRnG
	rXRmxqdTqf7vBDnl+MsGb/szGz3c73k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-KWMkyqJTPgCnF1o2fsq-MA-1; Tue, 07 Apr 2020 13:09:15 -0400
X-MC-Unique: KWMkyqJTPgCnF1o2fsq-MA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E75B718FE862;
	Tue,  7 Apr 2020 17:09:14 +0000 (UTC)
Received: from localhost (unknown [10.36.110.58])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66B318F34F;
	Tue,  7 Apr 2020 17:09:13 +0000 (UTC)
Date: Tue, 7 Apr 2020 19:09:07 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Briana Oursler <briana.oursler@gmail.com>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [NOMERGE] net: selftests: Add xfrm
 encryption for vxlan
Message-ID: <20200407190907.54ae4db3@redhat.com>
In-Reply-To: <alpine.DEB.2.21.2004071902410.2982@hadrien>
References: <20200407064413.15480-1-briana.oursler@gmail.com>
	<06a59883fde977deb7fbc056a5381832e9356754.camel@gmail.com>
	<alpine.DEB.2.21.2004071902410.2982@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 7 Apr 2020 19:02:56 +0200 (CEST)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Tue, 7 Apr 2020, Briana Oursler wrote:
> 
> > On Mon, 2020-04-06 at 23:44 -0700, Briana Oursler wrote:  
> > > Extend existing test by adding xfrm encryption on vxlan tunnel in
> > > namespaces a and b.
> > >
> > > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > > ---  
> >
> > I additionally wanted to give credit that this change was made based on
> > starter code provided by Stefano Brivio but not sure if that goes in
> > the patch description or not. I will resend if recommended.  
> 
> Maybe Suggested-by?

Yes, thanks for the suggestion :)

Anyway, the patch is not functionally complete yet -- we can figure out
the details once it is.

-- 
Stefano


