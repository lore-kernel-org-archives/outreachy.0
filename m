X-GM-THRID: 6473326624929480704
X-Received: by 10.223.182.18 with SMTP id f18mr189682wre.9.1507293640368;
        Fri, 06 Oct 2017 05:40:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.79 with SMTP id r15ls1579977wrr.9.gmail; Fri, 06 Oct
 2017 05:40:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCHm5DqmyrwljMyKoanQd08dxMVG5a9x7W5hFSpco59usKML9+j7A+noHarLWBaG/8Gef9R
X-Received: by 10.28.0.7 with SMTP id 7mr218926wma.26.1507293639734;
        Fri, 06 Oct 2017 05:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507293639; cv=none;
        d=google.com; s=arc-20160816;
        b=XBsX8ANyZG2X6dsPuXPHH0C1CoApjCexM1hu4BEu+8Jc3ld3I4fZaKBY4L4dnJnLbi
         QTjqqmCqNF2MIdm10pDyXZWNb5XfU9QzQcon8QDaUx6yWkfUg2vZOJjf/3Tk4lXhwita
         MYv92ig2hjIrN62Kg1Mhrt0ZUbz6yqdCSWGl3ezJYqaZTZXnv3KvIpDZ1HLp6sRe5tUM
         57C020ZSuv4mYSpS4yXLJZajWkrq/0t/UZtXzvqcbA6EGiEo8DDXc6rpeggyu8Qvcj9Y
         xM4caO6EUM2li011eJB/9gGqW9nX5Kse2+B/dpL2utNnfw2mp5xAv5WwugmEU5UaYkyu
         iWZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=atsKgGmDMs/MW3UvWsLIeZmjeN7Vy9lAfUjIoOeqKEQ=;
        b=I66IavbBxgpER4Hv/lGBCxmtEQwRW0KSoiS64DbC7s878YM7ApO85Oiee9cPee9t3v
         dlSGbd5+uEh0vd/H/+6lFv0qnc/O76Sl7BRuVh4orWfeAJjxNgYWRnBhzftgU4udv8L2
         35zlRcNMLB0hDb1TnPQkXfVQfmyoZ4Vi+Vfml6sYN3m3gYs4q8BOL+HmnUsvxnIyJv9X
         QErFv7vvRf6HohupVbKNxI6Yn6VFJW55VEhPF6QNWQR9sT3BoFQzAqige1iLioU2+2pr
         MKxZJIBN6c9ZQ9iNkPlh4QaTwk0HDQmZQLxF6fGyPgdjJr/Q7G2EGYpTouKiV9CHKlVt
         owNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id d82si157277wmd.1.2017.10.06.05.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 05:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e0Rvh-0006bf-5R; Fri, 06 Oct 2017 14:40:38 +0200
Date: Fri, 6 Oct 2017 14:40:36 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] INSTALL: Update dependency list and configure with
 libxtables support
Message-ID: <20171006124036.GD4713@salvia>
References: <20171005073109.19874-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171005073109.19874-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.7 (--)

On Thu, Oct 05, 2017 at 01:01:09PM +0530, Harsha Sharma wrote:
> Add configure with lixtables in INSTALL and required dependencies for
> the same

Applied, thanks.

I have mangled this a bit.

Applying: INSTALL: Update dependency list and configure with libxtables support
patch:29: space before tab in indent.
        option in nft.

There is a space before tab in indent, have a look at your editor,
it's easy to spot them.

And I have modified the libxtables part to explain a bit more the
interaction between nft and the iptables-compat utility. Just follow
up if you find anything that you can improve.

Here I have enabled highlight of this and trailing whitespaces, please
have a look.

Thanks.

