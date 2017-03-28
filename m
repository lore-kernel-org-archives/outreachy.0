X-GM-THRID: 6399870143121326080
X-Received: by 10.129.68.35 with SMTP id r35mr10391199ywa.143.1490718213796;
        Tue, 28 Mar 2017 09:23:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls2563372itb.21.gmail; Tue, 28 Mar
 2017 09:23:31 -0700 (PDT)
X-Received: by 10.99.110.139 with SMTP id j133mr10632499pgc.55.1490718211886;
        Tue, 28 Mar 2017 09:23:31 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x202si274342vkx.0.2017.03.28.09.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 09:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id j137so13760813vke.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 09:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=69CFoABRerBP88GTFUiyi8d3TJnKrorCzVnel25owtc=;
        b=Tlijl8vt+dzIsgjzH7obOi5epo5OX6aRSOI2vgQsjyykFU8S7FagGzTyEgHZy28If2
         tbrqVXzFu/YjImPXBM7Kl/2p+sXljAtCPWXCEfqHKX5NDZJtrkxaHofsOEu9dGmMTnsk
         AGNraPhj5cMr2YuL7vD1MouaG2IjBq/SbJN5uwWrXwqzmsgyoOgm3k1EV4g4RVtH203s
         JtqNNsvAAkrImKJvTOwhIxYtppBIMRMSEHuZ8+7IKsJizRYweG38d7wMpaTwAwOLGNAf
         vrvvkAwXqeVs0R+kvI4vS9MEZzYnsy47puUU5kxnx3RpDAgdo+xYKxhNIVV3fCDVLFgA
         uQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=69CFoABRerBP88GTFUiyi8d3TJnKrorCzVnel25owtc=;
        b=Qonixe+FtriljRNgt3QTZE65T70ddsABnCbEoSgC8PegSNmK98mVG0CyUlxj409bCm
         VKEY63mn9Bg+bSmOl5QXeJEO3Oo6ng+/ZDXX6PTKGWKm2pLBheeJbQet+QHIhjj9YnP6
         cyxPnz/di/bfwJwFzy88EIrTvJvnhXw2FQ9enON29mg++/e3/ZvF1SuXDF35pkQWBvkD
         r6RdhDnG7KyzggdTye8xBvOChchxtFvgSDyj0Ry8fSRc+3sxrCZr4t4HRYiWnnb0/DXn
         ks6vrEySfmmBrZgL4uWq2I1UEbifdlcILYgDwGpISfyjxfpRy8AMADma9GrHp8J2m/J/
         deiw==
X-Gm-Message-State: AFeK/H257lM2A6AumyDdziyNkQfzRbY9HE3lxbZriihs6Idg3HLDli97PmIcMmc2sqt4kbvcquxJ9qITrNZmBA==
X-Received: by 10.159.39.66 with SMTP id a60mr6949301uaa.28.1490718211565;
 Tue, 28 Mar 2017 09:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Tue, 28 Mar 2017 09:23:30 -0700 (PDT)
In-Reply-To: <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr>
References: <20170328131340.GA19688@singhal-Inspiron-5558> <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 28 Mar 2017 21:53:30 +0530
Message-ID: <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com>
Subject: Re: [PATCH v2] netfilter: Clean up tests if NULL returned on failure
To: Jan Engelhardt <jengelh@inai.de>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>, Julian Anastasov <ja@ssi.bg>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, lvs-devel@vger.kernel.org, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 7:24 PM, Jan Engelhardt <jengelh@inai.de> wrote:
> On Tuesday 2017-03-28 15:13, simran singhal wrote:
>
>>Some functions like kmalloc/kzalloc return NULL on failure. When NULL
>>represents failure, !x is commonly used.
>>
>>@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
>>       }
>>
>>       dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>>-      if (dest == NULL)
>>+      if (!dest)
>>               return -ENOMEM;
>
> This kind of transformation however is not cleanup anymore, it's really
> bikeshedding and should be avoided. There are pro and cons for both
> variants, and there is not really an overwhelming number of arguments
> for either variant to justify the change.

Sorry, but I didn't get what you are trying to convey. And particularly pros and
cons of both variants.

