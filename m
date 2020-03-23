X-GM-THRID: 6806661932796346368
X-Received: by 2002:a9d:895:: with SMTP id 21mr15430874otf.365.1584924454506;
        Sun, 22 Mar 2020 17:47:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls5202042oib.11.gmail; Sun, 22
 Mar 2020 17:47:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt1iMaFvHuoXK4mBIJ0MmLFMpWH3cyPr0OML90tchOmb2lXMrg+UxWOjOej8aHuKLTst4ju
X-Received: by 2002:aca:3089:: with SMTP id w131mr15676929oiw.121.1584924453472;
        Sun, 22 Mar 2020 17:47:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924453; cv=none;
        d=google.com; s=arc-20160816;
        b=wzP2cZxXOILbIXLZWhCL1KkwzdYw+02ntm7aJsG121o3veXCEBBQfgshxvehcIql/q
         KvP+BKcN86OuOeHjpfjxO38yNbqEgOusfSLuTMdA7mg4tqjd0od0mi7JFUVjNi5zZj/T
         zQxrK3FKl1USpW7qhcCLF7IMm7fzEhgNa+8jxktIVs1WdchCO5T/+d5keBVhvKrOqxWJ
         LJm3+49C9xS1yOOjQtdQ0hsAmM/JU5621+5e6r4eFOeWbOEHCVnhHhyptuyy66CBUd2B
         siEt+NM90JvD3pw3vPSWsf/0zBTqG29pKmfxV/d/bd8XgLqI7AyNMW3a23qlYqT64xDR
         3QVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ig4doA85riL2XtPeQfs/qUQldiVkDlW3JAidx8gyjPc=;
        b=OnPxRUmQsK3lj3W2KNtVdHFF8vN62SJFeVzL1F1kiLcfud6Vvq4521EqavicblhpUi
         t1x/rXwS3MllpGv3vq5/R9W3x9Kl3J45yk+Brr95yyf9A4NUToNQtNK+MV6ZdU+GkI3C
         BE0G26ULk+havTNqj1ceEPo2Y2xZvZbvFzPMVCZvIt/rzarxvxX7s3gdY9U4SGA450Bt
         NxGRvuMnFfqwlyaVsNmcvkRK+N2Kp64LbQUdXwCxhF5rmXqxhvj9IMTVB5DUiitb4AQ+
         95VdqQBC4AvN+4aTmRmjigJ7ASAe1kffh+aex9AcTkaCce0XuGxQU74XGuWqME5/sk8z
         6/8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Vr8vHGR0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id n5si353968otf.3.2020.03.22.17.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Vr8vHGR0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ig4doA85riL2XtPeQfs/qUQldiVkDlW3JAidx8gyjPc=;
	b=Vr8vHGR0aXm2uFpNGGAmkOTiTxU/Yi4MB0/PuM2x8+4FnEJCGJqTavoE+6K2Xqds3nAjy9
	MfPAjKhuMqy0QDhNEcgi7vpti2Fk0UIIHTgw7PBQCg9y3dGeMhNYsq8FpzZSIaxZAkfFeb
	YXXSyOTsfVs2XygPFP2E9IrU1CSuy0k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-wd9H0AT3Pfu9Z28AQ4ibbQ-1; Sun, 22 Mar 2020 20:47:29 -0400
X-MC-Unique: wd9H0AT3Pfu9Z28AQ4ibbQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48259189D6C3;
	Mon, 23 Mar 2020 00:47:27 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E17D25C1B2;
	Mon, 23 Mar 2020 00:47:24 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:47:18 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, jeremy@azazel.net,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: kpc2000: Removing multiple
 blank lines
Message-ID: <20200323014718.461a6bbe@elisabeth>
In-Reply-To: <20200321140430.GA18933@simran-Inspiron-5558>
References: <20200321140430.GA18933@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16

On Sat, 21 Mar 2020 19:34:31 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> This patch fixes the checkpatch warning by removing multiple blank
> lines.

Actually, you're removing just one. Can you please re-post fixing the
description? Mind that it's going to be a "v2", that is, the second
version of this patch. Please see recent examples on this list about
that.

-- 
Stefano


