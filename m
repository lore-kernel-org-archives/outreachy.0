X-GM-THRID: 6803014756528553984
X-Received: by 2002:a37:4bd3:: with SMTP id y202mr26692220qka.32.1584367727510;
        Mon, 16 Mar 2020 07:08:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:aa0c:: with SMTP id t12ls2791066qke.11.gmail; Mon, 16
 Mar 2020 07:08:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv3DTF8dsQVFuBDMxwxrD1rpAhYIhDTrYsZMAcuPeE6MmyY53OVVMtoe4a4xfPZmtuumXK1
X-Received: by 2002:a05:620a:1118:: with SMTP id o24mr26694651qkk.310.1584367725868;
        Mon, 16 Mar 2020 07:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584367725; cv=none;
        d=google.com; s=arc-20160816;
        b=m4CXQKq+MPYz2RKy28kDp7XC6ygp6sXEloCYDkjmGMHZpHhNeq+SxLT/GTkJnPeyl+
         TaTNJMj+7jZ9FWa8tlh5Aa8VqyerR2zNNcOccxZ6+5ko9Rx3WD2ctc8KabrpjLjK/Zav
         le9FIcbt0Y609iv9Po1y7WqPHLgKPsfHfCyq7IiISgMEF5roa/Sugj9MUsaHEzj7fMJv
         N1zxeBWiOcTnMi/ZyS1Y0UtgE5eQ6gF4qyBoUy3JXQtZ21GckBRuIf7TPywXYdwUBfLH
         NwLkJDtag+6IvaiNSjA7uWoeGJO8IFl3B77PUigoK9J6fXA7qdoN+Dnz98Fbxm5P3uYm
         ewVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Elnsinox87z4nvOIfCDz2XwNoxBJcP61P9SPXU9pLyw=;
        b=OydPmEBz2JGJUcRjiSSBSnJ6Th++d/tE305uM1hJV84rJQ9F0NI2n1YCD08TJpil0E
         7dyitH3O0Z4SADDY77F0FYw/ArSP02Sa4111W/DCTFNJ6dzFtxUR1OuVUlNtf9rC5pfY
         /RJuCp2iqnmKyCYHbf10Zx1edJFMW1Fu+Jd3iZg8A1xF8mD8w5lOaHDndzhzZ2BDLbYj
         MeoUIW55B9kV1RVGsUv3PEzBBd1cnguNiX8qDNZiGnVxiXQljyTgxBimGHmfungLmuMW
         5rEETAjrq8ZtSllUsx+r8DPfMY5bUJYlQjsPWpeoMoByIYHCdwIxqu6AAGwlUSlWZOC8
         xIfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FSCRCEUz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id e89si988333qtd.3.2020.03.16.07.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FSCRCEUz;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584367724;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Elnsinox87z4nvOIfCDz2XwNoxBJcP61P9SPXU9pLyw=;
	b=FSCRCEUzN0khHCNx9nGty69LnbuG9stwdcO4w2/Fi029f2iU4KbmI2EZAowy673m4kU1VQ
	6BYWYpc06jjG0XLwILSnMH0kQVP6tRqkGdBT9kTxcFLgmmMoW2Xmr5QJUCZeQpHaNuieBN
	PLVri5jVYCVnlFU7o28Q0YyI6l8g3pM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-U98UHQSQOTeuC9V0YXefSg-1; Mon, 16 Mar 2020 10:08:38 -0400
X-MC-Unique: U98UHQSQOTeuC9V0YXefSg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E0EE107ACCA;
	Mon, 16 Mar 2020 14:08:37 +0000 (UTC)
Received: from elisabeth (ovpn-200-84.brq.redhat.com [10.40.200.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9844D60C05;
	Mon, 16 Mar 2020 14:08:35 +0000 (UTC)
Date: Mon, 16 Mar 2020 15:08:29 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>, Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200316150829.370975f2@elisabeth>
In-Reply-To: <20200313094046.GB3844@supernova>
References: <20200311181134.GA17847@supernova>
	<20200312002348.06821daa@elisabeth>
	<20200313094046.GB3844@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 10:40:46 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> [...]
>
> Indeed, this is all the output: (this command is run in the sources root
> directory)
> 
> make coccicheck MODE=patch J=8 M=drivers/staging/android/
> 
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.
> 
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255

Hah, I think I got the same issue on Debian. I installed coccinelle via
opam, then:

---
$ make coccicheck MODE=report M=drivers/staging/android/

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

coccicheck failed
make: *** [Makefile:1740: coccicheck] Error 255
---

Debugging: looking at makefiles, I thought about using V=1:

---
$ make V=1 coccicheck MODE=report M=drivers/staging/android/
bash ./scripts/coccicheck

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

Processing alloc_cast.cocci
with option(s) " --no-includes --include-headers"

Message example to submit a patch:
 Remove casting the values returned by memory allocation functions
 like kmalloc, kzalloc, kmem_cache_alloc, kmem_cache_zalloc etc.

 The semantic patch that makes this report is available
 in scripts/coccinelle/api/alloc/alloc_cast.cocci.

 More information about semantic patching is available at
 http://coccinelle.lip6.fr/

Semantic patch information:
 This makes an effort to find cases of casting of values returned by
 kmalloc, kzalloc, kcalloc, kmem_cache_alloc, kmem_cache_zalloc,
 kmem_cache_alloc_node, kmalloc_node and kzalloc_node and removes
 the casting as it is not required. The result in the patch case may
 need some reformatting.

Running (4 in parallel): /home/sbrivio/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/android/ -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
coccicheck failed
make: *** [Makefile:1740: coccicheck] Error 255
---

so, yeah, spatch fails, but no error (see below) isn't propagated (even
with V=1)

Julia, do you think it's worth trying to fix this? Any quick idea?

Anyway, running the spatch command by itself:

---
$ /home/sbrivio/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/android/ -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h
Py.find_library: unable to find the Python library [libpython2.7m.so returned Library not found] [/usr/bin/../lib/libpython2.7m.so returned Library not found] [libpython2.7.so returned Library not found] [/usr/bin/../lib/libpython2.7.so returned Library not found]
---

I installed libpython2.7-dev, and everything works now.

-- 
Stefano


