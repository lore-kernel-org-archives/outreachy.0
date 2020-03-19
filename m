X-GM-THRID: 6803014756528553984
X-Received: by 2002:a05:6214:611:: with SMTP id z17mr3130969qvw.125.1584650625932;
        Thu, 19 Mar 2020 13:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls1997023qkb.3.gmail; Thu, 19 Mar
 2020 13:43:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vstRaARv7p2oILL6RZNe4e4d2Jk57307/xwWd5jDW0cQbcVxwM+jNt61+FViElBvmEIrfYN
X-Received: by 2002:a05:620a:201b:: with SMTP id c27mr122078qka.310.1584650624408;
        Thu, 19 Mar 2020 13:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584650624; cv=none;
        d=google.com; s=arc-20160816;
        b=zxppWzX+uNTpvsbpvWkDkwRxp+f3nxQyYmuBamzqSDIPaBD3wInMcxNbYbllPpEqx1
         TGDGklEgphAlAzX4j3TCPk9Civ0Hz/m7xyzHXlSKYoZ8V9Ni6NTZPve4bQ9t07161nBU
         Z4SO2EG1p7OySqytzzYaV6VgI51wQPY3Ee/y7GqcFWyz+cWYbVgYEDu9TijsnXhNAzDE
         uowKHLO2vSUQ342N6NdS0KK/D0WSnq/IOl7dmzdC0qPyrTaosm4tjyJL+tlldwdegac2
         93JHSffUdN7JiCHlHksWowcAAyUxJAU+ilekWrWPhXBtHqm+vqaYdpRfNn40LbZaGayP
         9URg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Zj6HSEBHqXC0crjOBmhTf+19PuNYc317QBheEbQ95nI=;
        b=orFix/UflsUqdFNOiXkeEzJc/UiZt4X59sal+ugNrORyQpyjf+TmCaRKgSfvKYHdF5
         gIt+kmW9jGO90rl3cJHv2Jd6f1lu12s3E87dPZvQgpETyUj7dSWbgfkF7DZPNr4L7n+t
         YoEU/reU/4tkcS4n+CFJRnynecuTPO6c18SYZ6gz7Ve8YefOZUnWCLqfzeTPAJ+lYWSh
         Tfy4z2xHXfC4ZRr11qLOTilO1Q9HfDc0H/bicFAFlnltVphPmllvkLMDkmV1PNvPEwsK
         JelZkPyduX1VuWs56VYzPtU7WYY46emU5PjLnv94ttTf83llJGx0HPoHnc84mZzhtYtU
         fhog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GTweLZ4a;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id e89si285914qtd.3.2020.03.19.13.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 13:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GTweLZ4a;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584650624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zj6HSEBHqXC0crjOBmhTf+19PuNYc317QBheEbQ95nI=;
	b=GTweLZ4a1wpJ8Xe39q03WlgNGwKQ0fe/CYczJAZn89Z3w5D1NzcK5eq6ZkOft+nbhlRM6U
	A3To7IVfs6LEcn7zUaQpDXRIX950qvYVDais6+h0yDnEOZ75mGS3PQDJmVUuFUjrCuzArl
	GA9Jag9f6vlvsr7BaDf1a6ahC1aqlMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-x0ZpsuHKO_W5e7am63tvgQ-1; Thu, 19 Mar 2020 16:43:42 -0400
X-MC-Unique: x0ZpsuHKO_W5e7am63tvgQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 068D9149C0;
	Thu, 19 Mar 2020 20:43:41 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.93])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D29719C58;
	Thu, 19 Mar 2020 20:43:39 +0000 (UTC)
Date: Thu, 19 Mar 2020 21:43:21 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200319214321.2060a5ef@elisabeth>
In-Reply-To: <20200319201553.GA10911@supernova>
References: <20200311181134.GA17847@supernova>
	<20200312002348.06821daa@elisabeth>
	<20200313094046.GB3844@supernova>
	<20200316150829.370975f2@elisabeth>
	<alpine.DEB.2.21.2003161527020.5216@hadrien>
	<20200316153629.0fde04f8@elisabeth>
	<alpine.DEB.2.21.2003161543170.5216@hadrien>
	<20200316162343.36bacaa7@elisabeth>
	<alpine.DEB.2.21.2003161631270.5216@hadrien>
	<20200316164440.54fe16a8@elisabeth>
	<20200319201553.GA10911@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 19 Mar 2020 21:15:53 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

Can you just run this spatch command:

> Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> -I ./include/uapi -I ./include/generated/uapi
> --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255

alone, from the same directory? The issue (okay, I'll send a patch) is
that the coccicheck script suppresses stderr for it.

-- 
Stefano


