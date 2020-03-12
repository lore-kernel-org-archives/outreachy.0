X-GM-THRID: 6803327190249242624
X-Received: by 2002:ac8:4e25:: with SMTP id d5mr8685654qtw.361.1584039622761;
        Thu, 12 Mar 2020 12:00:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls3461850qkl.0.gmail; Thu, 12 Mar
 2020 12:00:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtizjzMKk8kLXhcU/tekGaDkmjNhH5eNCoAFx04tJ+ho7Aw6ozE7JYE/rt5Pi0mGQZDjPJp
X-Received: by 2002:a37:6811:: with SMTP id d17mr9212375qkc.29.1584039621355;
        Thu, 12 Mar 2020 12:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584039621; cv=none;
        d=google.com; s=arc-20160816;
        b=0VYwGnRb5lrnafX7jKMZ95WwgVWEvkG2P1fCnmYFpj/+eUDn0i/cm52MSrKXEurYaP
         4fLnj7CxRN7xLPSEumISTtqH7kF98XDBldR9UuymVDgoW4j0mbK9sA+7TNLNbC5C9RcH
         fBiFgMLXYKi3GITROp3xT9gBqHOhinSK3vlyBJXcWe5kx9OlCqsZJSTZ38CinUr5cjJE
         lYLiZyzy9NXCsin+aR9zs8orwaxE4pqi3m6SMJ6k0YpqQSQRrM2dGqXONJ5IWyMBWBA2
         8YFMLhG83z/U5GvmCMLiw6G2IQlUGfl45kU/zL7kFPa3h5T7ZPPLRIoCxFW5CFm3tZYO
         PNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Xmdy+CZopQt0uxRHrOmRnK9c4WJ5lMNXNxCQcjcDYVw=;
        b=hA03taMlYVVOWff5A/xBOMJZZgyYyqa/q8tM+Ryy+uOqffTutovaYlG7gLAUDpYPUn
         QJzC0PXKLTYwQMp0rb3gwkzBA0xPPhCSoBXIakwaWNm0zc1a9QF3+Dop2P7KPNs4ZsrR
         +jBHLVMrtCyFETX+cmey5euyseK4GOKtQNV37n4JfiApZfKcITHR9+Vicea8XbRGWzSt
         z8dR+ZPgAEJQjtsDbWxDt9TdFlkLA8Z69AsMovFkZU1Blxa0LbphYxiX+yL7N82zuSef
         qxzNV+YNdw3P9KJeTLqkt8bvBGJH0vqzg/FvyyCW2vXYo6zgV3lGR+0KNwvI3G6g9cst
         LKug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PYaNhBGM;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id c6si420217qko.3.2020.03.12.12.00.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PYaNhBGM;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584039621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xmdy+CZopQt0uxRHrOmRnK9c4WJ5lMNXNxCQcjcDYVw=;
	b=PYaNhBGMIrt0MDH4F3Wre+ya/GIRiVOWT9olCvIC0UoFkPNLZTgAVjhLOTQumZsJFRcNrw
	gsJfkEYibXRmWTFbMujTcqh+IXoGpg22RRaGUH0hzhPsSHCV1fR9QtIfgIs6U+11p96YM6
	Smdcuy0t/WUEUKemxm1vv48bdUINcZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-9MGOxF8fMlqzEl4Y5L7ZDg-1; Thu, 12 Mar 2020 15:00:19 -0400
X-MC-Unique: 9MGOxF8fMlqzEl4Y5L7ZDg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F17C94C25;
	Thu, 12 Mar 2020 19:00:18 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6BF08D57F;
	Thu, 12 Mar 2020 19:00:15 +0000 (UTC)
Date: Thu, 12 Mar 2020 20:00:05 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Reformat longer
 macro definitions
Message-ID: <20200312200005.51569670@elisabeth>
In-Reply-To: <70084eb2-233f-48ad-b1ff-f6a22a1f49a0@googlegroups.com>
References: <20200312142357.GA29468@deeUbuntu>
	<alpine.DEB.2.21.2003121538470.2418@hadrien>
	<70084eb2-233f-48ad-b1ff-f6a22a1f49a0@googlegroups.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 09:32:52 -0700 (PDT)
Deepak Varma <mh12gx2825@gmail.com> wrote:

> On Thursday, 12 March 2020 20:10:04 UTC+5:30, Julia Lawall wrote:
> >
> > Thsi information goes below the --- so that it will be dropped when the 
> > patch is applied.  When someone looks through the git history they will 
> > have no idea what "and earlier patch description" refers to. 
> >
> > julia 
> >  
> 
> Is this done at the time of "commit --amend" or should this be added in the 
> email template manually before sending the patch?

I typically do it "manually" after git format-patch (especially because
for networking patches we write non-trivial stuff before ---, and
trivial stuff such as "new patch in series" or "no changes" after ---).

I just got to know about the --notes option of git format-patch, I
guess you could also check that out.

-- 
Stefano


