X-GM-THRID: 6809536824595185664
X-Received: by 2002:a17:90a:5d96:: with SMTP id t22mr16943453pji.132.1585581084469;
        Mon, 30 Mar 2020 08:11:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls12619219pls.6.gmail; Mon,
 30 Mar 2020 08:11:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGA4Z1LHYZG+9Wd+UF55dOhjkAjy9Ox62/T0xK4aVDZ1jmHRpkWivsWnq0AKQeuIxif67O
X-Received: by 2002:a17:90b:282:: with SMTP id az2mr16782244pjb.13.1585581082985;
        Mon, 30 Mar 2020 08:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585581082; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbECiUBIJ6x8wOPsL0RwCey6dG88J/k+wWUQyc6k1DgGnqk81dyvY1vTj61DM3hRkL
         WHmIX3kOTq+AMOULzZ2bhZyvp1LQwPvl69ssvAKS2D2bNBWI9xUHxIoPyZWUSi3LRTPh
         dVycr1VMdkN4ShsfxAjulR4Ei5E8ZGK2VFgvvj20yaeDTHgJ2sMxCRft9YUPU4P739U7
         Th4ZfPCNXCuXuHi4SRmdCKqFifRymEG4z7J1TJ6fna/XdJQf+03+h5uGs9+4AWcvFjSJ
         XKUo/1VjginxkM+axo1NNiEDCiORSKAmfwBcbKpGXmkp8toFzQG6Egstgh+fmM5FSbyY
         4mBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=nRwoFunWhAFqmZ7cBeX3+8e+1SQMj8bRlvKSM4LhSks=;
        b=T3+i7OBPauIgz3KhtYHvFHmYd5Pum1sYD21RQVA79f6P6rR2vKQNG+wP7HfKtfCwpm
         CzX/1+ZH5E3JVnJaiXzIgeRKwMTaskY9OYDNZVNWeB/sa+2nBIkzqdCH/MdReSWU9Hp2
         u5svZMJo7IqQde0y3nuorMuf0D+JwqZYs6eSqOMpz01n8p95zza9e/FqFBuq8lWxV0In
         S5rSnd0y0J47evqsjwIqGjLceSAWZ5JFJJtUljyeQ/ukzFySSfXi42fF6Cp8MuRszq1+
         ZBD/n3ToTODLg3U4gOCjT+O+/x2HRi696Yf57HdPN9q1cVVo9diQ+03wV44YEhTJ+Pbq
         IEgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QoRThukV;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id np5si58505pjb.2.2020.03.30.08.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 08:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QoRThukV;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585581081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nRwoFunWhAFqmZ7cBeX3+8e+1SQMj8bRlvKSM4LhSks=;
	b=QoRThukVHQ8SvQh/wXYHpyQT2auniekRDtWvxS+6BCuS4wfXRCqLuhuBObB0DCsk2Ndvyk
	YIzUT9D91T/TOptI5HYpvR0HVnvKKCBTutSJ4bZJ/N5wUFnB5mu1yF6bi2uQoSMf9/+TwL
	sE8zYRo5HtBaUN0hNNNe3WJqFp+/Bts=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-AEk13DZnMge4Whm_6SPbMA-1; Mon, 30 Mar 2020 11:11:20 -0400
X-MC-Unique: AEk13DZnMge4Whm_6SPbMA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EB2B8017CC;
	Mon, 30 Mar 2020 15:11:19 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54BDFDA0E0;
	Mon, 30 Mar 2020 15:11:17 +0000 (UTC)
Date: Mon, 30 Mar 2020 17:11:12 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: Ian Abbott <abbotti@mev.co.uk>, H Hartley Sweeten
 <hsweeten@visionengravers.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Fix line ending
 with a (
Message-ID: <20200330171112.33b71e65@elisabeth>
In-Reply-To: <20200329080031.511959-1-jbwyatt4@gmail.com>
References: <20200329080031.511959-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 01:00:31 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Fix style issue with declaration by adopting the same style as the
> function defintion in drivers/staging/comedi/comedi_buf.c.
> 
> Issue reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


