X-GM-THRID: 6803014756528553984
X-Received: by 2002:a25:b904:: with SMTP id x4mr37453073ybj.184.1584369400934;
        Mon, 16 Mar 2020 07:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls6269660ybf.5.gmail; Mon, 16 Mar
 2020 07:36:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsqwt92F6c9flPDXaxptxFNf3LjDG+p/SOw/Pqbu4/1w65//HCniRXS9dSwOb0poQ4qbAHC
X-Received: by 2002:a5b:54e:: with SMTP id r14mr30086356ybp.20.1584369399535;
        Mon, 16 Mar 2020 07:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369399; cv=none;
        d=google.com; s=arc-20160816;
        b=0XO0H3OURKQSK/EQv1Gb63hARZlG3iPaMEAr4Ujgm0l+aUa9B6dN/pJyTLzfT1Xf2e
         jTaigrQ0r8e5uoTMayJhFRtAxx8+Xf97Pow5kkPowRqivAr7AoFyhcRGEloozqeTDpqn
         TYzPh0tuminzYhef8zcWJq5HpF4FReeyNt4UQYZOOWLGsJSorEVC755H5Dh1Zjs06xpI
         Y6zm1tfBEX3ZM3fzs2AQiJK/CjwTL74Wj9yEjWj6MnhwQnllyYHmkjQwhDRiNu4taXVk
         lahiwWlvtvrVnAbNv8Pd94fgiud3cH9g07ykzOGLIWKzYO98qz2RO7PknBoqgMYYo8N6
         3dsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=v0zaRA7sWNy/yuHOnl5XOUiE0mOxwfKnYa6aSlrLSS4=;
        b=MUpms7hRE0N7Nat7nIgwJlApMIzw6GQTLGXlBcRKUpqK/HbMTAyPAA6AGOt9z3KEpT
         CBgoSRZiqJ73LRFg/1obOgxILh+thbkFXpi2YN6BgLVexj4LrTVmXzi5cFEWGXluz0BQ
         rqqriOQ0xEGnUVdOzm+G6zz4WzOVnxbzcs/cesxv1lcFk8vdSpNCmtMX+pYb1Z1EFctM
         7jwB+W0nqPgfNdm3MDTa2rica1bbVlfPddzb2jiOWGxRAFGA8TAfNrUXV+nSAHTKePy9
         Rcw/J+KhRgJbpTg4KLm2ovcvxUV+P0aU+D6a9HkERpHh0ResDowA3XqrBa1i0gFuGCpm
         rj7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MJiZB1Jd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id e131si5482ybh.3.2020.03.16.07.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MJiZB1Jd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584369398;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v0zaRA7sWNy/yuHOnl5XOUiE0mOxwfKnYa6aSlrLSS4=;
	b=MJiZB1Jd5UomXKNbhVtCPts9dtU1ApfuwkagKrXqZMajJllNF7NDhdusPpdBMJVZPMACvd
	uxo4avRN5l6oKJXH2JyPVP9mkAjcVFu+qz8QWjoMj2yG7iJITBKtT5qSwBeXMWx/tzerDo
	glKlYKIX6itAfbcNsqGOHNZXHaQE1cA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-z5r8eetzM3q74zMoGE-0IQ-1; Mon, 16 Mar 2020 10:36:37 -0400
X-MC-Unique: z5r8eetzM3q74zMoGE-0IQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E82A10B8CE4;
	Mon, 16 Mar 2020 14:36:36 +0000 (UTC)
Received: from elisabeth (ovpn-200-84.brq.redhat.com [10.40.200.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BED0D60BF3;
	Mon, 16 Mar 2020 14:36:34 +0000 (UTC)
Date: Mon, 16 Mar 2020 15:36:29 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200316153629.0fde04f8@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003161527020.5216@hadrien>
References: <20200311181134.GA17847@supernova>
	<20200312002348.06821daa@elisabeth>
	<20200313094046.GB3844@supernova>
	<20200316150829.370975f2@elisabeth>
	<alpine.DEB.2.21.2003161527020.5216@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 16 Mar 2020 15:27:38 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Mon, 16 Mar 2020, Stefano Brivio wrote:
> 
> > On Fri, 13 Mar 2020 10:40:46 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> >  
> > > [...]
> > >
> > > Indeed, this is all the output: (this command is run in the sources root
> > > directory)
> > >
> > > make coccicheck MODE=patch J=8 M=drivers/staging/android/
> > >
> > > Please check for false positives in the output before submitting a patch.
> > > When using "patch" mode, carefully review the patch before submitting it.
> > >
> > > coccicheck failed
> > > Makefile:1740: recipe for target 'coccicheck' failed
> > > make: *** [coccicheck] Error 255  
> >
> > Hah, I think I got the same issue on Debian. I installed coccinelle via
> > opam, then:
> >
> > ---
> > $ make coccicheck MODE=report M=drivers/staging/android/
> >
> > Please check for false positives in the output before submitting a patch.
> > When using "patch" mode, carefully review the patch before submitting it.
> >
> > coccicheck failed
> > make: *** [Makefile:1740: coccicheck] Error 255
> > ---
> >
> > Debugging: looking at makefiles, I thought about using V=1:
> >
> > ---
> > $ make V=1 coccicheck MODE=report M=drivers/staging/android/
> > bash ./scripts/coccicheck
> >
> > Please check for false positives in the output before submitting a patch.
> > When using "patch" mode, carefully review the patch before submitting it.
> >
> > Processing alloc_cast.cocci
> > with option(s) " --no-includes --include-headers"
> >
> > Message example to submit a patch:
> >  Remove casting the values returned by memory allocation functions
> >  like kmalloc, kzalloc, kmem_cache_alloc, kmem_cache_zalloc etc.
> >
> >  The semantic patch that makes this report is available
> >  in scripts/coccinelle/api/alloc/alloc_cast.cocci.
> >
> >  More information about semantic patching is available at
> >  http://coccinelle.lip6.fr/
> >
> > Semantic patch information:
> >  This makes an effort to find cases of casting of values returned by
> >  kmalloc, kzalloc, kcalloc, kmem_cache_alloc, kmem_cache_zalloc,
> >  kmem_cache_alloc_node, kmalloc_node and kzalloc_node and removes
> >  the casting as it is not required. The result in the patch case may
> >  need some reformatting.
> >
> > Running (4 in parallel): /home/sbrivio/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/android/ -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
> > coccicheck failed
> > make: *** [Makefile:1740: coccicheck] Error 255
> > ---
> >
> > so, yeah, spatch fails, but no error (see below) isn't propagated (even
> > with V=1)
> >
> > Julia, do you think it's worth trying to fix this? Any quick idea?  
> 
> I will try to find the problem.  I think there is a way to get debug
> information.

One idea might be, in run_cmd_parmap(), to avoid redirecting stderr
here:
	        $@ 2>>$DEBUG_FILE

if DEBUG_FILE is not set (that is, it's /dev/null) and we detect V=1 --
otherwise, spatch output is thrown away.

That works for me, but I'm not sure how elegant you would consider that.

-- 
Stefano


