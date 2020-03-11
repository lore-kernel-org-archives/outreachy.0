X-GM-THRID: 6802694026822680576
X-Received: by 2002:a17:902:904c:: with SMTP id w12mr2714519plz.35.1583925788874;
        Wed, 11 Mar 2020 04:23:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls70998pjw.0.canary-gmail;
 Wed, 11 Mar 2020 04:23:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsIUT0PhcBs2iJSy5b/cyjaDWlfDf8uhGWS1B+mgFEMuDlTrSHt2+sNXWEJxEAK6yiUQX48
X-Received: by 2002:a17:90a:730b:: with SMTP id m11mr2990600pjk.195.1583925787104;
        Wed, 11 Mar 2020 04:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583925787; cv=none;
        d=google.com; s=arc-20160816;
        b=N00yBCccz+zZVt0LCqU4HpYApbDsQYIcOtuDeFK9Rr04f0yWZWaPYMpe6Nl2yNA1NX
         B15i8UsLzuMvCmCO574LvrV6S8o9N4Xi2HRre0cOXdQvtP+Sn6ikxpuHaF04HsZeHgqG
         QRN3Dx1CvjWjmE8/6rCtDlfnjKM/8Bq10oEZKMY+ZsTJ9SPO3atx0fp5p7ufyf8bjuBp
         vGIGbwGXrN1ss6iTyptBjWmQRV00ZFo2MSomyhLQn5oyKijEV5/b/+9vQdY4WimvnLEB
         QeDtgxfKIwA+PtLDGBcuxebTMsA6lIvw6JwFJYUNBtbbZHrP/s1ohtXronCUsfcwZGNP
         yXrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xz1Wdmz8ec+qYeUgOXdIePf6ygKixz4bZsVK9eR+SiM=;
        b=zLboTZbkSYvaTv2L9wrs/3nKFuORwQsRu7+sBa2cvIHtCTddAmQwEMtIibnAhjfEoD
         6MHOx4kxRjEX6VfqxRiFm1OxQpWPvSWVXARYL8l0WECqhB9hTe0sJkb6NDlA0Vpbqhw8
         HlFlii1Q7FS3cewfvu6AsQnugt51Q4HkQmMUaFqVVM5wq1cTkmhTGzDNo9O+nbMID3gO
         34kcp9EA28/lFck82GigZsT1vq9qucpR7/+u8b4/TuI+ds7MUBgfc/6nAbrpWYC6gFLK
         oosHu/ymRWNFm5Rl0w4lAS7kW26haLuFge62axgYK9//h99Dv5xekJTUoxjjL3VSZsMq
         RHFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XGI7qLPS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c10si264618pjo.2.2020.03.11.04.23.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 04:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XGI7qLPS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583925786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xz1Wdmz8ec+qYeUgOXdIePf6ygKixz4bZsVK9eR+SiM=;
	b=XGI7qLPSJeqlyrGBd0px/0r1liL7pI4BpW/Oliw/MCV+GQxAenpBspuxnrtk8Gn2HlQWZg
	wvZjL23U9NXg57idyEYPvqZH9SWJdi/pb1RpWmJKDikMZ7tqfYretYG68ys2xkhK1TLB4K
	SKXC2aOG7CFk0u4k3ogqDjKT7xdnZaU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-1gcp_jIpMW6GtLin7rf4pg-1; Wed, 11 Mar 2020 07:23:02 -0400
X-MC-Unique: 1gcp_jIpMW6GtLin7rf4pg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59033100DFC1;
	Wed, 11 Mar 2020 11:23:01 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B11A84779;
	Wed, 11 Mar 2020 11:22:59 +0000 (UTC)
Date: Wed, 11 Mar 2020 12:22:53 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200311122253.7b57cb73@elisabeth>
In-Reply-To: <20200310222844.GC2925@supernova>
References: <20200310212658.4075-1-lu@pplo.net>
	<20200310224317.0ea0a4c3@elisabeth>
	<20200310221018.GB2925@supernova>
	<20200310231505.5dfcdbbf@elisabeth>
	<20200310222844.GC2925@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Mar 2020 23:28:44 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Indeed, also found dev_warn and dev_printk functions, but they are
> similar, they expect a pointer to a network device.

Careful, those expect a more generic "struct device" instead, not a
network device: a "struct net_device" embeds a "struct device".

About the representation of a "device", you can have a look at LDD3,
chapter 14, page 381 (note: the book might be outdated, especially
API-wise, but for general concepts I find it's still very actual):
	https://lwn.net/Kernel/LDD3/

a struct net_device is a complicated, horrible beast. Chapter 17 in
LDD3 has some notes, but a quick look at:
	https://www.kernel.org/doc/htmldocs/networking/API-struct-net-device.html

should be enough to give you an idea. You don't need to understand all
the details now, of course!

-- 
Stefano


