X-GM-THRID: 6752263859613990912
X-Received: by 2002:aca:4c14:: with SMTP id z20mr3868834oia.76.1573068347177;
        Wed, 06 Nov 2019 11:25:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:438a:: with SMTP id u10ls876568oiv.3.gmail; Wed, 06 Nov
 2019 11:25:46 -0800 (PST)
X-Received: by 2002:a05:6808:352:: with SMTP id j18mr2577642oie.67.1573068346201;
        Wed, 06 Nov 2019 11:25:46 -0800 (PST)
Received: by 2002:a05:6808:a96:0:0:0:0 with SMTP id q22msoij;
        Tue, 29 Oct 2019 10:40:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqztoZDs5Spmm9eI2BKIOgMuYvYj6+ttWLPDVXb7Z1Ib5b5/5cD9vlv0+MvFQRLIbQnv8DlS
X-Received: by 2002:aca:3909:: with SMTP id g9mr5239103oia.107.1572370819991;
        Tue, 29 Oct 2019 10:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572370819; cv=none;
        d=google.com; s=arc-20160816;
        b=Va/ZgXJom2lK8sRvAF7b0jFuz7YNC/5DgtBTJm6e/iFsUgAubNw+cnhlCNOI0bauQ+
         sV4kbe9j9VGAMdMnoc3+xffrOBLaewcWRPcNN5zDBC4Vkq0sbRM0bEbiEXKFE4xekxr9
         F97tfbLjugZiSGMd4mfWj/5FzWPYtGmfUDzNiSDimvHkAAWSGmagWLoehGjyJYCmsZjp
         46jpZXJkR16sSGwdOhQMyCPxA0XIZegfFyPot6tyQ5By9NpZSLK4tmq2tg9lLHKneRP7
         UssmBzK+VPsjgpufbXqd50k8qJQzA9BhbB7WkIS7cSMCGrrgldGgw3zq3oZ8LAiLbabr
         M+oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MioPHoHmZiJDkwtAxq/VI9F9tLNtqLzlol+i1u7r8fA=;
        b=sTYo+AHrdzIMK+lp840sLrfdvtB3ePKzEosL8bRkAJ7XXA6sxIy2W1/f41qSNcds6b
         xAzascloA5YBtfkkbrCxIM4UwIX15Bw11hoWZaZdSDgz7HFIAA9znyLxw8u03vpe5uZk
         4IMYdDXwINRnEDiXywkfVbrJ3RTqQtgvBDGI9SMdgL+rGS4fiSuPticUIDurWmMWE/GG
         DdqO6vKR1PKQ5ncDKvaADnEMPYwdWfIw4bHetQsxFP/lLr9a5iThQ+laBRvjwIESFJ47
         gbd8UjaFx7+fqV0ZuTJMVpsQ5BpG0+fm+hT06sm+L9WAhKVGobPlMwtqG13zuDanTngM
         QbCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oBddjUwb;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thesven73@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id p5si806768ota.1.2019.10.29.10.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 10:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oBddjUwb;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id 41so10478396oti.12
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 10:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MioPHoHmZiJDkwtAxq/VI9F9tLNtqLzlol+i1u7r8fA=;
        b=oBddjUwbYuu4Lj3WVOqQL7mkyQMLeydeOVhksSLQRwe9Gir8Z4rWNR8jmLZshyqsmr
         /1yiueyFie5VvPJe/Q4QgS42MgJEgn9ZA8J4Ji2+x7vDNVyhxNfnT8zf6RJWL3YYYvlJ
         fXTuOlFGMXUyRIrC8dRLduwQ8vAstTWyOwJgD2Rnshy+cbZJsv17mEk9jozie5x7OCd/
         fak4Ujm7FgA2hP54yAMo6n4SJeh6V/iHkkAIBhcP1cZYOprBLFv3CxQuaiuNv7pBEtqG
         Gr9j9dasGtqQ3pR3heFnkqmYmkoKPRP8qa+NsIwHanpqw9tM2mih8uIb+JX0J6EoVq1o
         8l6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MioPHoHmZiJDkwtAxq/VI9F9tLNtqLzlol+i1u7r8fA=;
        b=nBLB/6kxanAPRA6OR2dJXdI2NBL4YlM3m006dV2si41pfOLN1CGQfdyzu6gn7Xv7Qa
         Vg0z3rgbTvg7xQE+zcHxivHf7Je7+byzVRX/9XIcBhaIz44gm3VT2KsC2JLMX88ie4AM
         jkHjhGxk84MnjIWinGLUbJO0HMtjyTMln9F90EMAHpCK1BbyVM2nsk4rUbMpzZ7rUbT0
         tdLgMMUSnB6m2O7zfVF5ZS+0lwP5jlMuEcdTpfCPvXq1oTF+2XO72RhiLgg+FrtOr3OG
         Tbpk7lluxz/RxHnFLSaqbY2JJmzkBn5Hc3OXUgw+k6euWY0Z/ZnAtGwQyvFDfjW68wPV
         EZ9w==
X-Gm-Message-State: APjAAAV4RP7vETQ+LPxRTwiuKne6cHpr8ouxd+qAA1HFkWTZRVYosEtr
	KvJetssZT3q0euREjO/kJ1DNLt3BmBy2QxOM1B3yBHsy
X-Received: by 2002:a9d:630c:: with SMTP id q12mr7925015otk.332.1572370819510;
 Tue, 29 Oct 2019 10:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
In-Reply-To: <20191026235214.GA11702@cristiane-Inspiron-5420>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 29 Oct 2019 13:40:08 -0400
Message-ID: <CAGngYiXG1JbFcYLfnKDKYac=Ku+KAkOetPa_MkUCt7xXgJA-XA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: use devm_platform_ioremap_resource
 helper
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
<cristianenavescardoso09@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource helper which wraps
> platform_get_resource() and devm_ioremap_resource() together. Issue
> found by coccicheck.
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>

Greg has already queued this patch, but the link embedded in
his commit message should point people here.

