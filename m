X-GM-THRID: 6477930690755166208
X-Received: by 10.157.6.108 with SMTP id 99mr1234564otn.58.1508439072913;
        Thu, 19 Oct 2017 11:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.97.70 with SMTP id v67ls2031723oib.11.gmail; Thu, 19 Oct
 2017 11:51:12 -0700 (PDT)
X-Received: by 10.202.102.149 with SMTP id m21mr1132858oik.54.1508439072134;
        Thu, 19 Oct 2017 11:51:12 -0700 (PDT)
Received: by 10.202.245.206 with SMTP id t197msoih;
        Tue, 17 Oct 2017 16:38:06 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RLY3+Qqee2CUB+jmU7tk9R/CoQiaP7NwDlixRiFv8Oz3DYMicYDOTEQYQBcihUvYb9fban
X-Received: by 10.36.14.22 with SMTP id 22mr4126178ite.19.1508283486590;
        Tue, 17 Oct 2017 16:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508283486; cv=none;
        d=google.com; s=arc-20160816;
        b=dLleog7deg8qOMxHPEmohY914H5xQEiOVyze3xe7w9hDg1kXIF63XthKfJ8/uXalb0
         YKPKLLR7ki5Oir3jLKJZl97ETG4pt9KZPvlFU6bc2IPhnhzKOo7n4g0IWL3JkT3hmVYB
         /q+2cuTLic5emVdcX3tcMdW4PmrA2RCrYOctsD7YG5Uc5ToUHlBVtX0oJtsZrjEOokoj
         PfqIJVfJm16SQTgxvvBk2XSLgbEYm9B4WbQj8IcxLZrM51bN6GMX3KRo9HD106ME1sQj
         8N0ktwF6lBrZqQrgc9uZq4gBTiEmoSfbTqdnbp8zMxe9lqQHje4zbvkLAb/pkdlGmFBa
         zbyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=obfZh71mGQhitxP2XTmUchwKE3oJxQwFPvKUw3/CPXM=;
        b=JShqiGYfWl4r6Io7Bjq9bLwYC8IyO631qzMQoborJ4KuJtC9xFDuMF9cyD9+qdxa8k
         eDHguXkLQKz1fGQSfD/RgIgHro58nHiezPknoVbIzeESyNR04ssXACldMt36i85YQ8fD
         4MtkUa2Vlfiyqb/Ogh/gEhaGZDnjN8T9sjqXJOqo4OPTMEea5g8YzjC+CZxx/B3Ys9kO
         7siPhoy6JZ6sX9lv3I7ojrVIuYUWWwZnvYzOOmg/5Py50uEfZnXDOp/slCQy7L+3t6//
         S0UB2fzRVEQATagmgBTmJp938A8tbxVpQAr+cHzt1i0Zb3eXMZScCgZtuyG6Bi0B58uX
         jP6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 211.29.132.42 is neither permitted nor denied by best guess record for domain of dunc@dimstar.local.net) smtp.mailfrom=dunc@dimstar.local.net
Return-Path: <dunc@dimstar.local.net>
Received: from mail106.syd.optusnet.com.au (mail106.syd.optusnet.com.au. [211.29.132.42])
        by gmr-mx.google.com with ESMTP id a205si875797itg.1.2017.10.17.16.38.06
        for <outreachy-kernel@googlegroups.com>;
        Tue, 17 Oct 2017 16:38:06 -0700 (PDT)
Received-SPF: neutral (google.com: 211.29.132.42 is neither permitted nor denied by best guess record for domain of dunc@dimstar.local.net) client-ip=211.29.132.42;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 211.29.132.42 is neither permitted nor denied by best guess record for domain of dunc@dimstar.local.net) smtp.mailfrom=dunc@dimstar.local.net
Received: from dimstar.local.net (c220-239-36-238.eburwd6.vic.optusnet.com.au [220.239.36.238])
	by mail106.syd.optusnet.com.au (Postfix) with SMTP id 1E7D53C7297
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 10:38:04 +1100 (AEDT)
Received: (qmail 13623 invoked by uid 501); 17 Oct 2017 23:38:02 -0000
Date: Wed, 18 Oct 2017 10:38:02 +1100
From: Duncan Roe <duncan_roe@optusnet.com.au>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: pablo@netfilter.org, netfilter-devel@vger.kernel.org,
  outreachy-kernel@googlegroups.com
Subject: Re: Problem compiling nftables
Message-ID: <20171017233802.GA3615@dimstar.local.net>
Mail-Followup-To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
	pablo@netfilter.org, netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <20171017171928.GJ6963@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017171928.GJ6963@ubuntu-server-1604>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.2 cv=KeqiiUQD c=1 sm=1 tr=0
	a=Lz6daQpGLaVeCpevBZ62wQ==:117 a=Lz6daQpGLaVeCpevBZ62wQ==:17
	a=kj9zAlcOel0A:10 a=02M-m0pO-4AA:10 a=CZlW_lA7AAAA:8
	a=zw8jiRPjKMB7sQbvorMA:9 a=CjuIK1q_8ugA:10 a=ygkv2PXiZZcA:10
	a=YesWICpK8kXh2r78iVX9:22

Hi Frank,

The libnftnl patch was comitted 2 minutes before you posted :/

It all builds fine for me now.

Your problem is with generating the man page rather than with compiling the
code. There is a separate Makefile in nftables/doc which you can run on its
own to do this.

When I run "make V=1" in nftables/doc I see the single command
> docbook2x-man --xinclude nft.xml
which gnerates nft.8 for me when I run it. Do you have that utility?

docbook2x-man and jw both come from package linuxdoc-tools (on Slackware, at
least). If you end up installing docbook2x-man, you should likely re-run
./configure before re-trying make.

Cheers ... Duncan.

On Tue, Oct 17, 2017 at 01:19:28PM -0400, Frank A. Cancio Bello wrote:
> Hi,
>
> I trying to install nftables from source ask part of my Outreachy
> application tasks. I already installed libmnl and libnftnl successfully.
>
> The problem comes after the 'make' command while trying to compile nftables.
> I'm running Ubuntu 16.04 and following the steps described here:
> https://wiki.nftables.org/wiki-nftables/index.php/Building_and_installing_nftables_from_sources
>
> I removed the last commit of the nftables master branch:
> 8dee5e43ad4beb2b0a95e0bbf2b3972630c1b327 'netlink: Use nftnl_expr_fprintf()
> in netlink_dump_expr()', to avoid a compilation error because a dependency
> with a libnftnl's patch still pending to apply. But the following error is
> beyond my skills right now and maybe is just a detail that I'm missing and
> somebody can help me.
>
> Thanks in advance
> frank
>
> Here is the relevant make output:
>
> ...
> make[3]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include/linux'
> make[3]: Entering directory '/home/vagrant/git/pablo/nftables/nftables/include'
> make[3]: Nothing to be done for 'all-am'.
> make[3]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include'
> make[2]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include'
> Making all in doc
> make[2]: Entering directory '/home/vagrant/git/pablo/nftables/nftables/doc'
>   GEN      nft.8
> Usage: jw [<options>] <sgml_file>
> where <options> are:
[SNIP]

