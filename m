X-GM-THRID: 6804610075497332736
X-Received: by 2002:ac8:6f36:: with SMTP id i22mr5371228qtv.122.1584450168476;
        Tue, 17 Mar 2020 06:02:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls10756048qkb.4.gmail; Tue, 17
 Mar 2020 06:02:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsjxLw7EdokFDXSLLhuRt398QOG2/Qtg4Zq5P7KlihNUpdXCAd42PsnS0tTpPpKkbcKACNp
X-Received: by 2002:a37:987:: with SMTP id 129mr4793457qkj.83.1584450167006;
        Tue, 17 Mar 2020 06:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584450167; cv=none;
        d=google.com; s=arc-20160816;
        b=z5GjRxY6ud3FDUwLDyvup71kKYLL/TO7rLjQN6OSflAFso2ESjs4qdTixZcyQo+3hR
         /sSNcDxsCtf0PwivPQruEAhUYnyVbQZESWl0q8hgPFMNa/MlfWqR5aVmpBGgo017gfba
         rUXTtFvKBxP+D5lHJuNBb2LSLUq9KEQs1Kz2NbnoretzFmm9//6rmJ4itP2WQ2a/JLn2
         gba9Cdq8NiDboF5hv3ulghMu/ODnVeVSTQlsqi+eFeSt5lqEWKdFEum/reT4iAKQ+t5V
         ABSKdt5KmRHJIbw85+2hrfyUJfIVQtZ6L8QBTru5cNnfKOWRKMm3Pg6pN7rx0Zs2Su2g
         DByA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+yy8hfMZdrhRPFXRnLy5cFahpQJ0cEibN6EUNRkmJPQ=;
        b=FYiqNmO0UjpcWywlsBckHn4E27B6HneTWaGYg7ni4XzZg1rMiEbrBmqBCRVrEiuf07
         OkfIM0MVSJqYxcnEI12ER3ADGP831DIj3vG9mLPY4GFc3lLl57Cd0AsCxME6kgNj8mDq
         uZegELgrBEUBo95XjPK/Ngn5Vz1uNqKbiQlG4LjaYZaZAaqTQwhT1g8XesqVb4Ism4Oc
         9IlUjisUI6zYZtJD/t8A/6/hhq40zxEet8E8j0RUCdb3w+oc9iR/PiyAEXMijie3M3Hi
         56UOBkvZ9isxJ69KA1m0UDiJagTKYU8lq2uYxEcud6cjaMY0ZcjFFmSwtIXgb3h762OR
         hztA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Qc0Rvs2l;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id e89si102966qtd.3.2020.03.17.06.02.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 06:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Qc0Rvs2l;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584450166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+yy8hfMZdrhRPFXRnLy5cFahpQJ0cEibN6EUNRkmJPQ=;
	b=Qc0Rvs2ll6zuWUjKREGIVxiQdGAIYXxvurjVQ00hXxUA3eTKafkcY4KwfDARgxluHLhp9o
	i7rM3gKm6Cb1qha7cj6Dv5HhcjMXevVMhWf4+/l6wfQpLqAc3Hur5UK3hINqo8HigF/Ct1
	IUgzbE2pSYgxKQtS1WoAJ3yMJ5aOILc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-6G9wM1J4PI-Sxu_udQ9OAg-1; Tue, 17 Mar 2020 09:02:44 -0400
X-MC-Unique: 6G9wM1J4PI-Sxu_udQ9OAg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26E65800D5B;
	Tue, 17 Mar 2020 13:02:43 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BA2F10016EB;
	Tue, 17 Mar 2020 13:02:40 +0000 (UTC)
Date: Tue, 17 Mar 2020 14:02:36 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wlan-ng: Fix line going
 over 80 characters
Message-ID: <20200317140236.0b3020bb@elisabeth>
In-Reply-To: <20200316221544.1251350-1-jbwyatt4@gmail.com>
References: <20200316221544.1251350-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 15:15:44 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add a newline before the second argument for style, readability, and
> consistency.
> 
> Please note: checkpatch reports the third argument as being over 80
> characters, but not the second argument.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v3: Fixed comment misspelling as suggested by Julia Lawall <julia.lawall@inria.fr>
>     Also fixed missing colon ':'
> 
> v2: Fixed comment to be in the imperative as suggested by Julia Lawall <julia.lawall@inria.fr>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

...but, please, don't forget about the unnecessary
HFA384x_RXSTATUS_MACPORT_GET() duplication here.

-- 
Stefano


