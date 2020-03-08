X-GM-THRID: 6801839515695579136
X-Received: by 2002:a17:90a:c24e:: with SMTP id d14mr11670688pjx.83.1583677357103;
        Sun, 08 Mar 2020 07:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4c8b:: with SMTP id my11ls2173348pjb.0.gmail; Sun,
 08 Mar 2020 07:22:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuPtWOYC+7RxMto78oRf5N6j/hhP8kbmFkVizxTe9wqsx83F673Gh/d9NUy/XW3m/HxVvDp
X-Received: by 2002:a17:90b:194d:: with SMTP id nk13mr13944504pjb.144.1583677355556;
        Sun, 08 Mar 2020 07:22:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583677355; cv=none;
        d=google.com; s=arc-20160816;
        b=c4lZo2eyqx0PF23DAXUlLn0Wor11H4OAWVCGM0E3cUgir3r3qbvDVKM28kVOEkKBtM
         /t71ZftH8vSpJNaAhaQKOxl9Q1XNLPJZAPPJtolxvX/g7SjXe3X1HdEK0Mo08AkBY6MI
         cWBOGo54k0o5wPEmEwiOyquJi+WaOmNLpFpPfr0ZmGRGE5nyu5vSgvkMxQ8cbnF5TH6N
         HflfnXW+8gL4RcO2qniHjj3CYB/J97q7fQyM2/Nvva46NVtc4VUcTnWtrdDFgo6RQ073
         Fj3RTtLTUybfnpfiyMTX1fnVvHD6NKD2HJ4Ezt2qi5Hi9vQ9WdwYA6OSdPei725SetbC
         nTAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=vEEUvrOS5izD8Q0mo2PqA/+C/dn8o0VVsk+oS1peAWc=;
        b=JAAMeLUfgEVV9+jWt/0U14GwhLP4dB6fh9WvnJWxuqhcEokWfYCWO7LqB+2O2QjyyU
         CEZZk9JqFl3xXRu4KpHQhk19t+VdEgStNK0vEI68iydItf/yOr/inSrHs81GcglFWBAj
         qWwlgB1U6GcxXYCy0MuTI0ExtmLWqRsjt/LhTjXWrXiZGYzUxh1jimRINhRRgRdCO8/F
         1J2Wj+3xs8wYXHK4Ld+yt6G3zZ0PHdw5v+QYs+9OV8yZSmWwASUjrC4gpQGuDkH7XC3h
         BN5whSU6Mg3bYRmAPaaTLfB969YXvD/bpuTi++xUAOZq08S3J6pOOlu7YorBZUu1Odzt
         JELw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=I6DCV0+w;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id 59si405993ple.2.2020.03.08.07.22.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 07:22:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=I6DCV0+w;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583677354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vEEUvrOS5izD8Q0mo2PqA/+C/dn8o0VVsk+oS1peAWc=;
	b=I6DCV0+w0XObxKtC92WhUFsZzeEsHzoUQ/cVt1U3cic3ehJIMd8kkYlCl9c+oFIJ0tIvRj
	noALQvK7DC3ugfmMShpamBOPE4fVOuaJ+LBxYrQjDBF5PS65HU+SEMr4mSZvtXhGCfwNIw
	I9uMTGyJe2N1Yo+OhWOC7PLjEvbQNVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-4SFEiV90NBSRp3br1pg09w-1; Sun, 08 Mar 2020 10:22:31 -0400
X-MC-Unique: 4SFEiV90NBSRp3br1pg09w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06ABB800D5C;
	Sun,  8 Mar 2020 14:22:31 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6B725C1C3;
	Sun,  8 Mar 2020 14:22:29 +0000 (UTC)
Date: Sun, 8 Mar 2020 15:22:23 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rts5208: Replace bit
 shifting with BIT macro
Message-ID: <20200308152223.1cc5dd52@elisabeth>
In-Reply-To: <20200308141057.5857-1-payalskshirsagar1234@gmail.com>
References: <20200308141057.5857-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Mar 2020 19:40:57 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Prefer using BIT macro and replace bit shifting with the BIT(x) macro.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_card.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts5208/rtsx_card.h
> index 39727371cd7a..9d2504fddb13 100644
> --- a/drivers/staging/rts5208/rtsx_card.h
> +++ b/drivers/staging/rts5208/rtsx_card.h
> @@ -338,7 +338,7 @@
>  #define DMA_DIR_FROM_CARD		0x02
>  #define DMA_EN				0x01
>  #define DMA_128				(0 << 4)
> -#define DMA_256				(1 << 4)
> +#define DMA_256				BIT(4)
>  #define DMA_512				(2 << 4)
>  #define DMA_1024			(3 << 4)

I'm not sure this is a good idea. I understand checkpatch might report
this, but please have a look around this line:

#define DMA_128				(0 << 4)
#define DMA_256				(1 << 4)
#define DMA_512				(2 << 4)
#define DMA_1024			(3 << 4)

this tells me that for each of these DMA modes
(https://en.wikipedia.org/wiki/Direct_memory_access -- no need to
dig into that, just for context), '0', '1', '2' or '3' need to be set
somewhere. Before this value can be written, it needs to be shifted left
(https://en.wikipedia.org/wiki/Logical_shift) by 4 bits.

Now, your version:

#define DMA_128				(0 << 4)
#define DMA_256				BIT(4)
#define DMA_512				(2 << 4)
#define DMA_1024			(3 << 4)

"If it's 128, 512 or 1024, write 0, 2 or 3, then shift left by 4. If
it's 256, instead, set bit 4." This is actually confusing.

Maybe try to put changes into the context a bit -- don't rush, take
your time to read the effect of the changes you're proposing :) Thanks.

-- 
Stefano


