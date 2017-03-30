X-GM-THRID: 6403068261255086080
X-Received: by 10.99.202.73 with SMTP id o9mr1784199pgi.154.1490865631438;
        Thu, 30 Mar 2017 02:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.211 with SMTP id 77ls9297480oth.27.gmail; Thu, 30 Mar
 2017 02:20:31 -0700 (PDT)
X-Received: by 10.31.96.69 with SMTP id u66mr1665927vkb.18.1490865631068;
        Thu, 30 Mar 2017 02:20:31 -0700 (PDT)
Received: by 10.55.166.8 with SMTP id p8msqke;
        Thu, 30 Mar 2017 02:03:22 -0700 (PDT)
X-Received: by 10.25.193.213 with SMTP id r204mr671230lff.24.1490864602456;
        Thu, 30 Mar 2017 02:03:22 -0700 (PDT)
Return-Path: <fw@strlen.de>
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a01:7a0:2:106d:670::1])
        by gmr-mx.google.com with ESMTPS id e72si718133wma.0.2017.03.30.02.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 02:03:22 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:7a0:2:106d:670::1 is neither permitted nor denied by best guess record for domain of fw@strlen.de) client-ip=2a01:7a0:2:106d:670::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:7a0:2:106d:670::1 is neither permitted nor denied by best guess record for domain of fw@strlen.de) smtp.mailfrom=fw@strlen.de
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.84_2)
	(envelope-from <fw@strlen.de>)
	id 1ctVyZ-0001c8-Au; Thu, 30 Mar 2017 11:02:39 +0200
Date: Thu, 30 Mar 2017 11:02:39 +0200
From: Florian Westphal <fw@strlen.de>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] iptables: extensions: Remove assignment in if condition.
Message-ID: <20170330090239.GD18679@breakpoint.cc>
References: <20170329233459.GA22682@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329233459.GA22682@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)

Arushi Singhal <arushisinghal19971997@gmail.com> wrote:
> Remove assignments in if condition as reported by checkpatch.pl.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  extensions/libebt_ip.c          | 11 ++++++-----
>  extensions/libip6t_ipv6header.c |  5 +++--
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/extensions/libebt_ip.c b/extensions/libebt_ip.c
> index 4ca63e9..deae6f4 100644
> --- a/extensions/libebt_ip.c
> +++ b/extensions/libebt_ip.c
> @@ -68,9 +68,9 @@ parse_port_range(const char *protocol, const char *portstring, uint16_t *ports)
>  {
>  	char *buffer;
>  	char *cp;
> -
> +	cp = strchr(buffer, ':');

This is broken.

