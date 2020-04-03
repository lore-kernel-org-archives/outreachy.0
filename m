X-GM-THRID: 6810978384400613376
X-Received: by 2002:aca:aa0a:: with SMTP id t10mr1147455oie.38.1585872232783;
        Thu, 02 Apr 2020 17:03:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bc8:: with SMTP id k66ls2405201otc.10.gmail; Thu, 02
 Apr 2020 17:03:51 -0700 (PDT)
X-Google-Smtp-Source: APiQypLnGzqz6X6VdHtF4qfhjVRnKKnuPfrQHrgCFWTt5g5joUsP3MggdrYOTkjl3V1EFrJofCBA
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr4648382otr.188.1585872231741;
        Thu, 02 Apr 2020 17:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585872231; cv=none;
        d=google.com; s=arc-20160816;
        b=uMgBxfHkfFCbYaDcMcclyuI1AqxvdzQDnWvfSY8tDDS4iOK51V1ya6NIrcTS11Qeog
         GY+7myb8Td2CKEaFk7mLA6KrLjCP/UWut+9+gSoEFx3LE7GlXqM7gAKr7yqdOh/KQ4fe
         tAjcnniB/Xqr6GdYfKvbgfcIYxHhiPipwXu5Ffxdjt61uvQbe+uugct5rZvyzBHFnoBj
         dP4BF1Xzz2BGS48vaUtOur7dAo2wlFULh/9Ip8wkxrbcYPbsAWYzkVAN4PC80VUg8jm4
         Op50NoSyyNTTsCd70/3E5/4kJSWpedd67Oj7GdzDFlpDZ3zE0m6Tm+SzpxoywjQD/Jyk
         YElg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=CxDM6GjieM3b/3iKDPc4gptUgiBDmZ2XgNpkNYHkMOc=;
        b=mrh/QgsD8kb4JdyAwsWi8+/YArKU6pwMRw88AcgukbFT5BD9zVFC0/k5VmWTGAhmLj
         9/iUclx2+Hn5X4yla19He7Kn3W28Dg6uKhDr9XlCaPB1hgvhHL6bcRJytO1oYdzrL0jC
         osEU4R4Lqt4/w3sg/DhSahPUK9KRtVtHYg11uQj+bnhIpXYJgfqLp1PYClOo7WiM2UJu
         NWYKVoulBxKybZtUNAbklSW4rB0irKKMFSg4kqOXNZx88q9FVnE5sg4VHal1jIqb9sbd
         SodNV4D/pwXOx63E4shrKNZgZ0jy17OgxoSLVRqnY8qjFb63dMNpqXFzRx/+U4R/ER0b
         WHVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BQ6PFjZq;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id m132si498251oig.3.2020.04.02.17.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 17:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BQ6PFjZq;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585872231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CxDM6GjieM3b/3iKDPc4gptUgiBDmZ2XgNpkNYHkMOc=;
	b=BQ6PFjZqqWCfuq3H6P3WDASlPWVi8/RxOb0C6tGIR4zpX0CbAoIB+2DF8IehchBf6xmUe5
	J5kpHa4JqXqa/oX5EztG1JJRSjN3yOAYrkegLSEq7X51Ek7VsFa9zG18UhRit7Ahojzj5n
	lUI25dmT+/tg+yyrDNTOnxVygsHoWk8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-87aJvDrLM3y1vyrFjEMu8Q-1; Thu, 02 Apr 2020 20:03:47 -0400
X-MC-Unique: 87aJvDrLM3y1vyrFjEMu8Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 795718017F3;
	Fri,  3 Apr 2020 00:03:46 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B23465E037;
	Fri,  3 Apr 2020 00:03:42 +0000 (UTC)
Date: Fri, 3 Apr 2020 02:03:35 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v4 0/4] Staging: vt6655: Remove
 unused functions.
Message-ID: <20200403020335.0bc916ab@elisabeth>
In-Reply-To: <cover.1585802818.git.briana.oursler@gmail.com>
References: <cover.1585802818.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  1 Apr 2020 22:14:32 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> This patchset removes functions that are not called in the driver but
> are prototyped in card.h. Each commit limits its scope to one function
> definition and related documentation in code.
> 
> Functions were checked for calls using the Elixir Cross Referencer and
> git grep.
> 
> Per Stefano Brivio's recommendation, output of bloatometer script after
> changes:
> 
> add/remove: 0/4 grow/shrink: 0/0 up/down: 0/-572 (-572)
> Function                                     old     new   delta
> CARDbSoftwareReset                            10       -     -10
> CARDvSetLoopbackMode                          14       -     -14
> BBvExitDeepSleep                              40       -     -40
> CARDbRadioPowerOn                            508       -    -508
> Total: Before=36131, After=35559, chg -1.58%
> 
> Briana Oursler (4):
>   Staging: vt6655: Remove CARDbSoftwareReset definition.
>   Staging: vt6655: Remove CARDvSetLoopbackMode definition.
>   Staging: vt6655: Remove CARDbRadioPowerOn definition.
>   Staging: vt6655: Remove BBvExitDeepSleep definition.

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


