X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6102:38ce:: with SMTP id k14mr12641560vst.6.1634870771224;
        Thu, 21 Oct 2021 19:46:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:cdb0:: with SMTP id l16ls1126018vka.9.gmail; Thu, 21 Oct
 2021 19:46:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwioBcXIXMGPAsTidss6Rj7ze/G85vCrK2ydOzu/JyikYbOfafyQXpVItXbkWexeFrEIYOr
X-Received: by 2002:a05:6122:1213:: with SMTP id v19mr10977882vkc.2.1634870770390;
        Thu, 21 Oct 2021 19:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634870770; cv=none;
        d=google.com; s=arc-20160816;
        b=QtOrbCjp1yOqAmCOQs0U2XbACgifLVJBFeLUyGIAw1biwMfkqxt9neXypgk/+z5LxU
         khFmZkvrvqqqqFIU3qThMRObTvbns/PUN1WtgS4JK+3AnPvyy4ey2aNN/7uA8XJHV8FJ
         +cvpFVK0303+fcrvONgVMWOK/gUawzP5RZ8AKMYtZj/zM7bEYYo0mnaVf/nALe4IdohM
         5cGg+Q/E6dAVUNyuOv9BROnfIvsWdNdJgW0N0OVGmT1IcjG6Qf1z1DV9+R8gjGMFW8y+
         cV0/EGkG0axcBEw11VrsRnYJagJy+4N+zTxo0RAl7C2INy/OA0i5BEgmCGIbuxrj/SP9
         BerQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=y8CVbuJdv6pcQlvqtBOqCo8DJXJOq4fCIL+NtdfhBGM=;
        b=D54+JdKdN2qHFCvwuVe8ulUsuV6e3pQh33VY8GFAHP6DSp7esCRQHTmDUFJ3tLFqZy
         QoxLGZQYFHgImoya5R85NT91Ol0ODBOPf6RT72ry7Vk0oTtMEjRx0cDOG+/M1U6SmUN+
         tpbrj94EZapetdpqcQYa9dp+jbgUfpjeyIKY40IPutHsn9lNWpOQu/bF5RgPoJdfKSG+
         pwuwO+1hRRU1AVJ/2Iys3JFJDymk7up/8GUD7jCNHeByMesJ1dCI9MUMDZ0Z08C19u/P
         lmiEiNbg6aquEGs9I8YDdvZROR6vVcCm3LnAqZg2COIGHQHF+m2hDoJw4W0jSYuop/3s
         pvDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cftdgf3y;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id x12si593571vsx.2.2021.10.21.19.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cftdgf3y;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id m14so2346118pfc.9;
        Thu, 21 Oct 2021 19:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y8CVbuJdv6pcQlvqtBOqCo8DJXJOq4fCIL+NtdfhBGM=;
        b=cftdgf3yXhUa5cMUgwewdt14ugyS+jkcnj2eELRaNzj6L8DX2rXdE65uRu/ZEWExJS
         aropop8bBJ0KYZyaAu0zj+4CeQlTp7FHbIfwqeit+uM6GKxwfasRcx4zhPuyRS+mwOww
         BmrDYvbhwFM5Y7eTF7QW72dFy7/cIjwnP6eoxJeXBIYA4Vm91a7xL8ZLeupdfw3VJK1F
         79ysaUnW8BOvRj5il1bkkD8fextqBA/okoI19VmYTcRGEZKVvZxGWXoiec5GfIwLCT9f
         +XcF1BhJyNnd1s4tIyy38XYNa1VzJ/EJ1zOgNMMGkZ1lD9jQiPQK90aMI4VLkUEslt5M
         n/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y8CVbuJdv6pcQlvqtBOqCo8DJXJOq4fCIL+NtdfhBGM=;
        b=7nYqS3IkLHJjAx2HTf9i9krxbx4GSczoshkTgFZvr7yRjYai8Zarr1Y+c0wTqh3Iqp
         aVvDnIjNegLH/htag2CGhmLc/962A+kUombYWpf0K44NVugIKA6a5k0Ffsg2hINJ/a+4
         VX3IKGPS54tQWr/xKRZCdhFuSruc37uxn7VoIKlsAzFDqhrTmA4eofdyD60K4M08XlN8
         PIuH1kJSyT/k5r4Wo+KcsTqu4CHQKI1EUrkMvvaR6nvgguRraMwtQ5rkYKWIqUeKjWcW
         /C3HDYywKZrtz1ZGEwFIQdRvmuWZo8qcdUZCsD6qgvdGBml6Vyzw9cwjpGGUAF2xPODo
         bnSw==
X-Gm-Message-State: AOAM533CeL+5wX3082AX3PsXlvlqazVJonxqkFdNx3FXE1wdOsJ6C2lQ
	HPXb8VQWtff1Ra25ZNon2/g=
X-Received: by 2002:a63:ef58:: with SMTP id c24mr7225301pgk.299.1634870769622;
        Thu, 21 Oct 2021 19:46:09 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:d9ab:a6dc:54b8:e75d? ([2405:201:d007:e827:d9ab:a6dc:54b8:e75d])
        by smtp.gmail.com with ESMTPSA id x20sm7138393pjp.48.2021.10.21.19.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:46:09 -0700 (PDT)
Message-ID: <9f205c0b-2684-eab3-caa3-8222060723ad@gmail.com>
Date: Fri, 22 Oct 2021 08:15:54 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: rtl8723bs: core: Cleanup
 patchset for style issues in rtw_cmd.c
Content-Language: en-US
To: Kushal Kothari <kushalkothari285@gmail.com>, gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, fmdefrancesco@gmail.com,
 marcocesati@gmail.com, straube.linux@gmail.com, philippesdixon@gmail.com,
 manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mike.rapoport@gmail.com,
 kushalkotharitest@googlegroups.com, outreachy-kernel@googlegroups.com
References: <cover.1634845504.git.kushalkothari285@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <cover.1634845504.git.kushalkothari285@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22-10-2021 01:27, Kushal Kothari wrote:
> These patches make changes to clean up style issues identified
> by checkpatch. 
> 
> Kushal Kothari (4):
>   staging: rtl8723bs: core: Remove true and false comparison
>   staging: rtl8723bs: core: Remove unnecessary parentheses
>   staging: rtl8723bs: core: Remove unnecessary space after a cast
>   staging: rtl8723bs: core: Remove unnecessary blank lines
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 75 +++++++++++-------------
>  1 file changed, 35 insertions(+), 40 deletions(-)
> 

Please update the history against these patches and whats new in this series.

Regards,

~Praveen

