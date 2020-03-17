X-GM-THRID: 6803797661564534784
X-Received: by 2002:adf:f309:: with SMTP id i9mr21251wro.0.1584464866278;
        Tue, 17 Mar 2020 10:07:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:aa99:: with SMTP id h25ls5042205wrc.1.gmail; Tue, 17 Mar
 2020 10:07:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvO7ln4WQgv6prA/V2NbS2PMc/vh7bZ7KP5u05Nhewp7QJ79PFRlqORr9L+bwMVgHggTMR7
X-Received: by 2002:a5d:414d:: with SMTP id c13mr20774wrq.40.1584464864791;
        Tue, 17 Mar 2020 10:07:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584464864; cv=none;
        d=google.com; s=arc-20160816;
        b=PpSdCyNUBmvOM1qOUMnP03/RZPV/JSEsSRsdO1u4pnBTMVEZ4h8UvzVuLJIgNmBwhH
         aI0X3r5WP02Z7PbEkX9C43hMQmErLNdwWrjXh8GXUQcLgU9Ci8AXrTvJ9YNyVOHHy4sU
         dktsXW5eLj8uI9lf3miCoXth3jlp0Qq3HiI1ubZE3TDXAwuLDZQr5MxIgUgA8n1v7jo3
         vQvVb19f0YPXReHGMdOWRjo7ALPumF8txbfzRJ28fvZ10LZ1xmXV/Kk7H2AYI8oDVO0u
         ODoJsIs0nBigpuC4Hkpb1lIHa91YCaejaLZs+59k5OfY3oiM8g7RjprlOb74ZrvG7fVV
         wn+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6IoxAzJ4oAcsfqik5T1MFlt+oxMekjSf29slGmNFoMo=;
        b=zohhBy+ChOXv+iXiO8NNgAEaMiLouMB8PJbWR2tXMHgwOY4CGPgqouV22jOLwu3SVe
         Ic5Xpx1Codyv7t94hJZMBITYZwmeR4PrSZ3vCHo2k/Wc0Qlm+a5gjO1icmTyEuZPiZnM
         IirhpNFEwpPlOz3qSPeodawMKUH4AzP29282IUgVuEO/6TjFl9LBuENWw7DXblSTYVyT
         KoEIo38LVoQOT9FSt2ZKOuwF8AhhLvR9ypYwt2dz6zjP6u/HUrsguG9dthzuMvTPAVZF
         DN+sR0NU22xGLg2Ik5W/GQxmBSF8Odgf2NsDEu5t++RhJD1+A3qIZv1rc3QyStjCzD55
         DC0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=MSq7dZbY;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b81si2570wmc.2.2020.03.17.10.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 10:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=MSq7dZbY;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x541.google.com with SMTP id b23so27502312edx.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 10:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6IoxAzJ4oAcsfqik5T1MFlt+oxMekjSf29slGmNFoMo=;
        b=MSq7dZbYwPZEEO6OH+uIj5N4sdNBcNPG20lEXOO1YQK6Z/p0ED7V7OTi2XIWO0tqN5
         Zam1Z3XKPOKQvIl6OFSFgnhjCh9gsqoi/Jx68CqKmG/jptPe7MgYq+FU7b12Xo+m1iM3
         7zcXef5emF7stIOhkMVkCzWwG2P3qn+Bw0o3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6IoxAzJ4oAcsfqik5T1MFlt+oxMekjSf29slGmNFoMo=;
        b=XjJSy29LSNNhivV5O8zggjDQ5/ysxrO9QZVugPpROS9zvnB0+CO0HMh5m+WHlnwYz9
         EHNZvQ8xQXMLu1mnmO5U7jSx3myEtLhpFcSO4UB8XU3jk0a2GfV5ICwchwONBOIsx3bm
         y4fjjOnxMKnbPR8M04VOFdmulA3ZK7wnpQ4dyt8vHX0+YUNnSCNOr6yjhMH5WMjSz98H
         h+ba5mvFUG3S4/79/hGFn58oFAAkE65HgFD2wTJk9i7tajltX0QlyIy2FfY6XA9KJ7uY
         /doAtteOZpP/2FF/qcq5qoKOfcaZQykq+6FyW/hz/6b3LYHt4qCCQSSxhZXeJB5RlNEs
         Lxww==
X-Gm-Message-State: ANhLgQ0Mi3/3fsE2htrruMAofUKsT4HTCHUh+U5ycEIjbaXDYC4t123J
	DunHEqf3j9IAU3pQjL2kwH3CFA==
X-Received: by 2002:a17:906:3443:: with SMTP id d3mr161386ejb.18.1584464864399;
        Tue, 17 Mar 2020 10:07:44 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g18sm250927edq.18.2020.03.17.10.07.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 10:07:34 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:07:14 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, johan@kernel.org,
	elder@kernel.org, vireshk@kernel.org
Subject: Re: [PATCH 2/2] staging: greybus: hid: remove unneded braces
Message-ID: <20200317170714.GA5912@supernova>
References: <cover.1584131593.git.lu@pplo.net>
 <3626ab8e2feb4e1a43476c9f1c721d314c345cfc.1584131593.git.lu@pplo.net>
 <20200317114715.GA1233900@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317114715.GA1233900@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 12:47:15PM +0100, Greg KH wrote:
> On Fri, Mar 13, 2020 at 09:49:37PM +0100, Lourdes Pedrajas wrote:
> 
>
> This patch _ADDS_ checkpatch warnings :(
> 
> Please always verify that your patch does what you think it does
> before you send it out...
> 
> thanks,
> 
> greg k-h

It won't happen again :(

Thank you,
Lourdes

