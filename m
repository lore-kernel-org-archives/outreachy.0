X-GM-THRID: 6802850530437627904
X-Received: by 2002:a25:7102:: with SMTP id m2mr2538571ybc.134.1583927911916;
        Wed, 11 Mar 2020 04:58:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:74cd:: with SMTP id p196ls412332ybc.7.gmail; Wed, 11 Mar
 2020 04:58:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsWN/c3u7kA1u1tsz64Wo7GqkMjUhYlUYcOhKcGNWiHdj4YUtDaq/2Y74GwouZyqLUv/YYc
X-Received: by 2002:a25:2f44:: with SMTP id v65mr2643099ybv.442.1583927910494;
        Wed, 11 Mar 2020 04:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583927910; cv=none;
        d=google.com; s=arc-20160816;
        b=DgslA1qtrQ12Ho4J27Gq4eFl7Uy7NSfNRL5uN5No3ukjC6Wn4ikmIPe+IjUb36gxAe
         RcajgKMfQ8A7AzIuDqRl8jJ+/MEnsWQMZawvmsbSRBp8GWvADVo3SD69VT9G2oevtZKZ
         3sIO7Jz9JFEV3CtXnUcXwmnIeQ0TuUZ2KJdTUlwiIH8SmTvhxQvR+j3aTsx3rALgFZCX
         sQhYfhv8OLx12/izKH/PeIJudX9Vbi8pmCT4js28OsfpfB8HLAJfn1a0ZW3K2bHLUrSh
         KmzWlP3NnNZqCLHWHh5P/axbk9Z93yIj6YPVung4+XZ7T9guxMKqqnVTSydin63sLtx5
         SG/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=X67x37e1Be1N53+ChNqjB4/bHJarfdosz8gvB4AlUwo=;
        b=iL5S2MTdnUlUXFVyIlBXXUjowLpM5TMF+Vbtvms8zOq8UUjiAQfgTa9l9eCfu/kDZC
         hl4+VXT2u8hCnVk3hr96k4EekU0qzQpKv5fCncnvPOwydc8ZkoJtGy71fZRdcNWWRDk1
         HbkHRyS2dZxShu9QCZxkLBDvnyd3YszhXNLzhQmsd5CyMDbscoH2dis1FQT/T/Dy3DMV
         wHPn2kUBZikzegxvwkEVUIVyk/irlD/TR/FU+r1/gugUOupG3MMiiagjmDFl0cZA5nQX
         Eos7EEGAFEQLKq0UoIb7kH9vc7J4LyficousKFc3DQLMK25s3VdElcIyoKJEUsdGhAf2
         BFPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K7NazbgB;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id e131si114311ybh.3.2020.03.11.04.58.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 04:58:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K7NazbgB;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583927910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X67x37e1Be1N53+ChNqjB4/bHJarfdosz8gvB4AlUwo=;
	b=K7NazbgB8rJdyOI+mA0odnpNdtfjPEkHLDzDF5C/teUfIdQuRBxSebI7h5BWNfdNRfmcUN
	3XLwJq793haoL4BltAyFvUJKQDeCainLENZSw6KvJDMKBQa6xqPvA8N8h6ig9fxNxsQKAh
	loc+O/UiCEioUpyQEaDrcaPd55YXVUM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-NlCpeSb5NMillSQiEcM4QA-1; Wed, 11 Mar 2020 07:58:26 -0400
X-MC-Unique: NlCpeSb5NMillSQiEcM4QA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A25551088388;
	Wed, 11 Mar 2020 11:58:25 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D986392D25;
	Wed, 11 Mar 2020 11:58:23 +0000 (UTC)
Date: Wed, 11 Mar 2020 12:58:17 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove
 an unneeded variable
Message-ID: <20200311125817.5e6c362e@elisabeth>
In-Reply-To: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 13:04:18 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove unneeded temporary local variable, cleanup suggested by coccinelle.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
> v2: Change in commit message and changelog.

Note, mostly for the future: especially if changes to a patch are not
trivial, it's a good practice to attribute suggestions to their
authors. If the notes come before "---" (as it's the case for
networking changes) that also ends up in the git history.

For example, this could have been:

v2: Change in commit message and changelog (as suggested by Julia
    Lawall)

or even:

v2: Change in commit message and changelog (Julia)

Two examples (there might be more complicated ones or different styles,
I just could remember and quickly find these):

commit 1e47b4837f3b ("ipv6: Dump route exceptions if requested")
commit 3c4287f62044 ("nf_tables: Add set type for arbitrary concatenation of ranges")

Anyway, it looks good to me!

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


