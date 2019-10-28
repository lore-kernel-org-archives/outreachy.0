X-GM-THRID: 6752263859613990912
X-Received: by 2002:a9d:365:: with SMTP id 92mr3319087otv.9.1573068354799;
        Wed, 06 Nov 2019 11:25:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3408:: with SMTP id b8ls848028oia.16.gmail; Wed, 06 Nov
 2019 11:25:54 -0800 (PST)
X-Received: by 2002:aca:f083:: with SMTP id o125mr3640828oih.122.1573068354126;
        Wed, 06 Nov 2019 11:25:54 -0800 (PST)
Received: by 2002:a05:6808:8e1:0:0:0:0 with SMTP id d1msoic;
        Mon, 28 Oct 2019 07:27:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRq3nQw5M10zKxA6B8/J5Z8JSPnnycjm5MQWU4Up8lL8xC67jxyY0qUh8yJxATHVaqmcra
X-Received: by 2002:aca:b03:: with SMTP id 3mr198101oil.103.1572272836346;
        Mon, 28 Oct 2019 07:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572272836; cv=none;
        d=google.com; s=arc-20160816;
        b=vlDGDvo5qT+qIBqNjGF408dT6lSPLKipqYXelR7WsL3bfPd3Jfl3jJIoPtbh9HHzyG
         5xIyOtHo/J95L74PxoeDusmdtMp68RfJ4lZhFn8XnTED2N0NJZ5e9e9k/YUSiIX/CQhg
         1tttPd1ssMpQfkFXe9omk9oobcdNXa6YelMJw3CptnXIYH9BduSVBg7Ovt7gN54gjSwp
         URmiM+ToggW6JoUz8f66ECgB7KfgO37cnQs2V9tl7QWiTVF6CvnvYr4nk1qL2Z4d10Q9
         xl9vY5VrJPKwodpU1NLgzbXD/cgLDndGWCEomCwzITtUPAQuik1Z9249NG4TjldFgx5o
         x8ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qRPcGUyjyYP3X+dNbFskpOrzjRKBib41L5MZ+6/IumQ=;
        b=Ij9PF0Z5O8DPnbTFATs/SodKf6Ybqfl83FIaeJjl3IftApfJ+GugN/Mcok41U85u5s
         /0qkk+PwAkS/eCVyL7/1I1rIPzPgOP79wDi7lZk/RunIqe+TvKvQ9MGTzfMBa2w/rJn0
         WN84tOvmxbsziKKfVFPKnQdptEEu4hGPuXxNpXfi9HT7dxUjv+l+x9GHMI4PkOWVbJ/C
         MABshZowewDtjtRAhsgiPEjmJDvlsU+zRIrn44mKY67dj+0+Sef1agaNdTfTlApMBGBk
         znvPSOxxqg7KtyY9OvL2/gw3nQvVskCC1C4b8skAOjjyzQN1Z3S5XJ31jEAkPG0fFtRR
         vlPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dmV0D1Fp;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thesven73@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id i19si567765otk.0.2019.10.28.07.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 07:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dmV0D1Fp;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id z6so6796871otb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 07:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qRPcGUyjyYP3X+dNbFskpOrzjRKBib41L5MZ+6/IumQ=;
        b=dmV0D1FpdEoza5dLoPFkgv/FDQhs15CmGwpEPlAT0j2u3NQ2wpQzX8doVJJvQLp8JI
         Sfyln9GCLLrHiTDMC9FFAPtoCYXUkkrn8fg3vnkP0F4aygf3f7NO3lu8Np3KBwwjX0yZ
         pJc7k0q8BWbyZAOWshLqcmfonZjCgHkNKErJnqANJ2AVg7gmRmWRvkqxo90KRjbJ8Dai
         qvQZARVLSIAcnLYvMtXDOSAMNGQv/X31yNvWqRGx52VSt53OGmAo6QV2VHFtVEuRZNp6
         ulx6antxyR/+qm+LVSywVNCb06FB76QI/zVpjXVy5PTJwIo8185g2OOeqJm95/BKsGD6
         2F5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qRPcGUyjyYP3X+dNbFskpOrzjRKBib41L5MZ+6/IumQ=;
        b=FF8/I6Bsysm6r74EcBLtZTKruCsdDPPQJJTw67WLpV6P9DrgMN2npB/rfArwVcX4k4
         R+F4zCYzhR0VkHMOfGKXhlecmQa43dFDy4rv020aoh284I4t8WhdfbnsPSSCAQ9N7tF+
         CPJLm/qFQC1S2fYXhkdhwHg4UrfwWBWKDwGmrbQJyWJyD6UoPCnEl2vNmVnhRFnnzpCV
         Bla77AgPqhdEibHkvg76TOpIiwTUnBNL/MQ6KdDuqGGRsv3TWe3OcqKWr/p0ZZpmQ/Zi
         6PZeE9oESE9zXWwhtImNfR/uuVA87+SvWCYpHRgHIZtQCeQXIAENJDf6ahBfLzjFF7o7
         AYxw==
X-Gm-Message-State: APjAAAWEjgyjqX8VGy7mUMRaFTKbu8NodKPjy2Y9sho5Ac/J30zKefs1
	rv7yYYA33aOBTC8FjHHzm4YPZf1T40nKmf7AL/c=
X-Received: by 2002:a05:6830:237d:: with SMTP id r29mr8845480oth.0.1572272835772;
 Mon, 28 Oct 2019 07:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
In-Reply-To: <20191026235214.GA11702@cristiane-Inspiron-5420>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 28 Oct 2019 10:27:04 -0400
Message-ID: <CAGngYiV0hCjXigVhijoTmwMfS4mM+hC-aVFsu6VDT-WmKsNsJQ@mail.gmail.com>
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

This is a duplicate of:
https://www.spinics.net/lists/linux-driver-devel/msg129526.html
and
https://lore.kernel.org/patchwork/patch/1140024/

When you find an issue, please search the mailing list(s) first to check
if it is being discussed already.

