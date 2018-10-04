X-GM-THRID: 6608144919941873664
X-Received: by 2002:a67:3e8d:: with SMTP id a13-v6mr5324695vsi.23.1538655033013;
        Thu, 04 Oct 2018 05:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:93d2:: with SMTP id v201-v6ls632653vkd.2.gmail; Thu, 04
 Oct 2018 05:10:32 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62jh737FudxGD4Cakh2c9rVpmMELlpc7E0ktTf3kPDN2lDzFvMsqJbc1bw1zhizcIuwV0P/
X-Received: by 2002:a1f:b3c3:: with SMTP id c186-v6mr5120594vkf.7.1538655032365;
        Thu, 04 Oct 2018 05:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538655032; cv=none;
        d=google.com; s=arc-20160816;
        b=kI7ECBa0UidwuurLXx99aQ8pRK63Do55S5P4gvPVs82yhmJ+fxYKQVN+F7EpKOPNAa
         5ClVPCV6MiazrwCJnLiUNiG6EsMso4dCGjq8CaP5M0hS6GpEnzB3qUxozr+mWWUIZ5C0
         8YKBGs6UF78mJUx8G53+KAoWs/uKmW1LLawBP9UebAOYpagZJvsl0KJ81D3ifeyG74+w
         q/mhXV36rIKS2xSi4T9idUH3T/K5DC9NG0/a6kZGQZez6xz7KRgH052MoZWNh7J/tCUr
         JwvKXwDwvlieAKT6V0H2oxME05nZZmRLHVMuzsP+VLoUUWOKdJWVfiH4oQ3wblpiQ+xi
         wrtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mwhurTiXSqoLWEuS5UoIPLSuz3bEd9pBwBEiTUrw4Gw=;
        b=WkkijxgYbCJjpC0qE1OXxVCcouNUObsBIRg0RTkwvrS0+zaZqeh/HnmRlNabX8m83x
         dZx4NvOv6uT3sESN49euIQnJsOapFM+EQj4zlsYiSuANPedNGNV/f+pdMvCWJ10TZoqx
         bP50+XA4z7Uj9LV8HalxnUyFqN+3nDw0VtIN5n+MeW02q08r7B9bHPEnFZ0N2ulyeQbh
         edzwrGC62X4i3coi6oWX/eACnOy7kb+nVdvGgwwoRl0LgsOGh2dfescSVLZoYAV70TuZ
         BM3PoCcVh5TfDCtJi9p/CX1xz32JpzkIY2j1hD/EsOUydYnH5Nz2nuIXavHJ+4GIy3rI
         xSjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTzcTCl0;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y6-v6si203376vkg.2.2018.10.04.05.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTzcTCl0;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id s4-v6so5097979plp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 05:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mwhurTiXSqoLWEuS5UoIPLSuz3bEd9pBwBEiTUrw4Gw=;
        b=oTzcTCl0RR3XkdgYp2jrBVmA+wHRLHCBsLkmtxKfromMMvLhOFEdiLwSUFX3vyitIh
         jqfwSUPF5c/ps06o7CDSEQ+va9YUVGcqrPYpblZRu6BZIKJfvy4KrtMBusMJ06V3tcjY
         v9oXlM3WD9spw9ztGxz6eTyeqjBdsB71UdkMcVRRSVw4rmxc9DjDYPOaBaB8AwvFvjq/
         sZ1tzg1AhS2PzjJzUj6G/znk7Q6J3It2cxkumzO8IC0ddHabrHRcExHz0CbcgJGlAKWM
         KXi5pYIBSGREw935S//bS8R4nNqJGyfMIu0chVUH39JjBK8c8l0tbrxFzJG11Md8LMGC
         dq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mwhurTiXSqoLWEuS5UoIPLSuz3bEd9pBwBEiTUrw4Gw=;
        b=FKB/dSJyzBR4nVJGZmQmoeBhsDhqF4zX0HpZUW9Rwpfr1aHOA7ow0ocsLUYC2+1XF2
         /INiGuou3gBC7F5/EiINsoMlL9vBG0TZjOrhUXPy72NAA08fUYjRRNkIuXfndJrZShMa
         +Y/ZevCxhzSQRKlQk2BvPbWMsDubmd1W1BupnxVWnoElD59DdMr84CdPJQOCFdkHeh3L
         6wlkLtmfdFQthFL3ft9LkNeRqmpaVN1J8Lq/GCMU7uDsVYj95A2NYuNwwJuRP4+bLxoR
         o8LepJf2zxKM9QyCswY03QsJrooZJJlj4NlBU2F7A7co9UwY5GhhaWjG6+jkfuQEqrS1
         xCUw==
X-Gm-Message-State: ABuFfoiY6YfHwC04xsNO51yLbzKRGjHrfqD8n6xdHrufY+rJofawODjW
	zVRL2tXZTZJdni4FPkm8T7W0uq0F
X-Received: by 2002:a17:902:7207:: with SMTP id ba7-v6mr6348297plb.266.1538655031392;
        Thu, 04 Oct 2018 05:10:31 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id f193-v6sm9438986pfc.74.2018.10.04.05.10.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 05:10:30 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:40:25 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Prefer using the
 BIT macro
Message-ID: <20181004121025.GC24641@himanshu-Vostro-3559>
References: <20181004113518.GA8855@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004113518.GA8855@armorer>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 04, 2018 at 05:05:18PM +0530, Mamta Shukla wrote:
> Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> 
> change in v2:
> 
>   'Replace' in place of 'Replacing'.

Changelog should go below `---` so that
when maintainer applies to his tree using
`git am <your_patch>` then this changelog
wouldn't be there in the final commit.

> ---

Put it here!

With new version:

v3: .... 
v2: ...


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

