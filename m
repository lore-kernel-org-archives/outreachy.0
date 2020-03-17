X-GM-THRID: 6803736049205903360
X-Received: by 2002:a17:90a:e648:: with SMTP id ep8mr4348015pjb.42.1584438147489;
        Tue, 17 Mar 2020 02:42:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3e0c:: with SMTP id l12ls10686386pga.7.gmail; Tue, 17
 Mar 2020 02:42:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtVv2IAUohDV/rYPTW+FVBwzyvHCIlTwb4l+MmzQxit/VhVu0RVs0Pw5Iu8631DpCmEBpOc
X-Received: by 2002:a62:6503:: with SMTP id z3mr4355807pfb.232.1584438146108;
        Tue, 17 Mar 2020 02:42:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584438146; cv=none;
        d=google.com; s=arc-20160816;
        b=A7SFMnjAkIjRFPwNQ+Xbb9RQkJIn6K0s9x9ZPyP/ZZaEB8LAuaUhsZPrd9TTI+MMG7
         8Up1SKPPqN970mucLo1EJGC/dH0CaYaHqnCOWTqT8XxhKi/qJpiQCZhc2KqpyAab38Xn
         m6+gi1/bJG202H5kEnYdAFN4anCZmbLQroUeBeeP51jxTdueTMEVt9u82wKPIz4hKif8
         +bk00DLoGcZU/l1fmq0S2LlsNuBAlsyfn0Fz6lYjHTtOXsjhXNpu+rWfLn+juFqVIjFt
         LuWYSrD3TV5tLiJeczMRFdIrVQ4zJhGnqFUgPkPL7N5kGgq5WpZvcMu0AXgZAx5sE9wf
         GXDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/QpqtwrsIaCBvGIx+yfdRSvHBvHSBvQAjNwuR9RRqMw=;
        b=Q2uT9n0Rn8vY0vR/y4xbEKGWsqyvSl2NllH1o9zoafMLO1FDCRGqF2hVu2KrPOgKUE
         BaT+9bZo5tmiSzM82/TS5sY/FnsN1BhU8p0tFewOdkhm4VYTWm4U5CG6k0+3BpwFkCTQ
         6a6u2+mLrWEekyevGV4Wyk/uyE7EdPwX5tE0JoTtHmUDmH2Kf6fummcAWJoMR4mxTeQT
         ZjWBtRI863GoNsnU9nh7ehtDqfU+zuU09nAfnxn4jwAo/5FqmCx0tjnIczdu8nSATUHw
         xB/mC3wU3VtifX0yccJs5peNM7rKhh5q8YoZJoAkgzzLVcMzHwQZmJtgERL5OWxtuRs4
         zMpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=acQX5+Ww;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id q1si205476pff.4.2020.03.17.02.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 02:42:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=acQX5+Ww;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584438113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/QpqtwrsIaCBvGIx+yfdRSvHBvHSBvQAjNwuR9RRqMw=;
	b=acQX5+WwZRik8UZCyNTrD3OfmAEsLOkHd4+2t2oHZUmWjadnbklZqmhhFd4sK1Ql2P/bJS
	m5UG0gh44QdksAhcnCyyyS8QnXspJ6nz17Pjb2tCkBUOWYplC+p//Szjx/0KGeb51I60TO
	3c3XAhhLrXe806R45gvEnDoxP1ktPaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-zGwC95YfPBe2bQ_pAiddSg-1; Tue, 17 Mar 2020 05:41:49 -0400
X-MC-Unique: zGwC95YfPBe2bQ_pAiddSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D74A18FF692;
	Tue, 17 Mar 2020 09:41:48 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F3B010027A3;
	Tue, 17 Mar 2020 09:41:45 +0000 (UTC)
Date: Tue, 17 Mar 2020 10:41:42 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Veera <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Better Fix of
 long line in makefile variable
Message-ID: <20200317104142.3b5bb7eb@elisabeth>
In-Reply-To: <20200317015936.GB5977@lily.local>
References: <20200313165018.GA3172@tulip.local>
	<20200317015030.0de5ef50@elisabeth>
	<20200317015936.GB5977@lily.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 17 Mar 2020 07:29:38 +0530
Veera <vkor@vkten.in> wrote:

> Also should I make a new patch revision and send again?

Yes.

-- 
Stefano


