X-GM-THRID: 6801966173715955712
X-Received: by 2002:a9d:6204:: with SMTP id g4mr14203352otj.94.1583774366286;
        Mon, 09 Mar 2020 10:19:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls658226oia.0.gmail; Mon, 09 Mar
 2020 10:19:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsEGGY4hdwGq/O9mmKya+jOY8Prk/tgiZPBb6QpVALfTnn/Q6LDhS4SVNzx3zbBQtzi0WgG
X-Received: by 2002:aca:ec16:: with SMTP id k22mr212716oih.177.1583774364337;
        Mon, 09 Mar 2020 10:19:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583774364; cv=none;
        d=google.com; s=arc-20160816;
        b=VETIXw7hNDo8wO+oZcNsZ0BJvjxFI0lru1hUXn5JiaNuC/DACDLxxAJxsWxq4Y0ysR
         mPjx+IHLVQpE43J3WDBJohCqlH0+DG8IjfT9Hd0Mag6IwK1AbZGRjJwvHE683UL24aEV
         nIVlYjfDh3zexts4+Rq81cmpwr6pYiFbq/9DaotoFSY205dHDPmtrA53uM0dcmRwlmTu
         vDeCg2Zk3J+mwJRqKeBpVslCVCYK4P5137gP2VwRXiDpGr9QZMvAuqUGw0CQVXkcj4qd
         6FCBIujb4pkJSM382u84OALPxpJlvQu3hzAavq8EHI2jf/+cxVueQSsw8fRfe0ERH6TY
         4zng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=dRiY+nIieYwIq2VwipsDh8F8cKDc+Thz2XyYYCtRswg=;
        b=ZrwVKKYrbqTtT7361ZNpYn2Kt5+Xs9N6x9qD7mheHnjZ/KZE1tlqXaVAzLSgVJC7MT
         n9jwkwTSGt1wl+rLs62XIck8BypA7nfna2jQ3+XSEieA7DcSFi2uppuyPzcUgeHsfG7P
         6xu2E5mAxhAP3FFquNsTGZecKQkyMejlkrAI2lnhzM0PmoxNLJtrQ/jsrSY6Zdm/3VBf
         rwADa8RoF0kB6D7jojmTnvDnT7BC+VFMn/6T57eJhcEZCZ3tK65RMunXNcA41jagFvLJ
         /l32Z9vfToFvqz4ff9XYN19pge0FnMrRuJ0q99o4RUjnjMfqTt2+LH6mT/6dXyM2ms3Q
         Asfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-08.prod.phx3.secureserver.net (p3plsmtpa08-08.prod.phx3.secureserver.net. [173.201.193.109])
        by gmr-mx.google.com with ESMTPS id m132si246682oig.3.2020.03.09.10.19.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:19:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.109 as permitted sender) client-ip=173.201.193.109;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f174.google.com ([209.85.208.174])
	by :SMTPAUTH: with ESMTPSA
	id BM3mj8Z8poMVkBM3njmWWR; Mon, 09 Mar 2020 10:19:23 -0700
X-CMAE-Analysis: v=2.3 cv=EvWsUhUA c=1 sm=1 tr=0
 a=oakJ7VqGoKDDa4dePaZOHw==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=SS2py6AdgQ4A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=Xbn4kQIpAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=ILJjHVj0aWZh_QbchXkF:22 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lj1-f174.google.com with SMTP id d23so219730ljg.13
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 10:19:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2O111bzng/UJgUpzEqg++rINTEY31kdyGMSm/yOIXlS1o1E+Jc
	BgHhRdI4Dnimg95h7ZI2KtmvDAwGZUFdL4xhXTw=
X-Received: by 2002:a2e:9041:: with SMTP id n1mr8216583ljg.7.1583774362029;
 Mon, 09 Mar 2020 10:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200308222218.16031-1-lu@pplo.net> <20200309125327.422a1807@elisabeth>
 <20200309162655.GA3949@supernova>
In-Reply-To: <20200309162655.GA3949@supernova>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 9 Mar 2020 22:49:09 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+gx+c2oBaujvj8KSw8TvoRN=bKJTxEE_GZVHQVTZ8-cQ@mail.gmail.com>
Message-ID: <CAK-LDb+gx+c2oBaujvj8KSw8TvoRN=bKJTxEE_GZVHQVTZ8-cQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented out function
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Stefano Brivio <sbrivio@redhat.com>, Outreachy <outreachy-kernel@googlegroups.com>, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfB3RkBxCL5wPQUfONWCR7Uk0QRajfVHuUda5Zd0C2nthFCGFGFlBivg+bVzLZdEBnIICPKBNoXhY81dHDXmPgzrCjG+IfWG3ds6gHhtI+8vfxutebqzC
 VTHDsLBegfsNMVUAmjNbM4kVoSBo7sMlCfTIBj5wPIGxBKGS+8XfVnl59OcYTuwFI7jkDr5CLy9tUrkcwwiqq77VPcLJSl/q/h8=

On Mon, Mar 9, 2020 at 9:57 PM Lourdes Pedrajas <lu@pplo.net> wrote:
>
> On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> > On Sun,  8 Mar 2020 23:22:18 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> >
> > However, you should at least Cc: the maintainers returned by
> > get_maintainer.pl.
> >
> Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
> Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
> but I was wondering if this was really correct. So thank you for the hint!

Hi Lourdes,

Could you please tell me which part of the kernel first patch tutorial says that
no other email addresses should be CC'ed? I thought we had cleared the
instructions under 'submit the first patch' part some rounds ago but given
that the tutorial is quite big, we might have missed some part(s).

> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309162655.GA3949%40supernova.

