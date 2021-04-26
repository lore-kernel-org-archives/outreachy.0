X-GM-THRID: 6955401561206947840
X-Received: by 2002:a19:7508:: with SMTP id y8mr12351373lfe.123.1619431643742;
        Mon, 26 Apr 2021 03:07:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls515009lff.3.gmail; Mon, 26
 Apr 2021 03:07:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRMhdMYooFD3gT/8PEEImxlmxHqvrFFiLRZOkjn3m7fsssEnGhdQ4R97uxfnVI3GRAqgTe
X-Received: by 2002:a05:6512:314b:: with SMTP id s11mr12188023lfi.276.1619431641957;
        Mon, 26 Apr 2021 03:07:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619431641; cv=none;
        d=google.com; s=arc-20160816;
        b=eTkhE7dSRygtzRyNmTRIo2zp2koCzqNoKfkUZ8T2HlptsUm3pZCLwqQpg0z7Z7dwdO
         QCC/86HhWfALBKrgIAdMlUT0EDC6Ouu9e3vV3olYbNoGnvgX83m448RMmhIaMT6NvhbC
         frRiMfcYiZokPZDV2V2sgVs4atn2iuRSvKRIB3niUnyxQ/iDuKPMP9GfWchOi/zXgbJ/
         fqDwKtnuMuGYmScoUqxdlU7BWQZ8VkWJlAjnKREjDeOQ6am3DY8MrrQo/0q3YEQs4F0P
         CqRxArY3BKLrQb882Sf/MmrCllAzO/8u3L3Rt+qvnxmqkRYnKmSLSa5uqiVOG367ExDm
         T1NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=ehQrzsIZRFliVxGf0+PQJwfImB4Pq4JxDQ4PPqioiQ0=;
        b=R50tPlUFnv+rj9MLHbSDV3cOL9gGoi5h7vvq7wHbdLPnyMF2BENApapFf5sKMmGij/
         3BxXq/DdR2B6hhqW+D7D5e4sj31/vJbPv16pZCLKH6Alp7i8Bu8z4/UQjQz7G2iirk06
         JAQE55MigmOIlNtZ0k72+lBb+vWM5fcDKP0QYzCNeIGMaCBVLedna3my8CKyEypgjXRN
         1gzIhPk89nTfYFuhU0Khue1+EXl2xXyA3xFhr34fiu/7A8DY7phBDLvBdi4Jec/w8uTA
         ihGYZdjNkUmzHlp2nwcRfpe+qTlVSjqU6dlfLowV10hWLdejffeD3qZsZISqEg+zVm1F
         FNVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u2si1114342lfo.2.2021.04.26.03.07.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 03:07:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASQxsOaCOEXuyQ/PlHelN55DYdL4zR+YMi2QD?=
 =?us-ascii?q?/UZ3VBBTb4ikh9mj9c5rsSPcpT4NVBgb8uyoF7KHRRrnn6JdwY5UBru6WRmjhW?=
 =?us-ascii?q?3AFuBfxK/D5xGlJCHk7O5a0s5bAs1DIfn9F0Jzg8q/wCTQKbYd6eKK+qypmuvS?=
 =?us-ascii?q?pk0FJT1CUK1u4xx0DQyWCCRNNWp7LKAkH5mR7NcvnVSdUEkQB/7WOlA4ReTZ4/?=
 =?us-ascii?q?XEmJX6CCR2ZSIP2U2+yQml77P3CHGjsys2WTkn+9gfzVQ=3D?=
X-IronPort-AV: E=Sophos;i="5.82,252,1613430000"; 
   d="scan'208";a="379678700"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Apr 2021 12:07:20 +0200
Date: Mon, 26 Apr 2021 12:07:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, David Kershner <david.kershner@unisys.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthew Wilcox <willy@infradead.org>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [RFC PATCH] staging: unisys: visorhba: Convert
 module from IDR to XArray
In-Reply-To: <20210426095015.18556-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104261205500.5891@hadrien>
References: <20210426095015.18556-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -273,8 +260,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  	if (devdata->serverdown || devdata->serverchangingstate)
>  		return FAILED;
>
> -	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
> -					   NULL);
> +	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE, NULL);
>  	if (scsicmd_id < 0)
>  		return FAILED;
>

As far as I can see, this is just a whitespace change, so it shouldn't be
in with the rest.  If you make whitspace changes, they should be in with
the other code that you are changing.

julia

